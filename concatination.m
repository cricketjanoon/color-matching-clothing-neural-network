clear;

%% Store all the pants in list
%change this path wrt your pc
cd 'D:\ClothingNeuralNetwork\CroppedPants'; 
list_pants = dir('*.png');    
number_of_Pants = size(list_pants);

%% Store all the shirts in list
%change this path wrt your pc
cd 'D:\ClothingNeuralNetwork\CroppedShirts'; 
list_shirts = dir('*.png');
number_of_Shirts = size(list_shirts);

for i= 1:number_of_Pants(1)
    filename_pant = list_pants(i).name;
    cd 'D:\ClothingNeuralNetwork\CroppedPants';
    I1 = imread(filename_pant);
%     imshow(I1);
       
   for j= 1: number_of_Shirts(1)
   
        filename_shirt = list_shirts(j).name;
        cd 'D:\ClothingNeuralNetwork\CroppedShirts';
        I2 = imread(filename_shirt);
        newImg = cat(1,I2,I1);
        
        %giving meaningful name
        pant_number = strtok(filename_pant,'.');
        shirt_number = strtok(filename_shirt, '.');
        
        new_file_name =  strcat(pant_number, 'p + ', shirt_number,'s.png');
        
        %move to the JoinedImages folder to store combined image
        cd 'D:\ClothingNeuralNetwork\concatinatedImages';
        imwrite(newImg, new_file_name, 'png');
    end   
end


