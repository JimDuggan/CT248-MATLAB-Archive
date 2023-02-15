clear;

x1 = zeros(256,256);
imshow(x1);

rng(100);
x2 = x1;
x2(1:(256/2),1:(256/2)) = ...
    randi([0 1], 256/2, 256/2);


imshow(x2);


x = [zeros(256/2,256/2) ones(256/2, 256/2);
     ones(256/2,256/2) zeros(256/2, 256/2)
    ];


imshow(x);
