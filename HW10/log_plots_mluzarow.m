function [] = log_plots_mluzarow(vec_ind, vec_d)  
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
% 
%  Programmer(s) and Purdue Email Address(es):
%  1. Mark Luzarowski mluzarow@purdue.edu
%
%  Section #: 017
%
%  Assignment #: 9.4
%
%  Academic Integrity Statement:
%
%       I/We have not used source code obtained from
%       any other unauthorized source, either modified
%       or unmodified.  Neither have I/we provided access
%       to my/our code to another. The project I/we am/are 
%       submitting is my/our own original work.
%
% FUNCTION NAME: 
% INPUTS: List them below one line per input argument
%  1) vec_ind: The independent variables.
%  2) vec_d:   The dependent variables.
%  
% OUTPUTS: List them below line per output argument
%  1) None.
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Creats linear plot of data.
subplot(4,1,1), plot(vec_ind, vec_d);
title('x VS y on Linear Plot');
xlabel('X');
ylabel('Y');
grid;
%Creates semi-log y plot of data.
subplot(4,1,2), semilogy(vec_ind, vec_d);
title('x VS y on Semi-Log y Plot');
xlabel('X');
ylabel('Y');
grid;
%Creates semi-log x plot of data.
subplot(4,1,3), semilogx(vec_ind, vec_d);
title('x VS y on Semi-Log x Plot');
xlabel('X');
ylabel('Y');
grid;
%Creates log plot of data.
subplot(4,1,4), loglog(vec_ind, vec_d);
title('x VS y on Log Plot');
xlabel('X');
ylabel('Y');
grid;