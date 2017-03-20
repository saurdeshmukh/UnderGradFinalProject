

%global selected_string1 
%global selected_string2
%global selected_string3;
function newrecord
global selected_string1; 
global selected_string2;
global selected_string3;
f = figure('Visible','off','Position',[360,500,450,285]);
hplay = uicontrol('Style','pushbutton','String','PLAY','Position',[315,170,70,25],'Callback',{@T2S_Callback});
hrecord = uicontrol('Style','pushbutton','String','RECORD','Position',[50,130,70,25],'Callback',{@record_word_Callback}); 
hsample = uicontrol('Style','pushbutton','String','SAMPLE','Position',[50,170,70,25],'Callback',{@sample_Callback});
htest = uicontrol('Style','pushbutton','String','TEST','Position',[50,70,70,25],'Callback',{@SOUND_Callback});
hpopPlay = uicontrol('Style','popupmenu','String',{'APPLE','APPLICABLE','APPLICATION','APTITUDE','BATIK','BASTION','CABLE','CAKE','CITY','MULL','MULTIPLE','MULTIPLICATION','MULTIPLICITY','MULTITUDE','MULTISIM','NATION','PROBABLE','PROBATION','PRONATION','SEA','SEE','SEEK','SICK','SIMPLE','SIMPLICITY','SIMPLY','TICK','TIPPLE','TITI'},'Position',[315,200,100,25],'Callback',{@popup_T2S_Callback});
hpopRec = uicontrol('Style','popupmenu','String',{'APTITUDE','CAKE','CITY','MULTIPLE','NATION','PROBABLE','SIMPLY'},'Position',[50,200,100,25],'Callback',{@popup_record_word_Callback});
hpopTest = uicontrol('Style','popupmenu','String',{'SEE','TEE','MUL','MULTI','PAL','KE','KA','NE','TION','AP','APTI','TUDE','SIM','PLY','PRO','BE','BAL'},'Position',[50,100,100,25],'Callback',{@popup_SOUND_Callback});
htext = uicontrol('Style','text','String','Text to Speech','Position',[300,230,150,20]);
htext1 = uicontrol('Style','text','String','Training','Position',[50,230,100,20]);
set([f,hplay,hrecord,htest,hpopPlay,htext,hpopTest,hpopRec,htext1,hsample],'Units','normalized');
set(f,'Name','T2S GUI')
movegui(f,'center')
set(f,'Visible','on')
function popup_T2S_Callback(hObject, ~, ~)

val = get(hObject,'Value'); 
string_list = get(hObject,'String');
selected_string1 = string_list{val};

end
function popup_record_word_Callback(hObject,~)
val = get(hObject,'Value'); 
string_list = get(hObject,'String');
selected_string2 = string_list{val};
switch selected_string2
   case 'CITY'
       A={'SEE','TEE'};
       hpopTest = uicontrol('Style','popupmenu','String',A,'Position',[50,100,100,25],'Callback',{@popup_SOUND_Callback});

           
        case 'CAKE'
            hpopTest = uicontrol('Style','popupmenu','String',{'KE','KA'},'Position',[50,100,100,25],'Callback',{@popup_SOUND_Callback});

            
        case 'NATION'
            hpopTest = uicontrol('Style','popupmenu','String',{'NE','TION'},'Position',[50,100,100,25],'Callback',{@popup_SOUND_Callback});

            
        case 'SIMPLY'
         hpopTest = uicontrol('Style','popupmenu','String',{'SIM','PLY'},'Position',[50,100,100,25],'Callback',{@popup_SOUND_Callback});
   
        case 'PROBABLE'
           hpopTest = uicontrol('Style','popupmenu','String',{'PRO','BE','BAL'},'Position',[50,100,100,25],'Callback',{@popup_SOUND_Callback});
 
        case 'APTITUDE'
           hpopTest = uicontrol('Style','popupmenu','String',{'AP','APTI','TUDE'},'Position',[50,100,100,25],'Callback',{@popup_SOUND_Callback});
 
        case 'MULTIPLE'
            hpopTest = uicontrol('Style','popupmenu','String',{'MUL','MULTI','PAL'},'Position',[50,100,100,25],'Callback',{@popup_SOUND_Callback});

    otherwise
        hpopTest = uicontrol('Style','popupmenu','String',{'SEE','TEE','MUL','MULTI','PAL','KE','KA','NE','TION','AP','APTI','TUDE','SIM','PLY','PRO','BE','BAL'},'Position',[50,100,100,25],'Callback',{@popup_SOUND_Callback});

            
end


end
function popup_SOUND_Callback(hObject,~)
val = get(hObject,'Value'); 
string_list = get(hObject,'String');
selected_string3 = string_list{val}; 

