function f=EllipseTangent(Elli,pt)
%��ʽ����һ��ʽ��ĳ������Բ�����ߵķ���
k=-(2*Elli(1)*pt(1)+Elli(2)*pt(2)+Elli(4))/(Elli(2)*pt(1)+Elli(3)*2*pt(2)+Elli(5));
b=-k*pt(1)+pt(2);
f=[k,b];
end