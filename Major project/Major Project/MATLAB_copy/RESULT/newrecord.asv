

%global selected_string1 
%global selected_string2
%global selected_string3;
function newrecord
clc;
clear all;
close all;
%global selected_string1 
%global selected_string2
%global selected_string3;
% Create and then hide the GUI as it is being constructed. 
f = figure('Visible','off','Position',[360,500,450,285]);
% notice='';
hplay = uicontrol('Style','pushbutton','String','PLAY','Position',[315,170,70,25],'Callback',{@T2S_Callback});
hrecord = uicontrol('Style','pushbutton','String','RECORD','Position',[50,130,70,25],'Callback',{@record_word_Callback}); 
hsample = uicontrol('Style','pushbutton','String','SAMPLE','Position',[50,170,70,25],'Callback',{@sample_Callback});
htest = uicontrol('Style','pushbutton','String','TEST','Position',[50,70,70,25],'Callback',{@SOUND_Callback});
hpopPlay = uicontrol('Style','popupmenu','String',{'APPLE','APPLICABLE','APPLICATION','APTITUDE','BATIK','BASTION','CABLE','CAKE','CITY','MULL','MULTIPLE','MULTIPLICATION','MULTIPLICITY','MULTITUDE','MULTISIM','NATION','PROBABLE','PROBATION','PRONATION','SEA','SEE','SEEK','SICK','SIMPLE','SIMPLICITY','SIMPLY','TICK','TIPPLE','TITI'},'Position',[315,200,100,25],'Callback',{@popup_T2S_Callback});
hpopRec = uicontrol('Style','popupmenu','String',{'APTITUDE','CAKE','CITY','MULTIPLE','NATION','PROBABLE','SIMPLY'},'Position',[50,200,100,25],'Callback',{@popup_record_word_Callback});
hpopTest = uicontrol('Style','popupmenu','String',{'SEE','TEE','MUL','MULTI','PAL','KE','KA','NE','TION','AP','APTI','TUDE','SIM','PLY','PRO','BE','BAL'},'Position',[50,100,100,25],'Callback',{@popup_SOUND_Callback});
htext = uicontrol('Style','text','String','Text to Speech','Position',[300,230,150,20]);
htext1 = uicontrol('Style','text','String','Training','Position',[50,230,100,20]);
% hnotice = uicontrol('Style','text','String',notice,'Position',[180,10,250,80]);
% ha = axes('Units','pixels','Position',[50,60,200,185]);
% align([hsurf,hmesh,hcontour,htext,hpopup],'Center','None');
% Initialize the GUI. 
% Change units to normalized so components resize automatically. 
set([f,hplay,hrecord,htest,hpopPlay,htext,hpopTest,hpopRec,htext1,hsample],'Units','normalized');
% Generate the data to plot. 
% peaks_data = peaks(35);
% membrane_data = membrane;
% [x,y] = meshgrid(-8:.5:8);
% r = sqrt(x.^2+y.^2) + eps;
% sinc_data = sin(r)./r;
% % Create a plot in the axes.
% current_data = peaks_data;
% surf(current_data);
% Assign the GUI a name to appear in the window title.
set(f,'Name','T2S GUI')
% Move the GUI to the center of the screen.
movegui(f,'center')
% Make the GUI visible. 
set(f,'Visible','on')
% global selected_string1 
% global selected_string2
% global selected_string3;
function popup_T2S_Callback(hObject, ~, ~)
% % Determine the selected data set.
global selected_string1 
global selected_string2
global selected_string3;
val = get(hObject,'Value'); 
string_list = get(hObject,'String');
selected_string1 = string_list{val};
% str = get(source, 'String')
% val = get(source,'Value');
% % Set current data to the selected data set.
% a=str{val}
% switch a
% case 'SEE' % User selects Peaks.
% selected_string1 = 'SEE';
% case 'SEEK' % User selects Membrane.
% selected_string1 = 'SEEK';
% case 'SICK' % User selects Sinc.
% selected_string1 = 'SICK';
% val = get(hObject,'Value'); 
% string_list = get(hObject,'String');
% selected_string1 = string_list{val}; % Convert from cell array % to strin
end
function popup_record_word_Callback(hObject,~)
% Determine the selected data set.
global selected_string1 
global selected_string2
global selected_string3;



val = get(hObject,'Value'); 
string_list = get(hObject,'String');
selected_string2 = string_list{val}; % Convert from cell array % to strin
% % val = get(source,'Value');
% % Set current data to the selected data set.
% switch str{val};
% case 'Peaks' % User selects Peaks.
% current_data = peaks_data;
% case 'Membrane' % User selects Membrane.
% current_data = membrane_data;
% case 'Sinc' % User selects Sinc.
% current_data = sinc_data;
% end
end
function popup_SOUND_Callback(hObject,~)
% Determine the selected data set.
global selected_string1 
global selected_string2
global selected_string3