end
function T2S_Callback(~,~)  
T2S(selected_string1);
end
function record_word_Callback(~,~) 
    switch selected_string2
    case 'CITY'
        [y]=recording();
        n=1;
        while(abs(y(n))<0.005)
        n=n+1;
        end   
        SEE=y(n:n+5000);
        wavwrite(SEE,16000,'SEE.wav');
        TEE=y(n+5000:n+10000);
        wavwrite(TEE,16000,'TEE.wav');
        CITY=[SEE ;TEE];
        z=CITY;
        wavwrite(CITY,16000,'CITY.wav');
        
    case 'MULTIPLE'
        [y]=recording();
        n=1;
        while(abs(y(n))<0.01)
        n=n+1;
        end   
        MULTI=y(n:n+7500);
        
        wavwrite(MULTI,16000,'MULTI.wav');
        MUL=y(n:n+3500);
        wavwrite(MUL,16000,'MUL.wav');
        PAL=y(n+7500:n+11500);
        
       
        wavwrite(PAL,16000,'PAL.wav');
        MULTIPLE=[MULTI ;PAL];
        z=MULTIPLE;
        wavwrite(MULTIPLE,16000,'MULTIPLE.wav');
        %end of case MULTIPLE
    case 'CAKE'
        [y]=recording();
        n=1;
        while(abs(y(n))<0.005)
        n=n+1;
        end   
        KE=y(n:n+6000);
        wavwrite(KE,16000,'KE.wav');
        %end of word KE
        n=n+4000;
        KA=y(n:n+4000);
        wavwrite(KA,16000,'KA.wav');
         CAKE=[KE ;KA];
         z=CAKE;
        wavwrite(CAKE,16000,'CAKE.wav');
      %end of word NA

    case 'NATION'
        [y]=recording();
        n=1;
        while(abs(y(n))<0.005)
        n=n+1;
        end   
        NE=y(n:n+3000);
        wavwrite(NE,16000,'NE.wav');
        %end of word GE
        n=n+3000;
        TION=y(n:n+5000);
        wavwrite(TION,16000,'TION.wav');
        
         NATION=[NE ;TION];
         z=NATION;
        wavwrite(NATION,16000,'NATION.wav');
%       %end of word TION
%       %end of case NATION
      case 'APTITUDE'
        [y]=recording();
        n=1;
        while(abs(y(n))<0.01)
        n=n+1;
        end   
        APTI=y(n:n+6000);
        wavwrite(APTI,16000,'APTI.wav');
        %end of word APTI
        
        AP=y(n:n+2000);
        wavwrite(AP,16000,'AP.wav');
      %end of word AP
      n=n+6000;
        TUDE=y(n:n+4000);
        wavwrite(TUDE,16000,'TUDE.wav');
        
         APTITUDE=[APTI ;TUDE];
         z=APTITUDE;
        wavwrite(APTITUDE,16000,'APTITUDE.wav');
      %end of word TUDE
      %end of case APTITUDE
       case 'SIMPLY'
        [y]=recording();
        n=1;
        while(abs(y(n))<0.01)
        n=n+1;
        end   
        SIM=y(n:n+4000);
        wavwrite(SIM,16000,'SIM.wav');
        %end of word GE
        n=n+4000;
        PLY=y(n:n+4000);
        wavwrite(PLY,16000,'PLY.wav');
        
         SIMPLY=[SIM ;PLY];
         z=SIMPLY;
        wavwrite(SIMPLY,16000,'SIMPLY.wav');
%       end of case SIMPLY
case 'PROBABLE'
        [y]=recording();
        n=1;
        while(abs(y(n))<0.01)
        n=n+1;
        end   
        PRO=y(n:n+2000);
        wavwrite(PRO,16000,'PRO.wav');
        %end of word PRO
        n=n+2000;
        BE=y(n:n+2000);

        wavwrite(BE,16000,'BE.wav');
      %end of word BE
       n=n+2000;
        BAL=y(n:n+3000);
        wavwrite(BAL,16000,'BAL.wav');
        
         PROBABLE=[PRO ;BE ;BAL];
         z=PROBABLE;
        wavwrite(PROBABLE,16000,'PROBABLE.wav');
      %end of word BAL
      %end of case PROABABLE

    otherwise
        fprintf('ENTER VALID WORD.\n');
    end
    plot_Graph(z);
end
function SOUND_Callback(~,~) 
   switch selected_string3
        case 'SEE'
            see=wavread('SEE.wav');
            sound(see,16000);
        case 'TEE'
            tee=wavread('TEE.wav');
            sound(tee,16000);
        case 'MULTI'
            multi=wavread('MULTI.wav');
            sound(multi,16000);
        case 'MUL'
            mul=wavread('MUL.wav');
            sound(mul,16000);
        case 'PAL'
            pal=wavread('PAL.wav');
            sound(pal,16000);
        case 'KE'
            ke=wavread('KE.wav');
            sound(ke,16000);
        case 'KA'
            ka=wavread('KA.wav');
            sound(ka,16000);
        case 'NE'
            ne=wavread('NE.wav');
            sound(ne,16000);
        case 'TION'
            tion=wavread('TION.wav');
            sound(tion,16000);
        case 'AP'
            ap=wavread('AP.wav');
            sound(ap,16000);
        case 'APTI'
            apti=wavread('APTI.wav');
            sound(apti,16000);
        case 'TUDE'
            tude=wavread('TUDE.wav');
            sound(tude,16000);
        case 'SIM'
            sim=wavread('SIM.wav');
            sound(sim,16000);
        case 'PLY'
            ply=wavread('PLY.wav');
            sound(ply,16000);
        case 'PRO'
            pro=wavread('PRO.wav');
            sound(pro,16000);
        case 'BE'
            be=wavread('BE.wav');
            sound(be,16000);
        case 'BAL'
            bal=wavread('BAL.wav');
            sound(bal,16000);
    end
            
end
function plot_Graph(y)

    switch selected_string2
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
function [y]=recording()
%     global notice 
fs=16000;		% Sampling rate 
nbits=16;
nChannels=1;
duration=3;		% Recording duration
arObj=audiorecorder(fs, nbits, nChannels);
fprintf('Press any key to start 3 seconds of recording...'); pause
fprintf('Recording...');
recordblocking(arObj, duration);
fprintf('Finished recording.');
% fprintf('Press any key to play the recording...'); pause; fprintf('\n');
% play(arObj);
%fprintf('Plotting the waveform...\n');
y=getaudiodata(arObj);	% Get audio sample data
sound(y,16000);
		% Plot the waveform


end
    function sample_Callback(~,~)
        switch selected_string2
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