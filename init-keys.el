;; edit init.el
(defun switch-to-buffer-emacs ()
  (interactive)
  (find-file "~/.emacs.d/init.el")
  ;;(switch-to-buffer "init.el" )
  )
(global-set-key (kbd "C-<f1>") 'switch-to-buffer-emacs)

;; window split helper in french keyboard
(global-set-key (kbd "M-œ")  'delete-window)
(global-set-key (kbd "M-&")  'delete-other-windows )
(global-set-key (kbd "M-é")  'split-window-vertically)
(global-set-key (kbd "M-\"") 'split-window-horizontally)

;; windows navigation
(global-set-key (kbd "C-<tab>") 'other-window)
(global-set-key (kbd "C-œ") 'other-window)

;; buffer navigation
(global-set-key (kbd "M-<left>") 'previous-buffer) ; ALT+ flèche gauche
(global-set-key (kbd "M-<right>")  'next-buffer) ; ALT + flèche droite

;; shortcut for developement
(global-set-key [f1] 'dired-sources-file)
(global-set-key [f12] 'compile)
(global-set-key [(control f12)] 'recompile)
(global-set-key [f11] 'shell)
(global-set-key (kbd "<f9>") 'my-grep)

;; windows short cut
(global-set-key (kbd "C-z") 'undo)

(defun dired-sources-file ()
  (interactive)
  (dired default-directory)
  ;;(replace-in-string (buffer-file-name) "/[^/]+$" "/."))
)
