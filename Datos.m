function varargout = Datos(varargin)
% DATOS MATLAB code for Datos.fig
%      DATOS, by itself, creates a new DATOS or raises the existing
%      singleton*.
%
%      H = DATOS returns the handle to a new DATOS or the handle to
%      the existing singleton*.
%
%      DATOS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in DATOS.M with the given input arguments.
%
%      DATOS('Property','Value',...) creates a new DATOS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Datos_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Datos_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Datos

% Last Modified by GUIDE v2.5 19-May-2015 15:19:57

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Datos_OpeningFcn, ...
                   'gui_OutputFcn',  @Datos_OutputFcn, ...
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


% --- Executes just before Datos is made visible.
function Datos_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Datos (see VARARGIN)
global k_sug

% Choose default command line output for Datos
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Datos wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Datos_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double
valor1=get(handles.edit1,'string');
valor1=str2double(valor1);
if (isnan(valor1))
    errordlg('Debe ingresar un valor numérico','Error')
    set(handles.edit1,'string',0.1);
    valor1=0.1;
end
if (esrealpos(valor1)==0) % Filtro. Mas informacion en la funcion correspondiente
    set(handles.edit1,'string',0.0001);%Reinicia campo
end
if (valor1>100000)
    set(handles.edit1,'string',100000);
end


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end










function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double
valor3=get(handles.edit3,'string');%Asigna a la variable el valor editado en el cuadro de texto
valor3=str2double(valor3);%de numero a texto
if (isnan(valor3))%Verifica que valor ingresado sea numerico
    errordlg('Debe ingresar un valor numérico','Error')
    set(handles.edit3,'string',10);%Reinicia campo
    valor3=10;
end
if (esrealpos(valor3)==0) % Filtro. Mas informacion en la funcion correspondiente
    set(handles.edit3,'string',3.6);%Reinicia campo
end
if (valor3<3.6)
    set(handles.edit3,'string',3.6);
end
if (valor3>10000)
    set(handles.edit3,'string',10000);
end



% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double
valor4=get(handles.edit4,'string');%Asigna a la variable el valor editado en el cuadro de texto
valor4=str2double(valor4);%de numero a texto
if (isnan(valor4))%Verifica que valor ingresado sea numerico
    errordlg('Debe ingresar un valor numérico','Error')
    set(handles.edit4,'string',10);%Reinicia campo
    valor4=10;
end
if (esrealpos(valor4)==0) % Filtro. Mas informacion en la funcion correspondiente
    set(handles.edit4,'string',10);%Reinicia campo
end
if (valor4<3.6)
    set(handles.edit4,'string',5);
end
if (valor4>10000)
    set(handles.edit4,'string',10000);
end


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double
valor5=get(handles.edit5,'string');%Asigna a la variable el valor editado en el cuadro de texto
valor5=str2double(valor5);%de numero a texto
if (isnan(valor5))%Verifica que valor ingresado sea numerico
    errordlg('Debe ingresar un valor numérico','Error')
    set(handles.edit5,'string',1.15);%Reinicia campo
    valor5=1.15;
end


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double
valor6=get(handles.edit6,'string');%Asigna a la variable el valor editado en el cuadro de texto
valor6=str2double(valor6);%de numero a texto
if (isnan(valor6))%Verifica que valor ingresado sea numerico
    errordlg('Debe ingresar un valor numérico','Error')
    set(handles.edit6,'string',100);%Reinicia campo
    valor6=100;
end
if (esrealpos(valor6)==0) % Filtro. Mas informacion en la funcion correspondiente
    set(handles.edit6,'string',3.6);%Reinicia campo
end
if (valor6<100)
    set(handles.edit6,'string',100);
end
if (valor6>50000)
    set(handles.edit6,'string',50000);
end



% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double
valor7=get(handles.edit7,'string');%Asigna a la variable el valor editado en el cuadro de texto
valor7=str2double(valor7);%de numero a texto
if (isnan(valor7))%Verifica que valor ingresado sea numerico
    errordlg('Debe ingresar un valor numérico','Error')
    set(handles.edit7,'string',50);%Reinicia campo en cero
    valor7=50;
end


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


%



