A=[1 2 4; 4 -1 1; 4 1 2];
b=[11 8 3]';

c=cond(A,1)
normb=norm(b,'inf')

c*0.001/normb