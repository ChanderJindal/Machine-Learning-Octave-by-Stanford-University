function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure 
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure; hold on;

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.
%

X1 = [];
X2 = [];
for i = 1: size(y,1)
  if y(i) == 1
    X1 = [X1; X(i,1),X(i,2)];
  else
    X2 = [X2; X(i,1),X(i,2)];
  endif
end

plot(X1(:,1),X1(:,2),"+",'MarkerEdgeColor','g','MarkerFaceColor','g');
plot(X2(:,1),X2(:,2),"o",'MarkerEdgeColor','b','MarkerFaceColor','b');

% =========================================================================



hold off;

end
