function[k]=mfcc()
s1=recording()
%s1=wavread(y);
s2=Preemphasis(s1)
x1=VAD(s2)
[x2,m]=Window_frame(x1)
[X_mfcc]=Mel_Ceptrum(x2,m)
x_mfcc=normal(X_mfcc,m)
x_mfcc(isnan(x_mfcc))=1%to remove the NAN values.
[m,n]=size(x_mfcc)

figure
s1a=recording()
%s1=wavread(y);
s2a=Preemphasis(s1a)
x1a=VAD(s2a)
[x2a,ma]=Window_frame(x1a)
[X_mfcca]=Mel_Ceptrum(x2a,ma)
x_mfcca=normal(X_mfcca,ma)
x_mfcca(isnan(x_mfcca))=1;%to remove the NAN values.
[ma,na]=size(x_mfcca)

%correlation between two sounds
if m==ma
k=corr2(x_mfcc,x_mfcca)
elseif m>ma
    k=corr2(x_mfcc(1:ma,:),x_mfcca(1:ma,:))
else
    k=corr2(x_mfcc(1:m,:),x_mfcca(1:m,:))
 end