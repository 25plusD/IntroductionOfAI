function D=Distanse(pos)
% ������������֮��ľ���
%���� a  �����е�λ������
%��� D  ��������֮��ľ���
row=size(pos,1);
D=zeros(row,row);
for i=1:row
    for j=i+1:row
        D(i,j)=((pos(i,1)-pos(j,1))^2+(pos(i,2)-pos(j,2))^2)^0.5;
        D(j,i)=D(i,j);
    end
end
