function varargout = FebryPerot(varargin)
% FEBRYPEROT MATLAB code for FebryPerot.fig
%      FEBRYPEROT, by itself, creates a new FEBRYPEROT or raises the existing
%      singleton*.
%
%      H = FEBRYPEROT returns the handle to a new FEBRYPEROT or the handle to
%      the existing singleton*.
%
%      FEBRYPEROT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in FEBRYPEROT.M with the given input arguments.
%
%      FEBRYPEROT('Property','Value',...) creates a new FEBRYPEROT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before FebryPerot_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to FebryPerot_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help FebryPerot

% Last Modified by GUIDE v2.5 10-Feb-2020 21:13:43

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @FebryPerot_OpeningFcn, ...
                   'gui_OutputFcn',  @FebryPerot_OutputFcn, ...
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


% --- Executes just before FebryPerot is made visible.
function FebryPerot_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to FebryPerot (see VARARGIN)

% Choose default command line output for FebryPerot
handles.output = hObject;
set(handles.sliderrio,'Max',0.99);
set(handles.sliderrio,'Min',0.01);
set(handles.sliderrio,'Value',0.99);
set(handles.lamda,'String','546.1');
set(handles.n,'String','6');
set(handles.length,'String','150');
set(handles.width,'String','150');
set(handles.dd,'String','0.2');
set(handles.d,'String','0.9');
set(handles.rio,'String','0.99');
F = 4*0.99/(0.01^2);
set(handles.F,'String',num2str(F));
axes(handles.theory);
imshow('scheme.png');
%https://commons.wikimedia.org/wiki/File:Fabry-perot_full_scheme.svg#/media/File:Fabry-perot_full_scheme.svg
display_Callback(hObject, eventdata, handles);
% Update handles structure
guidata(hObject, handles);

% --- Outputs from this function are returned to the command line.
function varargout = FebryPerot_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

function lamda_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function lamda_CreateFcn(hObject, eventdata, handles)
% hObject    handle to lamda (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function rio_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function rio_CreateFcn(hObject, eventdata, handles)
% hObject    handle to rio (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function d_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function d_CreateFcn(hObject, eventdata, handles)
% hObject    handle to d (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function n_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function n_CreateFcn(hObject, eventdata, handles)
% hObject    handle to n (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes during object creation, after setting all properties.
function length_CreateFcn(hObject, eventdata, handles)%显示长度
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function length_Callback(hObject, eventdata, handles)


function dd_CreateFcn(hObject, eventdata, handles)%采样率
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function dd_Callback(hObject, eventdata, handles)

function width_CreateFcn(hObject, eventdata, handles)%显示宽度
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function width_Callback(hObject, eventdata, handles)

% --- Executes on slider movement.
function sliderrio_Callback(hObject, eventdata, handles)
% hObject    handle to sliderrio (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
rio = get(handles.sliderrio,'Value');
set(handles.rio,'String',num2str(rio));
F = 4*0.99/((1-rio)^2);%精确度
set(handles.F,'String',num2str(F));
display_Callback(hObject, eventdata, handles);

% --- Executes during object creation, after setting all properties.
function sliderrio_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function E = multi_beam_interference(lamda,m,n,dd,rio,d,times)
% lamda = 546.1e-6;
% z = 10000;
% z2 = 10500;
%caculate
z = 1000;
%parameters of CCD
% m = 20;   %
% n = 20;   
% dd = 0.02; % 采样率  采样间隔
A = 1;
% rio = 0.9;
A0 = (1-rio)*A;
E = Gen_Sphere(A0,lamda,m,n,dd,z); 
for i=1:times
  z = z+d;
  A0 = rio*A0;
  E1 = Gen_Sphere(A0,lamda,m,n,dd,z); 
  E = E+E1;
end
E = abs(E.^2);



% --- Executes on button press in display.
function display_Callback(hObject, eventdata, handles)
% hObject    handle to display (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
m = str2double(get(handles.length,'String'));   %
n = str2double(get(handles.width,'String'));   
dd = str2double(get(handles.dd,'String')); % 采样率  采样间隔
rio = str2double(get(handles.rio,'String'));
d = str2double(get(handles.d,'String'));
times = str2double(get(handles.n,'String'));
lamda = str2double(get(handles.lamda,'String'));
handles.E = multi_beam_interference(lamda*1e-6,m,n,dd,rio,d,times);
axes(handles.fp);
imshow(handles.E,[]);
guidata(hObject, handles);

function plot_Callback(hObject, eventdata, handles)
figure
plot(1:size(handles.E,2),handles.E(size(handles.E,1)/2,:))
%unfixed bug if we didn't clik genarete inference patten u just click
%sectional view it would not be work cuz we need caculate interfence frist
%to get index E.