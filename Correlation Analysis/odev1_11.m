clc;clear;
N=1000; %Ornek sayisi
t=0:N;
%e ve u beyaz gurultu kaynaklari olusturuluyor
e=randn(1,length(t));
u=randn(1,length(t));

%Kovaryanslar hesaplaniyor
phi_ee = kovaryans(e,e);
phi_uu = kovaryans(u,u);
phi_eu = kovaryans(e,u);
saglama = xcorr(e,e); %saglama icin

%Gorsellestirme icin - ve + degerler
x=-max(t):1:max(t);
%subplot(2,1,1);
plot(x, phi_uu);
ylabel('Amplitude');
xlabel('Time sample');
title('Phi_e_u');
