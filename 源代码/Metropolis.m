function [S,R]=Metropolis(S1,S2,D,T)
% 输入
% S1：  当前解
% S2:   新解
% D:    距离矩阵（两两地点的之间的距离）
% T:    当前温度
% 输出
% S：   下一个当前解
% R：   下一个当前解的路线距离

R1=PathLength(D,S1);  %计算路线长度
N=length(S1);         %得到地点的个数

R2=PathLength(D,S2);  %计算路线长度
dT=R2-R1; 
if dT<0       
    S=S2;
    R=R2;
elseif exp(-dT/T)>=rand   %以exp(-dT/T)概率接受新路线
    S=S2;
    R=R2;
else        %不接受新路线
    S=S1;
    R=R1;
end