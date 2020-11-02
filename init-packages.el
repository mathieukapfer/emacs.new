;;; init-packages.el -- check & install user packages if needed
;;
;;; Commentary:
;;  This is to easily duplicate the current configuration on a new installation

(require 'package)

;; update signature
;;(load-file "~/.emacs.d/gnu-elpa-keyring-update-2019.3/gnu-elpa-keyring-update.el")

;; add melpa stable
;;(add-to-list 'package-archives
;;             '("MELPA Stable" . "https://stable.melpa.org/packages/") t)

;;(add-to-list 'package-archives
;;             '("melpa" . "http://melpa.org/packages/") t)

;;(add-to-list 'package-archives
;;             '("gnu" . "http://elpa.gnu.org/packages/") t)


(setq package-archives '(
                         ("melpa-stable" . "http://stable.melpa.org/packages/")
                         ("melpa" . "http://melpa.org/packages/")
                         ("gnu" . "http://elpa.gnu.org/packages/")
                         )
      )


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
