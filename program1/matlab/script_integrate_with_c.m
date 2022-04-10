clear;
close all;
clc;


shared_file_name_without_extension = 'Cpp_to_matlab_SHARED';

if isunix
    shared_file_name_without_extension = sprintf('lib%s',shared_file_name_without_extension);
    shared_file_name_with_extension = sprintf('%s.so',shared_file_name_without_extension);
elseif ispc
    shared_file_name_with_extension = sprintf('%s.dll',shared_file_name_without_extension);
else
    error('Platform not supported')
end


is_shared_object_loaded = libisloaded(shared_file_name_without_extension);
if is_shared_object_loaded==true
    unloadlibrary(shared_file_name_without_extension);
end

[notfound, warnings] = loadlibrary(shared_file_name_with_extension, 'calc_sum.h');

num1 = int32(9);
num2 = int32(7);
res = calllib(shared_file_name_without_extension,'my_func',num1, num2);
fprintf('%d + %d = %d\n',num1, num2, res);

unloadlibrary(shared_file_name_without_extension);




