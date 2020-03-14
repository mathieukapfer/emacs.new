;; proxy setting - if needed
(setq url-proxy-services
       '(("no_proxy" . "^\\(localhost\\|10.*\\)")
         ("http" . "proxy.com:8080")
         ("https" . "proxy.com:8080")))

(setq url-http-proxy-basic-auth-storage
        (list (list "proxy.com:8080"
                    (cons "Input your LDAP UID !"
                          (base64-encode-string "LOGIN:PASSWORD")))))

