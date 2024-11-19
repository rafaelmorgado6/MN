k = linspace(-1,1,9);
c = @(k)-cos(((k+0.5)/6).*pi);


f = @(x)1./(1+25*x.^2);

syms x
df = matlabFunction(diff(f,x,1))
x=c(k)
y = f(x);
dy=df(x)
hermitecoef(x,y,dy)
