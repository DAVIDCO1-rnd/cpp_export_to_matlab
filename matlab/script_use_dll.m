clear;
close all;
clc;

is_dll_loaded = libisloaded('Cpp_to_matlab');

if is_dll_loaded==true
    unloadlibrary('Cpp_to_matlab');
end

[notfound, warnings] = loadlibrary('Cpp_to_matlab.dll', 'calc_sum.h');

