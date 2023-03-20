X = imread("cameraman.tif");

p1 = X * 1.2;

p2 = X>100;

subplot(1,3,1);
imshow(X);
title("Original");
subplot(1,3,2);
imshow(p1);
title("Brighter");
subplot(1,3,3);
imshow(p2);
title("Binary");




