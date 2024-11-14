function [x] =sl_gpp(A,b)
%%% Rezolvarea unui sistem liniar folosind gpp
% INPUTS:
%   A -- matrice Hessenberg de dimensiune (n,n)
%   b -- vectorul termenilor liberi de dimensiune n
% OUTPUTS:
%   x - solutia sistemului

%% SOLUTION START %%

[n,m]=size(A);
[A,p]=gpp_hess(A);

M=tril(A,-1)+eye(n);
U=triu(A);

for k =1:n-1
    temp=b(k);
    b(k)=b(p(k));
    b(p(k))=temp;
    for i=k+1:n
        b(i)=b(i)-M(i,k)*b(k);
    end
end

[x]=s_sup_tr(U,b);

%% SOLUTION END %%

end