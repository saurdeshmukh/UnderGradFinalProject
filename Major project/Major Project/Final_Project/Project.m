function Project
global str1;
global st;
global In;
global str2;
global str;
str={};
global c;
c='';
global strr;
strr='';
global phon;
global phoneme;
global rec;
 FID = fopen('samp.txt', 'rb');
 In = textread('samp.txt', '%s', 'delimiter', '\n');
 fclose(FID);
str2={'APPLE'};
f = figure('Visible','off','Position',[620,850,800,650]);
htraining = uicontrol('Style','pushbutton','String','TRAINING','Position',[360,490,70,25],'Callback',{@TRA_Callback}); 
hsamData = uicontrol('Style','pushbutton','String','RECORD','Position',[270,330,70,25],'Callback',{@SAMPLE_DATA_Callback});
hedittext=uicontrol(f,'Style','edit','String',st,'Max',1,'Min',0,'Position',[450,330,70,25],'KeyPressFcn',{@Key_Press_Callback});
hpopRec = uicontrol('Style','popupmenu','String',str2,'Position',[360,260,100,25],'Callback',{@popup_record_word_Callback});
htext = uicontrol('Style','text','String','****************','Position',[310,420,180,20]);
htext1 = uicontrol('Style','text','String','****TRAINING MODEL****','Position',[300,550,200,20]);
htext2 = uicontrol('Style','text','String','ADD NEW WORD','Position',[300,160,200,20]);
haddData = uicontrol('Style','pushbutton','String','ADD','Position',[360,50,100,25],'Callback',{@ADD_DATA_Callback});
set([f,htraining,hsamData,hpopRec,htext,htext1,hedittext,htext2,haddData],'Units','normalized'); 
set(f,'Name','PROJECT');
% Move the GUI to the center of the screen.
movegui(f,'center')
% Make the GUI visible. 
set(f,'Visible','on');
function Key_Press_Callback(hObject,eventdata)
     FID = fopen('samp.txt', 'rb');
 In = textread('samp.txt', '%s', 'delimiter', '\n');
 fclose(FID);

%     disp(eventdata.Character);
%     disp(eventdata.Modifier);
 c=eventdata.Key;
 c=upper(c);
%     str=Modify_String(c,strr,In_String);
if (~strcmp(c,'RETURN'))&&(~strcmp(c,'BACKSPACE'))
   strr=strcat(strr,c);
end
if (strcmp(c,'BACKSPACE'))
%     if isempty(strr)
    l=length(strr);
    strr=strr(1:l-1);
%     end
end
[str]=dict_form(strr);
if isempty(strr)
    str={'APPLE'};
end

if (isempty(str))&&(~isempty(strr))
    str={'NO WORD'};
end

     hpopRec = uicontrol('Style','popupmenu','String',str,'Position',[360,260,100,25],'Callback',{@popup_record_word_Callback});  
end
    function ADD_DATA_Callback(~,~)
        ADD_WORD;
        FID = fopen('samp.txt', 'rb');
In = textread('samp.txt', '%s', 'delimiter', '\n');
fclose(FID);
hpopRec = uicontrol(f,'Style','popupmenu','String',In,'Position',[360,260,100,25],'Callback',{@popup_record_word_Callback});
        
    end
    function TRA_Callback(~,~)
         Training;
    end
        
    function SAMPLE_DATA_Callback(~,~)
       phon=recording1();
       wavwrite(phon,16000,16,'phon.wav');
       phon='phon.wav';
       phoneme=SVM_S2T(phon);
       strr=phoneme;
       [str]=dict_form(strr);
        hpopRec = uicontrol('Style','popupmenu','String',str,'Position',[360,260,100,25],'Callback',{@popup_record_word_Callback});
    end
    
    function popup_record_word_Callback(hObject,~)
       val = get(hObject,'Value'); 
string_list = get(hObject,'String');
str1= string_list{val};
rec=T2S(str1); 
plot_Graph(rec);
    end
function plot_Graph(y)

    switch str1
        case 'CITY'
            x=wavread('S_CITY.wav');
            
        case 'CAKE'
            x=wavread('S_CAKE.wav');
           
        case 'NATION'
            x=wavread('S_NATION.wav');
            
        case 'SIMPLY'
            x=wavread('S_SIMPLY.wav');
           
        case 'PROBABLE'
            x=wavread('S_PROBABLE.wav');
            
        case 'APTITUDE'
            x=wavread('S_APTITUDE.wav');
           
        case 'MULTIPLE'
            x=wavread('S_MULTIPLE.wav');
    end
            
    figure 
    subplot(1,2,1)
title('Sample Word Plot');
    plot(x);
    subplot(1,2,2)
title('Record Word Plot');
    plot(y);
 end
end