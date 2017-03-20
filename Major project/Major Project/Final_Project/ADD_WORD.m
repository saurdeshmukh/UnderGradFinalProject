function ADD_WORD
global str11;
str11='';
global d;
global str22;
global strr1;
strr1='';
str22='';
global flag1;
global Inn;
global stemp;
FID1 = fopen('samp.txt', 'rb');
Inn = textread('samp.txt', '%s', 'delimiter', '\n');
fclose(FID1);
global TEMP;
FI = fopen('tempsam.txt', 'rb');
TEMP= textread('tempsam.txt', '%s', 'delimiter', '\n');
fclose(FI);   
global k;
k=0;
f = figure('Visible','off','Position',[420,650,600,450]);
hedittext=uicontrol(f,'Style','edit','String',str11,'Max',1,'Min',0,'Position',[260,300,120,25],'KeyPressFcn',{@Key_Press_Callback});
hcheck = uicontrol('Style','pushbutton','String','CHECK','Position',[260,250,70,20],'Callback',{@CHECK_DATA_Callback}); 
htext = uicontrol('Style','text','String','ADD NEW WORD','Position',[260,350,100,20]);
htext1 = uicontrol('Style','text','String',str22,'Max',3,'Min',0,'Position',[260,190,220,25]);
hadd = uicontrol('Style','pushbutton','String','ADD','Position',[260,150,70,20],'Callback',{@ADD_DATA_Callback}); 
htext2 = uicontrol('Style','text','String',str11,'Max',3,'Min',0,'Position',[260,100,220,25]);
set([f,hedittext,htext,hadd,htext1,hcheck,htext2],'Units','normalized'); 
set(f,'Name','ADD WORD')
% Move the GUI to the center of the screen.
movegui(f,'center')
% Make the GUI visible. 
set(f,'Visible','on');


function Key_Press_Callback(hObject,eventdata)
       
 d=eventdata.Key;
 d=upper(d);
if (~strcmp(d,'RETURN'))&&(~strcmp(d,'BACKSPACE'))&&(~strcmp(d,'SHIFT'))
   strr1=strcat(strr1,d);
end
if (strcmp(d,'BACKSPACE'))
    l=length(strr1);
    strr1=strr1(1:l-1);
end
end
function CHECK_DATA_Callback(~,~)
    FID1 = fopen('samp.txt', 'rb');
Inn = textread('samp.txt', '%s', 'delimiter', '\n');
fclose(FID1);
        if ~isempty(strr1)
       l=length(Inn);
       flag1=0;
       for i=1:l
           stemp=Inn{i};
           if strcmp(strr1,stemp)
               flag1=1;
           end
       end
        if flag1==1
            str22='WORD ALREADY AVAILABLE';
        else
            str22='WORD NOT AVAILABLE';
        end
     
        else
             str22='ENTER WORD ABOVE';
        end
         htext1 = uicontrol('Style','text','String',str22,'Position',[260,190,220,25]);
      
end
function ADD_DATA_Callback(~,~)
    if flag1==1
        str11='WORD AVAILABLE IN DICTIONARY';
    else
        k=0;
        if ~isempty(strr1)
            l=length(TEMP);
            for i=1:l
                stemp=TEMP{i};
                if strcmp(strr1,stemp)
                    k=1;
                end
            end
        end
    end
    if flag1 ~=1
    if k==1
        FID = fopen('samp.txt', 'a');
 CStr = textread('samp.txt', '%s', 'delimiter', '\n');
 fclose(FID);
l=  length(CStr);
CStr{l+1}=stemp;
dlmwrite('samp.txt',1);
xlswrite('samp.txt',CStr);
 
        str11='WORD SUCCESSFULLY ADDED';
        
    else
        str11='NO PHONETIC DATA AVAILABLE';
    end
    end
    htext2 = uicontrol('Style','text','String',str11,'Max',3,'Min',0,'Position',[260,100,220,25]);
end 
end
    
