I = imread('rice.png');

histogram(I,256);

T1 = I > 100;
T2 = I > 105;
T3 = I > 110;
T4 = I > 115;
T5 = I > 120;



subplot(2,3,1),imshow(I),title('Original Image');
subplot(2,3,2),imshow(T1),title('Threshold @100');
subplot(2,3,3),imshow(T2),title('Threshold @105');
subplot(2,3,4),imshow(T3),title('Threshold @110');
subplot(2,3,5),imshow(T4),title('Threshold @115');
subplot(2,3,6),imshow(T5),title('Threshold @120');



