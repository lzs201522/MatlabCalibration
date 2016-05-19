Pic=zeros(1200,900);
for i=1:1200
    for j=1:900
        if (i-300)*(i-300)+(j-500)*(j-500)<2500
            Pic(i,j)=1;
        end
        if (i-900)*(i-900)+(j-500)*(j-500)<2500
            Pic(i,j)=1;
        end
    end
end