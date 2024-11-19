f = @(x)x.^3-2*exp(-x);
[f(0) f(1)]

syms x
df = matlabFunction(diff(f,x,1))

xx = linspace(0, 1, 1000);
plot(xx,df(xx),'b')

% como o grafico da derivada é sempre positivo (ou negaativo) 
% a função só tem 1 zero nesse intervalo

format long
[c, yc, erromax] = bissec(f, 0, 1, 0.5.*10.^-5, 200)

% ao fim de 18 iteraçoes obteve-se c(alpha) = 0.925479888916016
% com erro absoluto 0.000003814697266 < 0.5*10^-5, logo 
% verifica-se que a aproximação está correta