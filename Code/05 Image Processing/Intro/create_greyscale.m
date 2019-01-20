% create a random greyscale image

data = randi([0 255],1000,1000);

t_data  = (data > 150) .* data;

subplot(2,2,1); imshow(data);
subplot(2,2,2); imshow(t_data);

