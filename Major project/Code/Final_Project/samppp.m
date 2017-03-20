clc;
clear all;
close all;

 FID = fopen('samp.txt', 'a');
 CStr = textread('samp.txt', '%s', 'delimiter', '\n');
 fclose(FID);
l=  length(CStr);
st='ABCDEFGH';
CStr{l+1}=st;
dlmwrite('samp.txt',1);
xlswrite('samp.txt',CStr);
 
 
