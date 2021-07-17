function V = cantileverVolumeWithDisc(x)
%cantileverVolumeWithDisc Calculate volume of a stepped cantilever
%
%   V = cantileverVolumeWithDisc(x) calculates the volume of the stepped
%   cantilever in the "Solving a Mixed Integer Engineering Design Problem
%   Using the Genetic Algorithm" example. In this function, the variables
%   x(3), x(4), x(5) and x(6) are chosen from a discrete set. 

%   Copyright 2012 The MathWorks, Inc.

% Map the discrete variables
x = cantileverMapVariables(x);

% Volume of cantilever beam
V = cantileverVolume(x);


