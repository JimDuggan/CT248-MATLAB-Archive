function pics = divide_picture(pic,breaks)
% for this version, breaks should be an even number

    [r, c] = size(pic);

    max_width = floor(c/breaks);

    pics = zeros(r,max_width,breaks);

    bp = floor(linspace(0,c,breaks+1));

    pic_num = 1;
    for i = 1:breaks
        start_col = bp(i) + 1;
        end_col = bp(i+1);
        pics(:,:,pic_num) = pic(:,start_col:end_col);
        pic_num = pic_num + 1;
    end

    pics = uint8(pics);
end