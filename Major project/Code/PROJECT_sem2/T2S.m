function T2S(word)


switch word
    
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