function [bestEpsilon bestF1] = selectThreshold(yval, pval)
%SELECTTHRESHOLD Find the best threshold (epsilon) to use for selecting
%outliers
%   [bestEpsilon bestF1] = SELECTTHRESHOLD(yval, pval) finds the best
%   threshold to use for selecting outliers based on the results from a
%   validation set (pval) and the ground truth (yval).
%

bestEpsilon = 0;
bestF1 = 0;
F1 = 0;

stepsize = (max(pval) - min(pval)) / 1000;
for epsilon = min(pval):stepsize:max(pval)
  
  myPredict = pval < epsilon;
  
  True_1 = sum(  (myPredict == yval) & (yval == ones(size(yval))) );
  True_0 = sum((myPredict ~= yval) & yval == zeros(size(yval)));
  False_1 = sum((myPredict ~= yval) & yval == ones(size(yval)));
  precision = True_1/(True_0+True_1);# Positives
                #correct which i want / incorrect predictions
  got_correct = True_1/(False_1+True_1);
  # ones i got right / total correct 
  F1 = (2*got_correct*precision)/(got_correct+precision);
  #    % of got correct / total chances
  if F1 > bestF1
    bestEpsilon = epsilon;
    bestF1 = F1;
  endif
  

endfor
    % ====================== YOUR CODE HERE ======================
    % Instructions: Compute the F1 score of choosing epsilon as the
    %               threshold and place the value in F1. The code at the
    %               end of the loop will compare the F1 score for this
    %               choice of epsilon and set it to be the best epsilon if
    %               it is better than the current choice of epsilon.
    %               
    % Note: You can use predictions = (pval < epsilon) to get a binary vector
    %       of 0's and 1's of the outlier predictions













    % =============================================================

end
