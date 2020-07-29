% CMPS351 Assignment 1
% Prepared by: Reem Mahmoud (ID 201620006)
% Submission Date: Sept. 8, 2016
%
% Backtracking Line Search Algorithm with Steepest Descent Direction

%% Slides implementation
% function [x, hist, telapsed] = steepestDescentBT(f, grad, x0)
%     tic; x = x0; hist = x0; tol = 1e-5;
%     while (norm(grad(x)) > tol)
%         p = -grad(x);
%         t = backtrackLineSearch(f, grad(x), p, x);
%         x = x + t * p;
%         hist = [hist x];
%     end
%     telapsed = toc;
% end
% 
% function t = backtrackLineSearch(f, gk, pk, xk)
%         a = 0.1; b = 0.8; % ? and ? parameters
%         t = 1;
%     while ( f(xk+t*pk) > f(xk) + a*t*gk'*pk )
%         t = b * t;
%     end
% end

            % Result: hist 2x1311
            %         sol [1 1]
            %         telapsed on avg 0.2585

            
%% Self implementation
function [sol, hist, telapsed] = steepestBT(func, grad, x0)
    tic;
    tol = 10^(-5);
    hist = [x0]; x = x0;
    k = 0; % itr counter
    tol = 10^(-5);
    alpha = 0.1; beta = 0.8; t = 1;
    while (norm(grad(x)) > tol) %convergence criteria
        pk = -grad(x); %choose search direction
        
        % Backtracking Line Search algorithm (choose step size)
        while (func(x+(t*pk)) > (func(x) + alpha*t.*grad(x).*pk)) 
            t = beta*t;
        end
        
        x = x + t*pk; %update new point
        hist = [hist x]; %store history for convergence evaluation
        k = k+1; 
    end
    sol = x;
    telapsed = toc;
end

        % Result: hist 2x3078
        %         sol [1 1]
        %         telapsed 0.0761
