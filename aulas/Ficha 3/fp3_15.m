k = [0 1 2 3 4 5];
c = @(k)-cos(((k+0.5)/6).*3.14)
x = c(k)

f = @(x)(x-1).*exp(x)-2;
y = f(x)

f = @(z)(x-1).*exp(x)-2;
syms z;
dy = diff(f,z,1);
y = f(x);
hermite(-0.9,x,y,dy)


