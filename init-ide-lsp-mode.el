;; https://emacs-lsp.github.io/lsp-mode/page/installation/

;;; Code:

;; set prefix for lsp-command-keymap (few alternatives - "C-l", "C-c l")
(setq lsp-keymap-prefix "C-l")

(use-package lsp-mode
    :hook (;; replace XXX-mode with concrete major-mode(e. g. python-mode)
            (c-mode . lsp-deferred)
            (c++-mode . lsp-deferred)
            ;; if you want which-key integration
            (lsp-mode . lsp-enable-which-key-integration))
    :commands lsp-deferred)
