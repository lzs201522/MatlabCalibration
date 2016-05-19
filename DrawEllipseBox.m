function f=DrawEllipseBox(box)
one=[1:360]*2*pi/360;
x=box(1)+box(3)*cos(box(5))*cos(one)-box(4)*sin(box(5))*sin(one);
y=box(2)+box(3)*sin(box(5))*cos(one)+box(4)*cos(box(5))*sin(one);
plot(x,y,'-');
end