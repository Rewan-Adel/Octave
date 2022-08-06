function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y
data = load('ex1data1.txt');
X = data(:, 1); 
y = data(:, 2);
% Initialize some useful values
m = length(y); % number of training examples
%theta = zeros(2, 1);
theta = [0;0];
% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.


for i = 1: m,
 h = theta(1) + theta(2) * X(i) ; %hypotheis function
 %J = (1/(2*m))* (sum(h- y(i))^2); %cost function
 a = h - y(i);
 b = a^2;
 J = J+b;
 end;
J = J*(1/ (2*m));

 % =========================================================================

end
