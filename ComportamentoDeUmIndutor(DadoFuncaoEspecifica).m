            # Comportamento de Indutor

%representando as equações atráves da forma convencional no print
pkg load symbolic;
syms t;

L = sym(100*10^-3,'r');
it = 10.*t.*e.^(-5.*t)
vt = 0.1.*diff(it)
%intervalo da variavel em análise a cada 5e-3 saltos
t=[0:5e-3:2];

%Corrente em função do tempo no indutor
it = 10.*t.*e.^(-5.*t);

%tensão em função t(obtida devido a linha 9)
vt = -5.*t.*e.^(-5*t)+e.^(-5.*t);

[Max_corrente,t_Max_corrente]= max(it);
Max_corrente
t_Max_corrente = t(t_Max_corrente)

[Min,tMin]= min(it);
Min
t(tMin)

[Max,tMax]= max(vt);
Max
t(tMax)

[Min,tMin]= min(vt);
Min
t(tMin)




#plotando o gráfico

%gráfico da corrente
plot(t,it,'r');
hold on;
%gráfico da Tensão
plot(t,vt,'b')


% intervalos dos eixos x e y em análise
axis([0 1.7 -1 1]);





