%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%  Programmer(s) and Purdue Email Address(es):
%  1. Mark Luzarowski mluzarow@purdue.edu
%
%  Section: 017
%
%  Assignment #: 13.5
%
%  Academic Integrity Statement:
%
%       I/we have not used source code obtained from
%       any other unauthorized source, either modified
%       or unmodified.  Neither have I/we provided access
%       to my/our code to another. The project I/we am/are submitting
%       is my/our own original work.
%
%  Program Description: Plots a sine wave and plots a square wave version
%  of the sine wave.
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% --- INPUTS ---
%The sin function.
sin_func = 'sin(x)';
%The index variable to following array.
index = 1;

% --- CALCULATIONS ---
%For loop creates array of values (4pi/1000) to (4pi) stored in calc_vec.
for i = (4*pi)/1000:(4*pi)/1000:4*pi
    calc_vec(:, index) = i;
    index = index + 1;
end

%For loop goes through every value in calc_vec, plugging said value into
%the sin(x) function and checking if the outcome is negative, positive, or
%zero.
for i = 1:1:index - 1
    %Puts value of current x value (found above) at given index into 
    %variable "x" for y value calculation stored in "sinval".
    x = calc_vec(i);
    sinval = eval(sin_func);
    %If result is negative, add -1 result in square_wave_vec at index i.
    if sinval < 0
        square_wave_vec(:,i) = -1;
    %If result is positive, add +1 result in square_wave_vec at index i.
    elseif sinval > 0
        square_wave_vec(:,i) = 1;
    %If result is zero, add 0 result in square_wave_vec at index i.
    else
        square_wave_vec(:,i) = 0;
    end
end

% --- OUTPUTS ----
%plots the orignial sin(x) function from 0 to 4pi.
fplot(sin_func, [0, 4*pi], 'b--');
%Holds the current plot.
hold on;
%plots the square wave data along side the sin(x) function's plot.
plot(calc_vec, square_wave_vec);
%Labels the axis accordingly.
title('Sine Wave VS Square Sine Wave');
xlabel('X Values');
ylabel('Y Values');
%turn grid on.
grid on;
%y-axis range set to be larger so one can more easily see the relationship
%between the square wave and the sin wave.
axis([0 4*pi -1.5 1.5]);
