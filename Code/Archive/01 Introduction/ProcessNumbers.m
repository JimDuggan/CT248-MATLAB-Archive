clear;

sum = 0;

n  = input ('How many numbers : ');

for i = 1:n
    num  = input ('Please enter a number : ');
    sum = sum + num;
end

avr = sum/n;

fprintf("The average of the numbers is %f\n",avr);

