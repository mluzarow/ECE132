function [val_error] = CheckValRC(V, C1, C2, R1, R2, R3, R4, Q1, Q2, hObject)
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
% FUNCTION NAME: Checks for error in user's RC circuit values input.
% INPUTS: List them below one line per input argument
%  1. V:  Voltage given by user.
%  2. C1: Capacitance (1) given by user.
%  3. C2: Capacitance (2) given by user.
%  4. R1: Resistance (1) given by user.
%  5. R2: Resistance (2) given by user.
%  6. R3: Resistance (3) given by user.
%  7. R4: Resistance (4) given by user.
%  8. Q1: Initial Charge of C1 given by user.
%  9. Q2: Initial Charge of C2 given by user.
%
% OUTPUTS: List them below line per output argument
%  1. val_error: Error boolean; 1 if true (error found), 0 if false.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Finds variables from given GUI.
handles = guidata(hObject);
%Sets boolean to false.
val_error = 0;
found_error_type = zeros([2 1]);
check = zeros([9 1]);

%If any values are found to be NaN.
if (isnan(V) || isnan(C1) || isnan(C2) || isnan(R1) || isnan(R2) || isnan(R3) || isnan(R4) || isnan(Q1) || isnan(Q2))
    %Error found; make error boolean true;
    val_error = 1;
    found_error_type(1) = 1;
    
    if isnan(V)
        check(1) = 1;
        set(handles.txtVoltageRC, 'BackgroundColor', 'Red');
    end
    if isnan(C1)
        check(2) = 1;
        set(handles.txtCapacitance1RC, 'BackgroundColor', 'Red');
    end
    if isnan(C2)
        check(3) = 1;
        set(handles.txtCapacitance2RC, 'BackgroundColor', 'Red');
    end
    if isnan(R1)
        check(4) = 1;
        set(handles.txtResistance1RC, 'BackgroundColor', 'Red');
    end
    if isnan(R2)
        check(5) = 1;
        set(handles.txtResistance2RC, 'BackgroundColor', 'Red');
    end
    if isnan(R3)
        check(6) = 1;
        set(handles.txtResistance3RC, 'BackgroundColor', 'Red');
    end
    if isnan(R4)
        check(7) = 1;
        set(handles.txtResistance4RC, 'BackgroundColor', 'Red');
    end
    if isnan(Q1)
        check(8) = 1;
        set(handles.txtInitialQ1RC, 'BackgroundColor', 'Red');
    end
    if isnan(Q2)
        check(9) = 1;
        set(handles.txtInitialQ2RC, 'BackgroundColor', 'Red');
    end
else
    check = zeros([9 1]);
    found_error_type(1) = 0;
    set(handles.txtVoltageRC, 'BackgroundColor', 'white');
    set(handles.txtCapacitance1RC, 'BackgroundColor', 'white');
    set(handles.txtCapacitance2RC, 'BackgroundColor', 'white');
    set(handles.txtResistance1RC, 'BackgroundColor', 'white');
    set(handles.txtResistance2RC, 'BackgroundColor', 'white');
    set(handles.txtResistance3RC, 'BackgroundColor', 'white');
    set(handles.txtResistance4RC, 'BackgroundColor', 'white');
    set(handles.txtInitialQ1RC, 'BackgroundColor', 'white');
    set(handles.txtInitialQ2RC, 'BackgroundColor', 'white');
end

%If any values are found to be negative:
if (V < 0 || C1 < 0 || C2 < 0 || R1 < 0 || R2 < 0 || R3 < 0 || R4 < 0 || Q1 < 0 || Q2 < 0)
    %Error found; make error boolean true.
    val_error = 1;
    found_error_type(2) = 1;
    
    %If Voltage is negative, highlight textbox, show error.
    if V < 0
        set(handles.txtVoltageRC, 'BackgroundColor', 'Red'); 
    elseif V == 0
        set(handles.txtVoltageRC, 'BackgroundColor', 'Red'); 
    %If Voltage source is missing, highlight textbox, show error.
    else
        set(handles.lblValWarnNeg, 'Visible', 'off');
        set(handles.txtVoltageRC, 'BackgroundColor', 'white');
    end
    
    %If Capacitance (1) is negative, highlight textbox, show error.
    if C1 < 0
        set(handles.txtCapacitance1RC, 'BackgroundColor', 'Red');
    %If no input errors in Capacitance (1), hide error.
    elseif C1 >= 0 && check(2) ~= 1
        set(handles.txtCapacitance1RC, 'BackgroundColor', 'white');
    end
    
    %If Capacitance (2) is negative, highlight textbox, show error.
    if C2 < 0
        set(handles.txtCapacitance2RC, 'BackgroundColor', 'Red');
    %If no input errors in Capacitance (2), hide error.
    elseif C2 >= 0 && check(3) ~= 1
        set(handles.txtCapacitance2RC, 'BackgroundColor', 'white');
    end
    
    %If Resistance (1) is negative, highlight textbox, show error.
    if R1 < 0
        set(handles.txtResistance1RC, 'BackgroundColor', 'Red');
    %If no input errors in Resistance (1), hide error.
    elseif R1 >= 0 && check(4) ~= 1
        set(handles.txtResistance1RC, 'BackgroundColor', 'white');
    end
    
    %If Resistance (2) is negative, highlight textbox, show error.
    if R2 < 0
        set(handles.txtResistance2RC, 'BackgroundColor', 'Red');
    %If no input errors in Resistance (2), hide error.
    elseif R2 >= 0 && check(5) ~= 1
        set(handles.txtResistance2RC, 'BackgroundColor', 'white');
    end
    
    %If Resistance (3) is negative, highlight textbox, show error.
    if R3 < 0
        set(handles.txtResistance3RC, 'BackgroundColor', 'Red');
    %If no input errors in Resistance (3), hide error.
    elseif R3 >= 0 && check(6) ~= 1
        set(handles.txtResistance3RC, 'BackgroundColor', 'white');
    end
    
    %If Resistance (4) is negative, highlight textbox, show error.
    if R4 < 0
        set(handles.txtResistance4RC, 'BackgroundColor', 'Red');
    %If no input errors in Resistance (4), hide error.
    elseif R4 >= 0 && check(7) ~= 1
        set(handles.txtResistance4RC, 'BackgroundColor', 'white');
    end
    
    if Q1 < 0 
        set(handles.txtInitialQ1RC, 'BackgroundColor', 'Red');
    %If no input errors in Initial Charge 1, hide error.
    elseif Q1 >= 0 && check(8) ~= 1
        set(handles.txtInitialQ1RC, 'BackgroundColor', 'white');
    end
    
    if Q2 < 0 
        set(handles.txtInitialQ2RC, 'BackgroundColor', 'Red');
    %If no input errors in Initial Charge 2, hide error.
    elseif Q2 >= 0 && check(9) ~= 1
        set(handles.txtInitialQ2RC, 'BackgroundColor', 'white');
    end
end

%Checks for value errors found: index 1 = NaN, index 2 = Neg
if found_error_type(1) ~= 1 
    set(handles.lblValWarnNaN, 'Visible', 'off');
else
    set(handles.lblValWarnNaN, 'Visible', 'on');
end
if found_error_type(2) ~= 1
    set(handles.lblValWarnNeg, 'Visible', 'off');
else
    set(handles.lblValWarnNeg, 'Visible', 'on');
end

%Return data to GUI.
guidata(hObject, handles);
end