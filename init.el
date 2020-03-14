
;; need proxy ? 
;(load-file "init-proxy.el");

;; add melpa packages:
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))

;; then enable use-package
(load-file "init-use-package.el")



