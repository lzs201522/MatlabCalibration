function f=ProjectLine(k,b,point)
    length=(k*point(1)-point(2)+b)/sqrt(k*k+1);
    f=zeros(2,1);
    if length~=0
        f(1)=length*(-1)/sqrt(1+k*k)+point(1);
        f(2)=length*(k)/sqrt(1+k*k)+point(2);
    end
end

