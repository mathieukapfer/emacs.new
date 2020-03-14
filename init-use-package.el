
;; This is only needed once, near the top of the file
(eval-when-compile
  ;; Following line is not needed if use-package.el is in ~/.emacs.d
  ;;; (add-to-list 'load-path "<path where use-package is installed>")
  (require 'use-package))

;; sample of usage of use-package
;; setup 'use-package'
;;;(use-package foo
;;;  :init
;;;  (setq foo-variable t)
;;;  :config
;;;  (foo-mode 1))
