A = [4 1 2; 2 -5 2; 1 2 4];
b = [7 -1 7]';
x = [0 0 0]';
delta = 10^(-12);
gseid(A,b,x,delta,1000)