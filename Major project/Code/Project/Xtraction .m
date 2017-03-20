
z=wavread('BATSSa.wav');
w=zeros(1,20000);
n=1;
%0.15 take as minimum level or threshold value
while(abs(z(n))<0.15)
    
     n=n+1;
end   
 
B=z(n:n+6000);
wavwrite(B,16000,'B.wav');
b=wavread('B.wav');
o=n+6500;
%jump 6500 location away for values less than 0.15
while(abs(z(o))<0.15)
    
     o=o+1;
end   
 
A=z(o:o+5000);
wavwrite(A,16000,'A.wav');
a=wavread('A.wav');
p=o+7000;
%jump 7000 location away for values less than 0.15
while(abs(z(p))<0.15)
    
     p=p+1;
end   
 
T=z(p:p+3500);
wavwrite(T,16000,'T.wav');
t=wavread('T.wav');
%just try to conactenate B,A,T with samples 6000,5000,3500
%or take less samples to overlap each other for more good pronunciation
bat=[b ;a ;t];
sound(bat,16000);