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
axes(handles.axes1)
imshow(ImageFile);
axis image;
%clear axes scale
axis off

set(handles.text3,'string',fullname);
%update handles structure
guidata(hObject, handles);
imagen1=fullname;
imagen=fullname;
figure,imshow(imagen1);
title('INPUT IMAGE WITH NOISE')

if size(imagen,3)==3
    imagen=rgb2gray(imagen);
end

threshold = graythresh(imagen);

imagen =~im2bw(imagen,threshold);
imagen2 = imagen;

imagen = bwareaopen(imagen,15);
imagen3 = imagen;

word=[ ];
re=imagen;

fid = fopen('text.txt', 'wt');

load templates
global templates

num_letras=size(templates,2);
while 1
    
    [fl re]=lines_crop(re); 
    imgn=fl;
    n=0;
    figure,imshow(imgn);
    %-----------------------------------------------------------------
    
    spacevector = [];     
    rc = fl;              
   
    while 1
       [fc rc space]=letter_crop(rc);  
        img_r = imresize(fc,[42 24]);  
       n = n + 1;
       spacevector(n)=space;
       
       
       letter = read_letter(img_r,num_letras);
       
       
       word = [word letter];
       
       if isempty(rc)  
           break;
        end
    end
    
        %-------------------------------------------------------------------
        
        %
    max_space = max(spacevector);
    no_spaces = 0;
    
     for x= 1:n  
       if spacevector(x+no_spaces)> (0.75 * max_space)
          no_spaces = no_spaces + 1;
            for m = x:n
              word(n+x-m+no_spaces)=word(n+x-m+no_spaces-1);
            end
           word(x+no_spaces) = ' ';
           spacevector = [0 spacevector];
       end
     end
   
    fprintf(fid,'%s\n',word);
    
    word=[ ];
   
    if isempty(re) 
        break
    end
end
fclose(fid);


