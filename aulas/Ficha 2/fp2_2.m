%alinea a
A=[10^4 10^6 0 10^8; 10^(-2) 1 0 0; 0 0 10^(-6) 0; 2 1 0 10^(-8)];
b=zeros(4,1);
b(4,1)=1;
x=A\b

%alinea b
A=[10^4 10^6 0 10^8; 10^(-2) 1 0 0; 0 0 10^(-6) 0; 2 1 0 10^(-8)];
c=[0; 0; 0.0009; 1];
x1=A\c