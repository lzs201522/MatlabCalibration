function f=LineCut(p1,p2,p3,p4,src)
    k1=(p2(2)-p1(2))/(p2(1)-p1(1));
    k2=(p3(2)-p4(2))/(p3(1)-p4(1));
    b1=-k1*(p2(1))+p2(2);
    b2=-k2*(p4(1))+p4(2);
    
end