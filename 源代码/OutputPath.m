function output1=OutputPath(R)
% ���·������
%���룺R ·��
R=[R,R(1)];
N=length(R);
k=find(R==5);
W=[R(1,k:N),R(1,2:k)];      %��W������������˳��
output=num2str(W(1));
output1=output;
output2=output;
for i=2:N
    output1=[output1,'��>',num2str(W(i))];
end
for i=N-1:-1:1
    output2=[output2,'��>',num2str(W(i))];
end
disp(output1);
disp('����Գ�·��:');
disp(output2)