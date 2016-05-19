function f=EllipseTangent(Elli,pt)
%该式是用一般式求某点在椭圆上切线的方程
k=-(2*Elli(1)*pt(1)+Elli(2)*pt(2)+Elli(4))/(Elli(2)*pt(1)+Elli(3)*2*pt(2)+Elli(5));
b=-k*pt(1)+pt(2);
f=[k,b];
end