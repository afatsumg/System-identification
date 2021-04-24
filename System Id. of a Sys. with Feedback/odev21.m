N = 100;

y = get(out.y);
y_1 = get(out.y_1);
u_1 = get(out.u_1);

a11 = 0;a21 = 0; a22 =0; b11=0; b21 =0;
for k=1:N
    a11 = a11 + y_1.Data(k).*y_1.Data(k);
    a21 = a21 + y_1.Data(k).*u_1.Data(k);
    a22 = a22 + u_1.Data(k).*u_1.Data(k);
    b11 = b11 + y.Data(k).*y_1.Data(k);
    b21 = b21 + y.Data(k).*u_1.Data(k);
end
A = [a11, -a21; -a21, a22];
b = [-b11;b21];
x = A\b