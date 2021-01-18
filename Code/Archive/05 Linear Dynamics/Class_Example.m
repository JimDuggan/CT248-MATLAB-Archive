clear;

L = [0 3 1; 0.3 0 0; 0 0.5 0];

X = [1000 2000 3000]';
X0 = X;

res=zeros(24,2);
for t = 1:30
    X = L * X;
    disp([t X' sum(X)]);
    res(t,:) = [t sum(X)];
end

plot(res(:,1),res(:,2))


