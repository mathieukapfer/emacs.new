;;(require 'auto-complete-clang-async)

(defun ac-cc-mode-setup ()
  ;;(setq ac-sources '(ac-source-clang-async))
  ;;(setq ac-sources (append '(ac-source-clang-async) ac-sources))
  (setq ac-sources '(ac-source-yasnippet))
)

(defun my-ac-config ()
  (add-hook 'c++-mode-common-hook 'ac-cc-mode-setup)
  (add-hook 'c-mode-common-hook 'ac-cc-mode-setup)
  (add-hook 'auto-complete-mode-hook 'ac-common-setup)
  (global-auto-complete-mode t))

(my-ac-config)
