clear;
% Show how we can process a picture using arrays

p = imread("cameraman.tif");

[r,c] = size(p);

num_pics = 2;

bp = linspace(0,c,num_pics+1);

bp = floor(bp);

start_col = bp(1)+1;
end_col  = bp(2);

p1 = p(:,start_col:end_col);

start_col = bp(2)+1;
end_col  = bp(3);

p2 = p(:,start_col:end_col);

subplot(1,2,1);
imshow(p1);
subplot(1,2,2);
imshow(p2);



