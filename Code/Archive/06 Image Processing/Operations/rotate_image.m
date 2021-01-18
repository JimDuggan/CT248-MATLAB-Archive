I = imread('cameraman.tif');

[r, c] = size(I);

O_90 = uint8(zeros(r,c));

for i = 1: r
    O_90(i,:) = fliplr(I(:,i)');
end



subplot(3,2,1),imshow(I),title('Original Image');
subplot(3,2,2),imshow(O_90),title('90 Rotation');
subplot(3,2,3),imshow(I),title('Original Image');
subplot(3,2,4),imshow(I'),title('Transpose');
subplot(3,2,5),imshow(I),title('Original Image');
subplot(3,2,6),imshow(fliplr(I)),title('fliplr');





