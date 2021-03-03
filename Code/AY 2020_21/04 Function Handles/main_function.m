function fh = main_function ()

fprintf("Hello from function main_function()\n");
sub_function();
fh = @sub_function;
end


function a1 = sub_function()

fprintf("Hello from function sub_function()\n");
a1 = 99;

end

