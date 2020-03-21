;;; init-packages.el -- check & install user packages if needed
;;
;;; Commentary:
;;  This is to easily duplicate the cuurent configuration on a new installation

(require 'package)
;; add melpa stable
(add-to-list 'package-archives
             '("MELPA Stable" . "https://stable.melpa.org/packages/") t)

(package-initialize)

;; install user selected package (and refresh package content if needed)
(if (string= (package-install-selected-packages)
	     "All your packages are already installed")
    nil
  ;; refresh index
  (package-refresh-contents)
  ;; try again the installation 
  (package-install-selected-packages)
  )
  
    

