function [x_mean,x_var]=Model_Training()  
s1=recording()
%s1=wavread(y);
s2=Preemphasis(s1);
x1=VAD(s2);
[x2,m]=Window_frame(x1);
[X_mfcc]=Mel_Ceptrum(x2,m);
x_mfcc=normal(X_mfcc,m);
x_mfcc(isnan(x_mfcc))=0;%to remove the NAN values.
x_mfcc=x_mfcc.'; 
[M,N]=size(x_mfcc)
a=floor(N/5);
a
for j=1:4
    for k=1:8
for i=0:3
    x_mean(j,k)=mean(x_mfcc(1+(i*a)):(a+(i*a)));
end
    end
end
for k=1:8
    x_mean(5,k)=mean((4*a):N);
end 
for j=1:4
    for k=1:8
for i=0:3
    x_var(j,k)=var(x_mfcc(1+(i*a)):(a+(i*a)));
end
    end
end
for k=1:8
    x_var(5,k)=var((4*a):N);
end 
  x_var=x_var.';
  x_mean=x_mean.';
  end
  
  
 
   
  