val = get(hObject,'Value'); 
string_list = get(hObject,'String');
selected_string3 = string_list{val}; 

% % val = get(source,'Value');
% % Set current data to the selected data set.
% switch str{val};
% case 'Peaks' % User selects Peaks.
% current_data = peaks_data;
% case 'Membrane' % User selects Membrane.
% current_data = membrane_data;
% case 'Sinc' % User selects Sinc.
% current_data = sinc_data;
% end
end
function T2S_Callback(~,~) % Display surf plot of the currently selected data. 
global selected_string1 
global selected_string2
global selected_string3;

    %global selected_string1 
%global selected_string2
%global selected_string3;



switch selected_string1
    
    case 'CITY'
        city=wavread('CITY.wav');
        sound(city,16000);
        %play('CITY.wav');
    case 'CAKE'
        cake=wavread('CAKE.wav');
        sound(cake,16000);
        %play('CAKE.wav');   
    case 'NATION'
        nation=wavread('NATION.wav');
        sound(nation,16000);
        %play('NATION.wav');   
    case 'APTITUDE'
        aptitude=wavread('APTITUDE.wav');
        sound(aptitude,16000);
        %play('APTITUDE.wav');     
    case 'SIMPLY'
        simply=wavread('SIMPLY.wav');
        sound(simply,16000);
        %play('SIMPLY.wav');
    case 'PROBABLE'
        probable=wavread('probable.wav');
        sound(probable,16000);
       % play('PROBABLE.wav');
    case 'SEE'
        see=wavread('SEE.wav');
        sound(see,16000);
        %play('SEE.wav');
        %end of word SEE
    case 'SICK'
        %SICK=SEE+KA
        SEE=wavread('SEE.wav');
        KA=wavread('KA.wav');
        sick=[SEE ;KA];
        sound(sick,16000);
        %wavwrite(sick,16000,'SICK.wav');
        %play('SICK.wav');
        %end of word SICK
    case 'SEEK'
        %SEEK=SEE+KA
        SEE=wavread('SEE.wav');
        KA=wavread('KA.wav');
        seek=[SEE ;KA];
        sound(seek,16000);
        %wavwrite(seek,16000,'SEEK.wav');
        %play('SEEK.wav');
        %end of word SEEK
    case 'MULTIPLE'
        multiple=wavread('MULTIPLE.wav');
        sound(multiple,16000);
        %play('MULTIPLE.wav');
    case 'MULTIPLICATION'
        %MULTIPLICATION=MULTI+PLY+KE+TION
        MULTI=wavread('MULTI.wav');
        PLY=wavread('PLY.wav');
        KE=wavread('KE.wav');
        TION=wavread('TION.wav');
        multiplication=[MULTI ;PLY ;KE ;TION];
        sound(multiplication,16000);
        %wavwrite(multiplication,16000,'MULTIPLICATION.wav');
        %play('MULTIPLICATION.wav');
        %end of word MULTIPLICATION
    case 'MULTIPLICITY'
        %MULTIPLICATION=MULTI+PLY+CITY
        MULTI=wavread('MULTI.wav');
        PLY=wavread('PLY.wav');
        CITY=wavread('CITY.wav');
        multiplicity=[MULTI ;PLY ;CITY];
        sound(multiplicity,16000);
        %wavwrite(multiplicity,16000,'MULTIPLICITY.wav');
        %play('MULTIPLICITY.wav');
        %end of word MULTIPLICITY
    case 'MULTITUDE'
        %MULTITUDE=MULTI+TUDE
        MULTI=wavread('MULTI.wav');
        TUDE=wavread('TUDE.wav');
        multitude=[MULTI ;TUDE];
        sound(multitude,16000);
        %wavwrite(multitude,16000,'MULTITUDE.wav');
        %play('MULTITUDE.wav');
        %end of word MULTITUDE
    case 'MULTISIM'
        %MULTISIM=MULTI+SIM
        MULTI=wavread('MULTI.wav');
        SIM=wavread('SIM.wav');
        multisim=[MULTI ;SIM];
        sound(multisim,16000);
        %wavwrite(multisim,16000,'MULTISIM.wav');
        %play('MULTISIM.wav');
        %end of word MULTISIM
    case 'APPLE'
        %APPLE=AP+PAL
        AP=wavread('AP.wav');
        PAL=wavread('PAL.wav');
        apple=[AP ;PAL];
        sound(apple,16000);
        %wavwrite(apple,16000,'APPLE.wav');
        %play('APPLE.wav');
        %end of word APPLE
    case 'APPLICATION'
        %APPLICATION=AP+PLY+KE+TION
        AP=wavread('AP.wav');
        PLY=wavread('PLY.wav');
        KE=wavread('KE.wav');
        TION=wavread('TION.wav');
        application=[AP ;PLY ;KE ;TION];
        sound(application,16000);
        %wavwrite(application,16000,'APPLICATION.wav');
        %play('APPLICATION.wav');
        %end of word APPLICATION
    case 'PROBATION'
        %PROBATION=PRO+BE+TION
        PRO=wavread('PRO.wav');
        BE=wavread('BE.wav');
        TION=wavread('TION.wav');
        probation=[PRO ;BE ;TION];
        sound(probation,16000);
        %wavwrite(probation,16000,'PROBATION.wav');
        %play('PROBATION.wav');
        %end of word PROBATION
    case 'APPLICABLE'
        %APPLICABLE=AP+PLY+KE+BALs
        AP=wavread('AP.wav');
        PLY=wavread('PLY.wav');
        KE=wavread('KE.wav');
        BAL=wavread('BAL.wav');
        applicable=[AP ;PLY ;KE ;BAL];
        sound(applicable,16000);
        %wavwrite(applicable,16000,'APPLICABLE.wav');
        %play('APPLICABLE.wav');
        %end of word APPLICABLE
    case 'SEA'
        %SEA=SEE
        sea=wavread('SEE.wav');
        sound(sea,16000);
        %wavwrite(sea,16000,'SEA.wav');
        %play('SEA.wav');
    case 'BASTION' 
        %BASTION=BE+TION
        BE=wavread('BE.wav');
        TION=wavread('TION.wav');
        bastion=[BE ;TION];
        sound(bastion,16000);
        %wavwrite(bastion,16000,'BASTION.wav');
        %play('BASTION.wav');
    case 'PRONATION'
        %PRONATION=PRO+NATION
        PRO=wavread('PRO.wav');
        NATION=wavread('NATION.wav');
        pronation=[PRO ;NATION];
        sound(pronation,16000);
        %wavwrite(pronation,16000,'PRONATION.wav');
        %play('PRONATION.wav');
    case 'SIMPLICITY'
        %SIMPLICITY=SIMPLY+CITY
        SIMPLY=wavread('SIMPLY.wav');
        CITY=wavread('CITY.wav');
        simplicity=[SIMPLY ;CITY];
        sound(simplicity,16000);
        %wavwrite(simplicity,16000,'SIMPLICITY.wav');
        %play('SIMPLICITY.wav');
    case 'BATIK'
        %BATIK=BE+TEE+KA
        BE=wavread('BE.wav');
        TEE=wavread('TEE.wav');
        KA=wavread('KA.wav');
        batik=[BE ;TEE ;KA];
        sound(batik,16000);
        %wavwrite(batik,16000,'BATIK.wav');
        %play('BATIK.wav');
    case 'SIMPLE'
        %SIMPLE=SIM+PAL
        SIM=wavread('SIM.wav');
        PAL=wavread('PAL.wav');
        simple=[SIM ;PAL];
        sound(simple,16000);
        %wavwrite(simple,16000,'SIMPLE.wav');
        %play('SIMPLE.wav');
    case 'MULL'
        %SIMPLE=SIM+PAL
        MUL=wavread('MUL.wav');
        sound(MUL,16000);
        %wavwrite(MUL,16000,'MULL.wav');
        %play('SIMPLE.wav');
    case 'CABLE'
        %CABLE=KE+BAL
        KE=wavread('KE.wav');
        BAL=wavread('BAL.wav');
        cable=[KE ;BAL];
        sound(cable,16000);
        %wavwrite(cable,16000,'cable.wav');
        %play('cable.wav');
    case 'TICK'
        %TICK=TEE+KA
        TEE=wavread('TEE.wav');
        KA=wavread('KA.wav');
        tick=[TEE ;KA];
        sound(tick,16000);
        %wavwrite(tick,16000,'tick.wav');
        %play('tick.wav');
    case 'TIPPLE'
        %TIPPLE=TEE+PAL
        TEE=wavread('TEE.wav');
        PAL=wavread('PAL.wav');
        tipple=[TEE ;PAL];
        sound(tipple,16000);
        %wavwrite(tipple,16000,'TIPPLE.wav');
        %play('TIPPLE.wav');
    case 'TITI'
        %TITI=TEE+TEE
        TEE=wavread('TEE.wav');
        titi=[TEE ;TEE];
        sound(titi,16000);
        %wavwrite(titi,16000,'TITI.wav');
        %play('TITI.wav');
        
    otherwise
        fprintf('ENTER VALID WORD FROM SIMULTANEOUSLY,CYCLONE.\n');
