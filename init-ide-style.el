;; space in C/C++ code
(custom-set-variables
 '(indent-tabs-mode nil)  ;; do not use TAB character, use SPACE instead
 '(tab-width 2)           ;; use 2 spaces as a tab
 '(c-basic-offset 2)      ;; use 2 spaces as auto indent C language
 '(fill-column 80))

;; C++ style :
;; --------------------------------------------
;;  Note: set the variable 'c-echo-syntactic-information-p' to true
;;  to echoed syntactic context in minibuffer
(defconst my-cc-style
  '("cc-mode"
    (c-offsets-alist . ((innamespace . [0]) ;; do not indent namespace
                        (access-label . /)  ;; -0.5 after 1 basic-offset => -0.5 basic-offset !
                        (member-init-intro . 6)
                        (member-init-cont . 6) ;; not working !
                        (case-label +)
                        ))))

(c-add-style "my-cc-mode" my-cc-style)

(defun my:set-my-c++-style ()
  ;;(interactive)
  ;;(message "FORCE MY STYLE")
  (c-set-style "my-cc-mode" )
  (setq require-final-newline nil)
  )

(add-hook 'c++-mode-hook 'my:set-my-c++-style)
;;(add-hool 'c++-mode-hook

;; remove useless whitespace at the end
;; ---------------------------------------
;; all mode
(add-hook 'before-save-hook 'delete-trailing-whitespace)
;; only c-mode:
;;(add-hook 'c-mode-hook
;;        (lambda () (add-to-list 'write-file-functions 'delete-trailing-whitespace)))



;; external format tools
;; ==========================
;; clang-format
(load-file "~/.emacs.d/clang-format.el")
(global-set-key [C-M-tab] 'clang-format-region)
