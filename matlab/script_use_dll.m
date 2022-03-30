clear;
close all;
clc;

is_dll_loaded = libisloaded('Cpp_to_matlab_DLL');

if is_dll_loaded==true
    unloadlibrary('Cpp_to_matlab_DLL');
end

[notfound, warnings] = loadlibrary('Cpp_to_matlab_DLL.dll', 'calc_sum.h')

