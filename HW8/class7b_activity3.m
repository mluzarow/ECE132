%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%  Programmer(s) and Purdue Email Address(es):
%  1. Mark Luzarowski mluzarow@purdue.edu
%
%  Section: 017
%
%  Assignment #: 8.2
%
%  Academic Integrity Statement:
%
%       I/we have not used source code obtained from
%       any other unauthorized source, either modified
%       or unmodified.  Neither have I/we provided access
%       to my/our code to another. The project I/we am/are submitting
%       is my/our own original work.
%
%  Program Description: Using given data, creates a graph of th data as
%  well as creates a regression line.
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% --- INPUTS ---
%Imports the data from the given xls file.
tele_vals = xlsread('class7b_regression_activities_engr13200_s11.xls', 2, 'A5:B23');

% --- CALCULATIONS ---
%Finds the slope and b of the best fit line.
tele_fit = polyfit(tele_vals(:,1), tele_vals(:,2),1);

%Finds the predicted y values.
y_pred = tele_fit(1,1) .* tele_vals(:,1) + tele_fit(1,2);
%Calculates the SSE.
SSE = sum((tele_vals(:,2) - y_pred).^2);

%Finds the average y value.
y_av = mean(tele_vals(:,2));
%Calculates the SST.
SST = sum((tele_vals(:,2) - y_av).^2);

%Calculates the r^2 value.
r_sqrd = 1 - (SSE / SST);

% --- OUTPUTS ----
%Plots the original data.
plot(tele_vals(:,1), tele_vals(:,2), 'or');
xlabel('Year');
ylabel('Telephone Expenditures ($)');
title('Telephone Expenditures as a Function of Time');
hold on;
%Adds the best fit line.
plot(tele_vals(:,1), polyval(tele_fit, tele_vals(:,1)));

%Prints the r^2 value and the best fit line equation.
fprintf('\nEquation of line: %fx + %f', tele_fit(1,1), tele_fit(1,2));
fprintf('\nr^2 value: %f\n', r_sqrd);
