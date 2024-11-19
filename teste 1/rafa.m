%1 f(x)=1+cos(5pi/6) x E ]-0.52,0.52[

x=linspace(-0.52,0.52);
y=1+cos(x+(5*3.14)/6);

c=cond(y)

plot(x,y,'r')


%2 
A=[0 3 1; 0 -1 3; -2 4 1]'
b=[-4 5 4]'

[L,U]=lu(A)

y=L\b

x=U\y