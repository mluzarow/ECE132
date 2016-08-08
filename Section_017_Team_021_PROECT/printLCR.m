function [] = printLCR(V, C, L, R1, R2, hObject)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%  Programmer(s) and Purdue Email Address(es):
%  1. Mark Luzarowski mluzarow@purdue.edu
%  2. Jacob McGough jmcgough@purdue.edu
%  3. Andrew Cleveland abclevel@purdue.edu
%  4. Josh Fox fox11@purdue.edu
%
%  Section #: 017
%  Assignment #: Final Project
%
%  Academic Integrity Statement:
%
%       I/We have not used source code obtained from
%       any other unauthorized source, either modified
%       or unmodified.  Neither have I/we provided access
%       to my/our code to another. The project I/we am/are 
%       submitting is my/our own original work.
%
% FUNCTION NAME: Prints the equations used in finding the missing value.
% INPUTS: List them below one line per input argument
%  1. V:    Voltage given by user.
%  2. C:    Capacitance given by user.
%  3. L:    Inductance given by user.
%  4. R1:   Resistance (1) given by user.
%  5. R2:   Resistance (2) given by user.
%
% OUTPUTS: List them below line per output argument
%  1. None.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
handles = guidata(hObject);

if V == 0
    axes(handles.axis_form);
    cla(handles.axis_form, 'reset');
    set(handles.axis_form, 'XColor', 'white', 'YColor', 'white');
    text('position', [0 .5], 'fontsize', 14, 'interpreter', 'latex', 'string', ['$$I = \sqrt {E_0 \times {V^2} \over {L}}$$']);
    text('position', [.35 .5], 'fontsize', 14, 'interpreter', 'latex', 'string', ['$$V = {I \times {R_1 + R_2}}$$']);
elseif L == 0
    axes(handles.axis_form);
    cla(handles.axis_form, 'reset');
    set(handles.axis_form, 'XColor', 'white', 'YColor', 'white');
    text('position', [0 .5], 'fontsize', 14, 'interpreter', 'latex', 'string', ['$$I = {V \over {R_1 + R_2}}$$']);
    text('position', [.3 .5], 'fontsize', 14, 'interpreter', 'latex', 'string', ['$$L = {V^2 \over {I^2}}$$']);
elseif C == 0
    axes(handles.axis_form);
    cla(handles.axis_form, 'reset');
    set(handles.axis_form, 'XColor', 'white', 'YColor', 'white');
    text('position', [0 .5], 'fontsize', 14, 'interpreter', 'latex', 'string', ['$$I = {V \over {R_1 + R_2}}$$']);
    text('position', [.3 .5], 'fontsize', 14, 'interpreter', 'latex', 'string', ['$$C = {L \times{I^2}\over{V^2}}$$']);
elseif R1 == 0
    axes(handles.axis_form);
    cla(handles.axis_form, 'reset');
    set(handles.axis_form, 'XColor', 'white', 'YColor', 'white');
    text('position', [0 .5], 'fontsize', 14, 'interpreter', 'latex', 'string', ['$$R_1 = \sqrt {L \over {E_0}} - R_2$$']);
elseif R2 == 0
    axes(handles.axis_form);
    cla(handles.axis_form, 'reset');
    set(handles.axis_form, 'XColor', 'white', 'YColor', 'white');
    text('position', [0 .5], 'fontsize', 14, 'interpreter', 'latex', 'string', ['$$R_2 = \sqrt {L \over {E_0}} - R_1$$']);   
end

guidata(hObject, handles);
end