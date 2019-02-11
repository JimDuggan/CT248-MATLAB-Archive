I = imread('cameraman.tif');

[m, n] = size(I);

O_90 = uint8(zeros(n,m));

for i = 1: m
    O_90(i,:) = fliplr(I(:,i)');
end



subplot(2,1,1),imshow(I),title('Original Image');
subplot(2,1,2),imshow(O_90),title('90 Rotation');




