function [X] = HS(A, B, C)
%% Algoritmul HS - calculul ecuatiei Sylvester discrete AXB+X=C, varianta Hessenberg-Schur
% INPUTS:
%   A   -- matrice aleatoare de dimensiune (m, m),   
%   B   -- matrice aleatoare de dimensiune (n, n),
%   C   -- matrice aleatoare de dimensiune (m, n)
%
% OUTPUT:
%   X    -- solutia X a ecuatiei AXB+X=C

%% SOLUTION START %%
m=size(A,1);
n=size(B,1);

[U,S]=HQ(A);
[V,T]=schur(B,'complex');
C=U'*C*V;

for j=1:n
    if j>1
        sum=0;
        for k=1:j-1
            sum=sum+T(k,j)*Y(:,k);
        end
        C(:,j)=C(:,j)-S*sum;
    end
    %Y(:,j)=(S*T(j,j)+eye(m))\C(:,j);
     [Y(:,j)]= SL_GPP(S*T(j,j)+eye(m),C(:,j));
end
X=real(U*Y*V');




%% SOLUTION END %%

end