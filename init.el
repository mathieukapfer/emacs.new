;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(c-basic-offset 2)
 '(dired-omit-files "^\\.?#\\|^\\.$\\|^\\.[^.]")
 '(fill-column 80)
 '(indent-tabs-mode nil)
 '(package-archives (quote (("melpa" . "http://melpa.milkbox.net/packages/"))))
 '(package-selected-packages
   (quote
    (dash git-commit popup transient with-editor irony rtags cmake-ide ac-clang clang-format elpy auto-complete-clang-async auto-complete-clang auto-complete flycheck-cstyle flycheck projectile ggtags yasnippet yasnippet-snippets use-package magit)))
 '(projectile-git-command "git ls-files -zc --exclude-standard  --recurse-submodules")
 '(tab-width 2))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; First, basic keys binding - to easy debug of init if needed
(load-file "~/.emacs.d/init-keys.el")

;; need proxy for package installation
;(load-file "init-proxy.el");

;; install & configure packages
(load-file "~/.emacs.d/init-packages.el")

;; emacs customisation
(load-file "~/.emacs.d/init-customize.el")

;; setup for development
(load-file "~/.emacs.d/init-ide.el")
