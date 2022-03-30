cmake_minimum_required(VERSION 3.12)

project(Cpp_to_matlab_solution VERSION 1.0.0)

project(Cpp_to_matlab_DLL VERSION 1.0.0)
project(Cpp_to_matlab_LIB VERSION 1.0.0)

add_library(Cpp_to_matlab_DLL SHARED DLL_folder/Src/calc_sum.cpp DLL_folder/Includes/calc_sum.h)
add_library(Cpp_to_matlab_LIB STATIC DLL_folder/Src/calc_sum.cpp DLL_folder/Includes/calc_sum.h)

target_include_directories(Cpp_to_matlab_DLL PUBLIC DLL_folder/Includes)
target_include_directories(Cpp_to_matlab_LIB PUBLIC DLL_folder/Includes)

add_executable(Cpp_to_matlab Main_solution/Src/main_calc_sum.cpp)

target_link_libraries(Cpp_to_matlab Cpp_to_matlab_DLL)
target_link_libraries(Cpp_to_matlab Cpp_to_matlab_LIB)