end
end
function record_word_Callback(~,~) % Display mesh plot of the currently selected data.
global selected_string1 
global selected_string2
global selected_string3
    switch selected_string2
    case 'CITY'
        [city]=recording();
        n=1;
        while(abs(city(n))<0.005)
        n=n+1;
        end   
        SEE=city(n:n+4000);
        max=0;
        for i=1:4000
            if(abs(SEE(i))>max)
                max=abs(SEE(i));
            end
        end
        for i=1:4000
            SEE(i)=SEE(i)/max;
        end
        %plot(SEE);
        %sound(SEE,16000);
        wavwrite(SEE,16000,'SEE.wav');
        TEE=city(n+4000:n+7000);
         max=0;
        for i=1:3000
            if(abs(TEE(i))>max)
                max=abs(TEE(i));
            end
        end
        for i=1:3000
            TEE(i)=TEE(i)/max;
        end
        wavwrite(TEE,16000,'TEE.wav');
        CITY=[SEE ;TEE];
        wavwrite(CITY,16000,'CITY.wav');
        
        %end of case SIGN
    case 'MULTIPLE'
        [multiple]=recording();
        n=1;
        while(abs(multiple(n))<0.01)
        n=n+1;
        end   
        MULTI=multiple(n:n+7500);
        max=0;
        for i=1:7500
            if(abs(MULTI(i))>max)
                max=abs(MULTI(i));
            end
        end
        for i=1:7500
            MULTI(i)=MULTI(i)/max;
        end
        
        %plot(MUL);
        %sound(MUL,16000);
        wavwrite(MULTI,16000,'MULTI.wav');
        MUL=multiple(n:n+3500);
        max=0;
        for i=1:3500
            if(abs(MUL(i))>max)
                max=abs(MUL(i));
            end
        end
        for i=1:3500
            MUL(i)=MUL(i)/max;
        end
        
        %plot(MUL);
        %sound(MUL,16000);
        wavwrite(MUL,16000,'MUL.wav');
        PAL=multiple(n+7500:n+11500);
        max=0;
        for i=1:4000
            if(abs(PAL(i))>max)
                max=abs(PAL(i));
            end
        end
        for i=1:4000
            PAL(i)=PAL(i)/max;
        end
        
        %plot(PAL);
        %sound(PAL,16000);
        wavwrite(PAL,16000,'PAL.wav');
        MULTIPLE=[MULTI ;PAL];
        wavwrite(MULTIPLE,16000,'MULTIPLE.wav');
        %end of case MULTIPLE
    case 'CAKE'
        [cake]=recording();
        n=1;
        while(abs(cake(n))<0.005)
        n=n+1;
        end   
        KE=cake(n:n+4000);
        max=0;
        for i=1:4000
            if(abs(KE(i))>max)
                max=abs(KE(i));
            end
        end
        for i=1:4000
            KE(i)=KE(i)/max;
        end
        wavwrite(KE,16000,'KE.wav');
        %end of word KE
        n=n+4000;
        KA=cake(n:n+4000);
        max=0;
        for i=1:4000
            if(abs(KA(i))>max)
                max=abs(KA(i));
            end
        end
        for i=1:4000
            KA(i)=KA(i)/max;
        end
        wavwrite(KA,16000,'KA.wav');
         CAKE=[KE ;KA];
        wavwrite(CAKE,16000,'CAKE.wav');
      %end of word NA
      %end of case TEN
    case 'NATION'
        [nation]=recording();
        n=1;
        while(abs(nation(n))<0.005)
        n=n+1;
        end   
        NE=nation(n:n+3000);
        max=0;
        for i=1:3000
            if(abs(NE(i))>max)
                max=abs(NE(i));
            end
        end
        for i=1:3000
            NE(i)=NE(i)/max;
        end
        wavwrite(NE,16000,'NE.wav');
        %end of word GE
        n=n+3000;
        TION=nation(n:n+5000);
        max=0;
        for i=1:5000
            if(abs(TION(i))>max)
                max=abs(TION(i));
            end
        end
        for i=1:5000
            TION(i)=TION(i)/max;
        end
        wavwrite(TION,16000,'TION.wav');
        
         NATION=[NE ;TION];
        wavwrite(NATION,16000,'NATION.wav');
