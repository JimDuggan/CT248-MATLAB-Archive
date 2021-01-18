
C = readtable("AlbumSales.xlsx");

scatter(C.adverts, C.sales);

b = polyfit(C.adverts, C.sales, 1);

pred = b(2) + b(1).*C.adverts;

%pred=polyval(b,C.adverts);

hold on;

plot(C.adverts, pred);
