;;; package --- Summary:

;;; Commentary:

;;; Code:

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.

;;; (package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(c-basic-offset 2)
 '(clang-format-style "file")
 '(company-backends
   '((company-capf company-yasnippet)
     company-bbdb company-semantic company-cmake
     (company-clang)
     company-files
     (company-dabbrev-code company-gtags company-etags company-keywords)
     company-oddmuse company-dabbrev company-abbrev))
 '(company-idle-delay 0.1)
 '(company-minimum-prefix-length 1)
 '(custom-safe-themes
   '("57e3f215bef8784157991c4957965aa31bac935aca011b29d7d8e113a652b693" "3d4df186126c347e002c8366d32016948068d2e9198c496093a96775cc3b3eaa" default))
 '(dired-listing-switches "-alh")
 '(dired-omit-files "^\\.?#\\|^\\.$\\|^\\.[^.]")
 '(elpy-rpc-python-command "python3")
 '(elpy-rpc-virtualenv-path "/home/kapfer/testproject")
 '(fill-column 80)
 '(grep-files-aliases
   '(("all" . "* .[!.]* ..?*")
     ("el" . "*.el")
     ("ch" . "*.[ch] *.hpp *.cpp *.cl")
     ("c" . "*.c *.h *.hpp *.cpp *.cl")
     ("cc" . "*.cc *.cxx *.cpp *.C *.CC *.c++ *.cl")
     ("cchh" . "*.cc *.[ch]xx *.[ch]pp *.[CHh] *.CC *.HH *.[ch]++ *.cl")
     ("hh" . "*.hxx *.hpp *.[Hh] *.HH *.h++ *.cl")
     ("h" . "*.h *.c *.hpp *.cpp *.cl")
     ("l" . "[Cc]hange[Ll]og*")
     ("m" . "[Mm]akefile*")
     ("tex" . "*.tex")
     ("texi" . "*.texi")
     ("asm" . "*.[sS]")))
 '(indent-tabs-mode nil)
 '(lsp-pyls-server-command '("pylsp"))
 '(package-selected-packages
   '(lsp-ui ac-octave matlab-mode autodisass-llvm-bitcode afternoon-theme abyss-theme dynamic-graphs dap-mode flycheck-aspell which-key lsp-mode markdown-mode opencl-mode cmake-mode elpy auto-complete flycheck-cstyle flycheck ggtags projectile yasnippet yasnippet-snippets use-package magit))
 '(projectile-git-command "git ls-files -zc --exclude-standard  --recurse-submodules")
 '(require-final-newline 'ask)
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

;; look and field
(load-theme 'wombat)
(tool-bar-mode -1)

;; setup for development
(load-file "~/.emacs.d/init-ide.el")
(put 'erase-buffer 'disabled nil)

;; setup for development
(load-file "~/.emacs.d/init-spell.el")
(put 'erase-buffer 'disabled nil)

;; graphviz mode
(load-file "~/.emacs.d/graphviz-dot-mode.el")
(add-to-list 'auto-mode-alist '("\\.dot\\'" . graphviz-dot-mode))
