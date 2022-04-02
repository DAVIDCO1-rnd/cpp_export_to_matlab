#!/bin/bash

DIR="./build"
if [ -d "$DIR" ]; then
  rm -r $DIR/*
else
  mkdir $DIR
fi

cd build
cmake ..
cmake --build . --target Cpp_to_matlab_SHARED

