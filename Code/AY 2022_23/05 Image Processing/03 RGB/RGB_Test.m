D=imread('onion.png'); 
DNoRed = D;
DNoGreen = D;
DNoBlue = D;

DNoRed(:,:,1)   = 0;
DNoGreen(:,:,2) = 0;
DNoBlue(:,:,3)  = 0;

subplot(2,2,1); imshow(D); axis image;
subplot(2,2,2); imshow(DNoRed); title('No Red');
subplot(2,2,3); imshow(DNoGreen); title('No Green');
subplot(2,2,4); imshow(DNoBlue); title('No Blue');
