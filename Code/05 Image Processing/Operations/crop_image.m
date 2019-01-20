clear;
D=imread('onion.png');

d_row = 70;
d_col =  100;

[r,c,d] = size(D);

cen_row = ceil(r/2);
cen_col  = ceil(c/2);

start_row = cen_row - (d_row/2);
start_col  = cen_col - (d_col/2);

O = D(start_row:(start_row+d_row - 1), ...
          start_col:(start_col+d_col - 1), ...
          :);

subplot(2,1,1); imshow(D); axis image;  title('135x198');

subplot(2,1,2); imshow(O); title('70x100');        

