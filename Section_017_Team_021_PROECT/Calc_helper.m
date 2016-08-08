function varargout = Calc_helper(varargin)
% CALC_HELPER M-file for Calc_helper.fig
%      CALC_HELPER, by itself, creates a new CALC_HELPER or raises the existing
%      singleton*.
%
%      H = CALC_HELPER returns the handle to a new CALC_HELPER or the handle to
%      the existing singleton*.
%
%      CALC_HELPER('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CALC_HELPER.M with the given input arguments.
%
%      CALC_HELPER('Property','Value',...) creates a new CALC_HELPER or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Calc_helper_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Calc_helper_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Calc_helper

% Last Modified by GUIDE v2.5 21-Apr-2011 00:25:23

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Calc_helper_OpeningFcn, ...
                   'gui_OutputFcn',  @Calc_helper_OutputFcn, ...
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
end

function Calc_helper_OpeningFcn(hObject, eventdata, handles, varargin)
handles.output = hObject;
%Reads in image (1) the first time.
Calc_help_IM = imread('CALC_HELP_1.png');
%Display image on axis1.
axes(handles.Help_image);
imshow(Calc_help_IM);
handles.curr_pic = 1;

% Update handles structure
guidata(hObject, handles);
end

function varargout = Calc_helper_OutputFcn(hObject, eventdata, handles) 
varargout{1} = handles.output;
end

% --- Executes on button press in btnPrev.
function btnPrev_Callback(hObject, eventdata, handles)

%Decrements curr_pic every time button is presed.
%Uses counter to cycle through images.
handles.curr_pic = handles.curr_pic - 1;
Calc_help_IM = imread(strcat('CALC_HELP_', num2str(handles.curr_pic), '.png'));
axes(handles.Help_image);
imshow(Calc_help_IM);

if handles.curr_pic == 1
    set(handles.btnPrev, 'Enable', 'off');
end
if handles.curr_pic < 14
    set(handles.btnNext, 'Enable', 'on');
end
guidata(hObject, handles);
end

% --- Executes on button press in btnNext.
function btnNext_Callback(hObject, eventdata, handles)

%Increments curr_pic every time button is presed.
%Uses counter to cycle through images.
handles.curr_pic = handles.curr_pic + 1;
Calc_help_IM = imread(strcat('CALC_HELP_', num2str(handles.curr_pic), '.png'));
axes(handles.Help_image);
imshow(Calc_help_IM);

if handles.curr_pic == 14
    set(handles.btnNext, 'Enable', 'off');
end
if handles.curr_pic > 1
    set(handles.btnPrev, 'Enable', 'on');
end
guidata(hObject, handles);
end
