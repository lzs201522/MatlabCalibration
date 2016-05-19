function f=BoxEllipseConvert(Elli)
%参数方程转一般方程
f=zeros(6,1);
f(6)=(Elli(1)*cos(Elli(5))+Elli(2)*sin(Elli(5)))^2/Elli(3)^2;
f(6)=f(6)+(Elli(1)*sin(Elli(5))-Elli(2)*cos(Elli(5)))^2/Elli(4)^2-1;
f(1)=cos(Elli(5))^2/Elli(3)^2;
f(1)=f(1)+sin(Elli(5))^2/Elli(4)^2;
f(3)=sin(Elli(5))^2/Elli(3)^2;
f(3)=f(3)+cos(Elli(5))^2/Elli(4)^2;
f(2)=cos(Elli(5))*sin(Elli(5))*2/Elli(3)^2;
f(2)=f(2)-cos(Elli(5))*sin(Elli(5))*2/Elli(4)^2;
f(4)=-(Elli(1)*cos(Elli(5))+Elli(2)*sin(Elli(5)))*cos(Elli(5))*2/Elli(3)^2;
f(4)=f(4)+sin(Elli(5))*2*(Elli(2)*cos(Elli(5))-Elli(1)*sin(Elli(5)))/Elli(4)^2;
f(5)=-(Elli(1)*cos(Elli(5))+Elli(2)*sin(Elli(5)))*sin(Elli(5))*2/Elli(3)^2;
f(5)=f(5)-cos(Elli(5))*2*(Elli(2)*cos(Elli(5))-Elli(1)*sin(Elli(5)))/Elli(4)^2;
for i=1:6
    f(i)=f(i)/f(6);
end
end