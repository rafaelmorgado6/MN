%a)
x = [ 0, 0.25, 0.5, 0.75, 1];
y = [ 4, 2, 4/3, 1, 0.8];

a = difdivcoef(x,y);
p = newtondifdiv(0.9,x,y);

%format 
%p
syms z

f = @(z)4/(4*z+1);

abs(f(0.9)-p);

dfd5 = diff(f,z,5);
omega4 = abs(prod(0.9-x(1:5)));
majerro = 491520/factorial(5)*omega4

%b)
t = 0.9
t=linspace(0,1,100);
y1=4./(4*t+1);
y2=newtondifdiv(t,x,y);
plot(t,y1,'b')
hold on
plot(t,y2,'g')
hold off