function D=Distanse(pos)
% 计算两两城市之间的距离
%输入 a  各城市的位置坐标
%输出 D  两两城市之间的距离
row=size(pos,1);
D=zeros(row,row);
for i=1:row
    for j=i+1:row
        D(i,j)=((pos(i,1)-pos(j,1))^2+(pos(i,2)-pos(j,2))^2)^0.5;
        D(j,i)=D(i,j);
    end
end
