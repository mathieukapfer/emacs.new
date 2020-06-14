
# fly check
sudo apt-get install elpa-flycheck flycheck-doc

# clang completion setup
#  - install packages
sudo apt-get install clang llvm llvm-dev
#  - make clang-complete
git submodule init
git submodule update
cd emacs-clang-complete-async && make

