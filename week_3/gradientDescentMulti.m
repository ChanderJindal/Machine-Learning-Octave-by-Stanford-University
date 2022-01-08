function [theta] = gradientDescentMulti(X, y, theta)
%GRADIENTDESCENTMULTI Performs gradient descent to learn theta
%   theta = GRADIENTDESCENTMULTI(x, y, theta, alpha, num_iters) updates theta by
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCostMulti) and gradient here.
    %
    h = X*theta;
    h = sigmoid(h);
    theta_m = length(theta);
    for i = 1:theta_m
    theta(i) = (1/m)*sum((h-y).*X(:,i)) ;


    % ============================================================
    % Save the cost J in every iteration    


end
