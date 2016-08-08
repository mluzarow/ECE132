%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%  Program Description: Creates and prints a row vector "row_vector", a
%  column vector "column_vector", a matrix "C", and anothing column vector
%  "uc" derived from matrix "C"
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% --- INPUTS ---
%creates a row vector with idicated values
row_vector = [32, 4, 81, exp(2.5), 63, cos(pi/3), 14.12]

%creats a column vector with values staring from 15 going to -25 by steps of -5
column_vector = (15:-5:-25);
%takes former vector and shifts values into a column
column_vector = column_vector'

%creates a matrix "C" with the indicated values
C = [2, 4, 6, 8, 10; 3, 6, 9, 12, 15; 7, 14, 21, 28, 35]

% --- CALCULATIONS ---
%creates column vector "uc" using columns 1, 3, and 5 of matrix "C"
uc = [C(:,1); C(:,3); C(:,5)]
uc = uc'
% --- OUTPUTS ----
%row_vector =
%
%  32.0000    4.0000   81.0000   12.1825   63.0000    0.5000   14.1200
%
%
%column_vector =
%
%    15
%    10
%     5
%     0
%    -5
%   -10
%   -15
%   -20
%   -25
%
%
%C =
%
%     2     4     6     8    10
%     3     6     9    12    15
%     7    14    21    28    35
%
%uc =
%
%     2
%     3
%     7
%     6
%     9
%    21
%    10
%    15
%    35
