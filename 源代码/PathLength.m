function len=PathLength(D,Chrom)
% 计算各个体的路径长度
% 输入：
% D两城市之间的距离matrix
% Chrom 个体的轨迹,即所谓的一个解

N=size(D); 
p=[Chrom(1,:) Chrom(1,1)];
 i1=p(1:end-1);
 i2=p(2:end);
 len=0;
 for j=1:N
     len=sum(D(i1(j),i2(j)))+len;
 end