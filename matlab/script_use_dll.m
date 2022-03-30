clear;
close all;
clc;

is_dll_loaded = libisloaded('Cpp_to_matlab_DLL');

if is_dll_loaded==true
    unloadlibrary('Cpp_to_matlab_DLL');
end

[notfound, warnings] = loadlibrary('Cpp_to_matlab_DLL.dll', 'calc_sum.h');

num1 = int32(5);
num2 = int32(7);
res = calllib('Cpp_to_matlab_DLL','my_func',num1, num2);
fprintf('%d + %d = %d\n',num1, num2, res);

