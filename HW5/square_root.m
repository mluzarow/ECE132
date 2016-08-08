function [sqr_rt] = square_root(num, num_error)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
% 
%  Programmer(s) and Purdue Email Address(es):
%  1. Mark Luzarowski mluzarow@purdue.edu
%
%  Section #: 017
%
%  Assignment #: 5.2
%
%  Academic Integrity Statement:
%
%       I/We have not used source code obtained from
%       any other unauthorized source, either modified
%       or unmodified.  Neither have I/we provided access
%       to my/our code to another. The project I/we am/are 
%       submitting is my/our own original work.
%
% FUNCTION NAME: Calculates the square root of a number to a user defined
% level of accuracy.
%
% INPUTS: List them below one line per input argument
% 1) num: The number the user inputs.
% 2) num_error: The percent error the answer can be within. (%)
%
% OUTPUTS: List them below line per output argument
% 1) sqr_rt: The calculted square root of the number.
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Checks if input is less than zero; displays warning and calculates absolute
%values of given inputs.
if num < 0 || num_error < 0
    warning('Cannot use negative value(s); taking absolute value.');
    num = abs(num);
    num_error = abs(num_error);
end

%Sets the primary guess as the user's input number.
guess = num; 
%Sets counter to 0.
counter = 0; 
    
%While loop to loop until answer is found; escapes with counter = 1.
while counter == 0
    %Calculates quotient.
    quo = num / guess;
        
    %If calculated error is less than or equal to user-set error,
    %escape loop.
    if (abs(quo^2 - guess^2) / num) <= (num_error / 100)
        counter = 1;
    %If calculated error is more than user-set error, perform below
    %calculations and continue with loop.
    else
        %Calculate average of the current guess and quotient.
        av = (guess + quo) / 2;
        %New guess is the average above.
        guess = av;
    end %If (error check) end
end %While end
    
%Sets final guess to output value "sqr_rt".
sqr_rt = guess;
