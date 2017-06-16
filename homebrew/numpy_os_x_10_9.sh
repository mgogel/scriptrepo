# set up flags for Numpy C extentions compiling
export CFLAGS="-arch i386 -arch x86_64"
export FFLAGS="-m32 -m64"
export LDFLAGS="-Wall -undefined dynamic_lookup -bundle -arch i386 -arch x86_64"
export CC=gcc-4.2
export CXX=g++ -arch i386 -arch x86_64

pip install numpy
# success!

# now for scipy
easy_install cython

# make sure you have Homebrew
brew install gfortran
# if this is too slow or has an error
# install gfotran from the Mac OS X Lion installer for Intel 64-bit processors
# http://gcc.gnu.org/wiki/GFortranBinaries#MacOS

# finally 
pip install -e git+https://github.com/scipy/scipy#egg=scipy-dev

# Let me know if this works for you! jhghank@gmail.com