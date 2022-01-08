function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1 
%   vector of centroid assignments (i.e. each entry in range [1..K])
%

% Set K
K = size(centroids, 1);
#Number of Centroid = K

% You need to return the following variables correctly.
idx = zeros(size(X,1), 1);
# ith index has value centroid_idx <- closest one
M = size(X,1);
#total examples
% ====================== YOUR CODE HERE ======================
% Instructions: Go over every example, find its closest centroid, and store
%               the index inside idx at the appropriate location.
%               Concretely, idx(i) should contain the index of the centroid
%               closest to example i. Hence, it should be a value in the 
%               range 1..K
%
% Note: You can use a for-loop over the examples to compute this.
%
for i = 1:M # for all examples
  distance = zeros(K,1);
  for j = 1:K #checking all centroids 
    distance(j) = sqrt( sum(power(X(i,:)-centroids(j,:),2) ));
  endfor
  [~,idx(i)] = min(distance);
  #ignoring the value, i pick the index 
endfor






% =============================================================

end

