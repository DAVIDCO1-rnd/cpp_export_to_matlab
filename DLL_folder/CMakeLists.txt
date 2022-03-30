cmake_minimum_required(VERSION 3.12)

project(Cpp_to_matlab_DLL VERSION 1.0.0)

add_library(Cpp_to_matlab_DLL Src/calc_sum.cpp Includes/calc_sum.h)

target_include_directories(Cpp_to_matlab_DLL PUBLIC Includes)





