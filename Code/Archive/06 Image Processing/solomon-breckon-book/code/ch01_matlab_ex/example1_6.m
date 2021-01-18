% Example Matlab script as provided with textbook:
%
%  Fundamentals of Digital Image Processing: A Practical Approach with Examples in Matlab
%  Chris J. Solomon and Toby P. Breckon, Wiley-Blackwell, 2010
%  ISBN: 0470844736, DOI:10.1002/9780470689776, http://www.fundipbook.com
%
D=imread('onion.png');      % Read in 8-bit RGB colour image.

Dgray = rgb2gray(D);        % convert it to a grayscale image

subplot(2,1,1); imshow(D); axis image;  % display both side by side 
subplot(2,1,2); imshow(Dgray);         