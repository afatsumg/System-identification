function [sonuc] = kovaryans(A , B)
%Capraz korelasyon fonksiyonu

N = size(A,2);
M = size(B,2);
sonuc = zeros(1, N + M - 1 );
len = size(sonuc,2);

for m = 1 : len  
   arg = (m - N); 

   if(arg < 0)
       m_negatif = 1;
       limit = N + arg;
   else
       m_negatif = 0;
       limit = N - arg;
   end

   for n = 1:limit
           if(m_negatif == 0)
            sonuc(m) = sonuc(m) + A(arg + n) * B(n);
           else
            sonuc(m) = sonuc(m) + A(n) * B(n - arg);
           end
   end
end
sonuc = sonuc ./(2*N-1);
end