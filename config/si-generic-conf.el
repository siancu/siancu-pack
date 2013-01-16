;; Generic emacs configuration

;; For debug purposes enable a backtrace
;;(setq debug-on-error t)
;;(setq debug-on-quit t)

;; Registers for my most accessed files
(set-register ?s '(file . "~/Dropbox/Stelu/org/si.org"))
(set-register ?r '(file . "~/Dropbox/Stelu/org/refile.org"))
(set-register ?a '(file . "~/Dropbox/Stelu/org/archive.org"))
(set-register ?j '(file . "~/Dropbox/Stelu/org/journal.org"))
(set-register ?i '(file . "~/Dropbox/Stelu/org/inprodicon.org"))

;; Rename a file and current buffer
(defun rename-current-buffer-file ()
  "Renames current buffer and file it is visiting."
  (interactive)
  (let ((name (buffer-name))
        (filename (buffer-file-name)))
    (if (not (and filename (file-exists-p filename)))
        (error "Buffer '%s' is not visiting a file!" name)
      (let ((new-name (read-file-name "New name: " filename)))
        (if (get-buffer new-name)
            (error "A buffer named '%s' already exists!" new-name)
          (rename-file filename new-name 1)
          (rename-buffer new-name)
          (set-visited-file-name new-name)
          (set-buffer-modified-p nil)
          (message "File '%s' successfully renamed to '%s'"
                   name (file-name-nondirectory new-name)))))))

;; Run Marked.app on the current file
;; TEMP: move to markdown config
(defun markdown-preview-file ()
  "Run Marked on the current file and revert the buffer"
  (interactive)
  (shell-command
   (format "open -a /Applications/Marked.app %s"
       (shell-quote-argument (buffer-file-name))))
)
