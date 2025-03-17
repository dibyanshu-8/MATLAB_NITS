function varargout = CALCULATOR(varargin)
% CALCULATOR MATLAB code for CALCULATOR.fig
%      CALCULATOR, by itself, creates a new CALCULATOR or raises the existing
%      singleton*.
%
%      H = CALCULATOR returns the handle to a new CALCULATOR or the handle to
%      the existing singleton*.
%
%      CALCULATOR('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CALCULATOR.M with the given input arguments.
%
%      CALCULATOR('Property','Value',...) creates a new CALCULATOR or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before CALCULATOR_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to CALCULATOR_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help CALCULATOR

% Last Modified by GUIDE v2.5 22-Nov-2023 01:00:46

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @CALCULATOR_OpeningFcn, ...
                   'gui_OutputFcn',  @CALCULATOR_OutputFcn, ...
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


% --- Executes just before CALCULATOR is made visible.
function CALCULATOR_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to CALCULATOR (see VARARGIN)

% Choose default command line output for CALCULATOR
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes CALCULATOR wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = CALCULATOR_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in CLEAR.
function CLEAR_Callback(hObject, eventdata, handles)
% hObject    handle to CLEAR (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of CLEAR
set(handles.IN1,'string','');
set(handles.IN2,'string','');
set(handles.OUT,'string','');



function OUT_Callback(hObject, eventdata, handles)
% hObject    handle to OUT (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of OUT as text
%        str2double(get(hObject,'String')) returns contents of OUT as a double


% --- Executes during object creation, after setting all properties.
function OUT_CreateFcn(hObject, eventdata, handles)
% hObject    handle to OUT (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in ADD.
function ADD_Callback(hObject, eventdata, handles)
% hObject    handle to ADD (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of ADD
A=str2double(get(handles.IN1,'string',''));
B=str2double(get(handles.IN2,'string',''));
C=A+B;
set(handles.OUT,'string',num2str(C));


% --- Executes on button press in SUB.
function SUB_Callback(hObject, eventdata, handles)
% hObject    handle to SUB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of SUB
A=str2double(get(handles.IN1,'string',''));
B=str2double(get(handles.IN2,'string',''));
C=A-B;
set(handles.OUT,'string',num2str(C));

% --- Executes on button press in MUL.
function MUL_Callback(hObject, eventdata, handles)
% hObject    handle to MUL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of MUL
A=str2double(get(handles.IN1,'string',''));
B=str2double(get(handles.IN2,'string',''));
C=A*B;
set(handles.OUT,'string',num2str(C));

% --- Executes on button press in DIV.
function DIV_Callback(hObject, eventdata, handles)
% hObject    handle to DIV (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of DIV
A=str2double(get(handles.IN1,'string',''));
B=str2double(get(handles.IN2,'string',''));
C=A/B;
set(handles.OUT,'string',num2str(C));


function IN1_Callback(hObject, eventdata, handles)
% hObject    handle to IN1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of IN1 as text
%        str2double(get(hObject,'String')) returns contents of IN1 as a double


% --- Executes during object creation, after setting all properties.
function IN1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to IN1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function IN2_Callback(hObject, eventdata, handles)
% hObject    handle to IN2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of IN2 as text
%        str2double(get(hObject,'String')) returns contents of IN2 as a double


% --- Executes during object creation, after setting all properties.
function IN2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to IN2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end