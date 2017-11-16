function [xm,fv]=PSO(fitness,N,c1,c2,w,M,D)
% objective function: fitness;
% number of particles: N;
% learning factor1: c1;
% learning factor2: c2;
% inertia weight: w;
% max iteration: M;
% number of variable: D;
% value of x which makes f reach its minimium: xm;
% minimum of objective function: fv;

format long;

for i=1:N
    for j=1:D
        x(i,j)=randn; % randomly initialize position
        v(i,j)=randn; % randomly initialize velocity
    end
end

for i=1:N
    p(i)=fitness(x(i,:));
    y(i,:)=x(i,:); % pbest
end

pg=x(N,:);
for i=1:(N-1)
    if fitness(x(i,:))<fitness(pg)
        pg=x(i,:); % gbest
    end
end

for t=1:M
    for i=1:N
        v(i,:) = w*v(i,:) + c1*rand*(y(i,:)-x(i,:)) + c2*rand*(pg-x(i,:));
        x(i,:) = x(i,:) + v(i,:);
        if fitness(x(i,:)) < p(i)
            p(i)=fitness(x(i,:));
            y(i,:)=x(i,:);
        end
        if p(i) < fitness(pg)
            pg=y(i,:);
        end
    end
    pbest(t)=fitness(pg);
end

xm=pg';
fv=fitness(pg);

end