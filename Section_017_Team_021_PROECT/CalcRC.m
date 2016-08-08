function [] = CalcRC(V, C1, C2, R1, R2, R3, R4, Q1, Q2, hObject)
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
% FUNCTION NAME: Calculates the missing value of the RC circuit.
% INPUTS: List them below one line per input argument
%  1. V:    Voltage given by user.
%  2. C1:   Capacitance (1) given by user.
%  3. C2:   Capacitance (2) given by user.
%  4. R1:   Resistance (1) given by user.
%  5. R2:   Resistance (2) given by user.
%  6. R3:   Resistance (3) given by user.
%  7. R4:   Resistance (4) given by user.
%  8. Q1:   Initial Charge on C1 given by user.
%  9. Q2:   Initial Charge on C1 given by user.
%
% OUTPUTS: List them below line per output argument
%  1. None.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
handles = guidata(hObject);
set(handles.lblValWarnRes, 'visible', 'off');
set(handles.lblValWarnSolved, 'Visible', 'off');

if get(handles.timezeroRC, 'Value') == 1
    if V == 0
        I = Q1/(C1*(1/((1/R2)+(1/R3))));
        V=I*(R1+(1/R2)+(1/R3)+(1/R4));
        %Set label text as new C1 value.
        set(handles.lblValCalc,'String', V);
        set(handles.lblValType, 'String', 'Voltage');

    %If C1 (capacitance1) of capacitor #1 is 0 (null).
    elseif C1 == 0
        I = Q2/(C2*(1/((1/R4)+(1/R3))));
        C1 = Q1/(I*((1/R2)+(1/R3)));
        %Set label text as new C1 value.
        set(handles.lblValCalc,'String', C1);
        set(handles.lblValType, 'String', 'Capacitance (1)');

    %If C2 (capacitance) of capacitor #2 is 0 (null).
    elseif C2 == 0
        I = Q1/(C1*(1/((1/R2)+(1/R3))));
        C2 = Q2/(I*((1/R4)+(1/R3)));
        %Set label text as new C2 value.
        set(handles.lblValCalc,'String', C2);
        set(handles.lblValType, 'String', 'Capacitance (2)');

    %If R1 (resistance) of resistor #1 is 0 (null).
    elseif R1 == 0 
        I = Q1/(C1*(1/((1/R2)+(1/R3))));
        R1 = V*((1/R2)+(1/R3)+(1/R4))/I;
        if R1 == inf || R1 < 0
            set(handles.lblValWarnRes, 'Visible', 'on');
        else
            %Set label text as new R1 value.
            set(handles.lblValCalc,'String', R1);
            set(handles.lblValType, 'String', 'Resistance (1)');
        end
    %If R2 (resistance) of resistor #2 is 0 (null).
    elseif R2 == 0
        I = Q2/(C2*(1/((1/R4)+(1/R3))));
        R2 = (1/((V/I)-R1))-(1/R3)-(1/R4);
        if R2 == inf || R2 < 0
            set(handles.lblValWarnRes, 'Visible', 'on');
        else
            %Set label text as new R2 value.
            set(handles.lblValCalc,'String', R2);
            set(handles.lblValType, 'String', 'Resistance (2)');
        end
    %If R3 (resistance) of resistor #3 is 0 (null).
    elseif R3 == 0
        I = (V-(Q1/C1))/(R1+R4);
        R3 = (1/((V/I)-R1))-(1/R2)-(1/R4);
        if R3 == inf || R3 < 0
            set(handles.lblValWarnRes, 'Visible', 'on');
        else
            %Set label text as new R3 value.
            set(handles.lblValCalc,'String', R3);
            set(handles.lblValType, 'String', 'Resistance (3)');
        end
    %If R4 (resistance) of resistor #4 is 0 (null).
    elseif R4 == 0
        I = Q1/(C1*(1/((1/R2)+(1/R3))));
        R4 = (1/((V/I)-R1))-(1/R3)-(1/R2);
        if R4 == inf || R4 < 0
            set(handles.lblValWarnRes, 'Visible', 'on');
        else
            %Set label text as new R4 value.
            set(handles.lblValCalc,'String', R4);
            set(handles.lblValType, 'String', 'Resistance (4)');
        end
    elseif Q1 == 0
        Q1 = C1*(1/((1/R2)+(1/R3)));
        %Set label text as new Q1 value.
        set(handles.lblValCalc,'String', Q1);
        set(handles.lblValType, 'String', 'Initial Charge on C1');
    elseif Q2 == 0
        Q2 = C2*(1/((1/R3)+(1/R4)));
        %Set label text as new Q2 value.
        set(handles.lblValCalc,'String', Q2);
        set(handles.lblValType, 'String', 'Initial Charge on C2');
    else
        %If no empty values.
        set(handles.lblValWarnSolved, 'Visible', 'on');
    end

elseif get(handles.timeinfinityRC, 'Value') == 1
    I = V/(R1+R2+R3+R4);
    if Q1 == 0
        Q1 = I*(R2+R3)*C1;
        %Set label text as new Q1 value.
        set(handles.lblValCalc,'String', Q1);
        set(handles.lblValType, 'String', 'Final Charge on C1');
    elseif Q2 == 0
        Q2 = I*(R4+R3)*C2;
        %Set label text as new Q2 value.
        set(handles.lblValCalc,'String', Q2);
        set(handles.lblValType, 'String', 'Final Charge on C2');
    else
        %If no empty values.
        set(handles.lblValWarnSolved, 'Visible', 'on');
    end
end


guidata(hObject, handles);
end