function phase = phases_mluzarow(temp, percent)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
% 
%  Programmer(s) and Purdue Email Address(es):
%  1. mluzarow@purdue.edu
%
%  Section #: 017
%
%  Assignment #: 4.5
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

%-----------INPUT-------------
% A / A+B boundary:           y = 20x
% A / A+Liquid boundary:      y = (-330/15)x + 630
% A+Liquid / Liquid boundary: y = (-330/35)x + 630
% B+Liquid / Liquid boundary: y = (450/65)(x-35) + 300
% B / B+Liquid boundary:      y = (450/20)(x-80) + 300
% B / A+B boundary:           y = -15(x - 80) + 300

%--------CALCULATIONS---------
% If temperature is between 0°C and 300°C.
if temp >= 0 && temp < 300
    % If percent is between 0% and 15%.
    if percent >= 0 && percent <= 15
        % Compares temperature "temp" to function y = 20x.
        % Depending on whether "temp" is more than, equal to, or less 
        % than y, we can find if it is above, on, or below our line.
        if temp > (20 * percent)
            phase = 'A';
        elseif temp == (20 * percent)
            phase = 'Between A and A+B';
        elseif temp < (20 * percent)
            phase = 'A+B';
        end
    % If percent is between 15% and 80%.
    elseif percent > 15 && percent < 80
        phase = 'A+B';
    % If percent is between 80% and 100%.
    elseif percent >= 80 && percent <= 100
        % Compares temperature "temp" to function y = -15(x - 80) + 300.
        % Depending on whether "temp" is more than, equal to, or less 
        % than y, we can find if it is above, on, or below our line.
        if temp > ((-15 * (percent - 80)) + 300)
            phase = 'B';
        elseif temp == ((-15 * (percent - 80)) + 300)
            phase = 'Between B and A+B';
        elseif temp < ((-15 * (percent - 80)) + 300)
            phase = 'A+B';
        end
    % Error check for percentage input.
    else 
        error('You put in a weird percentage; 0 to 100 only.');
    end
% If temperature is exactly 300°C.
elseif temp == 300
    % Checks areas along the eutectic line for differences.
    if percent >= 0 && percent < 15
        phase = 'A';
    elseif percent == 15
        phase = 'Between A, A+B, and A+Liquid (Eutectic line)';
    elseif percent > 15 && percent < 35
        phase = 'Between A+Liquid and A+B (Eutectic line)';
    elseif percent == 35
        phase = 'Eutectic point';
    elseif percent > 35 && percent < 80
        phase = 'Between B+Liquid and A+B (Eutectic line)';
    elseif percent == 80
        phase = 'Between B, B+Liquid, and A+B (Eutectic line)';
    elseif percent > 80 && percent <= 100
        phase = 'B';
    % Error check for percentage input.
    else 
        error('You put in a weird percentage; 0 to 100 only.');
    end
% If temperature is over 300°C.
elseif temp > 300
    % If percent is between 0% and 35%.
    if percent >= 0 && percent < 35
        % Compares temperature "temp" to function y = (-330/35)x + 630.
        % Depending on whether "temp" is more than, equal to, or less 
        % than y, we can find if it is above, on, or below our line.
        if temp > (((-330 / 35) * percent) + 630)
            phase = 'Liquid';
        elseif temp == (((-330 / 35) * percent) + 630)
            phase = 'Between A+Liquid and Liquid';
        elseif temp < (((-330 / 35) * percent) + 630)
            % Compares temperature "temp" to function y = (-330/15)x + 630.
            % Depending on whether "temp" is more than, equal to, or less 
            % than y, we can find if it is above, on, or below our line.
            if temp > (((-330 / 15) * percent) + 630)
                phase = 'A+Liquid';
            elseif temp == (((-330 / 15) * percent) + 630)
                phase = 'Between A+Liquid and A';
            elseif temp < (((-330 / 15) * percent) + 630)
                phase = 'A';
            end
        end
    % If percent is exactly 35%.
    elseif percent == 35
        phase = 'Liquid';
    % If percent is between 35% and 100%.
    elseif percent > 35 && percent <= 100
        % Compares temperature "temp" to function y = (450/65)(x-35) + 300.
        % Depending on whether "temp" is more than, equal to, or less 
        % than y, we can find if it is above, on, or below our line.
        if temp > (((450 / 65) * (percent - 35)) + 300)
            phase = 'Liquid';
        elseif temp == (((450 / 65) * (percent - 35)) + 300)
            phase = 'Between B+Liquid and Liquid';
        elseif temp < (((450 / 65) * (percent - 35)) + 300)
            % Compares temperature "temp" to function y = (450/20)(x-80) + 300.
            % Depending on whether "temp" is more than, equal to, or less 
            % than y, we can find if it is above, on, or below our line.
            if temp > (((450 / 20) * (percent - 80)) + 300)
                phase = 'B+Liquid';
            elseif temp == (((450 / 20) * (percent - 80)) + 300)
                phase = 'Between B+Liquid and B';
            elseif temp < (((450 / 20) * (percent - 80)) + 300)
                phase = 'B';
            end
        end
    % Error check for percentage input.
    else
        error('You put in a weird percentage; 0 to 100 only.');
    end
% Error check for temperature input.
else 
    error('You put in a weird temperature; positive only.');
end

%-----------OUTPUT------------
%Prints results in a fancy fasion.
fprintf('For %0.1f mass %%B at %0.1f degrees C, the phase is %s.\n', percent, temp, phase);

% phases_mluzarow(400,12);
% For 12.0 mass %B at 400.0 degrees C, the phase is A+Liquid.
% phases_mluzarow(300,35);
% For 35.0 mass %B at 300.0 degrees C, the phase is Eutectic point.
% phases_mluzarow(280,60);
% For 60.0 mass %B at 280.0 degrees C, the phase is A+B.
% phases_mluzarow(100,110);
% ??? Error using ==> phases_mluzarow at 71
% You put in a weird percentage; 0 to 100 only.