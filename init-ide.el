;; force c++ mode for *.h files
(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; style and code indentation
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(load-file "~/.emacs.d/init-ide-style.el")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; projectile
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(projectile-mode +1)
(define-key projectile-mode-map (kbd "s-p") 'projectile-command-map)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)

;; customize key
(global-set-key (kbd "<f9>") `projectile-grep)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; tags : 
;;   - c, c++, java: ggtags => need "sudo apt-get install global"
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ggtags
(add-hook 'c-mode-common-hook
          (lambda ()
            (when (derived-mode-p 'c-mode 'c++-mode 'java-mode)
              (ggtags-mode 1))))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; git front end
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(global-set-key (kbd "C-<escape>") 'magit-status)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; code helper
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; - flycheck          => need "sudo apt-get install elpa-flycheck flycheck-doc "
;; - auto complete
;; - snippet

;; flycheck
;;;(load-file "~/.emacs.d/init-ide-flycheck.el")
(use-package flycheck
  :ensure t
  :init (global-flycheck-mode))

;; start auto-complete with emacs
(require 'auto-complete)

;; do default config for auto-complete
(require 'auto-complete-config)
;(ac-config-default)

;; auto-complete
(load-file "~/.emacs.d/init-ide-ac-clang.el")

;; start yasnippet with emacs
(require 'yasnippet)
(yas-global-mode 1)

