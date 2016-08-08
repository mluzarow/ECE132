function [smooth_vec] = datasmooth(rough_vec)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
% 
%  Programmer(s) and Purdue Email Address(es):
%  1. Mark Luzarowski mluzarow@purdue.edu
%
%  Section #: 017
%
%  Assignment #: 6.2
%
%  Academic Integrity Statement:
%
%       I/We have not used source code obtained from
%       any other unauthorized source, either modified
%       or unmodified.  Neither have I/we provided access
%       to my/our code to another. The project I/we am/are 
%       submitting is my/our own original work.
%
% FUNCTION NAME: "Smoothes" a vector of values.
%
% INPUTS: List them below one line per input argument
% 1) rought_vec: The vector the user has presented.
%  
% OUTPUTS: List them below line per output argument
% 2) smooth_vec: The "smoothed" vector for output.
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Checks to seem if the input vector is smaller than 4; throws error if not.
if length(rough_vec) < 4
    error('Your vector must be at least 4 elements in size.');
%If vector has 4 of more values.
else
    %Counts along the user's vector and changes values accordingly.
    for count = 1:1:length(rough_vec)
        %If value idex is 1.
        if count == 1
            smooth_vec(count) = (rough_vec(1) * 3 + rough_vec(2) + rough_vec(3)) / 5;
        %If value index is 2.
        elseif count == 2
            smooth_vec(count) = (rough_vec(1) * 1.5 + rough_vec(2) * 1.5 + rough_vec(3) + rough_vec(4)) / 5;
        %If value index is 1 less than length of vector.
        elseif count == length(rough_vec) - 1
            smooth_vec(count) = (rough_vec(count + 1) * 1.5 + rough_vec(count) * 1.5 + rough_vec(count - 1) + rough_vec(count - 2)) / 5;
        %If value index is length of vector.
        elseif count == length(rough_vec)
            smooth_vec(count) = (rough_vec(count) * 3 + rough_vec(count - 1) + rough_vec(count - 2)) / 5;
        %If value index is somewhere in the middle.
        else
            smooth_vec(count) = (rough_vec(count + 2) + rough_vec(count + 1) + rough_vec(count) + rough_vec(count - 1) + rough_vec(count - 2)) / 5;
        end %If (smoothing) end
    end %For (counting) end
end %If (error check) end
