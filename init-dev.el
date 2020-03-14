;; tags : 
;;   - c, c++, java: ggtags

;; 
(global-set-key (kbd "C-œ") 'magit-status)


;; ggtags
(add-hook 'c-mode-common-hook
          (lambda ()
            (when (derived-mode-p 'c-mode 'c++-mode 'java-mode)
              (ggtags-mode 1))))


