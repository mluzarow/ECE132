function [] = calcLCR(V, C, L, R1, R2, Enot, hObject)
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
% FUNCTION NAME: Calculates the missing value of the LCR circuit.
% INPUTS: List them below one line per input argument
%  1. V:    Voltage given by user.
%  2. C:    Capacitance given by user.
%  3. L:    Inductance given by user.
%  4. R1:   Resistance (1) given by user.
%  5. R2:   Resistance (2) given by user.
%  5. Enot: Electrical constant.
%
% OUTPUTS: List them below line per output argument
%  1. None.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
handles = guidata(hObject);
set(handles.lblValWarnSolved, 'Visible', 'off');

%If V (Voltage) is 0 (null).
if V == 0
    %Current calculation.
    I = sqrt(Enot*(V^2)/L);
    %Voltage calculation.
    V = I*(R1+R2);
    set(handles.lblValCalc,'String',V);
    set(handles.lblValType, 'String', 'Voltage');
    
%If L (inductance) field is 0 (null).
elseif L == 0
    %Current calculation.
    I = V / (R1 + R2);
    %Indutance calculation.
    L = Enot*(V^2)/(I^2);
    %Set label text as new L value.
    set(handles.lblValCalc,'String',L);
    set(handles.lblValType, 'String', 'Inductance');
    
%If C (capacitance) field is 0 (null).
elseif C == 0
    %Current calculation.
    I = V / (R1 + R2);
    %Capacitance calculation
    C = L*(I^2)/(V^2);
    C = C*10^-6;
    %Set label text as new C value.
    set(handles.lblValCalc,'String',C);
    set(handles.lblValType, 'String', 'Capacitance');
    
%If R1 (resistance) of resistor #1 is 0 (null).
elseif R1 == 0 
    %Resistance calculation.
    R1 = sqrt(L / Enot) - R2;
    %Set label text as new R1 value.
    set(handles.lblValCalc,'String',R1);
    set(handles.lblValType, 'String', 'Resistance (1)');
    
%If R2 (resistance) of resistor #2 is 0 (null).
elseif R2 == 0
    %Resistance calculation.
    R2 = sqrt(L / Enot) - R1;
    %Set label text as new R2 value.
    set(handles.lblValCalc,'String',R2);
    set(handles.lblValType, 'String', 'Resistance (2)');
else
    %If everything has a value.
    set(handles.lblValWarnSolved, 'Visible', 'on');
end

guidata(hObject, handles);
end