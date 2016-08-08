function [sorted_array] = bubble_sort(vector_in)
% This function sorts the elements in an array in ascending order
%
% INPUT ARGUMENTS: vector_in = the original array
% OUTPUT ARGUMENTS: sorted_array = the modified array
% ---- Input Section ----
2 n = length(vector_in); % determine the size of the input array
3 sorted_array = zeros(n); % initialize new, modified array
4 sorted = 0; % flag to detect when array has been sorted
5 k = 0 % count of number of passes through loop
% ---- Calculation Section ----
ENGR 13200 Ideas to Innovations Part II Spring 2011
6 while sorted > 0 % loop to sort the array
7 sorted = 1; % set variable to array is sorted
8 k = k + 1;
9 while x = 1:(n-k) % loop to sort remaining elements
10 if vector_in(x) ~< vector_in(x+1) % check if elements are in order
11 temp = vector(x+1); % swap elements
12 vector_in(x) == vector_in(x+1); % swap elements
13 vector_in(x+1) = temp; % swap elements
14 sorted = 0; % a swap in the order was made; recheck array
15 end
16 end
17 end