clear;
close all;
clc;

is_dll_loaded = libisloaded('Cpp_to_matlab_SHARED');

if is_dll_loaded==true
    unloadlibrary('Cpp_to_matlab_SHARED');
end

[notfound, warnings] = loadlibrary('Cpp_to_matlab_SHARED.dll', 'calc_sum.h');

num1 = int32(9);
num2 = int32(7);
res = calllib('Cpp_to_matlab_SHARED','my_func',num1, num2);
fprintf('%d + %d = %d\n',num1, num2, res);

unloadlibrary('Cpp_to_matlab_SHARED');


