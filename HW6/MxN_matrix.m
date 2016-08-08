function [matrix_out] = MxN_matrix(row,column)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
% 
%  Programmer(s) and Purdue Email Address(es):
%  1. Mark Luzarowski mluzarow@purdue.edu
%
%  Section #: 017
%
%  Assignment #: 6.1
%
%  Academic Integrity Statement:
%
%       I/We have not used source code obtained from
%       any other unauthorized source, either modified
%       or unmodified.  Neither have I/we provided access
%       to my/our code to another. The project I/we am/are 
%       submitting is my/our own original work.
%
% FUNCTION NAME: Makes a matrix where each cell is equal to its row
% multiplied by its column
%
% INPUTS: List them below one line per input argument
% 1) row: The amount of rows the matrix will have.
% 2) column: The amount of columns the matrix will have.
%  
% OUTPUTS: List them below line per output argument
% 1) matrix_out: The final calculated matrix.
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Checks if row or column is negative or 0.
if row <= 0 || column <= 0
    new_matrix = 0;
%If row and column are non-zero and positive.
else
    %For loop counts from 1 to the user's amount of columns.
    for count_column = 1:1:column
        %For loop counts from 1 to the user's amount of rows. 
        for count_row = 1:1:row
            %Updates the matrix with the row * column calculation for every
            %row and column.
            matrix_out(count_row,count_column) = (count_row * count_column);
        end %For (row) end
    end %For (column) end
end %If (checking) end
