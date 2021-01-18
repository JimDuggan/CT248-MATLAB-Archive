D=imread('onion.png'); 

alpha = 0.2989;
beta = 0.5870;
gamma = 0.1140;

GS = rgb2gray(D);

GS1 = alpha * D(:,:,1) + beta * D(:,:,2) + gamma * D(:,:,3);

% subplot(2,2,1); imshow(D); axis image;  % display all in 2x2 plot

subplot(2,2,1); imshow(GS); title('rgb2gray function');     % display and label      
subplot(2,2,3); imshow(GS1); title('Transform 0.2989 0.587 0.11');