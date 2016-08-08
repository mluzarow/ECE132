function [num_terms] = series_sum_mluzarow(specified_value)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
% 
%  Programmer(s) and Purdue Email Address(es):
%  1. Mark Luzarowski mluzarow@purdue.edu
%
%  Section #: 017
%
%  Assignment #: 5.3
%
%  Academic Integrity Statement:
%
%       I/We have not used source code obtained from
%       any other unauthorized source, either modified
%       or unmodified.  Neither have I/we provided access
%       to my/our code to another. The project I/we am/are 
%       submitting is my/our own original work.
%
% FUNCTION NAME: Calculates the value of k at which the sum of 2^k for 1
% to k is equal to the value the user has entered.
%
% INPUTS: List them below one line per input argument
% 1) specified_value: The user specified value that we are attempting to
%    exceed
%  
% OUTPUTS: List them below line per output argument
% 1) num_terms: The number of terms that it took to exceed the user's
%    value.
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Sets the current term (k value) as 1.
term_cur = 1;
%Sets the primary sum as 0.
sum_terms = 0;

%Checks to see if the user's value is less than 0 and, if it is, attemps to
%get the user to input a value above or equal to zero.
while specified_value < 0
   specified_value = input('You seem to have input a negative value! Try again: '); 
end

%Loops until the sum of terms is greater than the user's value.
while sum_terms <= specified_value
    %Sets the current value as 2^(current term) or 2^k.
    value_cur = 2^term_cur;
    
    value_cur  = value_cur / factorial(term_cur);
    %Sets the sum as the existing sum plus the current value.
    sum_terms = sum_terms + value_cur;
    %Increments the current term by one.
    term_cur = term_cur + 1;
end
%Subtracts one from the current term due to it being one more than the 
%number of terms within the sum upon loop termination.
num_terms = term_cur - 1;

% num_terms = series_sum_mluzarow(0)
% 
% num_terms =
% 
%      1
% 
% num_terms = series_sum_mluzarow(25)
% 
% num_terms =
% 
%      4
% 
% num_terms = series_sum_mluzarow(2000)
% 
% num_terms =
% 
%     10