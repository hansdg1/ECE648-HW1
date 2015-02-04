%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   Homework 1: Quantization     %
%   Hans Guthrie                 %
%   ECE 648                      %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

NumBits = 4; % The number of bits
Q = 2/2^NumBits;
% S = [-.89 -.66 -.48 -.23 0 .23 .48 .66 .89]; % Input array
S = [-.23 -.48 -.66 -.89 0 .23 .48 .66 .89];
% Scale the array so that floor works properly
% scaled = NumBits .* s;            %%Don't do this

% Perform midtreader quantization
midtreader = sign(S) .* floor(abs(S)/Q) * Q;

% Perform midriser quantization
midriser = sign(S) .* ceil(abs(S)/Q) * Q;

% Print results for each
fprintf('Mid-Treader: ');
disp(midtreader);
fprintf('Mid-Riser: ');
disp(midriser);