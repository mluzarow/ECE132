function varargout = IC11(varargin)
% IC11 M-file for IC11.fig
%      IC11, by itself, creates a new IC11 or raises the existing
%      singleton*.
%
%      H = IC11 returns the handle to a new IC11 or the handle to
%      the existing singleton*.
%
%      IC11('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in IC11.M with the given input arguments.
%
%      IC11('Property','Value',...) creates a new IC11 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before IC11_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to IC11_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help IC11

% Last Modified by GUIDE v2.5 24-Mar-2011 10:38:09

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @IC11_OpeningFcn, ...
                   'gui_OutputFcn',  @IC11_OutputFcn, ...
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


% --- Executes just before IC11 is made visible.
function IC11_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to IC11 (see VARARGIN)

% Choose default command line output for IC11
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes IC11 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = IC11_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
file_name = get(handles.edit1, 'String');
data = textread(file_name);
set(handles.pushbutton3, 'BackgroundColor', 'w'); 
plot(data(:,1), data(:,2));
xlabel('Linear x');
ylabel('Linear y');
title('Linear Plot');
grid on;
guidata(hObject, handles);

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
file_name = get(handles.edit1, 'String');
data = textread(file_name);
semilogy(data(:,1), data(:,2));
xlabel('Linear x');
ylabel('Log y');
title('SemiLog y Plot');
grid on;
guidata(hObject, handles);

% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
file_name = get(handles.edit1, 'String');
data = textread(file_name);
semilogx(data(:,1), data(:,2));
xlabel('Log x');
ylabel('Linear y');
title('SemiLog x Plot');
grid on;
guidata(hObject, handles);

% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
file_name = get(handles.edit1, 'String');
data = textread(file_name);
loglog(data(:,1), data(:,2));
xlabel('Log x');
ylabel('Log y');
title('Log Plot');
grid on;
guidata(hObject, handles);
