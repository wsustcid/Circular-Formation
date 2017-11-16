function [xm,fv] = AsyLnCPSO(fitness,N,c1max,c1min,c2max,c2min,w,M,D)

format long;

%------------------

for i=1:N

    for j=1:D

        x(i,j)=randn;  

        v(i,j)=randn;  

    end

end

%----------------------------

for i=1:N

    p(i)=fitness(x(i,:));

    y(i,:)=x(i,:);

end

pg = x(N,:);           

for i=1:(N-1)

    if fitness(x(i,:))<fitness(pg)

        pg=x(i,:);

    end

end

%------进入主要循环，按照公式依次迭代------------

for t=1:M

    c1 = c1max - (c1max - c1min)*t/M;
    
    c2 = c2max - (c2max - c2min)*t/M;
    
    for i=1:N

        v(i,:)=w*v(i,:)+c1*rand*(y(i,:)-x(i,:))+c2*rand*(pg-x(i,:));

        x(i,:)=x(i,:)+v(i,:);

        if fitness(x(i,:))<p(i)

            p(i)=fitness(x(i,:));

            y(i,:)=x(i,:);

        end

        if p(i)<fitness(pg)

            pg=y(i,:);

        end

    end

    Pbest(t)=fitness(pg);
end
xm = pg';
fv = fitness(pg);



