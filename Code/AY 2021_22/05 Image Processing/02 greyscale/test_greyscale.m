clear;

locs = linspace(0,255,4);
sq1 = uint8(locs(1) * ones(64,64));
sq2 = uint8(locs(2) * ones(64,64));
sq3 = uint8(locs(3) * ones(64,64));
sq4 = uint8(locs(4) * ones(64,64));

sq = [sq1 sq2; sq3 sq4];

imshow(sq);
