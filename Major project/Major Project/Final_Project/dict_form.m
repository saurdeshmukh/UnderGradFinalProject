function [str]=dict_form(strr)
FID = fopen('samp.txt', 'rb');
 In = textread('samp.txt', '%s', 'delimiter', '\n');
 fclose(FID);
 m=length(In);
o=1;
k=length(strr);
str={};
for i=1:m
    if (strncmp(In{i},strr,k))
       str{o}=In{i};
       o=o+1;
    end
end
end

