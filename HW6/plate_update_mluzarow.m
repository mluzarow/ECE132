function [temp_update] = plate_update_mluzarow(temp_matrix)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
% 
%  Programmer(s) and Purdue Email Address(es):
%  1. Mark Luzarowski mluzarow@purdue.edu
%
%  Section #: 017
%
%  Assignment #: 6.5
%
%  Academic Integrity Statement:
%
%       I/We have not used source code obtained from
%       any other unauthorized source, either modified
%       or unmodified.  Neither have I/we provided access
%       to my/our code to another. The project I/we am/are 
%       submitting is my/our own original work.
%
% FUNCTION NAME: Updates the temperatures of a given matrix.
%
% INPUTS: List them below one line per input argument
% 1) temp_matrix: The original matrix containing the original temperature.
%
% OUTPUTS: List them below line per output argument
% 1) temp_update: The final, updated temperature.
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Gets the dimensions of the given matrix.
[row, column] = size(temp_matrix);
%Fills new matrix with zeros according to given matrix dimensions.
temp_update = zeros(row, column);

%Checks to see if given matrix is at least 2x2.
if row < 2 || column < 2
    error('Grid must be at least 2 by 2 values.');
end

%Counts along the columns of the user's matrix
for count_column = 1:1:column
    %Counts along the rows of the user's matrix
    for count_row = 1:1:row
        %If value is in a corner of the grid.
        if (count_row == 1 || count_row == row) && (count_column == 1 || count_column == column)
            %If value is on the top-left corner of the grid.
            if count_row == 1 && count_column == 1
                temp_update(count_row, count_column) = (temp_matrix(count_row, count_column + 1) + temp_matrix(count_row + 1, count_column)) / 2;
            %If value is on the bottom-left corner of the grid.
            elseif count_row == row && count_column == 1
                temp_update(count_row, count_column) = (temp_matrix(count_row, count_column + 1) + temp_matrix(count_row - 1, count_column)) / 2;
            %If value is on the top-right corner of the grid.
            elseif count_row == 1 && count_column == column
                temp_update(count_row, count_column) = (temp_matrix(count_row, count_column - 1) + temp_matrix(count_row + 1, count_column)) / 2;
            %If value is on the bottom-left corner of the grid.
            elseif count_row == row && count_column == column
                temp_update(count_row, count_column) = (temp_matrix(count_row, count_column - 1) + temp_matrix(count_row - 1, count_column)) / 2;
            end
        %If value is on the left or right side of the grid.
        elseif count_column == 1 || count_column == column
            %If value is on the left of the grid.
            if count_column == 1
                temp_update(count_row, count_column) = (temp_matrix(count_row, count_column + 1) * 2 + temp_matrix(count_row + 1, count_column) + temp_matrix(count_row - 1, count_column)) / 4;
            %If value is on the right of the grid.
            elseif count_column == column
                temp_update(count_row, count_column) = (temp_matrix(count_row, count_column - 1) * 2 + temp_matrix(count_row + 1, count_column) + temp_matrix(count_row - 1, count_column)) / 4;
            end
        %If value is on the top or bottom of the grid.
        elseif count_row == 1 || count_row == row
            %If value is on the top of grid.
            if count_row == 1
                temp_update(count_row, count_column) =(temp_matrix(count_row + 1, count_column) * 2 + temp_matrix(count_row, count_column + 1) + temp_matrix(count_row, count_column - 1)) / 4;
            %If value is on the bottom of grid.
            elseif count_row == row
                temp_update(count_row, count_column) =(temp_matrix(count_row - 1, count_column) * 2 + temp_matrix(count_row, count_column + 1) + temp_matrix(count_row, count_column - 1)) / 4;
            end 
        %If value is in the middle section of the grid.    
        else
            temp_update(count_row, count_column) = (temp_matrix(count_row - 1, count_column) + temp_matrix(count_row + 1, count_column) + temp_matrix(count_row, count_column - 1) + temp_matrix(count_row, count_column + 1)) / 4;
        end 
    end %For (row) end
end %For (column) end

% [temp_update] = plate_update_mluzarow([100,100,100,100;100,50,50,100;100,37.5,37.5,100;50,50,50,50])
% 
% temp_update =
% 
%   100.0000   75.0000   75.0000  100.0000
%    75.0000   71.8750   71.8750   75.0000
%    56.2500   59.3750   59.3750   56.2500
%    75.0000   43.7500   43.7500   75.0000
% 
% [temp_update] = plate_update_mluzarow([78,67,48; 65,53,40;60,55,46;55,45,37])
% 
% temp_update =
% 
%    66.0000   58.0000   53.5000
%    61.0000   56.7500   50.0000
%    57.5000   51.0000   46.7500
%    52.5000   50.5000   45.5000
% 
% [temp_update] = plate_update_mluzarow([100,100,100,99,97,91;100,78,67,60,48,41;99,65,61,53,40,36;97,60,55,46,30,27;96,55,45,37,29,19;92,50,42,29,25,23])
% 
% temp_update =
% 
%   100.0000   89.0000   83.2500   79.2500   71.5000   69.0000
%    88.7500   83.0000   74.7500   66.7500   59.5000   55.7500
%    81.7500   74.5000   60.0000   51.7500   41.7500   37.0000
%    78.7500   68.0000   53.0000   43.7500   35.5000   28.7500
%    74.7500   62.7500   47.2500   37.2500   27.7500   27.0000
%    73.0000   61.0000   42.2500   35.2500   27.5000   22.0000
