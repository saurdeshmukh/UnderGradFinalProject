function [answ]=T2S(selected_string1)

switch selected_string1
    
    case 'CITY'
        answ=wavread('CITY.wav');
    case 'CAKE'
        answ=wavread('CAKE.wav');
    case 'NATION'
        answ=wavread('NATION.wav');
          
    case 'APTITUDE'
        answ=wavread('APTITUDE.wav');
          
    case 'SIMPLY'
        answ=wavread('SIMPLY.wav');
       
    case 'PROBABLE'
        answ=wavread('probable.wav');
        
    case 'SEE'
        answ=wavread('SEE.wav');
       
    case 'SICK'
        SEE=wavread('SEE.wav');
        KA=wavread('KA.wav');
        answ=[SEE ;KA];
    case 'SEEK'
        %SEEK=SEE+KA
        SEE=wavread('SEE.wav');
        KA=wavread('KA.wav');
        answ=[SEE ;KA];
       
    case 'MULTIPLE'
       answ=wavread('MULTIPLE.wav');
       
%     case 'MULTIPLICATION'
%         MULTIPLICATION=MULTI+PLY+KE+TION
%         MULTI=wavread('MULTI.wav');
%         PLY=wavread('PLY.wav');
%         KE=wavread('KE.wav');
%         TION=wavread('TION.wav');
%         multiplication=[MULTI ;PLY ;KE ;TION];
%         sound(multiplication,16000);
%         wavwrite(multiplication,16000,'MULTIPLICATION.wav');
%         play('MULTIPLICATION.wav');
%         end of word MULTIPLICATION
    case 'MULTIPLICITY'
        %MULTIPLICATION=MULTI+PLY+CITY
        MULTI=wavread('MULTI.wav');
        PLY=wavread('PLY.wav');
        CITY=wavread('CITY.wav');
        answ=[MULTI ;PLY ;CITY];
    case 'MULTITUDE'
        %MULTITUDE=MULTI+TUDE
        MULTI=wavread('MULTI.wav');
        TUDE=wavread('TUDE.wav');
        answ=[MULTI ;TUDE];
        
    case 'MULTISIM'
        %MULTISIM=MULTI+SIM
        MULTI=wavread('MULTI.wav');
        SIM=wavread('SIM.wav');
        answ=[MULTI ;SIM];
        
    case 'APPLE'
        %APPLE=AP+PAL
        AP=wavread('AP.wav');
        PAL=wavread('PAL.wav');
        answ=[AP ;PAL];
        
    case 'APPLICATION'
        %APPLICATION=AP+PLY+KE+TION
        AP=wavread('AP.wav');
        PLY=wavread('PLY.wav');
        KE=wavread('KE.wav');
        TION=wavread('TION.wav');
        answ=[AP ;PLY ;KE ;TION];
        
    case 'PROBATION'
        %PROBATION=PRO+BE+TION
        PRO=wavread('PRO.wav');
        BE=wavread('BE.wav');
        TION=wavread('TION.wav');
        answ=[PRO ;BE ;TION];
        
    case 'APPLICABLE'
        %APPLICABLE=AP+PLY+KE+BALs
        AP=wavread('AP.wav');
        PLY=wavread('PLY.wav');
        KE=wavread('KE.wav');
        BAL=wavread('BAL.wav');
        answ=[AP ;PLY ;KE ;BAL];
        
    case 'SEA'
        %SEA=SEE
        answ=wavread('SEE.wav');
    case 'BASTION' 
        %BASTION=BE+TION
        BE=wavread('BE.wav');
        TION=wavread('TION.wav');
        answ=[BE ;TION];
        
    case 'PRONATION'
        %PRONATION=PRO+NATION
        PRO=wavread('PRO.wav');
        NATION=wavread('NATION.wav');
        answ=[PRO ;NATION];
        
    case 'SIMPLICITY'
        %SIMPLICITY=SIMPLY+CITY
        SIMPLY=wavread('SIMPLY.wav');
        CITY=wavread('CITY.wav');
        answ=[SIMPLY ;CITY];
        
    case 'BATIK'
        %BATIK=BE+TEE+KA
        BE=wavread('BE.wav');
        TEE=wavread('TEE.wav');
        KA=wavread('KA.wav');
        answ=[BE ;TEE ;KA];
        
    case 'SIMPLE'
        %SIMPLE=SIM+PAL
        SIM=wavread('SIM.wav');
        PAL=wavread('PAL.wav');
        answ=[SIM ;PAL];
        
    case 'MULL'
        %SIMPLE=SIM+PAL
        answ=wavread('MUL.wav');
    case 'CABLE'
        %CABLE=KE+BAL
        KE=wavread('KE.wav');
        BAL=wavread('BAL.wav');
        answ=[KE ;BAL];
%     case 'TICK'
%         TICK=TEE+KA
%         TEE=wavread('TEE.wav');
%         KA=wavread('KA.wav');
%         tick=[TEE ;KA];
%         sound(tick,16000);
%         wavwrite(tick,16000,'tick.wav');
%         play('tick.wav');
    case 'TIPPLE'
        %TIPPLE=TEE+PAL
        TEE=wavread('TEE.wav');
        PAL=wavread('PAL.wav');
        answ=[TEE ;PAL];
        
    case 'TITI'
        %TITI=TEE+TEE
        TEE=wavread('TEE.wav');
        answ=[TEE ;TEE];
        
    case 'TEE'
            answ=wavread('TEE.wav');
            
    case 'MULTI'
            answ=wavread('MULTI.wav');
            
    case 'MUL'
            answ=wavread('MUL.wav');
            
    case 'PAL'
            answ=wavread('PAL.wav');
            
    case 'KE'
            answ=wavread('KE.wav');
            
    case 'KA'
            answ=wavread('KA.wav');
    case 'NE'
            answ=wavread('NE.wav');
            
    case 'TION'
            answ=wavread('TION.wav');
            
    case 'AP'
            answ=wavread('AP.wav');
           
    case 'APTI'
            answ=wavread('APTI.wav');
           
            
    case 'TUDE'
            answ=wavread('TUDE.wav');
            
            
    case 'SIM'
            answ=wavread('SIM.wav');
            
            
    case 'PLY'
            answ=wavread('PLY.wav');
            
    case 'PRO'
            answ=wavread('PRO.wav');
            
    case 'BE'
            answ=wavread('BE.wav');
            
    case 'BAL'
            answ=wavread('BAL.wav');
            
 otherwise
        answ=Extended_T2S(selected_string1);
end