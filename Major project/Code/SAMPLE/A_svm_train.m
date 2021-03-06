clc;
clear all;
close all;
a{1}=wavread('A1.wav');
a{2}=wavread('A2.wav');
a{3}=wavread('A3.wav');
a{4}=wavread('A5.wav');
a{5}=wavread('A6.wav');
a{6}=wavread('A7.wav');
a{7}=wavread('A8.wav');
a{8}=wavread('A9.wav');
a{9}=wavread('A10.wav');
a{10}=wavread('A11.wav');
a{11}=wavread('A12.wav');
a{12}=wavread('A13.wav');
a{13}=wavread('A14.wav');
a{14}=wavread('A15.wav');
a{15}=wavread('A16.wav');
for i=1:15
    temp=a{i};
    temp(16384)=0;
    temp=abs(fft(temp));
    A(i,:)=temp(1:1000);
end
b{1}=wavread('B1.wav');
b{2}=wavread('B2.wav');
b{3}=wavread('B3.wav');
b{4}=wavread('B5.wav');
b{5}=wavread('B6.wav');
b{6}=wavread('B7.wav');
b{7}=wavread('B8.wav');
b{8}=wavread('B9.wav');
b{9}=wavread('B10.wav');
b{10}=wavread('B11.wav');
b{11}=wavread('B12.wav');
b{12}=wavread('B13.wav');
b{13}=wavread('B14.wav');
b{14}=wavread('B15.wav');
b{15}=wavread('B16.wav');
for i=1:15
    temp=b{i};
    temp(16384)=0;
    temp=abs(fft(temp));
    B(i,:)=temp(1:1000);
end    
c{1}=wavread('C1.wav');
c{2}=wavread('C2.wav');
c{3}=wavread('C3.wav');
c{4}=wavread('C5.wav');
c{5}=wavread('C6.wav');
c{6}=wavread('C7.wav');
c{7}=wavread('C8.wav');
c{8}=wavread('C9.wav');
c{9}=wavread('C10.wav');
c{10}=wavread('C11.wav');
c{11}=wavread('C12.wav');
c{12}=wavread('C13.wav');
c{13}=wavread('C14.wav');
c{14}=wavread('C15.wav');
c{15}=wavread('C16.wav');
for i=1:15
    temp=c{i};
    temp(16384)=0;
    temp=abs(fft(temp));
    C(i,:)=temp(1:1000);
end
m{1}=wavread('M1.wav');
m{2}=wavread('M2.wav');
m{3}=wavread('M3.wav');
m{4}=wavread('M5.wav');
m{5}=wavread('M6.wav');
m{6}=wavread('M7.wav');
m{7}=wavread('M8.wav');
m{8}=wavread('M9.wav');
m{9}=wavread('M10.wav');
m{10}=wavread('M11.wav');
m{11}=wavread('M12.wav');
m{12}=wavread('M13.wav');
m{13}=wavread('M14.wav');
m{14}=wavread('M15.wav');
m{15}=wavread('M16.wav');
for i=1:15
    temp=m{i};
    temp(16384)=0;
    temp=abs(fft(temp));
    M(i,:)=temp(1:1000);
end
p{1}=wavread('P1.wav');
p{2}=wavread('P2.wav');
p{3}=wavread('P3.wav');
p{4}=wavread('P5.wav');
p{5}=wavread('P6.wav');
p{6}=wavread('P7.wav');
p{7}=wavread('P8.wav');
p{8}=wavread('P9.wav');
p{9}=wavread('P10.wav');
p{10}=wavread('P11.wav');
p{11}=wavread('P12.wav');
p{12}=wavread('P13.wav');
p{13}=wavread('P14.wav');
p{14}=wavread('P15.wav');
p{15}=wavread('P16.wav');
for i=1:15
    temp=p{i};
    temp(16384)=0;
    temp=abs(fft(temp));
    P(i,:)=temp(1:1000);
end
s{1}=wavread('S1.wav');
s{2}=wavread('S2.wav');
s{3}=wavread('S3.wav');
s{4}=wavread('S5.wav');
s{5}=wavread('S6.wav');
s{6}=wavread('S7.wav');
s{7}=wavread('S8.wav');
s{8}=wavread('S9.wav');
s{9}=wavread('S10.wav');
s{10}=wavread('S11.wav');
s{11}=wavread('S12.wav');
s{12}=wavread('S13.wav');
s{13}=wavread('S14.wav');
s{14}=wavread('S15.wav');
s{15}=wavread('S16.wav');
for i=1:15
    temp=s{i};
    temp(16384)=0;
    temp=abs(fft(temp));
    S(i,:)=temp(1:1000);
