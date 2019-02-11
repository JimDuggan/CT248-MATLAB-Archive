% Example Matlab script as provided with textbook:
%
%  Fundamentals of Digital Image Processing: A Practical Approach with Examples in Matlab
%  Chris J. Solomon and Toby P. Breckon, Wiley-Blackwell, 2010
%  ISBN: 0470844736, DOI:10.1002/9780470689776, http://www.fundipbook.com
%
D=imread('onion.png');      % Read in 8-bit RGB colour image.
DNoRed = D;
DNoGreen = D;
DNoBlue    = D;

DNoRed(:,:,1) = 0;
DNoGreen(:,:,2) = 0;
DNoBlue(:,:,3)    = 0;

subplot(2,2,1); imshow(D); axis image;  % display all in 2x2 plot

subplot(2,2,2); imshow(DNoRed); title('No Red');     % display and label      
subplot(2,2,3); imshow(DNoGreen); title('No Green');
subplot(2,2,4); imshow(DNoBlue); title('No Blue');