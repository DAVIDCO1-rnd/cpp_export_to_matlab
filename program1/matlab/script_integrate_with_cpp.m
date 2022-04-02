clear;
close all;
clc;

% mex -setup cpp

lib_name = 'edlib';
output_folder = '.';

interface_dll_path = sprintf('%s\\%sInterface.dll',lib_name, lib_name);

xml_file = sprintf('%sData.xml',lib_name);
matlab_file = sprintf('define%s.m',lib_name);
mlx_file = sprintf('define%s.mlx',lib_name);

xml_full_path = fullfile(output_folder, xml_file);
matlab_full_path = fullfile(output_folder, matlab_file);
mlx_full_path = fullfile(output_folder, mlx_file);

files_to_delete = {...
    xml_full_path ,... 
    matlab_full_path,...
    mlx_full_path};
num_of_files_to_delete = length(files_to_delete);

for i=1:num_of_files_to_delete
    current_file_to_delete = files_to_delete{i};
    if exist(current_file_to_delete, 'file') == 2
        delete(current_file_to_delete);
    end
end

headerFiles = "calc_sum.h";

lib_full_path = "Cpp_to_matlab_SHARED.lib";

% if ~exist(outputFolder, 'dir')
%    mkdir(outputFolder)
% end


clibgen.generateLibraryDefinition(headerFiles, 'Libraries', lib_full_path, 'OutputFolder', output_folder, 'PackageName', lib_name);

current_folder = pwd;
cd(output_folder)
if exist(interface_dll_path, 'file') == 0
    build(defineedlib);
end
cd(current_folder);

summary(defineedlib);

% import clib.edlib.*
addpath(lib_name)

num1 = int32(9);
num2 = int32(7);
res = clib.edlib.my_func(num1,num2);
fprintf('%d + %d = %d\n',num1, num2, res);
