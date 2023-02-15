D=imread('onion.png'); 


subplot(1,3,1); histogram(D(:,:,1),256); title('Red Channel');  
subplot(1,3,2); histogram(D(:,:,2),256); title('Green Channel'); 
subplot(1,3,3); histogram(D(:,:,3),256); title('Blue Channel');   
