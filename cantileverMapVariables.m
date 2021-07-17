function x = cantileverMapVariables(x)
%cantileverMapVariables Map integer variables to a discrete set
%
%   V = cantileverMapVariables(x) maps the integer variables in the second
%   problem solved in the "Solving a Mixed Integer Engineering Design
%   Problem Using the Genetic Algorithm" example to the required discrete
%   values.

%   Copyright 2012 The MathWorks, Inc.

% The possible values for x(3) and x(5)
allX3_5 = [2.4, 2.6, 2.8, 3.1];

% The possible values for x(4) and x(6)
allX4_6 = 45:5:60;

% Map x(3), x(4), x(5) and x(6) from the integer values used by GA to the
% discrete values required.
x(3) = allX3_5(x(3));
x(4) = allX4_6(x(4));
x(5) = allX3_5(x(5));
x(6) = allX4_6(x(6));