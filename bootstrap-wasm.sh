#!/bin/bash

./configure \
  --cpu=i386 \
  --cc="/home/alice/lind-wasm/clang+llvm-16.0.4-x86_64-linux-gnu-ubuntu-22.04/bin/clang" \
  --extra-cflags="--target=wasm32-wasi -g -O0 --sysroot=/home/alice/lind-wasm/src/glibc/sysroot -pthread -matomics -mbulk-memory -fno-pie -fvisibility=default -fno-builtin" \
  --extra-ldflags="--target=wasm32-wasi -g -O0 --sysroot=/home/alice/lind-wasm/src/glibc/sysroot -static -Wl,--import-memory,--export-memory,--shared-memory,--max-memory=67108864,--export="__stack_pointer",--export=__stack_low" \
  --enable-static --enable-cross --extra-libs=""

echo "CONFIG_ldl=no" >> config.mak

