;; space in C/C++ code
(custom-set-variables
 '(indent-tabs-mode nil)  ;; do not use TAB character, use SPACE instead
 '(tab-width 2)           ;; use 2 spaces as a tab
 '(c-basic-offset 2)      ;; use 2 spaces as auto indent C language
 '(fill-column 80))

;; C++ style : do not indent namespace
(defconst my-cc-style
  '("cc-mode"
    (c-offsets-alist . ((innamespace . [0])))))

(c-add-style "my-cc-mode" my-cc-style)

(defun my:set-my-c++-style ()
  ;;(interactive)
  ;;(message "FORCE MY STYLE")
  (c-set-style "my-cc-mode" )
  )

(add-hook 'c++-mode-hook 'my:set-my-c++-style)
