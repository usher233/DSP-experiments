clc;
clear;
%��conv��������
x1n=[1 1 1 1 1 1 1 1 ];
h1n=[ones(1,10) zeros(1,5)];
h2n=[1,2.5,2.5,1 zeros(1,5)];
y21n=conv(h1n,x1n);n21n=0:length(y21n)-1;
y22n=conv(h2n,x1n);n22n=0:length(y22n)-1;
subplot(2,2,1);
nh1n=0:length(h1n)-1;
xlabel('n');
ylabel('h1(n)');
stem(nh1n,h1n,'.');
title('(d) ϵͳ��λ������Ӧh1(n)');box on;
%
subplot(2,2,2);
xlabel('n');
ylabel('y21(n)');
stem(n21n,y21n,'.');
title('(e) h1(n)��R8(n)�ľ��y21(n)');box on;
%
subplot(2,2,3);
nh2n=0:length(h2n)-1;
xlabel('n');
ylabel('h2(n)');
stem(nh2n,h2n,'.');
title('(f) ϵͳ��λ������Ӧh2(n)');box on;
%
subplot(2,2,4);
xlabel('n');
ylabel('y22(n)');
stem(n22n,y22n,'.');
title('(e) h2(n)��R8(n)�ľ��y22(n)');box on;

