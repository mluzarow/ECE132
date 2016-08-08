%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%  Programmer(s) and Purdue Email Address(es):
%  1. Mark Luzarowski mluzarow@purdue.edu
%
%  Section: 017
%
%  Assignment #: 7.5
%
%  Academic Integrity Statement:
%
%       I/we have not used source code obtained from
%       any other unauthorized source, either modified
%       or unmodified.  Neither have I/we provided access
%       to my/our code to another. The project I/we am/are submitting
%       is my/our own original work.
%
%  Program Description: Generate 10, 100, and 1000 Gaussian random number 
%  sets with a mean of 80 and standard deviation of 25 and makes a histogram out of the data.
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% --- INPUTS ---
%Generates 10, 100, and 1000 random number sets with mean 80 and stdev 25 in a 1000 by 1
%matrix.
data_set1 = normrnd(80,25,10,1);
data_set2 = normrnd(80,25,100,1);
data_set3 = normrnd(80,25,1000,1);

% --- CALCULATIONS ---
%Finds the mean and standard deviation of the data.
fprintf('\nThe mean of Dataset 1 is %0.3f with a standard deviation of %0.3f.\n', mean(data_set1), std(data_set1));
fprintf('The mean of Dataset 2 is %0.3f with a standard deviation of %0.3f.\n', mean(data_set2), std(data_set2));
fprintf('The mean of Dataset 3 is %0.3f with a standard deviation of %0.3f.\n', mean(data_set3), std(data_set3));

% --- OUTPUTS ----
%Creates a histogram based on the given data.
subplot(3,1,1), hist(data_set1);
title('Distribution of random 10 numbers');
xlabel('Value of number');
ylabel('Frequency');
grid;
subplot(3,1,2), hist(data_set2);
title('Distribution of random 100 numbers');
xlabel('Value of number');
ylabel('Frequency');
grid;
subplot(3,1,3), hist(data_set3);
title('Distribution of random 1,000 numbers');
xlabel('Value of number');
ylabel('Frequency');
grid;

% The mean of Dataset 1 is 81.888 with a standard deviation of 21.287.
% The mean of Dataset 2 is 80.745 with a standard deviation of 24.621.
% The mean of Dataset 3 is 80.652 with a standard deviation of 25.548.

%a) The less data there is, the harder it was to tell which bin had the
%largest frequency.  As such, one can find that more data presents a better
%idea of what is going on with said data.
%b) The more data there is, the ore the data began to represent a bell
%curve.
%c) As stated before, getting more data allows one to better see what is
%going on with said data and get a better idea what is going on with the
%source of whatever data it is.