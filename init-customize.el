
;; dired
(require 'dired-x)
(add-hook 'dired-mode-hook (lambda () (dired-omit-mode)))
;; and simplier shortcut
(global-set-key (kbd "M-o") 'dired-omit-mode)

;; ansicolor in compile buffer
(require 'ansi-color)
(defun colorize-compilation-buffer ()
  (toggle-read-only)
  (ansi-color-apply-on-region compilation-filter-start (point))
  (toggle-read-only))
(add-hook 'compilation-filter-hook 'colorize-compilation-buffer)

;; get line number everywhere
(global-linum-mode)