%       %end of word TION
%       %end of case NATION
      case 'APTITUDE'
        [aptitude]=recording();
        n=1;
        while(abs(aptitude(n))<0.01)
        n=n+1;
        end   
        APTI=aptitude(n:n+6000);
        max=0;
        for i=1:6000
            if(abs(APTI(i))>max)
                max=abs(APTI(i));
            end
        end
        for i=1:6000
            APTI(i)=APTI(i)/max;
        end
        wavwrite(APTI,16000,'APTI.wav');
        %end of word APTI
        
        AP=aptitude(n:n+2000);
        max=0;
        for i=1:2000
            if(abs(AP(i))>max)
                max=abs(AP(i));
            end
        end
        for i=1:2000
            AP(i)=AP(i)/max;
        end
        wavwrite(AP,16000,'AP.wav');
      %end of word AP
       n=n+6000;
        TUDE=aptitude(n:n+4000);
        max=0;
        for i=1:4000
            if(abs(TUDE(i))>max)
                max=abs(TUDE(i));
            end
        end
        for i=1:4000
            TUDE(i)=TUDE(i)/max;
        end
        wavwrite(TUDE,16000,'TUDE.wav');
        
         APTITUDE=[APTI ;TUDE];
        wavwrite(APTITUDE,16000,'APTITUDE.wav');
      %end of word TUDE
      %end of case APTITUDE
       case 'SIMPLY'
        [simply]=recording();
        n=1;
        while(abs(simply(n))<0.01)
        n=n+1;
        end   
        SIM=simply(n:n+4000);
        max=0;
        for i=1:4000
            if(abs(SIM(i))>max)
                max=abs(SIM(i));
            end
        end
        for i=1:4000
            SIM(i)=SIM(i)/max;
        end
        wavwrite(SIM,16000,'SIM.wav');
        %end of word GE
        n=n+4000;
        PLY=simply(n:n+4000);
        max=0;
        for i=1:4000
            if(abs(PLY(i))>max)
                max=abs(PLY(i));
            end
        end
        for i=1:4000
            PLY(i)=PLY(i)/max;
        end
        wavwrite(PLY,16000,'PLY.wav');
        
         SIMPLY=[SIM ;PLY];
        wavwrite(SIMPLY,16000,'SIMPLY.wav');
