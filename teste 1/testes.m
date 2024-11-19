%1 a)
syms x
F=1+sin(x-pi/4);
condF=matlabFunction(abs(diff(F,x,1)*x/F),'Vars',x)

% b)
x1=linspace(-pi/4,pi/4);
y1=condF(x1);
plot(x1,y1,'g')
legend('condF')
grid on

% c)
plot(x1,y1,'k+', x1,1,'ro')

%exercicio 2

% a)
A1=[-1 0 3; 2 0 1; 1 3 -1];
b=[-5 3 -5]';
%P=[0 0 1; 0 1 0; 1 0 0];

%A1=P*A

det([A1(1,1)])
det([A1(1,1) A1(1,2); A1(2,1) A1(2,2)])
det(A1)

[L,U,P]=lu(A1)

y=subdesc(L,b)
x=subasc(U,y)

% b)

ap=A1*0.1

xp=gausspiv(ap,b)

% c)

r=b-A1*xp %vetor correção
delta = gausspiv(A1,r) %refinamento
x_melhor= xp+delta %solução melhorada

norma = norm(b-A1*x_melhor,1)




