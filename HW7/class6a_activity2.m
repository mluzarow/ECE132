%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%  Programmer(s) and Purdue Email Address(es):
%  1. Mark Luzarowski mluzarow@purdue.edu
%
%  Section: 017
%
%  Assignment #: 7.1
%
%  Academic Integrity Statement:
%
%       I/we have not used source code obtained from
%       any other unauthorized source, either modified
%       or unmodified.  Neither have I/we provided access
%       to my/our code to another. The project I/we am/are submitting
%       is my/our own original work.
%
%  Program Description: Draws data from a text file and creates a
%  histogram.
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% --- INPUTS ---
%Reads the text file into a string array.
hist_data = textread('journal_diam.txt');

% --- CALCULATIONS ---
%Takes the mean.
fprintf('\nMean of data: %f\n', mean(hist_data));
%Finds the median value.
fprintf('Median of data: %f\n', median(hist_data));
%Finds the standard deviation.
fprintf('Standard deviation of data: %f\n', std(hist_data));
%Finds the minimum value.
fprintf('Minimum of data: %f\n', min(hist_data));
%Finds the maximum value.
fprintf('Maximum of data: %f\n', max(hist_data));

% --- OUTPUTS ----
%Creates a histogram with given data.
hist(hist_data)
xlabel('Journal diameters (in)');
ylabel('Number of samples');
title('Frequency of journal diameters.');
grid;

%It is diffinitely easier to use the MATLAB histogram creation method as it
%is much, much faster.  However, MATLAB's histogram function seems to
%create a graph that changes slightly as the data changes.  Also, the bars
%could offset themselves and make the graph strange to read.