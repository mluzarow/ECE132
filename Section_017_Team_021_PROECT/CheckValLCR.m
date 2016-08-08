function [val_error] = CheckValLCR(V, C, L, R1, R2, hObject)
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
% FUNCTION NAME: Checks for error in user's LCR circuit values input.
% INPUTS: List them below one line per input argument
%  1. V:  Voltage given by user.
%  2. C:  Capacitance given by user.
%  3. L:  Inductance given by user.
%  4. R1: Resistance (1) given by user.
%  5. R2: Resistance (2) given by user.
%
% OUTPUTS: List them below line per output argument
%  1. val_error: Error boolean; 1 if true (error found), 0 if false.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Finds variables from given GUI.
handles = guidata(hObject);
%Sets boolean to false.
val_error = 0;
found_error_type = zeros([2 1]);
check = zeros([5 1]);

%If any values are found to be NaN.
if (isnan(V) || isnan(C) || isnan(L) || isnan(R1) || isnan(R2))
    %Error found; make error boolean true.
    val_error = 1;
    found_error_type(1) = 1;
    
    if isnan(V)
        check(1) = 1;
        set(handles.txtVoltageLCR, 'BackgroundColor', 'Red'); 
    end
    if isnan(C)
        check(2) = 1;
        set(handles.txtCapacitanceLCR, 'BackgroundColor', 'Red'); 
    end
    if isnan(L)
        check(3) = 1;
        set(handles.txtInductanceLCR, 'BackgroundColor', 'Red'); 
    end
    if isnan(R1)
        check(4) = 1;
        set(handles.txtResistance1LCR, 'BackgroundColor', 'Red'); 
    end
    if isnan(R2)
        check(5) = 1;
        set(handles.txtResistance2LCR, 'BackgroundColor', 'Red'); 
    end
else
    check = zeros([5 1 1]);
    found_error_type(1) = 0;
    set(handles.txtVoltageLCR, 'BackgroundColor', 'white');
    set(handles.txtCapacitanceLCR, 'BackgroundColor', 'white');
    set(handles.txtInductanceLCR, 'BackgroundColor', 'white');
    set(handles.txtResistance1LCR, 'BackgroundColor', 'white');
    set(handles.txtResistance2LCR, 'BackgroundColor', 'white');
end

%If any values are found to be negative:
if (V < 0 || C < 0 || L < 0 || R1 < 0 || R2 < 0)
    %Error found; make error boolean true.
    val_error = 1;
    found_error_type(2) = 1;
    %If Voltage is negative, highlight textbox, show error.
    if V < 0
        set(handles.txtVoltageLCR, 'BackgroundColor', 'Red'); 
    elseif V >= 0 && check(1) ~= 1
        set(handles.txtVoltageLCR, 'BackgroundColor', 'white');
    end
    
    %If Capacitance is negative, highlight textbox, show error.
    if C < 0
        set(handles.txtCapacitanceLCR, 'BackgroundColor', 'Red');
    elseif C >= 0 && check(2) ~= 1
        set(handles.txtCapacitanceLCR, 'BackgroundColor', 'white');
    end
    
    %If Inductance is negative, highlight textbox, show error.
    if L < 0
        set(handles.txtInductanceLCR, 'BackgroundColor', 'Red');
    elseif L >= 0 && check(3) ~= 1
        set(handles.txtInductanceLCR, 'BackgroundColor', 'white');
    end
    
    %If Resistance (1) is negative, highlight textbox, show error.
    if R1 < 0
        set(handles.txtResistance1LCR, 'BackgroundColor', 'Red');
    elseif R1 >= 0 && check(4) ~= 1
        set(handles.txtResistance1LCR, 'BackgroundColor', 'white');
    end
    
    %If Resistance (2) is negative, highlight textbox, show error.
    if R2 < 0
        set(handles.txtResistance2LCR, 'BackgroundColor', 'Red');
    elseif R2 >= 0 && check(5) ~= 1
        set(handles.txtResistance2LCR, 'BackgroundColor', 'white');
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