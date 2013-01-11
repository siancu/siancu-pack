;; Generic org-mode configuration

;; Add org-mode itself to load-path
(live-add-pack-lib "org-mode/lisp/")

;; Add the contrib dir to load-path
(live-add-pack-lib "org-mode/contrib/lisp/")

(require 'org)
(add-to-list 'auto-mode-alist '("\\.\\(org\\|org_archive\\|txt\\)$" . org-mode))
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
