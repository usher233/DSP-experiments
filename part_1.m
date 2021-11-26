%y(n) = 0.05x(n)+0.05x(n-1)+0.9y(n-2)
y_coefficient = [1,-0.9];
x_coefficient =[0.05 0.05];
%����x1(n)��x2(n)
x1n=[1 1 1 1 1 1 1 1 1 zeros(1,50)];
x2n=[ones(1,130)];
%��ϵͳ�ĵ�λ������Ӧh(n)
hn=impz(x_coefficient,y_coefficient,58);
subplot(2,2,1);
nhn=0:length(hn)-1;
xlabel('n');
ylabel('h(n)');
stem(nhn,hn,'.');
title('(a) ϵͳ��λ������Ӧh(n)');box on;
%��x(n)����Ӧ
y1n=filter(x_coefficient,y_coefficient,x1n);
subplot(2,2,2);
n1n=0:length(y1n)-1;
xlabel('n');
ylabel('y1(n)');
stem(n1n,y1n,'.');
title('(b) ϵͳ��R8(n)����Ӧy1(n)');box on;
y2n=filter(x_coefficient,y_coefficient,x2n);
subplot(2,2,3);
n2n=0:length(y2n)-1;
xlabel('n');
ylabel('y2(n)');
stem(n2n,y2n,'.');
title('(c) ϵͳ��u(n)����Ӧy2(n)');box on;

