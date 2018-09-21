M=zeros(32,3,632);  % for 10 files
p=0;
for k=1:632
    p=p+1;
    A=load(sprintf('%d.mat',k));
    s=fields(A);   
    M(:,:,p)=A.(s);
end