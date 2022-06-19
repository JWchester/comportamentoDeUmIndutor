            # Comportamento de Indutor

pkg load symbolic;
syms t;

L = sym(100*10^-3,'r');
it = 10*t.*e.^(-5.*t)
%tensão em função do tempo no indutor
vt = L.*diff(it)

%intervalo da variavel em análise a cada 5e-3 saltos
t=[0:5e-3:2];

%Corrente em função do tempo no indutor
it = 10*t.*e.^(-5.*t);
vt = L.*diff(it);


#plotando o gráfico
subplot(211);
plot(t,it,'r'); %gráfico da corrente
xlabel('tempo');
ylabel('');
legend('Corrente');
#hold on;%comando para imprimir outro gráfico na mesma janela do primeiro

subplot(212);
subplot(vt); %gráfico da tensão
%ajustes do gráfico + intervalo de análise em x e y
xlabel('tempo');
ylabel('');
legend('Tensão');



axis([0 1.7 -1 1]);





