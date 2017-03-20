function [str]=Modify_String(c,strr,In)

if (strcmp(c,'return'))
   strcat(strr,c);
else
    if strr~=''
    l=length(strr);
    strr=strr(1:l-1);
    end
end
m=length(In);
for i=1:m
    k=length(strr);
    o=1;
   if (strncmp(In(i),strr,k))
       str{o}=In(i);
       o=o+1;
   end
end
end
       