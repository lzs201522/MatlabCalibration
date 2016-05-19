c=zeros(480,752);
for i=1:480
    for j=1:752
        if x(i,j)>ans*2
            c(i,j)=1;
        end
    end
end