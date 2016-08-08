function [] = printRC(V, C1, C2, R1, R2, R3, R4, Q1, Q2, hObject)
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
%  2. C1:   Capacitance (1) given by user.
%  3. C2:   Capacitance (2) given by user.
%  4. R1:   Resistance (1) given by user.
%  5. R2:   Resistance (2) given by user.
%  6. R3:   Resistance (3) given by user.
%  7. R4:   Resistance (4) given bu user.
%  8. Q1: Initial Charge of C1 given by user.
%  9. Q2: Initial Charge of C2 given by user.
%
% OUTPUTS: List them below line per output argument
%  1. None.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
handles = guidata(hObject);


if get(handles.timezeroRC, 'Value') == 1   
    if V == 0
        axes(handles.axis_form);
        cla(handles.axis_form, 'reset');
        set(handles.axis_form, 'XColor', 'white', 'YColor', 'white');
        text('position', [0 .5], 'fontsize', 14, 'interpreter', 'latex', 'string', ['$$I = {Q_1 \over {C_1 \times {1 \over {{1 \over R_2}+{1 \over R_3}}}}}$$'])
        text('position', [.35 .5], 'fontsize', 14, 'interpreter', 'latex', 'string', ['$$V = {I \times (R_1 + {1 \over R_2} + {1 \over R_3} + {1 \over R_4})}$$']);
    elseif C1 == 0
        axes(handles.axis_form);
        cla(handles.axis_form, 'reset'); 
        set(handles.axis_form, 'XColor', 'white', 'YColor', 'white');
        text('position', [0 .5], 'fontsize', 14, 'interpreter', 'latex', 'string', ['$$I = {Q_2 \over {C_2 \times {1 \over {{1 \over R_3}+{1 \over R_4}}}}}$$'])
        text('position', [.35 .5], 'fontsize', 14, 'interpreter', 'latex', 'string', ['$$C_1 = {Q_1 \over {I \times ({1 \over R_2} + {1 \over R_3})}}$$'])
    elseif C2 == 0
        axes(handles.axis_form);
        cla(handles.axis_form, 'reset');
        set(handles.axis_form, 'XColor', 'white', 'YColor', 'white');
        text('position', [0 .5], 'fontsize', 14, 'interpreter', 'latex', 'string', ['$$I = {Q_1 \over {C_1 \times {1 \over {{1 \over R_2}+{1 \over R_3}}}}}$$'])
        text('position', [.35 .5], 'fontsize', 14, 'interpreter', 'latex', 'string', ['$$C_2 = {Q_2 \over {I \times ({1 \over R_4} + {1 \over R_3})}}$$'])
    elseif R1 == 0
        axes(handles.axis_form);
        cla(handles.axis_form, 'reset');
        set(handles.axis_form, 'XColor', 'white', 'YColor', 'white'); 
        text('position', [0 .5], 'fontsize', 14, 'interpreter', 'latex', 'string', ['$$I ={Q_1 \over {C_1 \times {1 \over {{1 \over R_2} + {1 \over R_3}}}}}$$']);
        text('position', [.35 .5], 'fontsize', 14, 'interpreter', 'latex', 'string', ['$$R_1 = {V \times ({{{1 \over R_2} + {1 \over R_3} + {1 \over R_4}} \over I})}$$']);
    elseif R2 == 0
        axes(handles.axis_form);
        cla(handles.axis_form, 'reset');
        set(handles.axis_form, 'XColor', 'white', 'YColor', 'white');
        text('position', [0 .5], 'fontsize', 14, 'interpreter', 'latex', 'string', ['$$I ={Q_2 \over {C_2 \times {1 \over {{1 \over R_3} + {1 \over R_4}}}}}$$']);
        text('position', [.35 .5], 'fontsize', 14, 'interpreter', 'latex', 'string', ['$$R_2 = {({1 \over {{V \over I} - R_1}}) - {1 \over R_3} - {1 \over R_4}}$$']);
   elseif R3 == 0
        axes(handles.axis_form);
        cla(handles.axis_form, 'reset');
        set(handles.axis_form, 'XColor', 'white', 'YColor', 'white');
        text('position', [0 .5], 'fontsize', 14, 'interpreter', 'latex', 'string', ['$$I = {{V - {Q_1 \over C_1}} \over {R_1 + R_4}}$$']);
        text('position', [.35 .5], 'fontsize', 14, 'interpreter', 'latex', 'string', ['$$R_2 = {({1 \over {{V \over I} - R_1}}) - {1 \over R_2} - {1 \over R_4}}$$']);
    elseif R4 == 0
        axes(handles.axis_form);
        cla(handles.axis_form, 'reset');
        set(handles.axis_form, 'XColor', 'white', 'YColor', 'white');
        text('position', [0 .5], 'fontsize', 14, 'interpreter', 'latex', 'string', ['$$I ={Q_1 \over {C_1 \times {1 \over {{1 \over R_2} + {1 \over R_3}}}}}$$']);
        text('position', [.35 .5], 'fontsize', 14, 'interpreter', 'latex', 'string', ['$$R_4 = {({1 \over {{V \over I} - R_1}}) - {1 \over R_3} - {1 \over R_2}}$$']);
    elseif Q1 == 0
        axes(handles.axis_form);
        cla(handles.axis_form, 'reset');
        set(handles.axis_form, 'XColor', 'white', 'YColor', 'white');
        text('position', [0 .5], 'fontsize', 14, 'interpreter', 'latex', 'string', ['$$Q_1 = {C_1 \times {1 \over {{1 \over R_2} + {1 \over R_3}}}}$$']);
    elseif Q2 == 0
        axes(handles.axis_form);
        cla(handles.axis_form, 'reset');
        set(handles.axis_form, 'XColor', 'white', 'YColor', 'white');
        text('position', [0 .5], 'fontsize', 14, 'interpreter', 'latex', 'string', ['$$Q_2 = {C_2 \times {1 \over {{1 \over R_3} + {1 \over R_4}}}}$$']);
    end

elseif get(handles.timeinfinityRC, 'Value') == 1
    if Q1 == 0
        axes(handles.axis_form);
        cla(handles.axis_form, 'reset');
        set(handles.axis_form, 'XColor', 'white', 'YColor', 'white');
        text('position', [0 .5], 'fontsize', 14, 'interpreter', 'latex', 'string', ['$$I = {V \over {R_1 + R_2 + R_3 + R_4}}$$']);
        text('position', [.45 .5], 'fontsize', 14, 'interpreter', 'latex', 'string', ['$$Q_1 = {I \times C_1 \times (R_2 + R_3)}$$']);
    elseif Q2 == 0
        axes(handles.axis_form);
        cla(handles.axis_form, 'reset');
        set(handles.axis_form, 'XColor', 'white', 'YColor', 'white');
        text('position', [0 .5], 'fontsize', 14, 'interpreter', 'latex', 'string', ['$$I = {V \over {R_1 + R_2 + R_3 + R_4}}$$']);
        text('position', [.45 .5], 'fontsize', 14, 'interpreter', 'latex', 'string', ['$$Q_2 = {I \times C_2 \times (R_3 + R_4)}$$']);
    end
end
guidata(hObject, handles);
end

