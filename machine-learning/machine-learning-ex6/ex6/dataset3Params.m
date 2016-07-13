function [C, sigma] = dataset3Params(X, y, Xval, yval)
%EX6PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = EX6PARAMS(X, y, Xval, yval) returns your choice of C and
%   sigma. You should complete this function to return the optimal C and
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
C = 1;
sigma = 0.3;

% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example,
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.
%
%  Note: You can compute the prediction error using
%        mean(double(predictions ~= yval))
%

% lowest_error = 100
% c_best = 100
% sigma_best = 100
% for c_iter = [0.01 0.03 0.1 0.3 1 3 10 30]
%     for sigma_iter  = [0.01 0.03 0.1 0.3 1 3 10 30]
%       model_iter = svmTrain(X, y, c_iter, @(x1, x2) gaussianKernel(x1, x2, sigma_iter));
%       predictions = svmPredict(model_iter, Xval);
%       error = mean(double(predictions ~= yval));
%       fprintf('Evalutated C %.1f and sigma %.1f. Error %.5f\n', c_iter, sigma_iter, error);
%       if error < lowest_error
%         lowest_error = error;
%         c_best = c_iter;
%         sigma_best = sigma_iter;
%       end
%       fprintf('Best iter C %.1f and sigma %.1f. Error %.5f\n', c_best, sigma_best, lowest_error);
%     end
% end

% Above loop said this is the best
C = 1
sigma = 0.1




% =========================================================================

end
