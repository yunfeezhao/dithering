img=imread('file.jpg');
subplot(1,2,1);
imshow(img);
img=imresize(img,[160,160]);
[m ,n ,~]=size(img);
img=rgb2gray(img);
img=img/15;
imgd=zeros(4*m,4*n);
imgd=imgd~=0;
key=[15,7,13,5;3,11,1,9;12,4,14,6;0,8,2,10];
for i=0:m-1
    for j=0:n-1
        for a=1:4
            for b=1:4
                if img(i+1,j+1)>key(a,b)
                    imgd(4*i+a,4*j+b)=1;
                end
            end
        end
    end
end
subplot(1,2,2);
imshow(imgd);
