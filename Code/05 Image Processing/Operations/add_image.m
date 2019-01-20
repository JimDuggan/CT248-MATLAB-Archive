I = imread('cameraman.tif');

O = I + 50;
O1 = I + 100;
O2 = I - 100;


subplot(2,2,1),imshow(I),title('Original Image');
subplot(2,2,2),imshow(O),title('+50');
subplot(2,2,3),imshow(O1),title('+100');
subplot(2,2,4),imshow(O2),title('-100');




