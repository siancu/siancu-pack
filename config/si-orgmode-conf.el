;; Personal org-mode configuration

;; Generic org-mode configuration

(add-to-list 'auto-mode-alist '("\\.\\(org\\|org_archive\\|txt\\)$" . org-mode))
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(define-key global-map "\C-cb" 'org-iswitchb)

;; Code block fontification
(setq org-src-fontify-natively t)
(setq org-src-tab-acts-natively t)

;; Use S-arrows to select text in org-mode
(setq org-support-shift-select t)

;; Align the tags at column 90
(setq org-tags-column 90)

;; Setup the agenda files
(setq org-agenda-files (list "~/Dropbox/Stelu/org/si.org"
                             "~/Dropbox/Stelu/org/inprodicon.org"
                             "~/Dropbox/Stelu/org/archive.org"))
;; Enable fast todo selection
;; Use C-c C-t KEY to select directly any other state
(setq org-use-fast-todo-selection t)

;; Org todo keywords
(setq org-todo-keywords
    (quote ((sequence "TODO(t)" "NEXT(n)" "STARTED(s)" "|" "DONE(d!/!)")
            (sequence "WAITING(w@/@)" "HOLD(h@/!)" "DELEGATED" "|" "CANCELLED(c@/!)" ))))

;; org-capture setup
(setq org-default-notes-file "~/Dropbox/Stelu/org/refile.org")
(global-set-key (kbd "C-c r") 'org-capture)
(setq org-capture-templates
    (quote (("t" "Task" entry (file "~/Dropbox/Stelu/org/refile.org")
             "* TODO %?\n%U\n  %i")
            ("n" "Note" entry (file "~/Dropbox/Stelu/org/refile.org")
             "* %? \n%U\n  %i")
            ("j" "Journal" entry (file+datetree "~/Dropbox/Stelu/org/journal.org")
             "* %?\n%U\n  %i"))))

;; Special handling of C-a and C-e
(setq org-special-ctrl-a/e t)

;; Org agenda setup
(setq org-agenda-ndays 30)
(setq org-deadline-warning-days 0)
(setq org-agenda-show-all-dates t)
(setq org-agenda-skip-deadline-if-done t)
(setq org-agenda-start-on-weekday nil)

;; Refile setup
(setq org-completion-use-ido t)
(setq org-refile-targets (quote ((org-agenda-files :maxlevel . 5) (nil :maxlevel . 5))))
(setq org-refile-use-outline-path (quote file))
(setq org-outline-path-complete-in-steps t)
(setq org-refile-allow-creating-parent-nodes (quote confirm))

;; M-RET will create a new headline no matter where you are in the text
(setq org-M-RET-may-split-line nil)

;; Attachment handling
;; generate unique attachment IDs
(setq org-id-method (quote uuidgen))
