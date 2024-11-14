function [A, p] = gpp_hess(A)
%%% Eliminare Gaussiana cu pivotare partiala
% INPUTS:
%   A -- matrice Hessenberg de dimensiune (n,n)
% OUTPUTS:
%   A -- matrice superior triunghiulara cu multiplicatorii gaussieni
%        în triunghiul inferior de dimensiune (n,n)
%   p -- vectorul de permut?ri la nivel de linie

%% SOLUTION START %%

p = zeros(1, length(A));
n=size(A);

for k = 1:n-1
    if abs(A(k,k+1))>abs(A(k,k))
          for j = k:n
            aux = A(k,j);
            A(k,j) = A(k+1,j);
            A(k+1,j) = aux;
          end
           p(k)=k+1;
    else
        p(k)=k;
    end
    
    for i = k+1:n
        A(i,k) = A(i,k)/A(k,k);
    end
    for i = k+1:n
        for j = k+1:n
            A(i,j) = A(i,j)-A(i,k)*A(k,j);
        end
    end
end


%% SOLUTION END %%
end

