function output1=OutputPath(R)
% 输出路径函数
%输入：R 路径
R=[R,R(1)];
N=length(R);
k=find(R==5);
W=[R(1,k:N),R(1,2:k)];      %用W来调整输出解的顺序
output=num2str(W(1));
output1=output;
output2=output;
for i=2:N
    output1=[output1,'—>',num2str(W(i))];
end
for i=N-1:-1:1
    output2=[output2,'—>',num2str(W(i))];
end
disp(output1);
disp('或其对称路径:');
disp(output2)