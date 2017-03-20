function [x2,m]=Window_frame(x1)
  n=length(x1);
  m=n/80;
  m=m-3;
  x2=zeros(m,320);
  
  %320 samples in each frame and 240 is overlapping
  for j=1:m
      n=1;
      for i=((80*(j-1))+1):(320+((j-1)*80))
          x2(j,n)=x1(1,i);
          n=n+1;
      end;
      
  end;
  
         
