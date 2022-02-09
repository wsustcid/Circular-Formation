clear all;
%---------exapmle 14.1----------
% a= 0;%�Ա����½�
% b= 30;%�Ա����Ͻ�
% NP= 50; % ��Ⱥ������
% NG= 100; % ����������
% Pc= 0.9; % �ӽ�����
% Pm= 0.04; % �������
% eps= 0.01; % �Ա�����ɢ����
% 
% [xv,fv]=myGA(@fitness,a,b,NP,NG,Pc,Pm,eps)

%---------exapmle 14.2----------
% a= 0;
% b= 4;
% NP= 50; 
% NG= 500; 
% q=0.2; % ��ø����ѡ�����
% Pc= 0.9;
% Pm= 0.05; 
% eps= 0.01; 
% [xv,fv] = SBOGA(@fitness,a,b,NP,NG,q,Pc,Pm,eps)

%---------exapmle 14.3----------
% a= 0;
% b= 4;
% NP= 50; 
% NG= 500; 
% ksi0=2; % ѡ��ѹ������ֵ�ĳ�ʼֵ 
% c= 0.9; % ѡ��ѹ������ֵ����Сϵ��
% Pc= 0.9;
% Pm= 0.04; 
% eps= 0.01; 
% [xv,fv]=NormFitGA(@fitness,a,b,NP,NG,ksi0,c,Pc,Pm,eps)

%---------exapmle 14.4----------
% a= 0;
% b= 4;
% NP= 50; 
% NG= 500; 
% Pc= 0.9;
% Pm= 0.03; 
% alpha=0.6; % �ܼ�����
% Pbm=0.2;  % ��������
% eps= 0.01; 
% [xv,fv]=GMGA(@fitness,a,b,NP,NG,Pc,Pm,alpha,Pbm,eps)

%---------exapmle 14.5----------
% a= 0;
% b= 4;
% NP= 50; 
% NG= 500; 
% Pc1= 0.5;  % �ӽ�����1
% Pc2= 0.9;  % �ӽ�����2
% Pm1= 0.02; % ���쳣��1
% Pm2= 0.05;  % ���쳣��2
% eps= 0.01; 
% [xv,fv]=AdapGA(@fitness,a,b,NP,NG,Pc1,Pc2,Pm1,Pm2,eps)

%---------exapmle 14.6----------
% a= 0;
% b= 1;
% NP= 50; 
% NG= 500; 
% Pc= 0.9;
% Pm= 0.05; 
% eps= 0.01; 
% [xv,fv]=DblGEGA(@fitness,a,b,NP,NG,Pc,Pm,eps)

%---------exapmle 14.7----------
a= 0;
b= 1;
NP= 80; 
NG= 500; 
Pc1= 0.6;
Pc2= 0.9;
Pm1= 0.02; 
Pm2= 0.05; 
eps= 0.01; 
[xv,fv]=MMAdapGA(@fitness,a,b,NP,NG,Pc1,Pc2,Pm1,Pm2,eps)
