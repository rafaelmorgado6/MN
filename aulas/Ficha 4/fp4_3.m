f = @(x)3.*x.^2-exp(x);

xx = linspace(-10,10,1000);
plot(xx,f(xx))
grid on
axis([-6 6 -1 1]) % fazer zoom
hold on
aproxraiz(f,-1,1000,0)

format long
[c, yc, erromax] = bissec(f, -1, 0, 10.^-5, 200)


% ao fim de 17 iteraçoes obteve-se c(alpha) = -0.458961486816406
% com erro absoluto 0.000007629394531 < 10^-5, logo 
% verifica-se que a aproximação está correta