function s2=Preemphasis(s1)
h=[1,-0.95];
s2=conv(s1,h);
end
