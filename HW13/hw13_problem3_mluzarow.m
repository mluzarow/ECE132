%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%  Programmer(s) and Purdue Email Address(es):
%  1. Mark Luzarowski mluzarow@purdue.edu
%
%  Section: 017
%
%  Assignment #: 13.3 
%
%  Academic Integrity Statement:
%
%       I/we have not used source code obtained from
%       any other unauthorized source, either modified
%       or unmodified.  Neither have I/we provided access
%       to my/our code to another. The project I/we am/are submitting
%       is my/our own original work.
%
%  Program Description: Graphs the given equation and finds said graph's
%  minimums.
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% --- INPUTS ---
%The equation of torque for a servo unit.
control_equ = 'exp(-0.01)*sin(2*x) + cos(3*x)';

% --- CALCULATIONS ---
%Plot the function from 0 to 10 seconds with blue line.
fplot(control_equ, [0 10], 'b-');
title('Control Effort for Servo Unit as a Function of Time');
xlabel('Time (sec)');
ylabel('Control Effort (torque)');
grid;

% --- OUTPUTS ----
%Finds the y of each minimum point.
[~, min1] = fminbnd(control_equ, 1, 1.5);
[~, min2] = fminbnd(control_equ, 2.5, 3.25);
[~, min3] = fminbnd(control_equ, 5, 6);
[~, min4] = fminbnd(control_equ, 7, 8);
[~, min5] = fminbnd(control_equ, 9, 10);
%Prints results.
fprintf('Minimum values are:\nMin1: %d\nMin2: %d\nMin3: %d\nMin4: %d\nMin5: %d', min1, min2, min3, min4, min5);

% Minimum values are:
% Min1: -2.296607e-001
% Min2: -1.211823e+000
% Min3: -1.896665e+000
% Min4: -2.296607e-001
% Min5: -1.211823e+000