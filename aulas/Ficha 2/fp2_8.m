A=[16 4 4 -4; 4 10 4 2; 4 4 6 -2; -4 2 -2 4];
b=[32 26 30 -6]';

%alinea a
[L,U]=lu(A)
C=chol(A,"lower")
x=A\b

%alinea b
c=cond(A,1);
r=c*(norm(b)\0.005)


%alinea c
D=eye(4);
for k=1:4
    D(k,k)=1/A(k,k);
end

G=D*((-1)*[0 4 4 -4; 4 0 4 2; 4 4 0 -2; -4 2 -2 0]);
raio=max(abs(eig(G)))

% alinea d
xa=zeros(4,1);
delta=10^(-15);
maxit=900;
x=jacobi(A,b,xa,delta,maxit)

%outros
norm(G,"inf");
norm(G,1);