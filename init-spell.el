
;; spelling
(require 'flycheck-aspell)
(add-to-list 'flycheck-checkers 'tex-aspell-dynamic)

;;(setq ispell-dictionary "some_dictionary")
(setq ispell-program-name "aspell")
(setq ispell-silently-savep t)

;; Please note ispell-extra-args contains ACTUAL parameters passed to aspell
(setq ispell-extra-args '("--sug-mode=ultra" "--lang=en_US"))
