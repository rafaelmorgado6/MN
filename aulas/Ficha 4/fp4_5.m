%a
f =@(x) log(abs(x));
g = @(x) 2.*x-4;
h = @(x) log(abs(x))-2.*x+4

xx = linspace(-10,10,1000);

plot(xx,f(xx),'r',xx,g(xx),'b')
axis([-5 5 -5 5])
grid on

%b
format long
[c, yc, difck] = cordafalsa(h, 0.001, 0.5, 0.5.*10.^-8, 200)

% ao fim de  iterações (menos que o metodo bissec) obteve-se  0.019026025160720 
% como valor da aproximação do zero(alpha) e como 0.000000004130598 <
% 0.5*10^-8 a aproximação está correta