function phase = Class3b_Activity5(temp, percent)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
% 
%  Programmer(s) and Purdue Email Address(es):
%  1. mluzarow@purdue.edu
%
%  Section #: 017
%
%  Assignment #: 4.2
%
%  Academic Integrity Statement:
%
%       I/We have not used source code obtained from
%       any other unauthorized source, either modified
%       or unmodified.  Neither have I/we provided access
%       to my/our code to another. The project I/we am/are 
%       submitting is my/our own original work.
%
% FUNCTION NAME: Given the temperature and the percent composition of B,
% program finds the phase at which the compound would be.
%
% INPUTS: List them below one line per input argument
% 1) temp: The temperature. (°C)
% 2) percent: The percentage composition of B. (%)
%  
% OUTPUTS: List them below line per output argument
% 1) phase: The phase of the compound.
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%--------CALCULATIONS--------
% If percent composition is on interval [0,30) 
% (All possible values for "Solid A + comound AB" phase).
if percent >= 0 && percent < 30
    % Compares temperature "temp" to function y = (-65/30)x + 125.
    % Depending on whether "temp" is more than, equal to, or less than y,
    % we can find if it is above, on, or below our line.
    if temp < ((percent * (-65 / 30)) + 125)
        phase = 'Solid A + compound AB';
    elseif temp == ((percent * (-65 / 30)) + 125)
        phase = 'Between liquid and Solid B + compound AB';
    elseif temp > ((percent * (-65 / 30)) + 125)
        phase = 'Liquid';
    end
% If percent composition is 30.
elseif percent == 30
    % Checks values on point x = 30, which holds 3 possible phases as
    % temperature "temp" increases from 0 to 150.
    if temp >= 0 && temp < 60
        phase = 'Between Solid A + compound AB and Solid B + compound AB';
    elseif temp == 60
        phase = 'Eutetic point';
    elseif temp > 60 && temp <= 150
        phase = 'Liquid';
    end
% If percent composition is on interval (30,100].
elseif percent > 30 && percent <= 100 
    % Compares temperature "temp" to function y = (x - 30) + 60.
    % Depending on whether "temp" is more than, equal to, or less than y,
    % we can find if it is above, on, or below our line.
    if temp < ((percent - 30) + 60)
        phase = 'Solid B + compound AB';
    elseif temp == ((percent - 30) + 60)
        phase = 'Between liquid and Solid B + compound AB';
    elseif temp > ((percent - 30) + 60)
        phase = 'Liquid';
    end
end
%--------OUTPUTS--------
%Prints out given temperature, percent composition, and calculated phase.
fprintf('Given temperature %d°C and percent composition %d%%, the phase is: %s.\n', temp, percent, phase);

% Class3b_Activity5(150,30);
% Given temperature 150°C and percent composition 30%, the phase is: Liquid.
% Class3b_Activity5(80,80);
% Given temperature 80°C and percent composition 80%, the phase is: Solid B + compound AB.
% Class3b_Activity5(90,60);
% Given temperature 90°C and percent composition 60%, the phase is: Between liquid and Solid B + compound AB.
% Class3b_Activity5(150,30);
% Given temperature 150°C and percent composition 30%, the phase is: Liquid.
% Class3b_Activity5(60,30);
% Given temperature 60°C and percent composition 30%, the phase is: Eutetic point.
