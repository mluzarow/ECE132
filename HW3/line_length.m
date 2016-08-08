function length = line_length(x_1, y_1, x_2, y_2)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
% 
% FUNCTION NAME: Calculates the distance between two given coordinate pairs
% INPUTS: List them below one line per input argument
% 1) x_1: x coordinate 1
% 2) x_2: x coordinate 2
% 3) y_1: y coordinate 1
% 4) y_2: y coordinate 2
%  
% OUTPUTS: List them below line per output argument
% 1) length: The distance between point (x_1,y_1) and (x_2,y_2).
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Calculates the distance between the two points (x_1, y_1) and (x_2, y_2).
length = sqrt((x_2 - x_1)^2 + (y_2 - y_1)^2);




