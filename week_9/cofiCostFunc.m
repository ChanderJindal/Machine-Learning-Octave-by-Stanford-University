function [J, grad] = cofiCostFunc(params, Y, R, num_users, num_movies, ...
                                  num_features, lambda)
                                  #Coffee Cost Functtion not $1.50
%COFICOSTFUNC Collaborative filtering cost function
%   [J, grad] = COFICOSTFUNC(params, Y, R, num_users, num_movies, ...
%   num_features, lambda) returns the cost and gradient for the
%   collaborative filtering problem.
%

% Unfold the U and W matrices from params
X = reshape(params(1:num_movies*num_features), num_movies, num_features);
Theta = reshape(params(num_movies*num_features+1:end), ...
                num_users, num_features);
            
% You need to return the following values correctly
J = 0;
X_grad = zeros(size(X));
Theta_grad = zeros(size(Theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost function and gradient for collaborative
%               filtering. Concretely, you should first implement the cost
%               function (without regularization) and make sure it is
%               matches our costs. After that, you should implement the 
%               gradient and use the checkCostFunction routine to check
%               that the gradient is correct. Finally, you should implement
%               regularization.
%
% Notes: X - num_movies  x num_features matrix of movie features
%        Theta - num_users  x num_features matrix of user features
%        Y - num_movies x num_users matrix of user ratings of movies
%        R - num_movies x num_users matrix, where R(i, j) = 1 if the 
%            i-th movie was rated by the j-th user
%
% You should set the following variables correctly:
%
%        X_grad - num_movies x num_features matrix, containing the 
%                 partial derivatives w.r.t. to each element of X
%        Theta_grad - num_users x num_features matrix, containing the 
%                     partial derivatives w.r.t. to each element of Theta
%

##size(X) 5  3
##size(Theta) 4  3
##size(Y) 5  4
##size(R) 5  4
##num_users 4
##num_movies 5
##num_features 3
##lambda 0

predict = X*Theta';
%5 4  = 5 3 3 4
error = predict - Y;
% 5 3
val = error.*R;
%5 3

J= sum( sum( power(val,2) )' )/2;
% 1 1
reg = (lambda/2)*(sum(sum(power(X,2))') + sum(sum(power(Theta,2))'));
%1 1 
J = J +reg;

X_grad = val*Theta + lambda*X;
Theta_grad = val'*X + lambda*Theta;


% =============================================================

grad = [X_grad(:); Theta_grad(:)];

end
