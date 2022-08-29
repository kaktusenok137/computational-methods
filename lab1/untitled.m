function varargout = untitled(varargin)
% UNTITLED MATLAB code for untitled.fig
%      UNTITLED, by itself, creates a new UNTITLED or raises the existing
%      singleton*.
%
%      H = UNTITLED returns the handle to a new UNTITLED or the handle to
%      the existing singleton*.
%
%      UNTITLED('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in UNTITLED.M with the given input arguments.
%
%      UNTITLED('Property','Value',...) creates a new UNTITLED or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before untitled_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to untitled_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES
 
% Edit the above text to modify the response to help untitled
 
% Last Modified by GUIDE v2.5 22-Dec-2020 17:05:17
 
% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @untitled_OpeningFcn, ...
                   'gui_OutputFcn',  @untitled_OutputFcn, ...
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
 
 
% --- Executes just before untitled is made visible.
function untitled_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to untitled (see VARARGIN)
 
% Choose default command line output for untitled
handles.output = hObject;
 
% Update handles structure
guidata(hObject, handles);
 
% UIWAIT makes untitled wait for user response (see UIRESUME)
% uiwait(handles.figure1);
 
 
% --- Outputs from this function are returned to the command line.
function varargout = untitled_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 
% Get default command line output from handles structure
varargout{1} = handles.output;
 
 
% --- Executes on button press in checkbox1.
function checkbox1_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 
% Hint: get(hObject,'Value') returns toggle state of checkbox1
 
 
% --- Executes on button press in checkbox2.
function checkbox2_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 
% Hint: get(hObject,'Value') returns toggle state of checkbox2
 
 
% --- Executes on button press in checkbox3.
function checkbox3_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 
% Hint: get(hObject,'Value') returns toggle state of checkbox3
 
 
% --- Executes on button press in checkbox4.
function checkbox4_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 
% Hint: get(hObject,'Value') returns toggle state of checkbox4
 
 
% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
x=[-5.5 -4.1 -2.7 -1.3 0.1 1.5 2.9 4.3 5.7 7.1 8.5];
y=[-7 37 365 397 -100 395 338 -112 -1020 196 1301];
xx=linspace(-5.5, 8.5, 160);
yy=lagrange(x,y,xx);
[zz] = newton(x, y, xx);
ii = spline(x, y, xx);
 
x1 = get(handles.checkbox1,'value');
x2 = get(handles.checkbox2,'value');
x3 = get(handles.checkbox3,'value');
x4 = get(handles.checkbox4,'value');
 
if x1 == 0 && x2 == 0 && x3 == 0 && x4 == 0
hold on
plot(x,y,'w')
plot(xx,yy,'w')
plot(xx,zz,'w')
plot(xx,ii,'w')
end
 
if x1 == 0 && x2 == 0 && x3 == 0 && x4 == 1
hold on
plot(x,y,'w')
plot(xx,yy,'w')
plot(xx,zz,'w')
plot(xx,ii,'g')
end
 
if x1 == 0 && x2 == 0 && x3 == 1 && x4 == 0
hold on
plot(x,y,'w')
plot(xx,yy,'w')
plot(xx,ii,'w')
plot(xx,zz,'y')
end
 
if x1 == 0 && x2 == 0 && x3 == 1 && x4 == 1
hold on
plot(x,y,'w')
plot(xx,yy,'w')
plot(xx,zz,'y')
plot(xx,ii,'g')
end
 
if x1 == 0 && x2 == 1 && x3 == 0 && x4 == 0
hold on
plot(x,y,'w')
plot(xx,zz,'w')
plot(xx,ii,'w')
plot(xx,yy,'r')
end
 
if x1 == 0 && x2 == 1 && x3 == 0 && x4 == 1
hold on
plot(x,y,'w')
plot(xx,zz,'w')
plot(xx,ii,'g')
plot(xx,yy,'r')
end
 
if x1 == 0 && x2 == 1 && x3 == 1 && x4 == 1
hold on
plot(x,y,'w')
plot(xx,yy,'r')
plot(xx,zz,'y')
plot(xx,ii,'g')
end
 
if x1 == 1 && x2 == 0 && x3 == 0 && x4 == 0
hold on
plot(xx,yy,'w')
plot(xx,zz,'w')
plot(xx,ii,'w')
plot(x,y,'b')
end
 
if x1 == 1 && x2 == 0 && x3 == 0 && x4 == 1
hold on
plot(xx,yy,'w')
plot(xx,zz,'w')
plot(xx,ii,'g')
plot(x,y,'b')
end
 
if x1 == 1 && x2 == 0 && x3 == 1 && x4 == 0
hold on
plot(xx,yy,'w')
plot(xx,ii,'w')
plot(x,y,'b')
plot(xx,zz,'y')
end
 
if x1 == 1 && x2 == 0 && x3 == 1 && x4 == 1
hold on
plot(xx,yy,'w')
plot(xx,zz,'y')
plot(xx,ii,'g')
plot(x,y,'b')
end
 
if x1 == 1 && x2 == 1 && x3 == 0 && x4 == 0
hold on
plot(xx,zz,'w')
plot(xx,ii,'w')
plot(x,y,'b')
plot(xx,yy,'r')
end
 
if x1 == 1 && x2 == 1 && x3 == 0 && x4 == 1
hold on
plot(xx,zz,'w')
plot(xx,ii,'g')
plot(x,y,'b')
plot(xx,yy,'r')
end
 
if x1 == 1 && x2 == 1 && x3 == 1 && x4 == 0
hold on
plot(xx,ii,'w')
plot(x,y,'b')
plot(xx,yy,'r')
plot(xx,zz,'y')
end
 
if x1 == 1 && x2 == 1 && x3 == 1 && x4 == 1
hold on
plot(x,y,'b')
plot(xx,yy,'r')
plot(xx,zz,'y')
plot(xx,ii,'g')
end
