function DrawPath(Way,Pos)
% 画路径函数
%输入:
% Way  待画路径   
% Pos     各地点坐标位置


R=[Way(1,:) Way(1,1)]; %一个随机解闭环(个体)
figure;
hold on
plot(Pos(:,1),Pos(:,2),'o','color',[0.5,0.5,0.5])
plot(Pos(5,1),Pos(5,2),'rv','MarkerSize',20)
for i=1:size(Pos,1)
    text(Pos(i,1)+0.1,Pos(i,2)+0.1,num2str(i),'color',[1,0,0]);
end
A=Pos(R,1:2);
row=size(A,1);
for i=2:row
    [arrowx,arrowy] = disxy2figxy(gca,A(i-1:i,1),A(i-1:i,2));%坐标转换
    annotation('textarrow',arrowx,arrowy,'HeadWidth',8,'color',[0,0,1]);
end
hold off
xlabel('横坐标')
ylabel('纵坐标')
title('路径图')
box on