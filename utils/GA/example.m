clear all;
%---------exapmle 14.1----------
% a= 0;%自变量下界
% b= 30;%自变量上界
% NP= 50; % 种群个体数
% NG= 100; % 最大进化代数
% Pc= 0.9; % 杂交概率
% Pm= 0.04; % 变异概率
% eps= 0.01; % 自变量离散精度
% 
% [xv,fv]=myGA(@fitness,a,b,NP,NG,Pc,Pm,eps)

%---------exapmle 14.2----------
% a= 0;
% b= 4;
% NP= 50; 
% NG= 500; 
% q=0.2; % 最好个体的选择概率
% Pc= 0.9;
% Pm= 0.05; 
% eps= 0.01; 
% [xv,fv] = SBOGA(@fitness,a,b,NP,NG,q,Pc,Pm,eps)

%---------exapmle 14.3----------
% a= 0;
% b= 4;
% NP= 50; 
% NG= 500; 
% ksi0=2; % 选择压力调节值的初始值 
% c= 0.9; % 选择压力调节值的缩小系数
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
% alpha=0.6; % 密集因子
% Pbm=0.2;  % 大变异概率
% eps= 0.01; 
% [xv,fv]=GMGA(@fitness,a,b,NP,NG,Pc,Pm,alpha,Pbm,eps)

%---------exapmle 14.5----------
% a= 0;
% b= 4;
% NP= 50; 
% NG= 500; 
% Pc1= 0.5;  % 杂交常数1
% Pc2= 0.9;  % 杂交常数2
% Pm1= 0.02; % 变异常数1
% Pm2= 0.05;  % 变异常数2
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
