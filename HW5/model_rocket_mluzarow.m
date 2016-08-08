function [] = model_rocket_mluzarow(vel_ini, angle)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
% 
%  Programmer(s) and Purdue Email Address(es):
%  1. Mark Luzarowski mluzarow@purdue.edu
%
%  Section #: 017
%
%  Assignment #: 5.5
%
%  Academic Integrity Statement:
%
%       I/We have not used source code obtained from
%       any other unauthorized source, either modified
%       or unmodified.  Neither have I/we provided access
%       to my/our code to another. The project I/we am/are 
%       submitting is my/our own original work.
%
% FUNCTION NAME: Calculates the height of the rocket and distance the
% rocket travels for each second until it hits the water.
%
% INPUTS: List them below one line per input argument
% 1) vel_ini: The initial velocity of the rocket. (m/s)
% 2) angle: The angle of the rocket. (degrees)
%  
% OUTPUTS: List them below line per output argument
% Will print: The current height and distance at each second.
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Set G constant to 9.81 m/s^2
G = 9.81;
%Sets vertical distance (m) to 1.
dist_v = 1;
%Sets horizontal distance to 0.
dist_h = 0;
%Sets the current time (second) to 0
time = 0;

%Loops until the vertical distance is less than 0 (rocket in the water);
%loops while horizontal distance is 0 in order to continue loop upon
%calculation with time 0 and loops while distance is more than 1 for all
%regular calculations.
while dist_h == 0 || dist_v > 1 
    %Calculates horizontal distance. (m)
    dist_h = (vel_ini * cosd(angle)) * time;
    %Calculates vertical distance. (m)
    dist_v = (vel_ini * sind(angle)) * time - (0.5 * G * time^2);
    
    %If the vertical distance is less than 0, exit the loop; boundary set
    %to less than 0 in order to print values if the horizontal
    %distance has reached 0.
    if dist_v < 0
        break
    %If above water, print values.
    else
        fprintf('At %d seconds, the height is %0.2f m and distance is %0.2f m\n',time,dist_v,dist_h);
        %Increments time by 1.
        time = time + 1;
    end %If (break) end
end %While end

% model_rocket_mluzarow(87,61)
% At 0 seconds, the height is 0.00 m and distance is 0.00 m
% At 1 seconds, the height is 71.19 m and distance is 42.18 m
% At 2 seconds, the height is 132.56 m and distance is 84.36 m
% At 3 seconds, the height is 184.13 m and distance is 126.54 m
% At 4 seconds, the height is 225.89 m and distance is 168.71 m
% At 5 seconds, the height is 257.83 m and distance is 210.89 m
% At 6 seconds, the height is 279.97 m and distance is 253.07 m
% At 7 seconds, the height is 292.30 m and distance is 295.25 m
% At 8 seconds, the height is 294.82 m and distance is 337.43 m
% At 9 seconds, the height is 287.52 m and distance is 379.61 m
% At 10 seconds, the height is 270.42 m and distance is 421.78 m
% At 11 seconds, the height is 243.51 m and distance is 463.96 m
% At 12 seconds, the height is 206.78 m and distance is 506.14 m
% At 13 seconds, the height is 160.25 m and distance is 548.32 m
% At 14 seconds, the height is 103.91 m and distance is 590.50 m
% At 15 seconds, the height is 37.75 m and distance is 632.68 m