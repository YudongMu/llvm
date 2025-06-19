#!/bin/sh
set -v

build_llvm=`pwd`/build-llvm
installprefix=`pwd`/install
llvm=`pwd`/llvm
rm -f $build_llvm
rm -f $installprefix
mkdir -p $build_llvm
mkdir -p $installprefix
cd $build_llvm
cmake -G "Unix Makefiles" -DCMAKE_BUILD_TYPE=Debug  -DLLVM_ENABLE_ASSERTIONS=On -DLLVM_ENABLE_PROJECTS="clang;lld" -DCMAKE_INSTALL_PREFIX=$installprefix $llvm
make -j 8 
make install

  

