(require 'flycheck)
(require 'projectile)

;; add cpplint
;;(load-file "init-ide-flycheck-add-cpplint.el")

;; display list of check on f8
(defun my:flycheck-mode-enabled-with-summary ()
  (interactive)
  (flycheck-mode t)
  (list-flycheck-errors)
  )

(global-set-key (kbd "<f8>") 'my:flycheck-mode-enabled-with-summary)


;; add include dir
;;(add-hook 'c++-mode-hook
;;          (lambda () (setq flycheck-clang-include-path
;;                           (list (expand-file-name "~/local/include/")))))

(defun setup-flycheck-clang-project-path ()
  (let ((root (ignore-errors (projectile-project-root))))
    (when root
      (add-to-list
       (make-variable-buffer-local 'flycheck-clang-include-path)
       root))))

(add-hook 'c++-mode-hook 'setup-flycheck-clang-project-path)
(add-hook 'c-mode-hook 'setup-flycheck-clang-project-path)

;;(add-hook 'c++-mode-hook
;;          (lambda () (setq flycheck-clang-standard-library "libc++")))
;;(add-hook 'c++-mode-hook
;;          (lambda () (setq flycheck-clang-language-standard "c++1y")))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Flycheck
;;;;;;;; Description: code linting (particularly C/C++ for me)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Enable flycheck mode
;;(require 'cc-mode)
;;(add-hook 'c++-mode-hook 'flycheck-mode)
;;(add-hook 'c-mode-hook 'flycheck-mode)

;; customize it to enable/disable flycheck on specific mode: flycheck-global-modes

;; globlal init (for all mode)
;; (add-hook 'after-init-hook #'global-flycheck-mode)


;; Check buffer on save, new line and immediately after anbling flycheck-mode
;;(setq flycheck-check-syntax-automatically '(mode-enabled new-line)) ;; new-line also possible
