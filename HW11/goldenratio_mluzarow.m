function [golden_vec] = goldenratio_mluzarow(fib1, fib2)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
% 
%  Programmer(s) and Purdue Email Address(es):
%  1. Mark Luzarowski mluzarow@purdue.edu
%
%  Section #: 017
%
%  Assignment #: 11.5
%
%  Academic Integrity Statement:
%
%       I/We have not used source code obtained from
%       any other unauthorized source, either modified
%       or unmodified.  Neither have I/we provided access
%       to my/our code to another. The project I/we am/are 
%       submitting is my/our own original work.
%
% FUNCTION NAME: Given 2 sequencial Fibonacci values, will find how 
% many values are required until the 0.001 values is calculated and 
% display said values.
% INPUTS: List them below one line per input argument
%  1) fib1: First Fibonacci term.
%  2) fib2: Second Fibonacci term.
%  
% OUTPUTS: List them below line per output argument
%  1) golden_vec: Values used to gain the 0.001 ratio value.
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Sets the array counter at 3 to account for input.
fib_count = 3; 
%Sets the Fibonacci vector to the firt 2 values and a calculated third.
fib_vec = [fib1, fib2, fib1+fib2];

%While loop to test for ratio.
while abs(fib_vec(fib_count) / fib_vec(fib_count - 1) - fib_vec(fib_count - 1) / fib_vec(fib_count - 2)) > 0.001
   %Adds 1 to the counter.
   fib_count = fib_count + 1;
   %Finds the next value as the sum of the two previous values.
   fib_vec(fib_count) = fib_vec(fib_count - 1) + fib_vec(fib_count - 2);
end

%Sets the old array equal to the output array.
golden_vec = fib_vec;

% [golden_vec] = goldenratio_mluzarow(3, 5)
% 
% golden_vec =
% 
%      3     5     8    13    21    34    55    89