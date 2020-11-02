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
 '(clang-format-style "file")
 '(dired-listing-switches "-alh")
 '(dired-omit-files "^\\.?#\\|^\\.$\\|^\\.[^.]")
 '(fill-column 80)
 '(grep-files-aliases
   (quote
    (("all" . "* .[!.]* ..?*")
     ("el" . "*.el")
     ("ch" . "*.[ch] *.cpp")
     ("c" . "*.c *.h *.cpp")
     ("cc" . "*.cc *.cxx *.cpp *.C *.CC *.c++")
     ("cchh" . "*.cc *.[ch]xx *.[ch]pp *.[CHh] *.CC *.HH *.[ch]++")
     ("hh" . "*.hxx *.hpp *.[Hh] *.HH *.h++")
     ("h" . "*.h *.c *.cpp")
     ("l" . "[Cc]hange[Ll]og*")
     ("m" . "[Mm]akefile*")
     ("tex" . "*.tex")
     ("texi" . "*.texi")
     ("asm" . "*.[sS]"))))
 '(indent-tabs-mode nil)
 '(package-selected-packages
   (quote
    (lsp-mode markdown-mode opencl-mode cmake-mode elpy auto-complete auto-complete-clang-async flycheck-cstyle flycheck projectile ggtags yasnippet yasnippet-snippets use-package magit)))
 '(projectile-git-command "git ls-files -zc --exclude-standard  --recurse-submodules")
 '(require-final-newline (quote ask))
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
;; (load-file "~/.emacs.d/init-proxy.el");

;; install & configure packages
(load-file "~/.emacs.d/init-packages.el")

;; emacs customisation
(load-file "~/.emacs.d/init-customize.el")

;; setup for development
(load-file "~/.emacs.d/init-ide.el")
(put 'erase-buffer 'disabled nil)

;; clang-format
(load-file "~/.emacs.d/clang-format.el")
(global-set-key [C-M-tab] 'clang-format-region)

;; colorize ansi-color in compile buffer
(load-file "~/.emacs.d/init-ansicolor-in-compile-buffer.el")
