A=rand(15,15);
B=rand(10,10);
C=rand(15,10);
X = HS(A, B, C);
Cx = A*X*B+X;
C;
eroarea = norm(C-Cx, 'fro')