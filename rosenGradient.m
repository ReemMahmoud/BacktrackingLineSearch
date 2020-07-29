% CMPS351 Assignment 1
% Prepared by: Reem Mahmoud (ID 201620006)
% Submission Date: Sept. 8, 2016
%
% Gradient Evaluation

function grad = rosenGradient(x)
    grad = [ 2*x(1)-40*x(1)*(x(2)-x(1)^2)-2; ... % partial w.r.t x(1)
                20*(x(2)-x(1)^2) ];                  % partial w.r.t x(2)
end