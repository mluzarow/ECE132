%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%  Programmer(s) and Purdue Email Address(es):
%  1. Mark Luzarowski mluzarow@purdue.edu
%
%  Section: 017
%
%  Assignment #: 13.1 - 13.2
%
%  Academic Integrity Statement:
%
%       I/we have not used source code obtained from
%       any other unauthorized source, either modified
%       or unmodified.  Neither have I/we provided access
%       to my/our code to another. The project I/we am/are submitting
%       is my/our own original work.
%
%  Program Description: Given a user's guess as to where the zero and
%  minimum is on the graph, the program will calculate said zero and
%  minimum.
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% --- INPUTS ---
%The equation being used.
func_y = '(2-6*sin(5*x-2))/exp(x)';

% --- CALCULATIONS ---
%Graphs the equation for 0 to 6 seconds.
fplot(func_y, [0 6], 'b-');
title('Heart Valve Controller Arm Displacement');
xlabel('Time (sec)');
ylabel('Displacement (mm)');
grid;

%Prompts user to input a guess as to where the first zero is.
guess = input('What is your initial guess for the time at which the zero occurs? ');
%Calculates zero based on user's guess.
zero = fzero(func_y, guess);

%Prompts user to input a guess as to where the first minimum is.
guess2 = input('What is the range of time over which the minimum occurs? ');
%Calculates the minimum based on user's guess.
[~, min] = fminbnd(func_y, guess2(:,1), guess2(:,2));

% --- OUTPUTS ----
%Prints calculated information.
fprintf('At what time is the pump controller arm at its default position? %d\n', zero);
fprintf('At what time does the pump controller arm reached its minimum displacement? %d\n', min);

