C0 = imread('cameraman.tif');

C1 = rot90(C0);
C2 = rot90(C1);
C3 = rot90(C2);

subplot(2,2,1); imshow(C0); title('Original');
subplot(2,2,2); imshow(C1); title('Rot By 90');
subplot(2,2,3); imshow(C2); title('Rot By 180');
subplot(2,2,4); imshow(C3); title('Rot By 270');





