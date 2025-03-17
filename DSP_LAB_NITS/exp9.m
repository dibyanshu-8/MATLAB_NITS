%image processing

%color to gray conversion
clc;
clear;
c=imread('turn_to_asthetic.jpg');
imshow(c);
title('original image');
i=rgb2gray(c);
figure(2);
imshow(i);
title('gray scale image');
%contrast enhancement of grayscele images.
cm=imadjust(i);
cmo=histeq(i);
cmo_adapt=adapthisteq(i);
figure(3);
montage({i,cm,cmo,cmo_adapt},'Size',[1,4]);
title('original image & enhanced image using imadjust,histeq,adapthisteq');
%resizing
j=imresize(c,0.50);
figure(4);
imshow(j );
title('resized image');
%edge detection of grayscale image
e1=edge(i,'canny');
figure(5);
imshow(e1);
e2=edge(i,"sobel");
figure(6);
imshow(e2);
e3=edge(i,'prewitt');
figure(7);
imshow(e3);
title('edge detection');
%enhancing image using histogram equalization
figure(8);
subplot(2,1,1);
imshow(c);
subplot(2,1,2);
imhist(c,64);
title('histogram of an image');
figure(9);
subplot(2,1,1);
imshow(i);
subplot(2,1,2);
imhist(i,64);
title('histogram equalization of image');