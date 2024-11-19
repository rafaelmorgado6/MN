%a
f = @(x)1./x.^2-sin(x);
xx = linspace(-20, 20, 1000);
plot(xx,f(xx))
axis([-6 6  -3 3])
grid on
hold on

% como f é sinusoidal vai ter numero infinito de zeros

%b
aproxraiz(f,0,1000,1)
[f(0.58) f(1.58)]

syms x
dy = matlabFunction(diff(f,x,1));

xx = linspace(0.58, 1.58, 1000);
plot(xx,dy(xx))
grid on

% como o grafico da dereivada é sempre negativo, 
% a função só tem 1 zero nesse intervalo

%c
format long
[c, yc, erromax] = bissec(f, 6, 7, 0.5.*10.^-5, 200)

% ao fim de 18 iterações obteve-se 6.308315277099609 como valor da
% aproximação do zero(alpha) e como 0.000003814697266 < o.5*10^-5
% a aproximação está correta

%d
format long
[c, yc, difck] = cordafalsa(f, 6, 7, 0.5.*10.^-5, 200)

% ao fim de 4 iterações (menos que o metodo bissec) obteve-se 6.308316825268689 
% como valor da aproximação do zero(alpha) e como 0.000000052907995 < o.5*10^-5
% a aproximação está correta