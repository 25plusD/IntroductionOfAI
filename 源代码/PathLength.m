function len=PathLength(D,Chrom)
% ����������·������
% ���룺
% D������֮��ľ���matrix
% Chrom ����Ĺ켣,����ν��һ����

N=size(D); 
p=[Chrom(1,:) Chrom(1,1)];
 i1=p(1:end-1);
 i2=p(2:end);
 len=0;
 for j=1:N
     len=sum(D(i1(j),i2(j)))+len;
 end