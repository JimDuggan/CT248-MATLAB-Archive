r_Str  = '7D'; g_Str  = '30'; b_Str  = '6F';

R = hex2dec(r_Str); G = hex2dec(g_Str);
B = hex2dec(b_Str);

pic = uint8(zeros(100,100,3));

pic(:,:,1) = R;
pic(:,:,2) = G;
pic(:,:,3) = B;

imshow(pic);


