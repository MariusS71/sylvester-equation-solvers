function [A] = Ad(A,u,beta)
%% Pasul Ad din HQ(inmultire la dreapta cu un reflector)
% INPUTS:
%   A    -- matricea care se inmulteste (n, n),
%   u    -- vectorul definitoriu al reflectorului (n, 1),   
%   beta -- scalarul definitoriu al reflectorului 
%
% OUTPUT:
%   A    -- matricea care se inmulteste (n, n) 

%% SOLUTION START %%
[m,n]=size(A);
for i=1:m
    sum=0;
    for j=1:n
        sum=sum+A(i,j)*u(j);
    end
    tau=sum/beta;
    for j=1:n
        A(i,j)=A(i,j)-tau*u(j);
    end
end

%% SOLUTION END %%

end