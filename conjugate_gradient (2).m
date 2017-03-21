function x = conjugate_gradient(A,b,x,i_max)

% A is the input n x n matrix
% x is the initial x_0
% i_max denotes the number of iterations for the while loop 
tic
i = 0;
r = b-A*x; % initial residual 
d = r;
delta_new = r'*r;
 
if r'*r == 0 % if x_0 == x
   x=x;
else
    while(delta_new > (0.001)^2*delta_new)&& (i < i_max)
          alpha = r'*r/(d'*(A*d));
          x = x + alpha*d;
          r = r - alpha*A*d;
          delta_old = delta_new;  % storing dot product of previous residual r_i
          delta_new = r'*r;       % dot product of current residual r_i+1
          beta = delta_new/delta_old;
          d = r + beta*d;
          i= i + 1;
          x
    end 
end
toc
end 

% A = [3,2;2,6];
% b = [2;-8];
% x = [-2,-2];