end
t{1}=wavread('T1.wav');
t{2}=wavread('T2.wav');
t{3}=wavread('T3.wav');
t{4}=wavread('T5.wav');
t{5}=wavread('T6.wav');
t{6}=wavread('T7.wav');
t{7}=wavread('T8.wav');
t{8}=wavread('T9.wav');
t{9}=wavread('T10.wav');
t{10}=wavread('T11.wav');
t{11}=wavread('T12.wav');
t{12}=wavread('T13.wav');
t{13}=wavread('T14.wav');
t{14}=wavread('T15.wav');
t{15}=wavread('T16.wav');
for i=1:15
    temp=t{i};
    temp(16384)=0;
    temp=abs(fft(temp));
    T(i,:)=temp(1:1000);
end
%SVM1
for i=1:15
    X1(i,:)=A(i,:);
end
for i=16:30
    X1(i,:)=B(i-15,:);
end
for i=31:45
    X1(i,:)=C(i-30,:);
end
for i=46:60
    X1(i,:)=M(i-45,:);
end
for i=61:75
    X1(i,:)=P(i-60,:);
end
for i=76:90
    X1(i,:)=S(i-75,:);
end
for i=91:105
    X1(i,:)=T(i-90,:);
end
dlmwrite('SVM1.txt',X1);
%svm 2

for i=1:15
    X1(i,:)=B(i,:);
end
for i=16:30
    X1(i,:)=A(i-15,:);
end
for i=31:45
    X1(i,:)=C(i-30,:);
end
for i=46:60
    X1(i,:)=M(i-45,:);
end
for i=61:75
    X1(i,:)=P(i-60,:);
end
for i=76:90
    X1(i,:)=S(i-75,:);
end
for i=91:105
    X1(i,:)=T(i-90,:);
end
dlmwrite('SVM2.txt',X1);
%svm 3

for i=1:15
    X1(i,:)=C(i,:);
end
for i=16:30
    X1(i,:)=A(i-15,:);
end
for i=31:45
    X1(i,:)=B(i-30,:);
end
for i=46:60
    X1(i,:)=M(i-45,:);
end
for i=61:75
    X1(i,:)=P(i-60,:);
end
for i=76:90
    X1(i,:)=S(i-75,:);
end
for i=91:105
    X1(i,:)=T(i-90,:);
end
dlmwrite('SVM3.txt',X1);
%svm 3

for i=1:15
    X1(i,:)=M(i,:);
end
for i=16:30
    X1(i,:)=A(i-15,:);
end
for i=31:45
    X1(i,:)=B(i-30,:);
end
for i=46:60
    X1(i,:)=C(i-45,:);
end
for i=61:75
    X1(i,:)=P(i-60,:);
end
for i=76:90
    X1(i,:)=S(i-75,:);
end
for i=91:105
    X1(i,:)=T(i-90,:);
end
dlmwrite('SVM4.txt',X1);
 
%svm 5

for i=1:15
    X1(i,:)=P(i,:);
end
for i=16:30
    X1(i,:)=A(i-15,:);
end
for i=31:45
    X1(i,:)=B(i-30,:);
end
for i=46:60
    X1(i,:)=C(i-45,:);
end
for i=61:75
    X1(i,:)=M(i-60,:);
end
for i=76:90
    X1(i,:)=S(i-75,:);
end
for i=91:105
    X1(i,:)=T(i-90,:);
end
dlmwrite('SVM5.txt',X1);
%svm 6
for i=1:15
    X1(i,:)=S(i,:);
end
for i=16:30
    X1(i,:)=A(i-15,:);
end
for i=31:45
    X1(i,:)=B(i-30,:);
end
for i=46:60
    X1(i,:)=C(i-45,:);
end
for i=61:75
    X1(i,:)=M(i-60,:);
end
for i=76:90
    X1(i,:)=P(i-75,:);
end
for i=91:105
    X1(i,:)=T(i-90,:);
end
dlmwrite('SVM6.txt',X1);
for i=1:15
    Y=0;
end
for i=16:150
    Y=1;
end
Y=Y';
SVMStruct1=svmtrain(X1,Y);