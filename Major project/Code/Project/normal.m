function x_mfcc=normal(x3,m)
mean=zeros(m);
x_mfcc=zeros(m,8);
for i=1:m
    sum=0;
    for j=1:8
        sum=sum+x3(i,j);
    end;
    mean(i)=sum/8;
    for j=1:8
        x_mfcc(i,j)=x3(i,j)-mean(i);
    end;
end;





