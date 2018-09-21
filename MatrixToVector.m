a = [1, 2 ,3; 4, 5, 6; 7, 8, 9];

[m,n] = size(a);
k =1;


for i =1 : m
    for j =1 : n
        temp(1,k) = a(i,j);
        k= k+1;
    end
end


save('data.mat', 'temp');
clear;
load('data.mat');