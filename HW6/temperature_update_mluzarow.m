function [temp_update] = temperature_update_mluzarow(temp_matrix, row, column)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
% 
%  Programmer(s) and Purdue Email Address(es):
%  1. Mark Luzarowski mluzarow@purdue.edu
%
%  Section #: 017
%
%  Assignment #: 6.4
%
%  Academic Integrity Statement:
%
%       I/We have not used source code obtained from
%       any other unauthorized source, either modified
%       or unmodified.  Neither have I/we provided access
%       to my/our code to another. The project I/we am/are 
%       submitting is my/our own original work.
%
% FUNCTION NAME: Updates certain a temperature in matrix "temp_matrix" given row "row"
% and column "column"
%
% INPUTS: List them below one line per input argument
% 1) temp_matrix: The original matrix containing the original temperature.
% 2) row: The row of the temperature the user wants to update.
% 3) column: The column of the temperature that user wants to update.
%  
% OUTPUTS: List them below line per output argument
% 1) temp_update: The final, updated temperature.
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%If value is in the middle section of the grid.
if (row == 2 || row == 3) && (column == 2 || column == 3)
    temp_update = (temp_matrix(row - 1, column) + temp_matrix(row + 1, column) + temp_matrix(row, column - 1) + temp_matrix(row, column + 1)) / 4;
%If value is on the left or right side of the grid.
elseif (row == 2 || row == 3)
    %If value is on the left.
    if column == 1
        temp_update = (temp_matrix(row, column + 1) * 2 + temp_matrix(row + 1, column) + temp_matrix(row - 1, column)) / 4;
    %If value is on the right.
    elseif column == 4
        temp_update = (temp_matrix(row, column - 1) * 2 + temp_matrix(row + 1, column) + temp_matrix(row - 1, column)) / 4;
    end
%If value is on the top or bottom of the grid.
elseif (column == 2 || column == 3) 
    %If value is on the top.
    if row == 1
        temp_update = (temp_matrix(row + 1, column) * 2 + temp_matrix(row, column + 1) + temp_matrix(row, column - 1)) / 4;
    %If value is on the bottom.
    elseif row == 4
        temp_update = (temp_matrix(row - 1, column) * 2 + temp_matrix(row, column + 1) + temp_matrix(row, column - 1)) / 4;
    end
%If value is on the corners of the grid.
else
    %If value is on the top-left corner.
    if row == 1 && column == 1
        temp_update = (temp_matrix(row, column + 1) + temp_matrix(row + 1, column)) / 2;
    %If value is on the bottom-left corner.
    elseif row == 4 && column == 1
        temp_update = (temp_matrix(row, column + 1) + temp_matrix(row - 1, column)) / 2;
    %If value is on the top-right corner.
    elseif row == 1 && column == 4
        temp_update = (temp_matrix(row, column - 1) + temp_matrix(row + 1, column)) / 2;
    %If value is on the bottom-left corner.
    elseif row == 4 && column == 4
        temp_update = (temp_matrix(row, column - 1) + temp_matrix(row - 1, column)) / 2;
    end
end
