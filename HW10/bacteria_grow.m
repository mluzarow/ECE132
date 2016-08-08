%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%  Programmer(s) and Purdue Email Address(es):
%  1. Mark Luzarowski mluzarow@purdue.edu
%
%  Section: 017
%
%  Assignment #: 10.1
%
%  Academic Integrity Statement:
%
%       I/we have not used source code obtained from
%       any other unauthorized source, either modified
%       or unmodified.  Neither have I/we provided access
%       to my/our code to another. The project I/we am/are submitting
%       is my/our own original work.
%
%  Program Description: Plots cell growth data four different ways and
%  presents the general form of the linearized line.
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% --- INPUTS ---
%Time (x) values.
time = [1, 5, 10, 15, 20];
%Cell Concentration (y) values.
cell_conc = [1e6, 7.5e6, 1.25e7, 3.15e7, 4.2e7];

% --- CALCULATIONS ---
%Reguar plot
subplot(2,2,1), plot(time, cell_conc), 
title('Cell Concentration as a function of time'), 
xlabel('Time (days)'), ylabel('Cell Concentration (g/L)'), 
grid on;
%Log y axis plot.
subplot(2,2,2), semilogy(time, cell_conc), 
title('Cell Concentration as a function of time'), 
xlabel('Time (days)'), ylabel('Cell Concentration (g/L)'), 
grid on;
%Log x axis plot.
subplot(2,2,3), semilogx(time, cell_conc), 
title('Cell Concentration as a function of time'), 
xlabel('Time (days)'), ylabel('Cell Concentration (g/L)'), 
grid on;
%Log both axis plot.
subplot(2,2,4), loglog(time, cell_conc), 
title('Cell Concentration as a function of time'), 
xlabel('Time (days)'), ylabel('Cell Concentration (g/L)'), 
grid on;

% --- OUTPUTS ----
fprintf('General Form: y = b*x^m');
fprintf('\nExplanation: As the loglog graph is linear, we can use the power law model.');
fprintf('\nLinear Form: y = 2.2188e6*x - 3.7318e6\n');