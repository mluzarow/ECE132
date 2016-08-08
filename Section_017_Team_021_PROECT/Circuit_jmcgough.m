function varargout = Circuit_jmcgough(varargin)
% CIRCUIT_JMCGOUGH M-file for Circuit_jmcgough.fig
%      CIRCUIT_JMCGOUGH, by itself, creates a new CIRCUIT_JMCGOUGH or raises the existing
%      singleton*.
%
%      H = CIRCUIT_JMCGOUGH returns the handle to a new CIRCUIT_JMCGOUGH or the handle to
%      the existing singleton*.
%
%      CIRCUIT_JMCGOUGH('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CIRCUIT_JMCGOUGH.M with the given input arguments.
%
%      CIRCUIT_JMCGOUGH('Property','Value',...) creates a new CIRCUIT_JMCGOUGH or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Circuit_jmcgough_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Circuit_jmcgough_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Circuit_jmcgough

% Last Modified by GUIDE v2.5 21-Apr-2011 02:40:35

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Circuit_jmcgough_OpeningFcn, ...
                   'gui_OutputFcn',  @Circuit_jmcgough_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT
end

% --- Executes just before Circuit_jmcgough is made visible.
function Circuit_jmcgough_OpeningFcn(hObject,~, handles, varargin)
% Choose default command line output for Circuit_jmcgough
handles.output = hObject;
% Declares program constants
handles.Enot = 9*10^(-12);
%Adds multiline comment to calculations button.
ttip = sprintf('Press to Calculate your missing value!\nThe program will attempt to find the value\nthat is currently set to "0".');
set(handles.btnCalcLCR, 'tooltipstring',ttip);

% Update handles structure
guidata(hObject, handles);
end

% --- Outputs from this function are returned to the command line.
function varargout = Circuit_jmcgough_OutputFcn(hObject,~, handles) 
% Get default command line output from handles structure
varargout{1} = handles.output;
end

% --- Executes on selection change in lbCircuit.
function lbCircuit_Callback(hObject, ~, handles)
%If LCR is selected.
if get(handles.lbCircuit, 'Value') == 2
    %Set input groupbox for LCR visible to user.
    set(handles.gbValInputRC, 'Visible', 'off');
    set(handles.gbValInputLCR, 'Visible', 'on');
    %Reads the image file for the LCR circuit display.
    CircuitIM = imread('LCRCircuit.png');
    %Display image on axis1.
    axes(handles.axes1);
    imshow(CircuitIM);
%If RC is selected.
elseif get(handles.lbCircuit, 'Value') == 3
    %Set input groubox for RC visible to user.
    set(handles.gbValInputLCR, 'Visible', 'off');
    set(handles.gbValInputRC, 'Visible', 'on', 'Position', [1.8 13.308 52.2 21]);
    %Reads the image file for the RC circuit display.
    CircuitIM = imread('RCCircuit.jpg');
    %Display image on axis1.
    axes(handles.axes1);
    imshow(CircuitIM); 

end

guidata(hObject,handles);
end

function btnCalcLCR_Callback(hObject, ~, handles)

%If LCR circuit type has been chosen:
if get(handles.lbCircuit, 'Value') == 2
    %Read all values in text boxes and turn them into numberic variables.
    V = str2double(get(handles.txtVoltageLCR,'String'));      %Voltage
    C = str2double(get(handles.txtCapacitanceLCR,'String'));  %Capacitance
    L = str2double(get(handles.txtInductanceLCR,'String'));   %Inductance
    R1 = str2double(get(handles.txtResistance1LCR,'String')); %Resistance (1)
    R2 = str2double(get(handles.txtResistance2LCR,'String')); %Resistance (2)
        
    %Input validation; returns 1 if error, 0 if OK.
    val_error = CheckValLCR(V, C, L, R1, R2, hObject);
    
    %If no error:
    if val_error ~= 1
        %Finds missing value and calculates to find it.
        calcLCR(V, C, L, R1, R2, handles.Enot, hObject);
        %Prints LaTeX formatted equations.
        printLCR(V, C, L, R1, R2, hObject);
    end
    
handles.C = C;
handles.V = V;
handles.L = L;
handles.R1 = R1;
handles.R2 = R2;

%If RC circuit type has been chosen.
elseif get(handles.lbCircuit, 'Value') == 3
    %Read all values in text boxes and turn them into numberic variables.
    V = str2double(get(handles.txtVoltageRC,'String'));       %Voltage
    C1 = str2double(get(handles.txtCapacitance1RC,'String')); %Capacitance (1)
    C2 = str2double(get(handles.txtCapacitance2RC,'String')); %Capacitance (2)
    R1 = str2double(get(handles.txtResistance1RC,'String'));  %Resistance (1)
    R2 = str2double(get(handles.txtResistance2RC,'String'));  %Resistance (2)
    R3 = str2double(get(handles.txtResistance3RC,'String'));  %Resistance (3)
    R4 = str2double(get(handles.txtResistance4RC,'String'));  %Resistance (4)
    Q1 = str2double(get(handles.txtInitialQ1RC,'String'));  %Initial Charge on C1
    Q2 = str2double(get(handles.txtInitialQ2RC,'String'));  %Initial Charge on C2
    %Input validation; returns 1 if error, 0 if OK.
    val_error = CheckValRC(V, C1, C2, R1, R2, R3, R4, Q1, Q2, hObject);
    
    %If no error:
    if val_error ~= 1
        %Finds missing value and calculates to find it.
        CalcRC(V, C1, C2, R1, R2, R3, R4, Q1, Q2, hObject);
        %Prints LaTeX formatted equations.
        printRC(V, C1, C2, R1, R2, R3, R4, Q1, Q2, hObject);
    end
handles.V = V;
handles.C1 = C1;
handles.C2 = C2;
handles.R1 = R1;
handles.R2 = R2;    
handles.R3 = R3;
handles.R4 = R4;    

end

guidata(hObject,handles);   
end

function btnRTGraphTest_Callback(hObject,~, handles)

if get(handles.lbCircuit, 'Value') == 2
    C = handles.C;
    V = handles.V;
    L = handles.L;
    R1 = handles.R1;
    R2 = handles.R2;
    tv = linspace(0,60,600);
    U = zeros(size(tv));
    for i = 1:length(tv)
        t=tv(i);
        Q_t = C * V * exp((-t) / (R1 * C));
        I = (handles.Enot / (R1 + R2)) * (1 - exp((-t) / L / (R1 + R2)));
        U(i) = .5 * Q_t * V + .5 * L * (I^2);
    end
        axes(handles.axes3);
        plot(tv, U, 'r--');
        xlabel('time (seconds)');
        ylabel('Energy(U) in Joules');
        title('Energy plot of LCR Circuit');
        drawnow  %Force the graphics to update immediately

elseif get(handles.lbCircuit, 'Value') == 3
    V = handles.V;
    C1 = handles.C1;
    C2 = handles.C2;
    R1 = handles.R1;
    R2 = handles.R2;
    R3 = handles.R3;
    R4 = handles.R4;
    tv = linspace(0,60,600);
    U = zeros(size(tv));
    for i = 1:length(tv)
        t = tv(i);
        U_C1 = .5*C1*(V*exp((-t)/(C1*(R2+R3))))^2;
        U_C2 = .5*C2*(V*exp((-t)/(C2*(R3+R4))))^2;
        U(i) = U_C1 + U_C2;
    end
    axes(handles.axes3);
        plot(tv, U, 'r--');
        xlabel('time (seconds)');
        ylabel('Energy(U) in Joules');
        title('Energy plot of RC Circuit');
        drawnow  %Force the graphics to update immediately
    
end
    
end
function Menu_close_calc_Callback(~,~,~)
%Closes the window.
set(Circuit_jmcgough, 'Visible', 'off');
end
function Menu_switch_Callback(~,~,~)
%Forces Grapher window in front of calculator.
set(grapher, 'Visible', 'on');
end
function Menu_quit_Callback(~,~,~)
%SHUT DOWN EVERYTHING.
set(Circuit_jmcgough, 'Visible', 'off');
set(grapher, 'Visible', 'off');
set(Calc_helper, 'Visible', 'off');
set(MainScreen, 'Visible', 'off');
end
function Menu_tut_Callback(hObject, eventdata, handles)
%Open the tutorial.
set(Calc_helper, 'Visible', 'on');
end










%-------NO USER GENERATED CODE FROM THIS POINT DOWNWARD---------
%GUI ENTITY CREATION/DELETION - DO NOT LOOK AT IT; OH THE HORROR!
function txtVoltageLCR_Callback(~,~,~)
end
function txtVoltageLCR_CreateFcn(hObject,~,~)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
end
function txtVoltageLCR_DeleteFcn(~,~,~)
end
function txtCapacitanceLCR_Callback(~,~,~)
end
function txtCapacitanceLCR_CreateFcn(hObject,~,~)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
end
function txtCapacitanceLCR_DeleteFcn(~,~,~)
end
function txtInductanceLCR_Callback(~,~,~)
end
function txtInductanceLCR_CreateFcn(hObject,~,~)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
end
function txtInductanceLCR_DeleteFcn(~,~,~)
end
function txtResistance1LCR_Callback(~,~,~)
end
function txtResistance1LCR_CreateFcn(hObject,~,~)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
end
function txtResistance1LCR_DeleteFcn(~,~,~)
end
function txtResistance2LCR_Callback(~,~,~)
end
function txtResistance2LCR_CreateFcn(hObject,~,~)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
end
function txtResistance2LCR_DeleteFcn(~,~,~)
end
function axes1_CreateFcn(~,~,~)
end
function lblValCalc_CreateFcn(~,~,~)
end
function lbCircuit_CreateFcn(hObject,~,~)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
end
function txtResistance2RC_Callback(~,~,~)
end
function txtResistance2RC_CreateFcn(hObject,~,~)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
end
function txtResistance1RC_Callback(~,~,~)
end
function txtResistance1RC_CreateFcn(hObject,~,~)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
end
function txtCapacitance2RC_Callback(~,~,~)
end
function txtCapacitance2RC_CreateFcn(hObject,~,~)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
end
function txtCapacitance1RC_Callback(~,~,~)
end
function txtCapacitance1RC_CreateFcn(hObject,~,~)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
end
function txtVoltageRC_Callback(~,~,~)
end
function txtVoltageRC_CreateFcn(hObject,~,~)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
end
function txtResistance3RC_Callback(~,~,~)
end
function txtResistance3RC_CreateFcn(hObject,~,~)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
end
function txtResistance4RC_Callback(~,~,~)
end
function txtResistance4RC_CreateFcn(hObject,~,~)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
end
function edit21_Callback(~, ~, ~)
end
function edit21_CreateFcn(hObject, ~, ~)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
end
function edit22_Callback(~, ~, ~)
end
function edit22_CreateFcn(hObject, ~, ~)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
end
function edit23_Callback(~, ~, ~)
end
function edit23_CreateFcn(hObject, ~, ~)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
end
function edit24_Callback(~, ~, ~)
end
function edit24_CreateFcn(hObject, ~, ~)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
end
function txtVoltageMI_Callback(~, ~, ~)
end
function txtVoltageMI_CreateFcn(hObject, ~, ~)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
end
function txtCurrentRC_Callback(~,~,~) 
end 
function txtCurrentRC_CreateFcn(hObject,~,~)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
end
function edit30_Callback(~, ~, ~)
end
function edit30_CreateFcn(hObject, ~, ~)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
end
function edit31_Callback(~, ~, ~)
end
function edit31_CreateFcn(hObject, ~, ~)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
end
function edit32_Callback(~, ~, ~)
end
function edit32_CreateFcn(hObject, ~, ~)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
end
function txtInitialQ1RC_Callback(~, ~, ~)
end
function txtInitialQ1RC_CreateFcn(hObject, ~, ~)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
end
function txtInitialQ2RC_Callback(~, ~, ~)
end
function txtInitialQ2RC_CreateFcn(hObject, ~, ~)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
end
function Menu_File_Callback(~,~,~)
end
function Menu_help_Callback(~,~,~)
end
