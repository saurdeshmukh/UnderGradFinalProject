clc;
close all;
clear all;
y=fopen('testSignal.wav');
m=fread(y,32000);
s2=Preemphasis(m);
x1=VAD(s2);
plot(x1);