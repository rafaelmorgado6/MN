%alinea b
t = 0.9
t=linspace(0,1,100);
y1=4./(4*t+1);
y2=newtondifdiv(t,x,y);
plot(t,y1,'b')
hold on
plot(t,y2,'g')
hold off