clc;
close all;
clear all;
s1=recording();
s2=Preemphasis(s1);
x1=VAD(s2);
[x2,m]=Window_frame(x1);
[X_mfcc]=Mel_Ceptrum(x2,m);
x_mfcc=normal(X_mfcc,m);
x_mfcc(isnan(x_mfcc))=0;%to remove the NAN values.
x_mfcc=x_mfcc.'; 
[M,N]=size(x_mfcc);
if N>35
    N=35;
end
x_mfcc=x_mfcc(:,1:35);