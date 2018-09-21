clear;
cd D:\ClothingNeuralNetwork\concatinatedImages;
I=imread('aaa.png');
imshow(I)
J= imresize(I, [100 100]);
[X,map]=rgb2ind(J,32);
figure
imshow(X,colormap(map))

imwrite(X,colormap(), strcat('D:\ClothingNeuralNetwork/','xyz.png'));