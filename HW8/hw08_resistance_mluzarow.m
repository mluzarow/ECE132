%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%  Programmer(s) and Purdue Email Address(es):
%  1. Mark Luzarowski mluzarow@purdue.edu
%
%  Section: 017
%
%  Assignment #: 8.5
%
%  Academic Integrity Statement:
%
%       I/we have not used source code obtained from
%       any other unauthorized source, either modified
%       or unmodified.  Neither have I/we provided access
%       to my/our code to another. The project I/we am/are submitting
%       is my/our own original work.
%
%  Program Description: Plots and finds the regression line of the given data.
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% --- INPUTS ---
%Imports the values.
res_vals = textread('hw08_problem5.txt');

% --- CALCULATIONS ---
%Calculates the best fit line equation.
res_fit = polyfit(res_vals(:,1), res_vals(:,2), 1);

% --- OUTPUTS ----
%Creates the scatter plot of the given values.
scatter(res_vals(:,1), res_vals(:,2));
xlabel('Resistance (Ohm)');
ylabel('Failure Time (min)');
title('Failure Time as a Function of Resistance');
hold on;
%Adds the best fit line.
plot(res_vals(:,1), polyval(res_fit, res_vals(:,1)));

%Predicted value at 42ohms = 37.45min
%Real Value at 42 ohms = 41min


