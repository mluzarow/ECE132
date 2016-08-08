%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%  Programmer(s) and Purdue Email Address(es):
%  1. Mark Luzarowski mluzarow@purdue.edu
%
%  Section: 017
%
%  Assignment #: 13.1
%
%  Academic Integrity Statement:
%
%       I/we have not used source code obtained from
%       any other unauthorized source, either modified
%       or unmodified.  Neither have I/we provided access
%       to my/our code to another. The project I/we am/are submitting
%       is my/our own original work.
%
%  Program Description: Given the function, finds the amount of time spent
%  5 degrees or more above the target range.
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% --- INPUTS ---
%The equation being used.
temp = '35 + ((15*sin(3*x - 1)) / exp(x))';
%The equation set up to calculate where temperature is above 40°C
temp_over = '-5 + ((15*sin(3*x - 1)) / exp(x))';

% --- CALCULATIONS ---
%Graphs the equation for 0 to 6 seconds.
fplot(temp, [0 5], 'b-');
title('Temperature as a Function of Time');
xlabel('Time (minutes)');
ylabel('Temperature (°C)');
grid on;

%Finds the zeros (around the first maximum) of the shifted function.
zero1 = fzero(temp_over, 0.25);
zero2 = fzero(temp_over, 1.65);
%Takes the difference of the two zeros to get the time spent above 40°C.
dzero = zero2 - zero1;

% --- OUTPUTS ----
%Prints the time spent above 40°C.
fprintf('The time spent 5°C or more over the target temp was: %d minutes.\n', dzero); 

% The time spent 5°C or more over the target temp was: 4.662781e-001 minutes.