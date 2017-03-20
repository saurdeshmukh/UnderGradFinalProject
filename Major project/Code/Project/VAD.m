function x1=VAD(s2)
%take only 32000 samples only after noise cancellation and preemphasis,use 
%sampling rate 16 KHz and make 20ms.


%for Power
sum=zeros(320);
P1=zeros(320);
for i=1:100
    sum(i)=0;
    for n=((i-1)*320+1):(320*i)
        sum(i)=sum(i)+(s2(n)*s2(n));
    end;
    P1(i)=sum(i)/320;
end;
%for Zero crossing
sum=zeros(320);
Z1=zeros(320);
sgn=sign(s2);
for i=1:100
    sum(i)=0;
    for n=((i-1)*320+1):(320*i)
        if i==1
        k=abs(sgn(n));
        else
         k=abs(sgn(n)-sgn(n-1));
        end;
        sum(i)=sum(i)+((k)/2);
    end;
    Z1(i)=sum(i)/320;
end
%for W1
W1=zeros(320);
for i=1:100
    W1(i)=P1(i)*(1-Z1(i))*1000;
end;
    %1000 is scalling factor to reduce small values 
    %calculate mean u and variance a of first 10 block considering it as
    %noise`
    t=zeros(1,10);
    for i=1:10
        t(1,i)=W1(i);
    end
    u=mean(t);
    a=var(t);
    alpha=0.2*(a(1).^(-0.8));
    %to chose fine tune alpha calculate as above
    tw=u+alpha*a;
    
        %for VAD and S2
        m=1;
        VAD=zeros(100);
        for i=1:100
            if W1(i)>tw
             VAD(i)=1;
             m=m+1;
            else
                VAD(i)=0;
            end;
        end;
        x1=zeros(1,m*320);
        k=1;
        for i=1:100
            if VAD(i)==1
            for n=(((i-1)*320)+1):(320*i)
                x1(k)=s2(n);
                k=k+1;
            end;
            end;
        end;
    
    
    

