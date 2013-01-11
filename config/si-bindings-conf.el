;; Personal key bindings

;; Quickly eval a buffer
(global-set-key (kbd "C-M-e") 'eval-buffer)

;; Show documentation/information with M-RET
(define-key lisp-mode-shared-map (kbd "M-RET") 'live-lisp-describe-thing-at-point)

;; Ace-jump mode
(global-set-key (kbd "C-o") 'ace-jump-mode)
