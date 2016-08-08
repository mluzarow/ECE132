%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%  Programmer(s) and Purdue Email Address(es):
%  1. Mark Luzarowski mluzarow@purdue.edu
%
%  Section: 017
%
%  Assignment #: 10.2
%
%  Academic Integrity Statement:
%
%       I/we have not used source code obtained from
%       any other unauthorized source, either modified
%       or unmodified.  Neither have I/we provided access
%       to my/our code to another. The project I/we am/are submitting
%       is my/our own original work.
%
%  Program Description: Plots data on regular and loglog plot and finds the
%  general and linear equations of said data.
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% --- INPUTS ---
%Year index (x) values.
year_index = [1, 2, 3, 4, 5, 6, 7];
%Vehicles exported (y) values.
vehicles_exp = [78484, 161071, 240190, 249660, 303424, 309362, 320268];

% --- CALCULATIONS ---
%Finds coeficients of polynomial ax^n + b for linearization.
fit = polyfit(year_index, vehicles_exp, 1);

% --- OUTPUTS ----
%Regular plot of year index vs vehicles exported.
plot(year_index, vehicles_exp), 
title('Vehicles Exported as a Function of Year Index'),
xlabel('Year Index'),
ylabel('Vehicles Exported'),
grid on;

%Log (both axis) plot of year index vs vehicles exported. (straightest)
figure;
loglog(year_index, vehicles_exp),
title('Vehicles Exported as a Function of Year Index'),
xlabel('Year Index'),
ylabel('Vehicles Exported'),
grid on;

%Prints linearized and general forms.
fprintf('Linearized Form: y = 38756x + 82470.142857');
fprintf('General Form: y = b*x^m (straightest on loglog plot)');