function [xm,fv] = SecPSO(fitness,N,w,c1,c2,M,D)

format long;

%------initialize------------

for i=1:N

    for j=1:D

        x(i,j)=randn;  
        
        xl(i,j)=randn;

        v(i,j)=randn;  

    end

end

%------compute fitness of each particle and initialize pi and pg----------------------

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

%-----------------------iteration-----------------------------

for t=1:M

    for i=1:N

        v(i,:)=w*v(i,:)+c1*rand*(y(i,:)-2*x(i,:)+xl(i,:))+c2*rand*(pg-2*x(i,:)+ xl(i,:));
        
        xl(i,:) = x(i,:); % save it to use as the pervious position

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



