function [J, grad] = costFunction(theta, X, y)
%COSTFUNCTION Compute cost and gradient for logistic regression
%   J = COSTFUNCTION(theta, X, y) computes the cost of using theta as the
%   parameter for logistic regression and the gradient of the cost
%   w.r.t. to the parameters.

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
%
% Note: grad should have the same dimensions as theta
%

% error = actual - predicted ^2 / total*2
% error -> ?log(h?(x)) 
%grad = gradientDescentMulti(X, y, theta, 0.01, 1500);
h = X*theta;
h = sigmoid(h);
J = (-1/m)*sum( y.*log(h) + (1-y).*log(1-h) );
%for i =1:size(X,2)
%grad = (1/m)*( (h-y)*X(i,:) );
%endfor
    theta_m = length(theta);
    for i = 1:theta_m
    grad(i) = (1/m)*sum((h-y).*X(:,i)) ;

% =============================================================

end