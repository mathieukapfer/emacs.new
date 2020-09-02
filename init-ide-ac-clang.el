;; http://github.com/atilaneves/cmake-ide
(cmake-ide-setup)

(setq cmake-ide-flags-c++ ;;ac-clang-flags
      (mapcar (lambda (item)(concat "-I" item))
              ;; provide by: echo "" | g++ -v -x c++ -E -
              ;; (from https://github.com/brianjcj/auto-complete-clang #Troubleshooting)
               (split-string
                "
 /usr/include/c++/8
 /usr/include/x86_64-linux-gnu/c++/8
 /usr/include/c++/8/backward
 /usr/lib/gcc/x86_64-linux-gnu/8/include
 /usr/local/include
 /usr/lib/gcc/x86_64-linux-gnu/8/include-fixed
 /usr/include/x86_64-linux-gnu
 /usr/include
"
                )))

(setq cmake-ide-flags-c++ (append cmake-ide-flags-c++ (list "-D_X86_")))

;; https://github.com/Golevka/emacs-clang-complete-async

(require 'auto-complete-clang-async)

(defun ac-cc-mode-setup ()
  (setq ac-clang-complete-executable "~/.emacs.d/clang-complete")
  ;;(setq ac-sources '(ac-source-clang-async))
  ;;(setq ac-sources (append '(ac-source-clang-async) ac-sources))
  (setq ac-sources '(ac-source-clang-async ac-source-yasnippet))
  (ac-clang-launch-completion-process)
)

(defun my-ac-config ()
  (add-hook 'c++-mode-common-hook 'ac-cc-mode-setup)
  (add-hook 'c-mode-common-hook 'ac-cc-mode-setup)
  (add-hook 'auto-complete-mode-hook 'ac-common-setup)
  (add-hook 'after-save-hook 'ac-clang-update-cmdlineargs) ;; make cflags change to take effect
  (global-auto-complete-mode t))

(my-ac-config)