function edit8_Callback(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit8 as text
%        str2double(get(hObject,'String')) returns contents of edit8 as a double
valor8=get(handles.edit8,'string');%Asigna a la variable el valor editado en el cuadro de texto
valor8=str2double(valor8);%de numero a texto
if (isnan(valor8))%Verifica que valor ingresado sea numerico
    errordlg('Debe ingresar un valor numï¿½rico','Error')
    set(handles.edit8,'string',1);%Reinicia campo
    valor8=1;
end
if (esrealpos(valor8)==0) % Filtro. Mas informacion en la funcion correspondiente
    set(handles.edit8,'string',1);%Reinicia campo
end
decimal=valor8-fix(valor8);
if (decimal~=0)
    valor8=1;
    errordlg('El número de líneas es un valor entero','Error');
    set(handles.edit8,'string',1);
end
if (valor8>100)
    set(handles.edit8,'string',100);
end



% --- Executes during object creation, after setting all properties.
function edit8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit9_Callback(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit9 as text
%        str2double(get(hObject,'String')) returns contents of edit9 as a double
valor9=get(handles.edit9,'string');%Asigna a la variable el valor editado en el cuadro de texto
valor9=str2double(valor9);%de numero a texto
if (isnan(valor9))%Verifica que valor ingresado sea numerico
    errordlg('Debe ingresar un valor numérico','Error')
    set(handles.edit9,'string',0);%Reinicia campo
    valor9=0;
end


% --- Executes during object creation, after setting all properties.
function edit9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end






% --- Executes on mouse motion over figure - except title and menu.
function figure1_WindowButtonMotionFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on scroll wheel click while the figure is in focus.
function figure1_WindowScrollWheelFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  structure with the following fields (see FIGURE)
%	VerticalScrollCount: signed integer indicating direction and number of clicks
%	VerticalScrollAmount: number of lines scrolled for each click
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in radiobutton1.
function radiobutton1_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton1


% --- Executes on button press in radiobutton3.
function radiobutton3_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton3


% --- Executes on button press in radiobutton4.
function radiobutton4_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton4


% --- Executes on button press in radiobutton5.
function radiobutton5_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton5


% --- Executes on button press in radiobutton8.
function radiobutton8_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton8


% --- Executes on button press in radiobutton9.
function radiobutton9_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton9


% --- Executes on button press in radiobutton6.
function radiobutton6_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton6


% --- Executes on button press in radiobutton7.
function radiobutton7_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton7


% --- Executes on button press in radiobutton18.
function radiobutton18_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton18


% --- Executes on button press in radiobutton19.
function radiobutton19_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton19



function edit11_Callback(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit11 as text
%        str2double(get(hObject,'String')) returns contents of edit11 as a double
valor11=get(handles.edit11,'string');%Asigna a la variable el valor editado en el cuadro de texto
valor11=str2double(valor11);%de numero a texto
if (isnan(valor11))%Verifica que valor ingresado sea numerico
    errordlg('Debe ingresar un valor numérico','Error')
    set(handles.edit11,'string',.5);%Reinicia campo
    valor11=0;
end


% --- Executes during object creation, after setting all properties.
function edit11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit12_Callback(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit12 as text
%        str2double(get(hObject,'String')) returns contents of edit12 as a double
valor12=get(handles.edit12,'string');%Asigna a la variable el valor editado en el cuadro de texto
valor12=str2double(valor12);%de numero a texto
if (isnan(valor12))%Verifica que valor ingresado sea numerico
    errordlg('Debe ingresar un valor numérico','Error')
    set(handles.edit12,'string',.5);%Reinicia campo
    valor12=.5;
end


% --- Executes during object creation, after setting all properties.
function edit12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit13_Callback(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit13 as text
%        str2double(get(hObject,'String')) returns contents of edit13 as a double
valor13=get(handles.edit13,'string');%Asigna a la variable el valor editado en el cuadro de texto
valor13=str2double(valor13);%de numero a texto
if (isnan(valor13))%Verifica que valor ingresado sea numerico
    errordlg('Debe ingresar un valor numérico','Error')
    set(handles.edit13,'string',.1);%Reinicia campo
    valor13=.1;
end


% --- Executes during object creation, after setting all properties.
function edit13_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit14_Callback(hObject, eventdata, handles)
% hObject    handle to edit14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit14 as text
%        str2double(get(hObject,'String')) returns contents of edit14 as a double
valor14=get(handles.edit14,'string');%Asigna a la variable el valor editado en el cuadro de texto
valor14=str2double(valor14);%de numero a texto
if (isnan(valor14))%Verifica que valor ingresado sea numerico
    errordlg('Debe ingresar un valor numérico','Error')
    set(handles.edit14,'string',.01);%Reinicia campo en cero
    valor14=.01;
end


% --- Executes during object creation, after setting all properties.
function edit14_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% DECLARANDO VARIABLES COMO GLOBALES
global Uskv valor16 k cont_ener cont_resis cont_alim cont_comp Ups Upl A n Lsp Lint Lext Ra Rkm H Ks_int Ks_ext

% Opciones de los "radiobutton"
cont_ener=8; %variable que vale 8 si elige energizaciï¿½n
boton2=get(handles.radiobutton22,'value');
if (boton2==1)
    cont_ener=0;
end
cont_resis=4; %variable que vale 4 si elige sí¿½
boton4=get(handles.radiobutton18,'value');
if (boton4==1)
    cont_resis=0;
end
cont_alim=2; %variable que vale 2 si elige 'Compleja'
boton6=get(handles.radiobutton25,'value');
if (boton6==1)
    cont_alim=0;
end
cont_comp=1; %variable que vale 1 si elige 'Mayor a 50%'
boton8=get(handles.radiobutton27,'value');
if (boton8==1)
    cont_comp=0;
end

% Medidas ingresadas en los "edit"
Uskv=str2double(get(handles.edit15,'string')); % Voltaje más alto del sistema
k=str2double(get(handles.edit18,'string')); % Factor de falla a tierra
valor16=str2double(get(handles.edit16,'string')); % Sobretensión debido a rechazo de carga
Ups=str2double(get(handles.edit3,'string')); % Nivel de protección del impulso a la maniobra
Upl=str2double(get(handles.edit4,'string')); % Nivel de protección al impulso por relámpago
A=str2double(get(handles.edit6,'string')); % Parametro caracterizado por la influencia del relámpago por el equipo dependiendo del tipo de línea al cual se conecta
n=str2double(get(handles.edit8,'string')); % Número máximo de líneas conectadas a la subestación
Lsp=str2double(get(handles.edit7,'string')); % Longitud del vano
Lint=str2double(get(handles.edit11,'string')); % Trayectoria que involucra tope de equipo protegido, pararrayos y malla de puesta a tierra, o sea, L=a1+12+a3+a4
Lext=str2double(get(handles.edit12,'string')); % Trayectoria que involucra tope de equipo protegido, pararrayos y malla de puesta a tierra, o sea, L=a1+12+a3+a4
Ra=str2double(get(handles.edit13,'string')); % Tasa de falla aceptable para aparatos. Para lineas expresado en (1/año)/100 km
Rkm=str2double(get(handles.edit14,'string')); % Longitud de la línea con tasa de falla por año correspondiente al primer kilómetro desde la subestación en 1/(m*año)
H=str2double(get(handles.edit9,'string')); % Altura sobre el nivel del mar
Ks_int=str2double(get(handles.edit5,'string')); % Factor de seguridad interno. De no especificarse por comité, se aplica 1.15
Ks_ext=str2double(get(handles.edit19,'string')); % Factor de seguridad externo. De no especificarse por comité, se aplica 1.05

% INVOCA SRIPT CON DESARROLLO DE CALCULOS
desarrollo
% INVOCA GUI DE SALIDA DE DATOS
%guicalcular


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%Sale del programa
close(gcbf);



function edit15_Callback(hObject, eventdata, handles)
% hObject    handle to edit15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit15 as text
%        str2double(get(hObject,'String')) returns contents of edit15 as a double
% Tension mas alta del sistema en los rangos 3.6 - 245 kV (I) 300 - 765 kV (II)
valor15=get(handles.edit15,'string');%Asigna a la variable el valor editado en el cuadro de texto
valor15=str2double(valor15);%de numero a texto
if (isnan(valor15))%Verifica que valor ingresado sea numerico
    errordlg('Debe ingresar un valor numï¿½rico','Error')
    set(handles.edit15,'string',3.6);%Reinicia campo
    valor15=3.6;
end
if (esrealpos(valor15)==0) % Filtro. Mas informacion en la funcion correspondiente
    set(handles.edit15,'string',3.6);%Reinicia campo
end
if (valor15<3.6)
    set(handles.edit15,'string',3.6);
end
if (valor15>765)
    set(handles.edit15,'string',765);
end
    


% --- Executes during object creation, after setting all properties.
function edit15_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit16_Callback(hObject, eventdata, handles)
% hObject    handle to edit16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit16 as text
%        str2double(get(hObject,'String')) returns contents of edit16 as a double
valor16=get(handles.edit16,'string');%Asigna a la variable el valor editado en el cuadro de texto
valor16=str2double(valor16);%de numero a texto
if (isnan(valor16))%Verifica que valor ingresado sea numerico
    errordlg('Debe ingresar un valor numï¿½rico','Error')
    set(handles.edit16,'string',1.2);%Reinicia campo
    valor16=10;
end
if (esrealpos(valor16)==0) % Filtro. Mas informacion en la funcion correspondiente
    set(handles.edit16,'string',1.2);%Reinicia campo
end
if (valor16>10)
    set(handles.edit16,'string',9);
end



% --- Executes during object creation, after setting all properties.
function edit16_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function pushbutton1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called







function edit18_Callback(hObject, eventdata, handles)
% hObject    handle to edit18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit18 as text
%        str2double(get(hObject,'String')) returns contents of edit18 as a double
valor18=get(handles.edit18,'string');
valor18=str2double(valor18);
if (isnan(valor18))
    errordlg('Debe ingresar un valor numérico','Error')
    set(handles.edit18,'string',1);
    valor18=1;
end
if (esrealpos(valor18)==0) % Filtro. Mas informacion en la funcion correspondiente
    set(handles.edit18,'string',1);%Reinicia campo
end
if (valor18>5)
    set(handles.edit18,'string',5);
end
if (valor18<1)
    set(handles.edit18,'string',1);
end


% --- Executes during object creation, after setting all properties.
function edit18_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes when selected object is changed in uipanel11.
function uipanel11_SelectionChangeFcn(hObject, eventdata, handles)
% hObject    handle to the selected object in uipanel11 
% eventdata  structure with the following fields (see UIBUTTONGROUP)
%	EventName: string 'SelectionChanged' (read only)
%	OldValue: handle of the previously selected object or empty if none was selected
%	NewValue: handle of the currently selected object
% handles    structure with handles and user data (see GUIDATA)



% --- Executes when selected object is changed in uipanel10.
function uipanel10_SelectionChangeFcn(hObject, eventdata, handles)
% hObject    handle to the selected object in uipanel10 
% eventdata  structure with the following fields (see UIBUTTONGROUP)
%	EventName: string 'SelectionChanged' (read only)
%	OldValue: handle of the previously selected object or empty if none was selected
%	NewValue: handle of the currently selected object
% handles    structure with handles and user data (see GUIDATA)



% --- Executes when selected object is changed in uipanel12.
function uipanel12_SelectionChangeFcn(hObject, eventdata, handles)
% hObject    handle to the selected object in uipanel12 
% eventdata  structure with the following fields (see UIBUTTONGROUP)
%	EventName: string 'SelectionChanged' (read only)
%	OldValue: handle of the previously selected object or empty if none was selected
%	NewValue: handle of the currently selected object
% handles    structure with handles and user data (see GUIDATA)



% --- Executes when selected object is changed in uipanel13.
function uipanel13_SelectionChangeFcn(hObject, eventdata, handles)
% hObject    handle to the selected object in uipanel13 
% eventdata  structure with the following fields (see UIBUTTONGROUP)
%	EventName: string 'SelectionChanged' (read only)
%	OldValue: handle of the previously selected object or empty if none was selected
%	NewValue: handle of the currently selected object
% handles    structure with handles and user data (see GUIDATA)



function edit19_Callback(hObject, eventdata, handles)
% hObject    handle to edit19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit19 as text
%        str2double(get(hObject,'String')) returns contents of edit19 as a double
valor19=get(handles.edit19,'string');%Asigna a la variable el valor editado en el cuadro de texto
valor19=str2double(valor19);%de numero a texto
if (isnan(valor19))%Verifica que valor ingresado sea numerico
    errordlg('Debe ingresar un valor numï¿½rico','Error')
    set(handles.edit19,'string',1.05);%Reinicia campo en cero
    valor19=0;
end


% --- Executes during object creation, after setting all properties.
function edit19_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
ayuda1=['Tensiï¿½n rms mï¿½s alta en condiciones normales de operaciï¿½n. Para un equipo es la tensiï¿½n de diseï¿½o mï¿½s alta en condiciones normales.'];
set(handles.text28,'string',ayuda1);


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
ayuda2=['- En sistemas moderadamente extendidos, un rechazo de carga puede levantar las sobretensiones con una amplitud usualmente bajo 1.2 p.u. La duraciï¿½n del sobrevoltaje depende de la operaciï¿½n del equipo de control de voltaje y puede ser de algunos minutos.' char(10) '- En sistemas extendidos, despuï¿½s de un rechazo de carga, los sobrevoltajes de fase a tierra pueden alcanzar 1.5 p.u. o mï¿½s por efecto Ferranti o ferrorresonancia. La duraciï¿½n puede estar en el orden de algunos segundos.' char(10) '- En sistemas con motores o generadores en el sitio de rechazo, una separaciï¿½n de la red puede levantar los sobrevoltajes longitudinales temporales compuesto por dos componentes de sobrevoltajes fase a tierra en oposiciï¿½n de fase, en la cual la mï¿½xima amplitud es normalmente bajo 2.5 p.u.'];
set(handles.text28,'string',ayuda2);

% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
ayuda3=['Ingrese factor de falla. Si lo prefiere, puede calcularlo dando clic en el boton indicado, para lo cual requerirá la impedancia de Thévenin' char(10) 'Este software usa los datos para la determinación del factor de falla, aproximando la resistencia de secuencia positiva a cero'];
set(handles.text28,'string',ayuda3);


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
ayuda4=['Sobretensiones de protecciï¿½n de los parrayos para frecuencia industrial y descarga atmosfï¿½rica.'];
set(handles.text28,'string',ayuda4);


% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
ayuda5=['Factor aplicado a los voltajes soportados de coordinaciï¿½n para obtener las tensiones requeridas. Representa las diferencias entre las condiciones de servicio y las condiciones de ensayo.' char(10) 'Usualmente se usa 1.15 para factor interno y 1.05 para factor externo.'];
set(handles.text28,'string',ayuda5);

% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
ayuda6=['Parï¿½metro caracterizado por la influencia de la gravedad del rayo sobre el equipo dependiendo de la configuraciï¿½n de la lï¿½nea conectada' char(10) 'Los valores recomendados son:' char(10) 'Lï¿½neas de distribuciï¿½n (impacto entre fases)' char(10) '- con crucetas a tierra 900 kV' char (10) 'aislamiento en madera 2700 kV' char(10) 'Lï¿½neas de transmisiï¿½n (Impacto de fase a tierra)' char(10) '- un conductor 4500 kV' char(10) '-  haz de dos conductores 7000 kV' char(10) '- haz de cuatro conductores 11000 kV' char(10) '- haz de seis y ocho conductores 17000 kV'];
set(handles.text28,'string',ayuda6);


% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
ayuda7=['Distancia entre apoyos de la lï¿½nea'];
set(handles.text28,'string',ayuda7);


% --- Executes on button press in pushbutton10.
function pushbutton10_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
ayuda8=['Nï¿½mero mï¿½nimo de lï¿½neas conectadas a la subestaciï¿½n'];
set(handles.text28,'string',ayuda8);


% --- Executes on button press in pushbutton11.
function pushbutton11_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
ayuda9=['Altura sobre el nivel del mar de la instalaciï¿½n.'];
set(handles.text28,'string',ayuda9);


% --- Executes on button press in pushbutton12.
function pushbutton12_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
ayuda10=['Distancia de separaciï¿½n entre pararrayos y equipo protegido.' char(10) 'Se obtiene como la suma de cuatro distancias:' char(10) '- conductor de fase entre equipo protegido y pararrayos' char(10) '- entre lï¿½nea y pararrayos' char(10) '- longitud pararrayos' char(10) '- entre pararrayos y tierra'];
set(handles.text28,'string',ayuda10);


% --- Executes on button press in pushbutton13.
function pushbutton13_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
ayuda11=['Tasa de falla aceptable para equipos. Para lï¿½neas de transmisiï¿½n viene expresado en (1/aï¿½o)/100 km'];
set(handles.text28,'string',ayuda11);


% --- Executes on button press in pushbutton14.
function pushbutton14_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
ayuda12=['Longitud de la lï¿½nea con tasa de falla por aï¿½o correspondiente al primer kilï¿½metro desde la subestacion en 1/(m-aï¿½o)'];
set(handles.text28,'string',ayuda12);


% --- Executes on button press in pushbutton15.
function pushbutton15_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton16.
function pushbutton16_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
load fichero_auxiliar_factor_falla k_sug;
set(handles.edit18,'string',k_sug);


% --- Executes on button press in pushbutton17.
function pushbutton17_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Factor_falla_a_tierra
