cmake_minimum_required(VERSION 3.12)

project(Cpp_to_matlab_solution VERSION 1.0.0)
add_subdirectory(DLL_folder)

add_executable(Cpp_to_matlab
Main_solution/Src/main_calc_sum.cpp)

target_link_libraries(Cpp_to_matlab Cpp_to_matlab_DLL)




