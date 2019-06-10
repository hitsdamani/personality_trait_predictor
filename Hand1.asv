function varargout = Hand1(varargin)
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Hand1_OpeningFcn, ...
                   'gui_OutputFcn',  @Hand1_OutputFcn, ...
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

% --- Executes just before Hand1 is made visible.
function Hand1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Hand1 (see VARARGIN)

% Choose default command line output for Hand1
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Hand1 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Hand1_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
[filename,filepath] = uigetfile({'*.*';'*.jpg';'*.png';'*.bmp'},'Search Image To Be Displayed');
fullname = [filepath filename];
%now reading the image
ImageFile = imread(fullname);

%displaying the image
myImageName=fullname;
disp(myImageName);
set(handles.pushbutton1, 'UserData', myImageName);
axes(handles.axes3)
imshow(ImageFile);
axis image;
%clear axes scale
axis off

%set(handles.text3,'string',fullname);
%update handles structure
guidata(hObject, handles);
imagen1=ImageFile;
imagen=ImageFile;
%figure,imshow(imagen1);
%title('INPUT IMAGE WITH NOISE')

if size(imagen,3)==3
    imagen=rgb2gray(imagen);
end

threshold = graythresh(imagen);

imagen =~im2bw(imagen,threshold);
%imagen2 = imagen;
imagen = bwareaopen(imagen,15);
%imagen3 = imagen;
set(handles.pushbutton1, 'UserData', imagen);
word=[ ];
re=imagen;

fid = fopen('text.txt', 'wt');

load templates
global templates

num_letras=size(templates,2);
while 1
    
    [fl, re]=lines_crop(re); 
    n=0;
    imgn=fl;
    %figure,imshow(imgn);
    %-----------------------------------------------------------------
    
    spacevector = [];     
    rc = fl;              
   
    while 1
       [fc, rc, space]=letter_crop(rc);
       %figure,imshow(fc);
        img_r = imresize(fc,[42 24]);  
       n = n + 1;
       spacevector(n)=space;
       letter = read_letter(img_r,num_letras);
       word = [word letter];
       
       if isempty(rc)  
           break;
        end
    end
    
   
    set(handles.text8,'string',word);
    
    word=[ ];
   
    if isempty(re) 
        break
    end
end
fclose(fid);

function pushbutton4_Callback(hObject, eventdata, handles)
I2 = get(handles.pushbutton1,'UserData');
cc=bwconncomp(I2,8);
n=cc.NumObjects;
%declaring feature variables
    Area1=zeros(n,1);
    Perimeter1=zeros(n,1);
    MajorAxis1=zeros(n,1);
    MinorAxis1=zeros(n,1);
    Orientation1=zeros(n,1);
set(handles.pushbutton4, 'UserData', cc);

disp(cc);%just for trial
disp(n);%just for trial
k=regionprops(cc,'Area','Perimeter','MajorAxisLength','MinorAxisLength','Orientation');
    
    for j=1:n
            Area1(j)=k(j).Area;
            Perimeter1(j)=k(j).Perimeter;
            MajorAxis1(j)=k(j).MajorAxisLength;
            MinorAxis1(j)=k(j).MinorAxisLength;
            Orientation1(j)=k(j).Orientation;
    end  
    disp(Area1);
    disp(Perimeter1);
    disp(MajorAxis1);
    disp(MinorAxis1);
    disp(Orientation1);
    
%displaying image
axes(handles.axes3)
imshow(I2);
axis image;

%clear axes scale
axis off
guidata(hObject, handles);
% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
cc = get(handles.pushbutton4,'UserData');
n=cc.NumObjects;
Area1=zeros(n,1);
Perimeter1=zeros(n,1);
MajorAxis1=zeros(n,1);
MinorAxis1=zeros(n,1);
Orientation1=zeros(n,1);
k=regionprops(cc,'Area','Perimeter','MajorAxisLength','MinorAxisLength','Orientation');
    
    for j=1:n
            Area1(j)=k(j).Area;
            Perimeter1(j)=k(j).Perimeter;
            MajorAxis1(j)=k(j).MajorAxisLength;
            MinorAxis1(j)=k(j).MinorAxisLength;
            Orientation1(j)=k(j).Orientation;
    end 
    
    % for major axis
   [r1,c1] = size(MajorAxis1);
   im1= zeros(r1,c1);
  for i=1:r1
    for j=1:c1
        if MajorAxis1(i,j)>=100
            im1(i,j)=1;
        else
            im1(i,j)=0;
        end
    end
  end
    % for orientation
  [r2,c2] = size(Orientation1);
   im2= zeros(r2,c2);
  for p=1:r2
    for q=1:c2
        if Orientation1(p,q)>=-1
            im2(p,q)=1;
        else
            im2(p,q)=0;
        end
    end
  end
  %for major axis
  %counting the number of 0's and 1's
  
  a = unique(im1);
out = [a,histc(im1(:),a)];
disp(im1);
disp(out);
[outr,outc]=size(out);
%if the number of rows of the count matrix is 1, than means, either the
%matrix has only 0's or 1's
if outr==1
    if out(1,1)==0
        countzero=out(1,2);
        countone=0;
    else
        countzero=0;
        countone=out(1,2);
    end    
else
    %if the number of rows of the count matrix is greater than 1, both 1
    %and 0 exist in the matrix and their count as well
    if outr>1
        countzero=out(1,2);
        countone=out(2,2);
    end
end
    disp(countzero);
    disp(countone);
    
    %for orientation
    
    
b = unique(im2);
out2 = [b,histc(im2(:),b)];
disp(im2);
disp(out2);
[outr2,outc2]=size(out2);
if outr2==1
    if out2(1,1)==0
        countzero1=out2(1,2);
        countone1=0;
    else
        countzero1=0;
        countone1=out2(1,2);
    end    
else
    if outr2>1
        countzero1=out2(1,2);
        countone1=out2(2,2);
    end
end
    disp(countzero1);
    disp(countone1);
%for major axis
smallfont='Introspective, not seeking attention, modest';
largefont='Likes being noticed, stands out in a crowd';
midfont='balanced';
if countzero>countone
    set(handles.text3,'string',smallfont);
else
    if countzero<countone
        set(handles.text3,'string',largefont);
    else
        set(handles.text3,'string',midfont);
    end
end
%for orientation
leftslant='Introvert, reserved';
rightslant='Social, responsive, interactive';
vertslant='Practical, independent self-sufficient';
if countzero1>countone1
    set(handles.text4,'string',leftslant);
else
    if countzero1<countone1
        set(handles.text4,'string',rightslant);
    else
        set(handles.text4,'string',vertslant);
    end
end
%winopen('text.txt');

guidata(hObject, handles);




% --- Executes on button press in checkbox1.
function checkbox1_Callback(hObject, eventdata, handles)
checkboxValue = get(handles.checkbox1, 'value');
if checkboxValue
  set(handles.text9, 'Visible', 'off');
  set(handles.text8, 'Visible', 'on');
else
    set(handles.text9, 'Visible', 'on');
    set(handles.text8, 'Visible', 'off');
end
% hObject    handle to checkbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox1



function text8_Callback(hObject, eventdata, handles)
% hObject    handle to text8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of text8 as text
%        str2double(get(hObject,'String')) returns contents of text8 as a double


% --- Executes during object creation, after setting all properties.
function text8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in listbox1.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.


% --- Executes during object creation, after setting all properties.


% --- Executes during object creation, after setting all properties.
function axes1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes1
axes(hObject);
imshow('C:\Users\hvrda\OneDrive\Desktop\imagebg2.jpg');
alpha(0.5);
