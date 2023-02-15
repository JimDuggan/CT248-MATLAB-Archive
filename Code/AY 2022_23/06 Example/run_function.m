clear;

p = imread("cameraman.tif");

slices = 4;

pics = divide_picture(p,slices);

[r,c,depth] = size(pics);

for i = 1:depth
    subplot(1,depth,i);
    imshow(pics(:,:,i))
end
