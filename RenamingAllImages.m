%%Renaming all 632 files


clear;

cd 'D:\ClothingNeuralNetwork\NewResizedData';
allfiles = dir ('*.*');
for i = 3 : length(allfiles)
    I = imread(allfiles(i).name);
     filename = strcat(int2str(i-2),'_', allfiles(i).name);
       

    
    cd ..\RenamedFiles
    imwrite(I,filename);
    cd ..\NewResizedData;
end
cd ..\;
% list_png = dir('*.png');
% list_jpg = dir('*.jpg');
% 
% list = [list_png ; list_jpg];
% 
% 
% number_of_files = size(list);
% 
% for i= 1: number_of_files(1,1)
%     
%     
%     filename = (list(i).name);
%     I = imread(filename); 
%     
%     
%     imwrite(I, int2str(i), 'jpg');
%       
% end
