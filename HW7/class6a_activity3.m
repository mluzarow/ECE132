%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%  Programmer(s) and Purdue Email Address(es):
%  1. Mark Luzarowski mluzarow@purdue.edu
%
%  Section: 017
%
%  Assignment #: 7.2
%
%  Academic Integrity Statement:
%
%       I/we have not used source code obtained from
%       any other unauthorized source, either modified
%       or unmodified.  Neither have I/we provided access
%       to my/our code to another. The project I/we am/are submitting
%       is my/our own original work.
%
%  Program Description: Generate 1000 Gaussian random numbers with a mean
%  of 80 and standard deviation of 5 and makes a histogram out of the data.
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% --- INPUTS ---
%Generates 1000 random numbers with mean 80 and stdev 5 in a 1000 by 1
%matrix.
rnd_num = normrnd(80,5,1000,1);

% --- CALCULATIONS ---
%Finds the mean of the data.
fprintf('\nMean of data: %f\n', mean(rnd_num));
%Finds standard deviation of data.
fprintf('Standard Deviation of data: %f\n', std(rnd_num));

%Finds the frequency of each bin and the center of each bin.
[Bin_frequency, Bin_centers] = hist(rnd_num)

%Sorts the random numbers.
sort(rnd_num);

% --- OUTPUTS ----
%Creates a histogram based on the given data.
hist(rnd_num);
title('Distribution of random 1,000 numbers');
xlabel('Value of number');
ylabel('Frequency');
grid;