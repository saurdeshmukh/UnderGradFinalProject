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
S5=dlmread('SVM5.txt');
S6=dlmread('SVM6.txt');
Y=dlmread('OutSvm.txt');
Y=Y';
SVMStruct1=svmtrain(S1,Y);
SVMStruct2=svmtrain(S2,Y);
SVMStruct3=svmtrain(S3,Y);
SVMStruct4=svmtrain(S4,Y);
SVMStruct5=svmtrain(S5,Y);
SVMStruct6=svmtrain(S6,Y);

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
    phoneme='C';
else
    group=svmclassify(SVMStruct4,tem);
if group==0
    phoneme='M';
else
    group=svmclassify(SVMStruct5,tem);
if group==0
    phoneme='P';
else
    group=svmclassify(SVMStruct6,tem);
if group==0
    phoneme='S';
else
    phoneme='T';
end
end
end
end
end
end
end




    