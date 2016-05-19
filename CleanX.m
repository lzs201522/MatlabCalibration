function f=CleanX(p1,p2,p3,p4,img)
    k1=(p2(2)-p1(2))/(p2(1)-p1(1));
    k2=(p3(2)-p4(2))/(p3(1)-p4(1));
    b1=-k1*(p2(1))+p2(2);
    b2=-k2*(p4(1))+p4(2);
    MySize=size(img);
    f=img;
    for i=1:MySize(1)
        for j=1:MySize(2)
            if(k1*j+b1-i)*(k2*j-i+b2)<0
               if i>MySize(1)/2-15&&i<MySize(1)/2+15&&j>MySize(2)/2-15&&j<MySize(2)/2+15
                   continue;
               end
               f(i,j)=0;
            end
        end
    end
end