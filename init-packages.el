;; install my favorite packages if needed ;0)

(require 'package)
(package-initialize)

;; refresh package content if needed
(if (string= (package-install-selected-packages)
	     "All your packages are already installed")
    nil
  (package-refresh-contents)
  ;; do again after refresh
  (package-install-selected-packages)
  )
  
    

