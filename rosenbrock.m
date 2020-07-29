% CMPS351 Assignment 1
% Prepared by: Reem Mahmoud (ID 201620006)
% Submission Date: Sept. 8, 2016
%
% Function Evaluation

function func = rosenbrock(x) 
% where x is a vector of variables, e.g. x = [x(1) x(2)]
    func = 10*(x(2)-x(1)^2)^2 + (1-x(1))^2;
end
