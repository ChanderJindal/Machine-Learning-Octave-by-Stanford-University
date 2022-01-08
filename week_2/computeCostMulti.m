function J = computeCostMulti(X, y, theta)
%COMPUTECOSTMULTI Compute cost for linear regression with multiple variables
%   J = COMPUTECOSTMULTI(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.


h = X*theta; % guess
diff = y-h; % error
cost = power(diff,2); % making it +ve 
total_cost = sum(cost); % total value 
J = total_cost/(2*m);
% J = sum(power(y-X*theta,2))/(2*m)


% =========================================================================

end