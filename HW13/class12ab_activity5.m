%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%  Programmer(s) and Purdue Email Address(es):
%  1. Mark Luzarowski mluzarow@purdue.edu
%
%  Section: 017
%
%  Assignment #: 13.1
%
%  Academic Integrity Statement:
%
%       I/we have not used source code obtained from
%       any other unauthorized source, either modified
%       or unmodified.  Neither have I/we provided access
%       to my/our code to another. The project I/we am/are submitting
%       is my/our own original work.
%
%  Program Description: Finds the time at which the temperatur variance remains 
%  within 2% over/under target.
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% --- INPUTS ---
%The equation being used.
temp = '35 + ((15*sin(3*x - 1)) / exp(x))';
%The equation set up to calculate where temperature is within 2% over 35�C.
temp_over = '0.7 + ((15*sin(3*x - 1)) / exp(x))';
%The equation set up to calculate where temperature is within 2% under 35�C.
temp_under = '-0.7 + ((15*sin(3*x - 1)) / exp(x))';

% --- CALCULATIONS ---
%Graphs the equation for 0 to 5 minutes.
fplot(temp_under, [0 5], 'b-');
title('Temperature as a Function of Time');
xlabel('Time (minutes)');
ylabel('Temperature (�C)');
grid on;

%Finds the zeros using the function shifted up by 2%.
zero1o = fzero(temp_over, 0.25);
zero2o = fzero(temp_over, 1.45);
zero3o = fzero(temp_over, 2.25);
%Finds the zeros using the function shifted down by 2%.
zero1u = fzero(temp_under, 0.25);
zero2u = fzero(temp_under, 1.25);
zero3u = fzero(temp_under, 2.6);
zero4u = fzero(temp_under, 3);

%Finds the differences between the calculated zeros in order to find the 
%possible areas where the temperature was in 2% above/below.
dzero1 = zero1u - zero1o;
dzero2 = zero2o - zero2u;
dzero3 = zero3u - zero3o;
dzero4 = 5 - zero4u;
%Sums all the time frames to get time spent within 2% above/below
total = dzero1 + dzero2 + dzero3 + dzero4;

% --- OUTPUTS ----
%Prints the time spent within 2% above/below 35�C.
fprintf('The time spent 2%% over/under 35�C: %d minutes.\n', total); 

% The time spent 2% over/under 35�C: 2.539658e+000 minutes.