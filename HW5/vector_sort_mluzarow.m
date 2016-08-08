function vec_out = vector_sort_mluzarow(vec_in)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
% 
%  Programmer(s) and Purdue Email Address(es):
%  1. Mark Luzarowski mluzarow@purdue.edu
%
%  Section #: 017
%
%  Assignment #: 5.1
%
%  Academic Integrity Statement:
%
%       I/We have not used source code obtained from
%       any other unauthorized source, either modified
%       or unmodified.  Neither have I/we provided access
%       to my/our code to another. The project I/we am/are 
%       submitting is my/our own original work.
%
% FUNCTION NAME: Sorts a given vector numerically.
%
% INPUTS: List them below one line per input argument
% 1) vec_in: The vector given by the user.
%  
% OUTPUTS: List them below line per output argument
% 1) vec_out: The sorted vector.
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Checks whether vec_in is empty or has one value.
if  isempty(vec_in) || (length(vec_in) == 1)
    vec_out = vec_in;
%If vec_in has more than 1 value.
else 
    %count_s counter delcared as 1 for second (point) loop to function.
    count_s = 1;
    %Goes through array count_f times to check for unsorted values for final 
    %output.
    for count_f = (1:1:length(vec_in) * 2)
        %Goes through array count_s times to check for unsorted values at 
        %individual points.  
        for count_s = (1:1:length(vec_in) - count_s)
            %If value 1 is more than value 2 in array, values are flipped 
            %using the temp variable as an intermediate.
            if vec_in(count_s) > vec_in(count_s + 1)
                temp = vec_in(count_s);
                vec_in(count_s) = vec_in(count_s + 1);
                vec_in(count_s + 1) = temp;
            end %If (flipper) end
        end %For (point) end
    end %For (total) end
    %Sets sorted vec_in as vec_out for output.
    vec_out = vec_in;
end %If (checking) end

% vec_out = vector_sort_mluzarow([10 9 8 7 6 5])
% 
% vec_out =
% 
%      5     6     7     8     9    10
% 
% vec_out = vector_sort_mluzarow([4 12 3 11 17 9])
% 
% vec_out =
% 
%      3     4     9    11    12    17

