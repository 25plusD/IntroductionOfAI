function [S,R]=Metropolis(S1,S2,D,T)
% ����
% S1��  ��ǰ��
% S2:   �½�
% D:    ������������ص��֮��ľ��룩
% T:    ��ǰ�¶�
% ���
% S��   ��һ����ǰ��
% R��   ��һ����ǰ���·�߾���

R1=PathLength(D,S1);  %����·�߳���
N=length(S1);         %�õ��ص�ĸ���

R2=PathLength(D,S2);  %����·�߳���
dT=R2-R1; 
if dT<0       
    S=S2;
    R=R2;
elseif exp(-dT/T)>=rand   %��exp(-dT/T)���ʽ�����·��
    S=S2;
    R=R2;
else        %��������·��
    S=S1;
    R=R1;
end