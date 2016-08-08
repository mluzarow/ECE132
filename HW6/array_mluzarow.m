function [new_array] = array_mluzarow(old_array, div)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
% 
%  Programmer(s) and Purdue Email Address(es):
%  1. Mark Luzarowski mluzarow@purdue.edu
%
%  Section #: 017
%
%  Assignment #: 6.3
%
%  Academic Integrity Statement:
%
%       I/We have not used source code obtained from
%       any other unauthorized source, either modified
%       or unmodified.  Neither have I/we provided access
%       to my/our code to another. The project I/we am/are 
%       submitting is my/our own original work.
%
% FUNCTION NAME: Checks an array for negative values, which will be
% squared, and values divisible by "div", which will be multiplied by 2.
%
% INPUTS: List them below one line per input argument
% 1) old_array: The array given by the user.
% 2) div: The value given to check for divisibility.
%  
% OUTPUTS: List them below line per output argument
% 1) new_array: The new array for output.
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Find the dimensions of the given array.
[row, column] = size(old_array);
%Fills new array with zeros.
new_array = zeros(row,column);

%For loop counts along the columns of user's vector.
for count_column = 1:1:column
    %For loop counts along the rows of user's vector.
    for count_row = 1:1:row
        %If the value is negative, square it.
        if old_array(count_row, count_column) < 0
            new_array(count_row, count_column) = old_array(count_row, count_column)^2;
        %If the value is divisible by the user's number, multiply by 2.
        elseif rem(old_array(count_row, count_column), div) == 0
            new_array(count_row, count_column) = old_array(count_row, count_column) * 2;
        %For everything else, do nothing.
        else
            new_array(count_row, count_column) = old_array(count_row, count_column);
        end %If (value check) end
    end %For (row) end
end %For (column) end

% [new_array] = array_mluzarow([5, 17, -3, 8, 0, -7, 12], 4)
% 
% new_array =
% 
%      5    17     9    16     0    49    24
% 
% [new_array] = array_mluzarow([1 5 3; -2 6 -7; -4 12 24], 2)
% 
% new_array =
% 
%      1     5     3
%      4    12    49
%     16    24    48
% 
% [new_array] = array_mluzarow([23 17 -34 66; -4 33 -23 0; 12 7 11 22; -2 0 0 7], 11)
% 
% new_array =
% 
%           23          17        1156         132
%           16          66         529           0
%           12           7          22          44
%            4           0           0           7