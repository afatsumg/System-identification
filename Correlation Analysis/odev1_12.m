clc;clear
N = 10;
Range = [-1,1];
Band = [0 1];

x = idinput(N,'prbs',Band,Range);
deger = iddata([],x,1);

plot(deger);
mean(x) %beklenen deger

x1 = (x - mean(x)).*(x - mean(x));
mean(x1)

kovaryans(x,x)