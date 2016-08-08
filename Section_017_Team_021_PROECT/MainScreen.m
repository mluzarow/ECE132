function varargout = MainScreen(varargin)
%
% MAIN FUNCTION (MainsScreen.fig)
% Selection panel links to other two programs.
%
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @MainScreen_OpeningFcn, ...
                   'gui_OutputFcn',  @MainScreen_OutputFcn, ...
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

function MainScreen_OpeningFcn(hObject,~, handles, varargin)
% Choose default command line output for MainScreen
handles.output = hObject;
% Update handles structure
guidata(hObject, handles);

function varargout = MainScreen_OutputFcn(~,~,handles) 
varargout{1} = handles.output;

function btnShowCalc_Callback(~,~,~)
%Calls the circuit calculator.
set(Circuit_jmcgough, 'Visible', 'on');

function btnShowGrapher_Callback(~,~,~)
%Calls the circuit grapher.
set(Grapher, 'Visible', 'on');
