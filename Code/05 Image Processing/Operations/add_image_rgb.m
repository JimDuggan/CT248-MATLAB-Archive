I = imread('onion.png');


O = I + 100;


subplot(1,2,1),imshow(I),title('Original Image');
subplot(1,2,2),imshow(O),title('Adding 100 to pixels');




