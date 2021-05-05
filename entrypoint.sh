#!/usr/bin/bash -l

cmake -Bbuild -GNinja -DCMAKE_CXX_COMPILER=/usr/bin/clang++-12 $1
ninja -C build
