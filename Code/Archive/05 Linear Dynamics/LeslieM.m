clear;

L = [0 9 12; 1/3 0 0; 0 1/2 0];

X = [0 0 1]';
X0 = X;

res=zeros(24,2);
for t = 1:24
    X = L * X;
    disp([t X' sum(X)]);
    res(t,:) = [t sum(X)];
end

plot(res(:,1),res(:,2))


