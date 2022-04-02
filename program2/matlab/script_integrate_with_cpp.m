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

headerFiles = ["Circle.h"];

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

centerX = int32(9);
centerY = int32(7);
radius = int32(5);
my_circle = clib.edlib.Circle(centerX,centerY,radius);
% new_radius = int32(88);
% my_circle.setRadius(new_radius);

radius1 = my_circle.getRadius();
x1 = my_circle.getX();
y1 = my_circle.getY();

circle_area = my_circle.calcArea();
circle_perimeter = my_circle.calcPerimeter();

fprintf('area of circle with radius %d = %f\n', radius, circle_area);
fprintf('perimeter of circle with radius %d = %f\n', radius, circle_perimeter);


david = 5;
