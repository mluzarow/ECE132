function varargout = basic_calc(varargin)
% BASIC_CALC M-file for basic_calc.fig
%      BASIC_CALC, by itself, creates a new BASIC_CALC or raises the existing
%      singleton*.
%
%      H = BASIC_CALC returns the handle to a new BASIC_CALC or the handle to
%      the existing singleton*.
%
%      BASIC_CALC('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in BASIC_CALC.M with the given input arguments.
%
%      BASIC_CALC('Property','Value',...) creates a new BASIC_CALC or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before basic_calc_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to basic_calc_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help basic_calc

% Last Modified by GUIDE v2.5 10-Feb-2011 10:48:02

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @basic_calc_OpeningFcn, ...
                   'gui_OutputFcn',  @basic_calc_OutputFcn, ...
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


% --- Executes just before basic_calc is made visible.
function basic_calc_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to basic_calc (see VARARGIN)
set(handles.lbl_answer,'String','');

% Choose default command line output for basic_calc
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes basic_calc wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = basic_calc_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in btn_7.
function btn_7_Callback(hObject, eventdata, handles)
% hObject    handle to btn_7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
answer = {get(handles.txt_edit, 'String')};
disp('ANSWER BEFORE PRESS = ');disp(answer);
answer = strcat(answer,'7');
disp('ANSWER AFTER PRESS = ');disp(answer);
% S = {answer};
% res = regexp(S,'(\d)','tokens','once');  %# Added the 'once' option
% cellArrayOfStrings = vertcat(res{:});
% disp(cellArrayOfStrings);

set(handles.txt_answer, 'String', answer);
% if  strcmp('', answer) == 1
%     set(handles.lbl_answer, 'String', '7');
% elseif strcmp('', answer) == 0
%     set(handles.lbl_answer, 'String', strcat(answer,'7'));
% end
guidata(hObject, handles);

% --- Executes on button press in btn_8.
function btn_8_Callback(hObject, eventdata, handles)
% hObject    handle to btn_8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in btn_9.
function btn_9_Callback(hObject, eventdata, handles)
% hObject    handle to btn_9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in btn_4.
function btn_4_Callback(hObject, eventdata, handles)
% hObject    handle to btn_4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in btn_5.
function btn_5_Callback(hObject, eventdata, handles)
% hObject    handle to btn_5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in btn_6.
function btn_6_Callback(hObject, eventdata, handles)
% hObject    handle to btn_6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in btn_1.
function btn_1_Callback(hObject, eventdata, handles)
% hObject    handle to btn_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in btn_2.
function btn_2_Callback(hObject, eventdata, handles)
% hObject    handle to btn_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in btn_3.
function btn_3_Callback(hObject, eventdata, handles)
% hObject    handle to btn_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in btn_0.
function btn_0_Callback(hObject, eventdata, handles)
% hObject    handle to btn_0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in btn_deci.
function btn_deci_Callback(hObject, eventdata, handles)
% hObject    handle to btn_deci (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in btn_neg.
function btn_neg_Callback(hObject, eventdata, handles)
% hObject    handle to btn_neg (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.lbl_answer,'String','');

% --- Executes on button press in btn_div.
function btn_div_Callback(hObject, eventdata, handles)
% hObject    handle to btn_div (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in btn_multi.
function btn_multi_Callback(hObject, eventdata, handles)
% hObject    handle to btn_multi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in btn_minus.
function btn_minus_Callback(hObject, eventdata, handles)
% hObject    handle to btn_minus (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in btn_plus.
function btn_plus_Callback(hObject, eventdata, handles)
% hObject    handle to btn_plus (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in btn_equals.
function btn_equals_Callback(hObject, eventdata, handles)
% hObject    handle to btn_equals (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function txt_edit_Callback(hObject, eventdata, handles)
% hObject    handle to txt_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt_edit as text
%        str2double(get(hObject,'String')) returns contents of txt_edit as a double


% --- Executes during object creation, after setting all properties.
function txt_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
