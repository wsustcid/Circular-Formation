function [xm,fv] = SimuAPSO(fitness,N,c1,c2,lamda,M,D)

format long;

%---------------------

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

%--------------------------------
T = - fitness(pg)/log(0.2); % initilize the temperature

for t=1:M

    groupFit = fitness(pg);
    
    for i=1:N
        
        Tfit(i) = exp( - (p(i) - groupFit)/T); % the fitness value under current temperature
        
    end
    
    SumTfit = sum(Tfit);
    
    Tfit = Tfit/SumTfit;
    
    pBet = rand();
    
    for i=1:N
        
        ComFit(i) = sum(Tfit(1:i));
        
        if pBet <= ComFit(i)
            
            pg_plus = x(i,:); % determine the substitute value of pg by the roulette strategy
            
            break;
            
        end
        
    end
    
    C = c1 + c2;
    
    ksi = 2/abs( 2 - C - sqrt(C^2 - 4*C)); %compression factor
    
    for i=1:N

        v(i,:)=ksi*(v(i,:)+c1*rand*(y(i,:)-x(i,:))+c2*rand*(pg_plus-x(i,:)));

        x(i,:)=x(i,:)+v(i,:);

        if fitness(x(i,:))<p(i)

            p(i)=fitness(x(i,:));

            y(i,:)=x(i,:);

        end

        if p(i)<fitness(pg)

            pg=y(i,:);

        end

    end

    T = T * lamda; % lower the temperature
    
    Pbest(t)=fitness(pg);
    
end

xm = pg';

fv = fitness(pg);



