%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%  Programmer(s) and Purdue Email Address(es):
%  1. Mark Luzarowski mluzarow@purdue.edu
%
%  Section: 017
%
%  Assignment #: 7.3
%
%  Academic Integrity Statement:
%
%       I/we have not used source code obtained from
%       any other unauthorized source, either modified
%       or unmodified.  Neither have I/we provided access
%       to my/our code to another. The project I/we am/are submitting
%       is my/our own original work.
%
%  Program Description: Imports temperature values after a heat exchange
%  and persents the mean, standard deviation, minimum and maximum of the
%  data as well as presenting a histogram.
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% --- INPUTS ---
%Data is read, skipping the header.
thermo_vals = dlmread('thermocouple.dat', '\n', 1, 0);


% --- CALCULATIONS ---
%Data is sorted
sort(thermo_vals)
%Prints the minimum.
fprintf('Minimum of values: %0.4f°C', min(thermo_vals));
%Prints the maximum.
fprintf('\nMaximum of values: %0.4f°C', max(thermo_vals));
%Prints the mean.
fprintf('\nMean of values: %0.4f°C', mean(thermo_vals));
%Prints the standard deviation.
fprintf('\nStandard Deviation of values: %0.4f°C\n', std(thermo_vals));

%Prints mean in terms of °F.
fprintf('\nMean in terms of °F: %0.4f°F\n', convtemp(mean(thermo_vals), 'C', 'F'));

% --- OUTPUTS ----
%Histogram created based on given values.
hist(thermo_vals);
title('Frequency of Temperature Values After Heat Exchange');
xlabel('Temperature (°C)');
ylabel('Frequency');
grid;

%There was an error in data entry while attempting to inport the entire
%file.  "thermocouple.dat" seems to have a header on the first line, which
%is just a string.  As such, the first line is skipped to read the
%temperature values.

% Minimum of values: 82.3000°C
% Maximum of values: 90.4000°C
% Mean of values: 87.0120°C
% Standard Deviation of values: 2.5112°C

% Mean in terms of °F: 188.6216°F

%The system seems to be working exactly as it is predicted to work.  The
%mean of the temperatures falls very close to the value that the pdf
%specifies and the minimum and maximum values do not exeed the given +-5
%degrees.