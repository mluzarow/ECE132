function [] = logplot_exec_mluzarow(data_file)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
% 
%  Programmer(s) and Purdue Email Address(es):
%  1. Mark Luzarowski mluzarow@purdue.edu
%
%  Section #: 017
%
%  Assignment #: 10.4
%
%  Academic Integrity Statement:
%
%       I/We have not used source code obtained from
%       any other unauthorized source, either modified
%       or unmodified.  Neither have I/we provided access
%       to my/our code to another. The project I/we am/are 
%       submitting is my/our own original work.
%
% FUNCTION NAME: 
% INPUTS: List them below one line per input argument
%  1) data_file: The name of the data file.
%  
% OUTPUTS: List them below line per output argument
% None
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Read the data in the given file, skipping the headers.
[x_vals, y_vals] = textread(data_file, '%d %f', 'headerlines', 1);

%Sends the data to the graphing function.
log_plots_mluzarow(x_vals, y_vals);

%Sample 1 forms.
fprintf('Data of sampledata1.dat is of the general form: y = bx^m');
fprintf('\nExplanation: Due to the fact that the log x vs linear y scale graph was straight,\n  we can use the power law model.');
fprintf('\nLinear Form: y = 0.0773*x + 4.9645');
%Sample 2 forms.
fprintf('\n\nData of sampledata2.dat is of the general form: y = be^mx');
fprintf('\nExplanation: Due to the fact that the linear x vs log y scale graph was straight,\n  we can use the exponential model.');
fprintf('\nLinear Form: y = 0.0703x - 0.7147');