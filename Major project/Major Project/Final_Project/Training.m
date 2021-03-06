function Training
global str1;
global str2;
f = figure('Visible','off','Position',[420,650,600,450]);
hrecord = uicontrol('Style','pushbutton','String','RECORD','Position',[440,260,70,25],'Callback',{@RECORD_Callback}); 
hsample = uicontrol('Style','pushbutton','String','SAMPLE','Position',[65,65,70,25],'Callback',{@SAMPLE_Callback});
htest = uicontrol('Style','pushbutton','String','TEST','Position',[445,65,70,25],'Callback',{@TEST_Callback});
hpopRec = uicontrol('Style','popupmenu','String',{'APTITUDE','CAKE','CITY','MULTIPLE','NATION','PROBABLE','SIMPLY'},'Position',[50,260,100,25],'Callback',{@popup_record_word_Callback});
hpopTest = uicontrol('Style','popupmenu','String',{'SEE','TEE','MUL','MULTI','PAL','KE','KA','NE','TION','AP','APTI','TUDE','SIM','PLY','PRO','BE','BAL'},'Position',[430,100,100,25],'Callback',{@popup_SOUND_Callback});
htext = uicontrol('Style','text','String','*4.TEST GROUP OF PHONEMES *','Position',[400,140,180,20]);
htext1 = uicontrol('Style','text','String','*1.SELECT WORD*','Position',[50,310,100,20]);
htext2 = uicontrol('Style','text','String','TRAINING','Position',[250,380,80,20]);
htext3 = uicontrol('Style','text','String','*2.LISTEN SAMPLE CAREFULLY*','Position',[15,140,180,20]);
htext4 = uicontrol('Style','text','String','*3.RECORD SELECTED WORD*','Position',[400,310,180,20]);
set([f,hrecord,htest,htext,hpopTest,hpopRec,htext1,hsample,htext2,htext3,htext4],'Units','normalized'); 
set(f,'Name','Training')
% Move the GUI to the center of the screen.
movegui(f,'center')
% Make the GUI visible. 
set(f,'Visible','on');


function popup_record_word_Callback(hObject,~)
val = get(hObject,'Value'); 
string_list = get(hObject,'String');
str1=string_list{val};
switch str1
   case 'CITY'
       A={'SEE','TEE'};
       hpopTest = uicontrol('Style','popupmenu','String',A,'Position',[430,100,100,25],'Callback',{@popup_SOUND_Callback});

           
        case 'CAKE'
            hpopTest = uicontrol('Style','popupmenu','String',{'KE','KA'},'Position',[430,100,100,25],'Callback',{@popup_SOUND_Callback});

            
        case 'NATION'
            hpopTest = uicontrol('Style','popupmenu','String',{'NE','TION'},'Position',[430,100,100,25],'Callback',{@popup_SOUND_Callback});

            
        case 'SIMPLY'
         hpopTest = uicontrol('Style','popupmenu','String',{'SIM','PLY'},'Position',[430,100,100,25],'Callback',{@popup_SOUND_Callback});
   
        case 'PROBABLE'
           hpopTest = uicontrol('Style','popupmenu','String',{'PRO','BE','BAL'},'Position',[430,100,100,25],'Callback',{@popup_SOUND_Callback});
 
        case 'APTITUDE'
           hpopTest = uicontrol('Style','popupmenu','String',{'AP','APTI','TUDE'},'Position',[430,100,100,25],'Callback',{@popup_SOUND_Callback});
 
        case 'MULTIPLE'
            hpopTest = uicontrol('Style','popupmenu','String',{'MUL','MULTI','PAL'},'Position',[430,100,100,25],'Callback',{@popup_SOUND_Callback});

    otherwise
        hpopTest = uicontrol('Style','popupmenu','String',{'SEE','TEE','MUL','MULTI','PAL','KE','KA','NE','TION','AP','APTI','TUDE','SIM','PLY','PRO','BE','BAL'},'Position',[430,100,100,25],'Callback',{@popup_SOUND_Callback});

            
end
% List=Update_List(str);
% hpopTest = uicontrol('Style','popupmenu','String',List,'Position',[430,100,100,25],'Callback',{@popup_SOUND_Callback});
end
function popup_SOUND_Callback(hObject,~)
val = get(hObject,'Value'); 
string_list = get(hObject,'String');
str2 = string_list{val};
end
function RECORD_Callback(~,~) 
 record_word(str1);  
end
function TEST_Callback(~,~) 
answ=T2S(str2);   
sound(answ,16000);
end

function SAMPLE_Callback(~,~)
    switch str1
        case 'CITY'
            city=wavread('S_CITY.wav');
            sound(city,16000);
        case 'CAKE'
            cake=wavread('S_CAKE.wav');
            sound(cake,16000);
        case 'NATION'
            nation=wavread('S_NATION.wav');
            sound(nation,16000);
        case 'SIMPLY'
            simply=wavread('S_SIMPLY.wav');
            sound(simply,16000);
        case 'PROBABLE'
            probable=wavread('S_PROBABLE.wav');
            sound(probable,16000);
        case 'APTITUDE'
            aptitude=wavread('S_APTITUDE.wav');
            sound(aptitude,16000);
        case 'MULTIPLE'
            multiple=wavread('S_MULTIPLE.wav');
            sound(multiple,16000);
    end
end

end