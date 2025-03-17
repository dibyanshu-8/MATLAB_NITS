function varargout = sinewaves(varargin)
%SINEWAVES MATLAB code file for sinewaves.fig
%      SINEWAVES, by itself, creates a new SINEWAVES or raises the existing
%      singleton*.
%
%      H = SINEWAVES returns the handle to a new SINEWAVES or the handle to
%      the existing singleton*.
%
%      SINEWAVES('Property','Value',...) creates a new SINEWAVES using the
%      given property value pairs. Unrecognized properties are passed via
%      varargin to sinewaves_OpeningFcn.  This calling syntax produces a
%      warning when there is an existing singleton*.
%
%      SINEWAVES('CALLBACK') and SINEWAVES('CALLBACK',hObject,...) call the
%      local function named CALLBACK in SINEWAVES.M with the given input
%      arguments.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help sinewaves

% Last Modified by GUIDE v2.5 23-Nov-2023 11:49:56

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @sinewaves_OpeningFcn, ...
                   'gui_OutputFcn',  @sinewaves_OutputFcn, ...
                   'gui_LayoutFcn',  [], ...
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


% --- Executes just before sinewaves is made visible.
function sinewaves_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   unrecognized PropertyName/PropertyValue pairs from the
%            command line (see VARARGIN)

% Choose default command line output for sinewaves
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes sinewaves wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = sinewaves_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
x= 0:0.01:10;
plot(x,sin(x));

% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
x= 0:0.01:10;
plot(x,sin(3*x));


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
x= 0:0.01:10;
p=sin(x)+sin(3*x);
plot(x,p);