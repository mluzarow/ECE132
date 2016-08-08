function temp_update = temperature_update(temp_matrix, row, column)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%
% FUNCTION NAME: Updates certain a temperature in matrix "Temp_matrix" given row "row"
% and column "column"
% INPUTS: List them below one line per input argument
% 1) Temp_matrix: The original matrix containing the original temperature.
% 2) row: The row of the temperature the user wants to update.
% 3) column: The column of the temperature that user wants to update.
%  
% OUTPUTS: List them below line per output argument
% 1) Temp_update: The final, updated temperature.
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Refreshes the temperature cell.
temp_update = (temp_matrix(row - 1, column) + temp_matrix(row + 1, column) + temp_matrix(row, column - 1) + temp_matrix(row, column + 1)) / 4;