%       end of case SIMPLY
case 'PROBABLE'
        [probable]=recording();
        n=1;
        while(abs(probable(n))<0.01)
        n=n+1;
        end   
        PRO=probable(n:n+2000);
        max=0;
        for i=1:2000
            if(abs(PRO(i))>max)
                max=abs(PRO(i));
            end
        end
        for i=1:2000
            PRO(i)=PRO(i)/max;
        end
        wavwrite(PRO,16000,'PRO.wav');
        %end of word PRO
        n=n+2000;
        BE=probable(n:n+2000);
        max=0;
        for i=1:2000
            if(abs(BE(i))>max)
                max=abs(BE(i));
            end
        end
        for i=1:2000
            BE(i)=BE(i)/max;
        end
        wavwrite(BE,16000,'BE.wav');
      %end of word BE
       n=n+2000;
        BAL=probable(n:n+3000);
        max=0;
        for i=1:3000
            if(abs(BAL(i))>max)
                max=abs(BAL(i));
            end
        end
        for i=1:3000
            BAL(i)=BAL(i)/max;
        end
        wavwrite(BAL,16000,'BAL.wav');
        
         PROBABLE=[PRO ;BE ;BAL];
        wavwrite(PROBABLE,16000,'PROBABLE.wav');
      %end of word BAL
      %end of case PROABABLE

    otherwise
        fprintf('ENTER VALID WORD.\n');
    end
end
function SOUND_Callback(~,~) % Display contour plot of the currently selected data.
global selected_string1 
 global selected_string2
global selected_string3
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
function sample_Callback(~,~)
    global selected_string1 
global selected_string2
global selected_string3
    switch selected_string2
        case 'CITY'
            city=wavread('S_CITY.wav');
            sound(city,16000);
        case 'CAKE'
            cake=wavread('S_CAKE.wav');
            sound(cake,16000);
        case 'NATION'
            nation=wavread('S_NATION.wav');
            sound(city,16000);
        case 'SIMPLY'
            simply=wavread('S_SIMPLY.wav');
            sound(city,16000);
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
% notice='Finished recording.';
% fprintf('Press any key to play the recording...'); pause; fprintf('\n');
% play(arObj);
%fprintf('Plotting the waveform...\n');
y=getaudiodata(arObj);	% Get audio sample data
 plot(y);		% Plot the waveform


end
end