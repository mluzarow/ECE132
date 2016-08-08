function [] = e_estimate_mluzarow(input_val, input_accuracy)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
% 
%  Programmer(s) and Purdue Email Address(es):
%  1. Mark Luzarowski mluzarow@purdue.edu
%
%  Section #: 017
%
%  Assignment #: 5.4
%
%  Academic Integrity Statement:
%
%       I/We have not used source code obtained from
%       any other unauthorized source, either modified
%       or unmodified.  Neither have I/we provided access
%       to my/our code to another. The project I/we am/are 
%       submitting is my/our own original work.
%
% FUNCTION NAME: Calculates the Tylor series to find e^(user's value)
% within the given level of accuracy.
%
% INPUTS: List them below one line per input argument
% 1) input_val: The user's value.
% 2) input_accuracy: The user's necessary accuracy.
%  
% OUTPUTS: List them below line per output argument
% Will print: exp(user's value) = (calculated value)
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Sets the Tylor series n to 0.
counter = 0;
%Sets the current value to 0.
val_cur = 0;
%Sets the current sum of values to 0.
val_sum = 0;
%Sets the calculated level of accuracy to 1 in order to enter the loop.
mat_accuracy = 1;

%Loops until the level of accuracy reached by the calculation is greater
%than the user's necessary accuracy.
while mat_accuracy > input_accuracy
    %Sets current value to the Tylor series calculation where counter = n.
    val_cur = input_val^counter / factorial(counter);
    %Sets the sum to the previous sum plus the current value.
    val_sum = val_sum + val_cur;
    %Calculates accuracy by |e^(user input) - (sum)|
    mat_accuracy = abs(exp(input_val) - val_sum);
    %Increments counter (n) by 1.
    counter = counter + 1;
end

%Prints the user's value and the calculated value.
fprintf('exp(%0.5f) = %0.5f\n', input_val, val_sum);

% e_estimate_mluzarow(2,0.001)
% exp(2.00000) = 7.38871
% e_estimate_mluzarow(-4,0.0001)
% exp(-4.00000) = 0.01836
% e_estimate_mluzarow(12.3,0.00005)
% exp(12.30000) = 219695.98865