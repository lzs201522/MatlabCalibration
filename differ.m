function f=differ(m)
    MySize=size(m);
    for i=2:max(MySize)-1
        f(i-1)=(m(i+1)-m(i-1))/2;
    end
end