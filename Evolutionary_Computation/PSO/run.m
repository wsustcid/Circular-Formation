clear all;
%---------------example 13.1--------------------%
% N=40;
% c1=1;
% c2=2;
% w=0.5;
% M=1000;
% D=30;
% 
% [xm,fv]=PSO(@fitness,N,c1,c2,w,M,D)

%---------------example 13.2--------------------%
% N=40;
% c1=2.05;
% c2=2.05;
% M=10000;
% D=2;
% % another kinds of parameter: 30, 2.8, 1.3, 10000
% [xm,fv]=YSPSO(@fitness,N,c1,c2,M,D)

%---------------example 13.3--------------------%
% N=40;
% c1=2;
% c2=2;
% wmax=0.9;
% wmin=0.4;
% M=10000;
% D=2;
% [xm,fv] = LinWPSO(@fitness,N,c1,c2,wmax,wmin,M,D)

%---------------example 13.4--------------------%
% N=40;
% c1=2;
% c2=2;
% wmax=0.9;
% wmin=0.6;
% M=10000;
% D=2;
% [xm,fv] = SAPSO(@fitness,N,c1,c2,wmax,wmin,M,D)

%---------------example 13.5--------------------%
% N=40;
% c1=2;
% c2=2;
% mean_max=0.9;
% mean_min=0.6;
% sigma=0.2;
% M=10000;
% D=2;
% [xm,fv] = RandWPSO(@fitness,N,c1,c2,mean_max,mean_min,sigma,M,D)

%---------------example 13.6--------------------%
% N=40;
% cmax=2.1;
% cmin=0.8;
% w=0.9;
% M=10000;
% D=2;
% [xm,fv] = LnCPSO(@fitness,N,cmax,cmin,w,M,D)

%---------------example 13.7--------------------%
% N=40;
% c1max=2.5;
% c1min=0.5;
% c2max=0.5;
% c2min=2.5;
% w=0.9;
% M=10000;
% D=2;
% [xm,fv] = AsyLnCPSO(@fitness,N,c1max,c1min,c2max,c2min,w,M,D)

%---------------example 13.8--------------------%
% N=40;
% w=0.7;
% c1=1;
% c2=1;
% M=10000;
% D=2;
% [xm,fv] = SecPSO(@fitness,N,w,c1,c2,M,D)

%---------------example 13.9--------------------%
% N=40;
% w=0.78;
% c1=1;
% c2=1;
% M=10000;
% D=2;
% [xm,fv] = SecVibratPSO(@fitness,N,w,c1,c2,M,D)

%---------------example 13.10--------------------%
% N=50;
% w=0.8;
% c1=2;
% c2=2;
% xmax=10*ones(1,5);
% xmin=-10*ones(1,5);
% M=9000;
% MaxC=10;
% D=5;
% [xm,fv] = CLSPSO(@fitness,N,c1,c2,w,xmax,xmin,M,MaxC,D)

%---------------example 13.11--------------------%
% N=40;
% w=0.7;
% c1=2;
% c2=2;
% M=10000;
% D=5;
% [xm,fv] = SelPSO(@fitness,N,c1,c2,w,M,D)

%---------------example 13.12--------------------%
% slow
% N=40;
% c1=2;
% c2=2;
% w=0.7;
% Pc=0.9; % probability of cross breeding
% Sp=0.2; % scale or proportion of the cross breeding
% M=10000;
% D=5;
% [xm,fv] = BreedPSO(@fitness,N,c1,c2,w,Pc,Sp,M,D)

%---------------example 13.13--------------------%
% slow
N=40;
c1=2.05;
c2=2.05;
lamda=0.5;
M=10000;
D=5;
[xm,fv] = SimuAPSO(@fitness,N,c1,c2,lamda,M,D)