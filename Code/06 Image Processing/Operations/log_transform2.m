I = double(imread('cameraman.tif')); % Read the image

c = 255/log(1 + max(max(I)));

phi = 0.1
O = c * log(1+(exp(phi)-1)*I);

subplot(1,2,1),imshow(uint8(I)),title('Original Image');
subplot(1,2,2),imshow(uint8(O)),title('Log Transformation Image');
