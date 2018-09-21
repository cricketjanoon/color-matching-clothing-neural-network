%%Saving Images to .dat file
clear;
cd 'D:\ClothingNeuralNetwork\NewQuantized100by100';
list = dir('*.png');
% list_jpg = dir('*.jpg');

% list = [list_png ; list_jpg];




number_of_files = size(list);

X = zeros(632, 30000);


for i= 1: number_of_files(1,1)
    filename = list(i).name;
    I = imread(filename);
    
    
    [m,n] = size(I);
    k=1;
    
    for p=1:m
        for q=1:n
            X(i,k) = I(p,q);
            k= k+1;
        end
    end
  
      
end



save('D:\ClothingNeuralNetwork\rgbvector', 'X');



