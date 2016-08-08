function [r_sq] = rsquared_mluzarow(vec_x, vec_y, slope, intercept)  
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
% 
%  Programmer(s) and Purdue Email Address(es):
%  1. Mark Luzarowski mluzarow@purdue.edu
%
%  Section #: 017
%
%  Assignment #: 9.5
%
%  Academic Integrity Statement:
%
%       I/We have not used source code obtained from
%       any other unauthorized source, either modified
%       or unmodified.  Neither have I/we provided access
%       to my/our code to another. The project I/we am/are 
%       submitting is my/our own original work.
%
% FUNCTION NAME: 
% INPUTS: List them below one line per input argument
%  1) vec_x:     The given x values.
%  2) vec_y:     The given y values.
%  3) slope:     The slope of the line.
%  4) intercept: The intercept value.
%  
% OUTPUTS: List them below line per output argument
%  1) r_sq: The r^2 value.
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Calculates the predicted y values given the slope and intercept.
y_predicted = slope .* vec_x + intercept;
%Calculates the SSE.
SSE = sum((vec_y - y_predicted).^2);
%Calculates the mean of the y values.
y_av = mean(vec_y);
%Calculates the SST.
SST = sum((vec_y - y_av).^2);
%Calculates the r^2 value.
r_sq = 1 - (SSE / SST);

% [r_sq] = rsquared_mluzarow([1,3,5,7,9],[0.5,2.5,2,4,3.5],0.5,0)
% 
% r_sq =
% 
%     0.6667