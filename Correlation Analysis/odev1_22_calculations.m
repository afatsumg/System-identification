N = 20;
u = get(out.u);
y1 = get(out.y1);
y2 = get(out.y2);
numerator = zeros(1, N);
denominator = 0;
% u.Data dataya ulasmak icin.
for k=1:N-1
    for t=k+1:N
         numerator(k) = numerator(k) + y2.Data(t)*u.Data(t-k);
    end
end
for k=1:N
    denominator = denominator + u.Data(k).*u.Data(k);
end
h = numerator ./denominator;
plot(h)