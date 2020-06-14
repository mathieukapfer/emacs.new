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
 '(projectile-git-command "git ls-files -zc --exclude-standard  --recurse-submodules")
 '(dired-omit-files "^\\.?#\\|^\\.$\\|^\\.\\.$\\|^\\.[^.]")
 '(indent-tabs-mode nil)
 '(jdee-jdk-registry
   (quote
    (("10.0" . "/usr/lib/jvm/java-1.11.0-openjdk-amd64/"))))
 '(jdee-server-dir "/home/kapfer/Code-git/jdee-server/target")
 '(package-archives (quote (("melpa" . "http://melpa.milkbox.net/packages/"))))
 '(package-selected-packages
   (quote
    (cmake-ide cmake-mode jdee elpy auto-complete auto-complete-clang-async   flycheck-cstyle flycheck projectile ggtags yasnippet yasnippet-snippets use-package magit))) ;; auto-complete-clang
 '(c-basic-offset 2)
 '(fill-column 80)
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
