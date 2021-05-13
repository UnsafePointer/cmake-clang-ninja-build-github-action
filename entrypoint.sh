#!/usr/bin/bash -l

cmake -Bbuild -GNinja -DCMAKE_CXX_COMPILER=/usr/bin/clang++-12 -DCMAKE_TOOLCHAIN_FILE=/vcpkg/scripts/buildsystems/vcpkg.cmake $1
ninja -C build
ninja -C build test
