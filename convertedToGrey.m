clear;
cd D:\ClothingNeuralNetwork\MixedClothingDataResized;
list = dir('*.jpg');    
list_png = dir('*.png');    

number_of_files = size(list);

for i= 1: number_of_files(1,1)
    filename = list(i).name;
    I = imread(filename);
    %imshow(I);
    
    
       temp=  imresize(I, [100 100]);
    imshow(temp);
   % qwe=rgb2gray(temp);
   % imshow(resized_img);
    imwrite(temp, strcat('D:\ClothingNeuralNetwork\NewResizedData/',filename));
    
end


number_of_files = size(list_png);

for i= 1: number_of_files(1,1)
    filename = list_png(i).name;
    I = imread(filename);
    %imshow(I);
    
    
    temp=  imresize(I, [100 100]);
    
   % qwe=rgb2gray(temp);
    
   % imshow(qwe)
   % imshow(resized_img);
    imwrite(temp, strcat('D:\ClothingNeuralNetwork\NewResizedData/',filename));
    
end