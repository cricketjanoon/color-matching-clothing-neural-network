clear; clc;


list = dir('*.png');


number_of_files = size(list);


ind_test = zeros(number_of_files(1), 10000, 'uint8');
map_test = zeros(32,3, number_of_files(1));


for i= 1: number_of_files
    
    filename = list(i).name;
    I = imread(filename);
    
    temp =  imresize(I, [100 100]);
    
    [ind, map] = rgb2ind(temp, 32);

    ind_test(i,:) = reshape(ind, 1,10000);
    map_test(:,:,i) = map;
end

save('test_image_data.mat', 'ind_test','map_test');