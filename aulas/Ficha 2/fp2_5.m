% alinea b
A=[1 2 3; 2 4 7; 3 5 3];
[L,U,P]=lu(A);
b=[1; -1; 0.5];
b1=P*b;
y=L\b1;
x=U\y;



N=10000000
A=hilb(N);
b=ones(N,1);
x=A\b;

A=[16 4 4 -4; 4 10 4 2; 4 4 6 -2; -4 2 -2 4];
for k=1:4
    det(A(1:k,1:k))
end    



b=[32 26 20 -6]';

c=cond(A,1)
normb=norm(b,1)

c*0.005/normb

N=1000000
A=sparse(N,N);
for i=1:N
    A(i,1)=1;
    A(i,i)=1;
    A(1,i)=1;
end 

A=[1 2 3; 2 4 7; 3 5 3]

