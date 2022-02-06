function varargout = Trick(varargin)
% TRICK MATLAB code for Trick.fig
%      TRICK, by itself, creates a new TRICK or raises the existing
%      singleton*.
%
%      H = TRICK returns the handle to a new TRICK or the handle to
%      the existing singleton*.
%
%      TRICK('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TRICK.M with the given input arguments.
%
%      TRICK('Property','Value',...) creates a new TRICK or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Trick_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Trick_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Trick

% Last Modified by GUIDE v2.5 05-Mar-2018 00:30:36

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Trick_OpeningFcn, ...
                   'gui_OutputFcn',  @Trick_OutputFcn, ...
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


% --- Executes just before Trick is made visible.
function Trick_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Trick (see VARARGIN)

% Choose default command line output for Trick
handles.output = hObject;
global ha
clc
format compact
ha(1) = handles.axes1; ha(8) = handles.axes8;   ha(15) = handles.axes15; 
ha(2) = handles.axes2; ha(9) = handles.axes9;   ha(16) = handles.axes16; 
ha(3) = handles.axes3; ha(10) = handles.axes10; ha(17) = handles.axes17; 
ha(4) = handles.axes4; ha(11) = handles.axes11; ha(18) = handles.axes18; 
ha(5) = handles.axes5; ha(12) = handles.axes12; ha(19) = handles.axes19; 
ha(6) = handles.axes6; ha(13) = handles.axes13; ha(20) = handles.axes20; 
ha(7) = handles.axes7; ha(14) = handles.axes14; ha(21) = handles.axes21; 
ha(22) = handles.axes22; 

ha(23) = handles.text2;
ha(24) = handles.text3;
ha(29) = handles.text4;
ha(25) = handles.pushbutton1;

ha(26) = handles.radiobutton1;
ha(27) = handles.radiobutton2;
ha(28) = handles.radiobutton3;

begin_trick;
handles.t = 1;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes trick1 wait for user response (see UIRESUME)
% uiwait(handles.figure1);
% --- Outputs from this function are returned to the command line.
function varargout = Trick_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in radiobutton1.
function radiobutton1_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global ha
cont(hObject,handles,1);

% Hint: get(hObject,'Value') returns toggle state of radiobutton1


% --- Executes on button press in radiobutton2.
function radiobutton2_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global ha
cont(hObject,handles,2);
% Hint: get(hObject,'Value') returns toggle state of radiobutton2


% --- Executes on button press in radiobutton3.
function radiobutton3_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global ha
cont(hObject,handles,3);
% Hint: get(hObject,'Value') returns toggle state of radiobutton3


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global ha
begin_trick;
handles.t = 1;

% Update handles structure
guidata(hObject, handles);
