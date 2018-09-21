clear;
cd D:\ClothingNeuralNetwork\concatinatedImages;
   
listOfCombinations = dir('*.png');    

number_of_files = size(listOfCombinations);

for i= 1: 632
    filename = listOfCombinations(i).name;
    cd D:\ClothingNeuralNetwork\concatinatedImages
    I = imread(filename);
    %imshow(I);
    temp=  imresize(I, [100 100]);
    [qwe,map]=rgb2ind(temp,32);
   
   cd D:\ClothingNeuralNetwork\abc; 
        save('map.mat','map')
        save(sprintf('map_%02d',i),'map');
   
%     cd D:\ClothingNeuralNetwork\NewQuantized100by100;
%     save('map.mat','map')
%    qwe=rgb2gray(temp);
   % imshow(resized_img);
%     imwrite(qwe,map,strcat('D:\ClothingNeuralNetwork\NewQuantized100by100/',map));
%      imwrite(strcat('D:\ClothingNeuralNetwork/','map.mat'));
end
