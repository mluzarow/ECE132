function final = fxy4F_mluzarow(x, y)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
% 
%  Programmer(s) and Purdue Email Address(es):
%  1. mluzarow@purdue.edu
%
%  Section #: 017
%
%  Assignment #: 4.1.2
%
%  Academic Integrity Statement:
%
%       I/We have not used source code obtained from
%       any other unauthorized source, either modified
%       or unmodified.  Neither have I/we provided access
%       to my/our code to another. The project I/we am/are 
%       submitting is my/our own original work.
%
% FUNCTION NAME: Calculates "final" based on given numbers "x" and "y".
% INPUTS: List them below one line per input argument
% 1) x: The x input.
% 2) y: The y input.
%  
% OUTPUTS: List them below line per output argument
% 1) final: The final product of the calculation.
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%--------CALCULATIONS--------
%If x and y are more than or equal to 0.
if (x >= 0) && (y >= 0) 
    final = x^2 + y;
%If x is more than or equal to 0 and y is less than 0.
elseif (x >= 0) && (y < 0)
    final = x * y;
%If x is less than 0 and y is more than or equal to 0.
elseif (x < 0) && (y >= 0)
    final = x + y^2;
%If x and y are less than 0.
elseif (x < 0) && (y < 0)
    final = x^2 / y^2;
end 

%--------OUTPUTS--------
%Prints out results.
fprintf('f(%d,%d) = %0.2f', x, y, final)