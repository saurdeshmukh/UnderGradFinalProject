function [X_mfcc]=Mel_Ceptrum(x,m)
y=zeros(m,512);
X=zeros(m,512);
%zero padding to make 320 point fft to 512 point fft
for i=1:m
    for j=1:512
        if j<321
            y(i,j)=x(i,j);
        else
            y(i,j)=0;
        end;
    end;
        X(i,:)=fft(y(i,:));
    
end;
%formation of 10 triangular filters
 T=zeros(10,512);
 k=1;
L=[1 12 6 19 12 29 21 40 30 55 43 72 57 94 80 121 97 154 125 196];
for i=1:10
   for j=1:512
        if j>=L(k)&&j<=L(k+1)
            if j<=((L(k)+L(k+1)-3)/2)
                T(i,j)=((j-L(k))+1)/((L(k+1)-L(k))+1);
            else
                 T(i,j)=1-(((j-L(k))+1)/((L(k+1)-L(k))+1));
            end;
        else
            T(i,j)=0;
        end
    end
    k=k+2;
end;
%finding MFCC
Mk=zeros(m,10);
for k=1:m
for i=1:10
    for j=1:512
        Mk(k,i)=Mk(k,i)+(T(i,j)*abs(X(k,j)));
    end;
end;
end;

X_mfcc=zeros(m,8);
x_sam=zeros(1,8);
%we truncate the MFCC for 8 coefficients only
for i=1:m
    for j=1:8
    x_sam(j)=Mk(i,j);
    end;
    X_mfcc(i,:)=ifft(log(x_sam));
end;
X_mfcc=abs(X_mfcc);

        




    
    
    