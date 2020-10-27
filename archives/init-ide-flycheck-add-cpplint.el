(require 'flycheck)

(defun my:cpplint-command()
  (let ((cpplint-cmd "/home/user/Projects/ev_link_charger/testengine/script/cpplint-warning.sh"))
    (if (not (file-exists-p cpplint-cmd) )
        (setq cpplint-cmd "/usr/local/bin/cpplint" )
      (setq cpplint-cmd cpplint-cmd)
      )
    )
  )

;;(add-to-list 'load-path "~/.emacs.d")

(eval-after-load 'flycheck
   '(progn
      (require 'flycheck-google-cpplint)
      (message "ENTER")
      ;; Customisation
      (custom-set-variables
       '(flycheck-c/c++-googlelint-executable (my:cpplint-command)))

      ;; Add Google C++ Style checker.
      ;; In default, syntax checked by Clang and Cppcheck.
      (flycheck-add-next-checker 'c/c++-cppcheck
                                 '(warning . c/c++-googlelint))
      (message "EXIT")

))
