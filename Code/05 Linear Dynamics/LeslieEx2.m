y  = input ('Please enter the year: ');

L = [0 9 12; 1/3 0 0; 0 1/2 0];

X0 = [0 0 1]';

X = L^y * X0;

disp(['The prediction for year ' num2str(y) ' is...']);
disp(X);

