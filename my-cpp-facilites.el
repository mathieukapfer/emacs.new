(provide 'my-cpp-facilites)
(require 'cl)



;; numering of enum
;; - do the numering
(defun enum-numbering(start)
  (interactive)
  (let ( (loop-quit nil) (num 0) )
    (goto-char start)
    (while (and (not loop-quit)
                (search-forward-regexp "^[[:space:]]+\\([[:alnum:]_]+\\)[[:space:]]*\n*\\(,\\|}\\)" nil t))
      (if (string= (match-string 2) "}")
          (setq loop-quit t)
        (replace-match (format "=%d,"  num) t t nil 2 )
        (setq num (+ num 1))
        )
      )
    )
  )
;; - search enum definition
(defun enum-detection()
  (interactive)
  (let ((enum-begin 0)
        (enum-end 0))
    (search-forward-regexp "enum[[:space:]][[:alnum:]_]+[[:space:]\n]{")
    (setq enum-begin (match-beginning 0))
    ;; do the numering
    (enum-numbering enum-begin)
    )
  )

;; Put in the alist a line like this:
;;  ("ext" . ( "toggle_ext_candidate1" "toggle_ext_candidate2" ) )
(defconst my-head-body-table '
  (
   ("cpp" .  ( "hpp" "h") )    ;; with "foo.cpp" try "foo.h", "foo.hpp"
   ("h"   .  ( "c"   "cpp" ) )
   ("hpp" .  ( "cpp" ) )
   ("c"   .  ( "h" ) )
   )
  )

(defun my-toogle-path (dir-name)
  (if (string-match "include/$" dir-name)
      (replace-match "src/" t t dir-name)
    (if (string-match "src/$" dir-name)
        (replace-match "include/" t t dir-name)
      )
    )
  )

;; Build toggle file name list
;; Sample: with "foo.cpp" return the list ("foo.h" "foo.hpp")
(defun my-toggle-header-body--get-file-name-list (a-file-name)
  (let ( (the-base-name (file-name-base a-file-name) )
         (the-dir (file-name-directory a-file-name) )
         )
    (cl-loop
     for ext in (cdr (assoc (file-name-extension a-file-name) my-head-body-table ) )
     collect (concat (my-toogle-path the-dir)  the-base-name "." ext)
     collect (concat the-dir "src/" the-base-name "." ext)
     collect (concat the-dir "../" the-base-name "." ext)
     collect (concat the-dir the-base-name "." ext)
     )
    )
  )

;; Unit test
;; Type  C-x C-e at the end of each line
;(my-toggle-header-body--get-file-name-list "/etc/src/toto.cpp") ;; => ("/etc/toto.hpp" "/etc/toto.h")
;(my-toggle-header-body--get-file-name-list "toto.c")        ;; => ("toto.h")
;(my-toggle-header-body--get-file-name-list "toto.hpp")      ;; => ("toto.cpp")
;(my-toggle-header-body--get-file-name-list "toto.h")        ;; => ("toto.c" "toto.cpp")
;(my-toggle-header-body--get-file-name-list "toto.h")        ;; => ("src/toto.c" "src/toto.cpp")

;; Main
(defun my-toggle-header-body-main ()
  (interactive)
  (let ((a-file-name-list-candidate
         (my-toggle-header-body--get-file-name-list (buffer-file-name))))
    ;; loop on candidate
    (setq the-toggle-file
          (cl-loop
           for a-file-name-candidate in a-file-name-list-candidate
           ;; do (message (concat "try:" a-file-name-candidate))
           until (file-exists-p a-file-name-candidate)
           finally return a-file-name-candidate)
          )
    ;; switch to a buffer visiting file FILENAME,
    (find-file the-toggle-file)
    )
  )


;; Related key binding
(global-set-key (kbd "C-²" ) 'my-toggle-header-body-main)
(global-set-key (kbd "C-œ" ) 'my-toggle-header-body-main)
