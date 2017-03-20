function [phoneme]=SVM_S2T(phon)
temp=detectVoiced(phon,1);
tem=temp{1:end};
tem(16384)=0;
tem=abs(fft(tem));
tem=tem';
S1=dlmread('SVM1.txt');
S2=dlmread('SVM2.txt');
S3=dlmread('SVM3.txt');
S4=dlmread('SVM4.txt');
Y=dlmread('OutSvm.txt');
Y=Y';
SVMStruct1=svmtrain(S1,Y);
SVMStruct2=svmtrain(S2,Y);
SVMStruct3=svmtrain(S3,Y);
SVMStruct4=svmtrain(S4,Y);

group=svmclassify(SVMStruct1,tem);
if group==0
    phoneme='A';
else
    group=svmclassify(SVMStruct2,tem);
if group==0
    phoneme='B';
else
    group=svmclassify(SVMStruct3,tem);
if group==0
    phoneme='M';
else
    group=svmclassify(SVMStruct4,tem);
if group==0
    phoneme='P';
else
    phoneme='T';
end
end
end
end
end





    