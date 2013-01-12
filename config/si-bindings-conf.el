;; Personal key bindings

;; Quickly eval a buffer
(global-set-key (kbd "C-M-e") 'eval-buffer)

;; Show documentation/information with M-RET
(define-key lisp-mode-shared-map (kbd "M-RET") 'live-lisp-describe-thing-at-point)

;; Ace-jump mode
(global-set-key (kbd "C-o") 'ace-jump-mode)

;;browse kill ring (visual paste)
(global-set-key (kbd "M-y") 'browse-kill-ring)

;; undo
(global-set-key (kbd "C-M-/") 'undo-tree-undo)

;;scroll other window
(global-set-key (kbd "C-M-]") 'scroll-other-window)
(global-set-key (kbd "C-M-[") 'scroll-other-window-down)

;;fast vertical naviation
(global-set-key  (kbd "M-U") (lambda () (interactive) (forward-line -10)))
(global-set-key  (kbd "M-D") (lambda () (interactive) (forward-line 10)))
(global-set-key  (kbd "M-p") 'outline-previous-visible-heading)
(global-set-key  (kbd "M-n") 'outline-next-visible-heading)

;; Align your code in a pretty way.
(global-set-key (kbd "C-x \\") 'align-regexp)

;; comment region
(global-set-key (kbd "M-/") 'comment-or-uncomment-region)

(global-set-key (kbd "C-s") 'isearch-forward)
(global-set-key (kbd "C-r") 'isearch-backward)
(global-set-key (kbd "C-M-s") 'isearch-forward-regexp)
(global-set-key (kbd "C-M-r") 'isearch-backward-regexp)

;; Jump to a definition in the current file.
(global-set-key (kbd "C-x C-i") 'idomenu)

;; File
(global-set-key (kbd "C-x M-f") 'ido-find-file-other-window)
(global-set-key (kbd "C-x C-M-f") 'find-file-in-project)
(global-set-key (kbd "C-x f") 'recentf-ido-find-file)
(global-set-key (kbd "C-x C-r") 'ido-recentf-open)
(global-set-key (kbd "M-`") 'file-cache-minibuffer-complete)
(global-set-key (kbd "C-x C-b") 'ibuffer)

;; Activate occur easily inside isearch
(define-key isearch-mode-map (kbd "C-o")
  (lambda () (interactive)
    (let ((case-fold-search isearch-case-fold-search))
      (occur (if isearch-regexp isearch-string (regexp-quote isearch-string))))))
