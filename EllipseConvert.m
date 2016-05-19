function f=EllipseConvert(Elli)
%%该文档用于将椭圆的一般式转换为最小外接矩形
%%输入[A B C D E ]
%%输出[x0,y0,height,width,angle]
%转换成Ax^2+Bxy+Cy^2+Dx+Ey+1=0
MySize=size(Elli);
if MySize(1)==1
    length=MySize(2);
end
if MySize(2)==1
    length=MySize(1);
end
if Elli(length)==0
    f=0;
    return;
end
for i=1:length-1
    Elli(i)=Elli(i)/Elli(length);
end
Elli(length)=1;
%xc,yc
f=zeros(5,1);
f(1)=(Elli(2)*Elli(5)-Elli(3)*Elli(4)*2)/(Elli(1)*Elli(3)*4-Elli(2)*Elli(2));
f(2)=(Elli(2)*Elli(4)-Elli(1)*Elli(5)*2)/(Elli(1)*Elli(3)*4-Elli(2)*Elli(2));
%a0 b0
f(3)=2*(Elli(1)*f(1)*f(1)+Elli(3)*f(2)*f(2)+Elli(2)*f(1)*f(2)-1);
f(3)=f(3)/(Elli(1)+Elli(3)+sqrt((Elli(1)-Elli(3))^2+Elli(2)^2));
f(3)=sqrt(f(3));
f(4)=2*(Elli(1)*f(1)*f(1)+Elli(3)*f(2)*f(2)+Elli(2)*f(1)*f(2)-1);
f(4)=f(4)/(Elli(1)+Elli(3)-sqrt((Elli(1)-Elli(3))^2+Elli(2)^2));
f(4)=sqrt(f(4));
%angle
f(5)=atan(Elli(2)/(Elli(1)-Elli(3)))/2;
end