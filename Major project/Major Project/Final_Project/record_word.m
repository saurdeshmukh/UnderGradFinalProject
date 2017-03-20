function record_word(word)
   


switch word
    case 'CITY'
        [anst]=recording();
        wavwrite(anst,16000,16,'Temp.wav');
        city=detectVoiced('Temp.wav',3);
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
        
        [anst]=recording();
        wavwrite(anst,16000,16,'Temp.wav');
        multiple=detectVoiced('Temp.wav',3);
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
        
        [anst]=recording();
        wavwrite(anst,16000,16,'Temp.wav');
        cake=detectVoiced('Temp.wav',3);
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
        
        [anst]=recording();
        wavwrite(anst,16000,16,'Temp.wav');
        nation=detectVoiced('Temp.wav',3);
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
        
        [anst]=recording();
        wavwrite(anst,16000,16,'Temp.wav');
        aptitude=detectVoiced('Temp.wav',3);
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
        
        [anst]=recording();
        wavwrite(anst,16000,16,'Temp.wav');
        simply=detectVoiced('Temp.wav',3);
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
       
        [anst]=recording();
        wavwrite(anst,16000,16,'Temp.wav');
        probable=detectVoiced('Temp.wav',3);
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
end;

