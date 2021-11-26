%谐振器分析
clc;
clear;

un=ones(1,256);
n=0:255;
xsin = sin(0.014*n)+sin(0.4*n);
%
y_coefficient = [1,-1.8237,0.9801];
x_coefficient=[1/100.49,0,-1/100.49];
y31n =filter(x_coefficient,y_coefficient,un);
y32n =filter(x_coefficient,y_coefficient,xsin);
%
subplot(2,1,1);
n31n=0:length(y31n)-1;
xlabel('n');
ylabel('y31(n)');
stem(n31n,y31n,'.');
title('(h)谐振器对u(n)的响应y31(n)');box on;
%
subplot(2,1,2);
n32n=0:length(y32n)-1;
xlabel('n');
ylabel('y32(n)');
stem(n32n,y32n,'.');
title('(i)谐振器对 sin 的响应y32(n)');box on;

