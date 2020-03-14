
;; need proxy ?
;(load-file "init-proxy.el");

;; add melpa packages:
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))

;; set use-package
(load-file "~/.emacs.d/init-use-package.el")

;; install & configure packages
(load-file "~/.emacs.d/init-packages.el")

