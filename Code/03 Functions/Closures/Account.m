function [fh_setBalance, fh_getBalance, fh_debit, fh_credit] = Account(num, bal)
% This is an example of an embedded function(s)
number = num;
balance = bal;

function [] =  setBalance(newb)
 balance= newb;
end

function [the_bal] =  getBalance()
the_bal = balance;
end

function [] =  credit(amt)
 balance= balance + amt;
end

function [] =  debit(amt)
 balance= balance - amt;
end

fh_getBalance = @getBalance;
fh_setBalance  = @setBalance;
fh_credit          = @credit;
fh_debit           = @debit;

end