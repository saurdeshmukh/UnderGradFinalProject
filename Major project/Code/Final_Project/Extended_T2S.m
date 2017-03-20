function [v]=Extended_T2S(str)

FD = fopen('PHONEMES.txt', 'rb');
tem = textread('PHONEMES.txt', '%s', 'delimiter', '\n');
fclose(FD);
for i=1:length(tem)
    if strcmp(tem{i},str)
        break;
    end
end
j=i;
while(~strcmp(tem{j},'$'))
    j=j+1;
end
v=[];
for k=i+1:j-1
    a=T2S(tem{k});
    v=[v; a];
end

end
