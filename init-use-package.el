(package-initialize)

;; This is only needed once, near the top of the file
(eval-when-compile
  ;; Following line is not needed if use-package.el is in ~/.emacs.d
;  (add-to-list 'load-path "~/.emacs.d/elpa/use-package-20191126.2034")
;  (add-to-list 'load-path "~/.emacs.d/elpa/bind-key-20191110.416")
  (require 'use-package)
  )

;; sample of usage of use-package
;; setup 'use-package'
;;;(use-package foo
;;;  :init
;;;  (setq foo-variable t)
;;;  :config
;;;  (foo-mode 1))
