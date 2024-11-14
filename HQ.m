function [Q,A] = HQ(A)
%% Algoritmul HQ - reducerea la forma Hessenberg
% INPUTS:
%   A    -- matrice aleatoare de dimensiune (n, n), 
%
% OUTPUT:
%   Q    -- matricea de transformare (n, n) 
%   A    -- matricea in forma Hessenberg (n, n) 

%% SOLUTION START %%
n=size(A);
Q=eye(n);
for k=1:n-2
    [u,b, A(k+1:n,k)]=Z(A(k+1:n,k));
     A(k+1:n, k+1:n)=As(u,b,A(k+1:n,k+1:n));
     A(1:n, k+1:n)=Ad(A(1:n,k+1:n),u,b);
     Q(1:n,k+1:n)=Ad(Q(1:n,k+1:n),u,b);
end

%% SOLUTION END %%

end