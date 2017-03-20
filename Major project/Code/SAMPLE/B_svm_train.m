clc;
clear all;
close all;
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