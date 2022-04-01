cmake_minimum_required(VERSION 3.12)

project(Cpp_to_matlab_solution VERSION 1.0.0)

add_library(Cpp_to_matlab_SHARED SHARED DLL_folder/Src/calc_sum.c DLL_folder/Includes/calc_sum.h)

target_include_directories(Cpp_to_matlab_SHARED PUBLIC DLL_folder/Includes)

add_executable(Cpp_to_matlab Main_solution/Src/main_calc_sum.cpp)

target_link_libraries(Cpp_to_matlab Cpp_to_matlab_SHARED)

message(${CMAKE_CURRENT_SOURCE_DIR}/matlab)
message(${CMAKE_CURRENT_BINARY_DIR}/Debug/Cpp_to_matlab_SHARED.dll)
message(${CMAKE_COMMAND})
message(${CMAKE_SOURCE_DIR})

#file(COPY ${CMAKE_CURRENT_BINARY_DIR}/Debug/Cpp_to_matlab_SHARED.dll
#        DESTINATION ${CMAKE_CURRENT_SOURCE_DIR}/matlab/Cpp_to_matlab_SHARED.dll
	

add_custom_command(TARGET Cpp_to_matlab_SHARED POST_BUILD
                   COMMAND ${CMAKE_COMMAND} -E copy 
				   ${CMAKE_CURRENT_BINARY_DIR}/Debug/Cpp_to_matlab_SHARED.dll
				   ${CMAKE_SOURCE_DIR}/DLL_folder/Includes/calc_sum.h
				   ${CMAKE_CURRENT_SOURCE_DIR}/matlab)		






