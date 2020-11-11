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
    :commands lsp-deferred
    :custom (lsp-clients-clangd-executable
             ;; from https://github.com/clangd/clangd/releases/tag/11.0.0
             "~/.emacs.d/lsp-server/clangd_11.0.0/bin/clangd")
    )


;; optional if you want which-key integration
(use-package which-key
    :config
    (which-key-mode))


;;; end
