I = [1   2   3    4; ...
       5   6   7   8; ...
       9  10 11 12;...
      13 14 15 16]

[m, n] = size(I);

O = uint8(zeros(n,m));

for i = 1: m
    O(i,:) = fliplr(I(:,i)');
end




