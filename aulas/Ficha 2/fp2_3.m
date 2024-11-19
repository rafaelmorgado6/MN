%alinea a
A=[10^(-6) 0 1; 1 10^(-6) 2; 1 2 -1];
b=[1; 3; 2];
x=A\b

%alinea b
r=b-A*x
xnovo=A\r;
xbom=x+xnovo;
rbom=b-A*xbom

