function varargout = ttt(varargin)
global t  x_part y_part p2 p1 x1 x2
% TTT MATLAB code for ttt.fig
%      TTT, by itself, creates a new TTT or raises the existing
%      singleton*.
%
%      H = TTT returns the handle to a new TTT or the handle to
%      the existing singleton*.
%
%      TTT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TTT.M with the given input arguments.
%
%      TTT('Property','Value',...) creates a new TTT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before ttt_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to ttt_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help ttt

% Last Modified by GUIDE v2.5 20-Apr-2017 22:20:01

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ttt_OpeningFcn, ...
                   'gui_OutputFcn',  @ttt_OutputFcn, ...
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


% --- Executes just before ttt is made visible.
function ttt_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to ttt (see VARARGIN)

% Choose default command line output for ttt
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes ttt wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = ttt_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
%objects:-

% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
global t x_part y_part p2 p1 x1 x2
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
x_part=10
y_part=10
p1=plot(x_part,y_part,'s k')
x1=1
x2=50
axis([x1 x2 0 10])
hold on
for x1=1:1:100
    pause(0.1)
    x2=x2+1
    axis([x1 x2 0 50])
x_part=x_part+1
hold on
delete(p1)
p1=plot(x_part,y_part,'s k')
end



% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
global t x_part y_part p2 p1 x1 x2
y_part=y_part+1
axis([x1 x2 0 10])
hold on
delete(p1)
p1=plot(x_part,y_part,'s k')

