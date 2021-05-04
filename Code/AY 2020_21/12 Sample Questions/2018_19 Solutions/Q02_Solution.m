% #7D306F - mulberry purple
r1 = uint8(hex2dec('7D'));
g1 = uint8(hex2dec('30'));
b1 = uint8(hex2dec('6F'));

im1 = uint8(zeros(100,100,3));

im1(:,:,1) = r1;
im1(:,:,2) = g1;
im1(:,:,3) = b1;


% #05A7AB - teal
r2 = uint8(hex2dec('05'));
g2 = uint8(hex2dec('A7'));
b2 = uint8(hex2dec('AB'));

im2 = uint8(zeros(100,50,3));

im2(:,:,1) = r2;
im2(:,:,2) = g2;
im2(:,:,3) = b2;

im = [im2 im1];
imshow(im);


