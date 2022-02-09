function [xm,fv] = SelPSO(fitness,N,c1,c2,w,M,D)

format long;

%---------------initilize------------------

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

%-----------------

for t=1:M

    for i=1:N

        v(i,:)=w*v(i,:)+c1*rand*(y(i,:)-x(i,:))+c2*rand*(pg-x(i,:));

        x(i,:)=x(i,:)+v(i,:);
        
        fx(i) = fitness(x(i,:));

        if fx(i)<p(i)

            p(i)=fx(i);

            y(i,:)=x(i,:);

        end

        if p(i)<fitness(pg)

            pg=y(i,:);

        end

    end
    %------sort fx and use the best half of the particle substitute the other half 
    [sortf,sortx] = sort(fx);
    
    exIndex = round((N-1)/2);
    
    x(sortx((N-exIndex+1):N)) = x(sortx(1:exIndex));
    
    v(sortx((N-exIndex+1):N)) = v(sortx(1:exIndex));
    
end

xm = pg';

fv = fitness(pg);



