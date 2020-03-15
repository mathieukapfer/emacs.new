
;; dired
(require 'dired-x)
(add-hook 'dired-mode-hook (lambda () (dired-omit-mode)))
;; and simplier shortcut
(global-set-key (kbd "M-o") 'dired-omit-mode)
