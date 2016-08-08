function y = asin_mluzarow(x)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
% 
%  Programmer(s) and Purdue Email Address(es):
%  1. mluzarow@purdue.edu
%
%  Section #: 017
%
%  Assignment #: 4.4
%
%  Academic Integrity Statement:
%
%       I/We have not used source code obtained from
%       any other unauthorized source, either modified
%       or unmodified.  Neither have I/we provided access
%       to my/our code to another. The project I/we am/are 
%       submitting is my/our own original work.
%
% FUNCTION NAME: Takes input "x" and plugs it into the asin(x) function,
% giving us back a value "y".
% INPUTS: List them below one line per input argument
% 1) x: The input value (between -1 and 1).
%  
% OUTPUTS: List them below line per output argument
% 2) y: The output value.
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%--------CALCULATIONS---------
% If x is on interval [-1,1]
if x >= -1 && x <= 1
    y = asin(x);
% If x is not on interval [-1,1]
else
    error('Value must be between -1 and 1.');
end

%-----------OUTPUT------------
% y = asin_mluzarow(0.5)
% 
% y =
% 
%     0.5236
% 
% y = asin_mluzarow(-1.9)
% ??? Error using ==> asin_mluzarow at 35
% Value must be between -1 and 1.
%  
% y = asin_mluzarow(0)
% 
% y =
% 
%      0
% 
% y = asin_mluzarow(3)
% ??? Error using ==> asin_mluzarow at 35
% Value must be between -1 and 1.