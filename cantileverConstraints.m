function [c, ceq] = cantileverConstraints(x)
%cantileverConstraints Calculate constraints in the stepped cantilever example
%
%   [c, ceq] = cantileverConstraints(x) calculates the constraints on the
%   stepped cantilever in the "Solving a Mixed Integer Engineering Design
%   Problem Using the Genetic Algorithm" example.

%   Copyright 2012-2015 The MathWorks, Inc.

% Problem parameters
P = 50000; % End load
l = 100; % Length of each step of the cantilever
E = 2e7; % Young's modulus in N/cm^2
deltaMax = 2.7; % Maximum end deflection
sigmaMax = 14000; % Maximum stress in each section of the beam
aMax = 20; % Maximum aspect ratio in each section of the beam

% Constraints on the stress in each section of the stepped cantilever
stress = [
    (6*P*l)/(x(9)*x(10)^2) - sigmaMax;...
    (6*P*2*l)/(x(7)*x(8)^2) - sigmaMax;...
    (6*P*3*l)/(x(5)*x(6)^2) - sigmaMax;...
    (6*P*4*l)/(x(3)*x(4)^2) - sigmaMax;...
    (6*P*5*l)/(x(1)*x(2)^2) - sigmaMax];

% Deflection of the stepped cantilever
deflection = (P*l^3/E)*(244/(x(1)*x(2)^3) + 148/(x(3)*x(4)^3) + 76/(x(5)*x(6)^3) + ...
    28/(x(7)*x(8)^3) + 4/(x(9)*x(10)^3)) - deltaMax;

% Aspect ratio constraints
aspectRatio = [
    x(2) - aMax*x(1);...
    x(4) - aMax*x(3);...
    x(6) - aMax*x(5);...
    x(8) - aMax*x(7);...
    x(10) - aMax*x(9)];

% All nonlinear constraints
c = [stress;deflection;aspectRatio];

% No equality constraints
ceq = [];