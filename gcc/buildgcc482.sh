GCC_VER=gcc-4.8.2
tar -xf ${GCC_VER}.tar.bz2 || exit 1

cd ${GCC_VER} || exit

cat <<EOF |
    cloog 0.18.0 tar.gz 
    gmp 5.1.3 tar.xz 
    isl 0.11.1 tar.bz2 
    mpc 1.0.1 tar.gz 
    mpfr 3.1.2 tar.xz
EOF

while read file vrsn extn
do
    tar -xf "../$file-$vrsn.$extn" &&
    ln -s "$file-$vrsn" "$file"
done