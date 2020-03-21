

;; https://github.com/Golevka/emacs-clang-complete-async

(require 'auto-complete-clang-async)

(defun ac-cc-mode-setup ()
  (setq ac-clang-complete-executable "~/.emacs.d/emacs-clang-complete-async/clang-complete")
  ;;(setq ac-sources '(ac-source-clang-async))
  ;;(setq ac-sources (append '(ac-source-clang-async) ac-sources))
  (setq ac-sources '(ac-source-clang-async ac-source-yasnippet))
  (ac-clang-launch-completion-process)
)

(defun my-ac-config ()
  (add-hook 'c++-mode-common-hook 'ac-cc-mode-setup)
  (add-hook 'c-mode-common-hook 'ac-cc-mode-setup)
  (add-hook 'auto-complete-mode-hook 'ac-common-setup)
  (global-auto-complete-mode t))

(my-ac-config)


