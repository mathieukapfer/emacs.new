
(require 'package)
(package-initialize)


;; refresh package content only if needed
(if (string= (package-install-selected-packages)
	     "All your packages are already installed")
    nil
  (package-refresh-contents)
  ;; do again after refresh
  (package-install-selected-packages)
  )
  
    

