function varargout = activity11a(varargin)
% ACTIVITY11A M-file for activity11a.fig
%      ACTIVITY11A, by itself, creates a new ACTIVITY11A or raises the existing
%      singleton*.
%
%      H = ACTIVITY11A returns the handle to a new ACTIVITY11A or the handle to
%      the existing singleton*.
%
%      ACTIVITY11A('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ACTIVITY11A.M with the given input arguments.
%
%      ACTIVITY11A('Property','Value',...) creates a new ACTIVITY11A or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before activity11a_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to activity11a_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help activity11a

% Last Modified by GUIDE v2.5 30-Mar-2011 11:18:39

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @activity11a_OpeningFcn, ...
                   'gui_OutputFcn',  @activity11a_OutputFcn, ...
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


% --- Executes just before activity11a is made visible.
function activity11a_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to activity11a (see VARARGIN)

% Choose default command line output for activity11a
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes activity11a wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = activity11a_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function txtFileName_Callback(hObject, eventdata, handles)
% hObject    handle to txtFileName (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtFileName as text
%        str2double(get(hObject,'String')) returns contents of txtFileName as a double


% --- Executes during object creation, after setting all properties.
function txtFileName_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtFileName (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes when selected object is changed in gbGraphOp.
function gbGraphOp_SelectionChangeFcn(hObject, eventdata, handles)
% hObject    handle to the selected object in gbGraphOp 
% eventdata  structure with the following fields (see UIBUTTONGROUP)
%	EventName: string 'SelectionChanged' (read only)
%	OldValue: handle of the previously selected object or empty if none was selected
%	NewValue: handle of the currently selected object
% handles    structure with handles and user data (see GUIDATA)

%Try-catch to handle missing/corrupt file errors.
%If no error, execute as normal.
try
    %Read string in file name input box.
    file_name = get(handles.txtFileName, 'String');
    %Open file using the given string.
    data = textread(file_name);
    %Any commands beyond this point are only executed if the file has
    %opened successfully.
    
    %Set visibility of error label to off in case there was an error 
    %before this execution.
    set(handles.lblFileError, 'visible', 'off');
    %Switch using radio button tags.
    switch get(eventdata.NewValue, 'Tag')
        %If selection is changed to "Linear Graph".
        case 'radLinear'
            %Plot data on linear x and linear y.
            plot(data(:,1), data(:,2));
            xlabel('Linear x');
            ylabel('Linear y');
            title('Linear Plot');
        %If selection is changed to "SemiLog x Graph".
        case 'radSemilogx'
            %Plot data on logarithmic x and linear y.
            semilogx(data(:,1), data(:,2));
            xlabel('Logarithmic x');
            ylabel('Linear y');
            title('SemiLog x Plot');
        %If selection is changed to "SemiLog y Graph".
        case 'radSemilogy'
            %Plot data on linear x and logarithmic y.
            semilogy(data(:,1), data(:,2));
            xlabel('Linear x');
            ylabel('Logarithmic y');
            title('SemiLog y Plot');
        %If selection is changed to "Logarithmic Graph"
        case 'radLog'
            %Plot data on logarithmic x and logarithmic y.
            loglog(data(:,1), data(:,2));
            xlabel('Logarithmic x');
            ylabel('Logarithmic y');
            title('Logarithmic Plot');
    end
    %Turn the grid on (again).
    grid on;
%If attempt at opening file results in error.
catch
    %Set visibility of error label to on.
    set(handles.lblFileError, 'visible', 'on');
end
guidata(hObject, handles);
