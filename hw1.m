%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   Homework 1: Quantization     %
%   Hans Guthrie                 %
%   ECE 648                      %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% The number of bits
NumBits = 2^4; 

% Input array
s = [-.89 -.66 -.48 -.23 0 .23 .48 .66 .89];

% Scale the array so that floor works properly
scaled = NumBits .* s;       

% Perform midtreader quantization
midtreader = sign(s) .* (floor(abs(scaled))) .* (1/NumBits);

% Perform midriser quantization
midriser = sign(s) .* (ceil(abs(scaled))) .* (1/NumBits);

% Print results for each
fprintf('Mid-Treader: ');
disp(midtreader);
fprintf('Mid-Riser: ');
disp(midriser);