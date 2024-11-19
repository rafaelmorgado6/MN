A=zeros(3,3)
A(2,3)=2
A(1,1)=4

%alinea a
N=4;
H4=hilb(N);
b=zeros(N,1);
b(1,1)=1;
x=H4\b;

%alinea b
N=4;
H4=hilb(N);
y=round(H4,4);
b=zeros(N,1);
b(1,1)=1;
x=y\b;



%alinea c
r=b-H4*x;
y=H4\r;
x1=x+y
ri=b-H4*x1