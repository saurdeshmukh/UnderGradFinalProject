function T2S(word)


switch word
    case 'SIMULTANEOUSLY'
        %SIMULTANEOUSLY=SI+MUL+TE+NIUS+LEE
        SI=wavread('SI.wav');
        MUL=wavread('MUL.wav');
        TE=wavread('TE.wav');
        NIUS=wavread('NIUS.wav');
        LEE=wavread('LEE.wav');
        simult=[SI ;MUL ;TE ;NIUS ;LEE];
        wavwrite(simult,16000,'SIMULTANEOUSLY.wav');
        %play('SIMULTANEOUSLY.wav');
        %end of word simulatneously
    case 'CYCLONE'
        %CYCLONE=SI+CLO+NA
        SI=wavread('SI.wav');
        CLO=wavread('CLO.wav');
        NA=wavread('NA.wav');
        cyclone=[SI ;CLO ;NA];
        wavwrite(cyclone,16000,'CYCLONE.wav');
        %play('CYCLONE.wav');
        %end of word cyclone
    otherwise
        fprintf('ENTER VALID WORD FROM SIMULTANEOUSLY,CYCLONE.\n');
end