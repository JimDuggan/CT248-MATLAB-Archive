I = imread('NUIG.jpg');

[po, pr, pg, pb] = create_four(I);

subplot(2,2,1); imshow(po);
subplot(2,2,2); imshow(pr);
subplot(2,2,3); imshow(pg);
subplot(2,2,4); imshow(pb);




