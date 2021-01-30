clear;

age = input('Please enter your age: ');


if age >= 65
    discount = 0.25;
elseif age < 18
    discount = 0.10;
else
    discount = 0.0;
end

disp(['Age = ' num2str(age) ...
      ' Discount = ' num2str(discount)])

    