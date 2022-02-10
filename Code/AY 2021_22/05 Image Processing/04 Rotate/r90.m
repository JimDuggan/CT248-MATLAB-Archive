C = imread('cameraman.tif');

flip = @(m)rot90(rot90(m));

f_C = flip(C);

subplot(2,1,1); imshow(C); title('Original');
subplot(2,1,2); imshow(f_C); title('Flipped');





