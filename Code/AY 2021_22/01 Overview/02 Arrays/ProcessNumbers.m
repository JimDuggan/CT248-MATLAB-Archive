clear;

sum = 0;

n  = input ('How many numbers : ');
s  = input ('Step size : ');

for i = 1:s:n
    num  = input ('Please enter a number : ');
    sum = sum + num;
end

avr = sum/n;

fprintf("The average of the numbers is %f\n",avr);

