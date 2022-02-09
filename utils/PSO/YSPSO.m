function [xm,fv] = YSPSO(fitness,N,c1,c2,M,D)
phi = c1 + c2;
if phi <= 4
    disp('the sum of c1 and c2 must lager that 4');
    xm = NaN;
    fv = NaN;
    return;
end
format long;

%------initialize particle------------%

for i=1:N

    for j=1:D

        x(i,j)=randn; 

        v(i,j)=randn;

    end

end

%-compute fitness of each particle and initialize pi and pg-------%

for i=1:N

    p(i)=fitness(x(i,:));

    y(i,:)=x(i,:); % pbest 

end

pg = x(N,:);             % gbest

for i=1:(N-1)

    if fitness(x(i,:))<fitness(pg)

        pg=x(i,:);

    end

end

%-----------------iteration-------------------%

for t=1:M

    for i=1:N
        ksi = 2 / abs(2 - phi - sqrt(phi^2 - 4*phi));
        v(i,:) = v(i,:)+c1*rand*(y(i,:)-x(i,:))+c2*rand*(pg-x(i,:));
        v(i,:) = ksi*v(i,:);

        x(i,:)=x(i,:)+v(i,:);

        if fitness(x(i,:))<p(i)

            p(i)=fitness(x(i,:)); % update fitness
                                  % pbest and gbest are determined by fitness
            y(i,:)=x(i,:);        % update pbest

        end

        if p(i)<fitness(pg)

            pg=y(i,:); % update gbest

        end

    end

    Pbest(t)=fitness(pg);
end
xm = pg';
fv = fitness(pg);



