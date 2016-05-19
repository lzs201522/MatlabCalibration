function f=DrawEllipse(pt)
I=EllipseDirectFit(pt);
f=EllipseConvert(I);
one=[1:360]*2*pi/360;
x=f(1)+f(3)*cos(f(5))*cos(one)-f(4)*sin(f(5))*sin(one);
y=f(2)+f(3)*sin(f(5))*cos(one)+f(4)*cos(f(5))*sin(one);
%c=x(1)*x(1)*I(1)+x(1)*y(1)*I(2)+y(1)*y(1)*I(3)+x(1)*I(4)+y(1)*I(5)+I(6);
plot(x,y,'-');
hold on;
plot(pt(:,1),pt(:,2),'.');

end