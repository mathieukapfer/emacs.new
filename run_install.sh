
# fly check
sudo apt-get install elpa-flycheck flycheck-doc

# clang completion setup
#  - install packages
sudo apt-get install clang libclang-7-dev llvm
#  - make clang-complete
cd emacs-clang-complete-async && make

