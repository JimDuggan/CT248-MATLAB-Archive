% showing anonymous function example.

f = @(x) x.*2

f(1:10)

g = @(x,y) sum(x.*y)

g([1 2 3], [4 5 6])

h = @(x) [x .* 2  x.^2]

h(1:5)




