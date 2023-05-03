clc
clear all
close all

options = optimset('Display','iter');
fzero(@tan,6, options);
fzero(@tan,4.5, options);


a = 0;   
b = 60000;
eps = 1e-3;

[xvect,xdif,fx,it_cnt] = bisection(@czas,a,b,eps);

figure();
plot(xvect);
title('Wartosci przybliżonego rozwiązania liczby parametrów przy użyciu metody bisekcji');
xlabel('Numer iteracji');
ylabel('Wartość');
saveas(gcf, 'fun1_przyblizenia_bisekcja.png');

figure();
semilogy(xdif);
title('Zmiany wartości przybliżonego rozwiązania liczby parametrów przy użyciu metody bisekcji');
xlabel('Numer iteracji');
ylabel('Różnica pomiędzy kolejnymi wartościami');
saveas(gcf, 'fun1_roznice_bisekcja.png');

[xvect,xdif,fx,it_cnt] = secant(@czas,a,b,eps);

figure();
plot(xvect);
title('Wartosci przybliżonego rozwiązania liczby parametrów  przy użyciu metody siecznych');
xlabel('Numer iteracji');
ylabel('Wartość');
saveas(gcf, 'fun1_przyblizenia_sieczne.png');

figure();
semilogy(xdif);
title('Zmiany wartości przybliżonego rozwiązania liczby parametrów przy użyciu metody siecznych');
xlabel('Numer iteracji');
ylabel('Różnica pomiędzy kolejnymi wartościami');
saveas(gcf, 'fun1_roznice_sieczne.png');

b = 50;
eps = 1e-12;

[xvect,xdif,fx,it_cnt] = bisection(@impendancja,a,b,eps);

figure();
plot(xvect);
title('Wartosci przybliżonego rozwiązania prędkości kątowej omega[rad/s] przy użyciu metody bisekcji');
xlabel('Numer iteracji');
ylabel('Wartość');
saveas(gcf, 'fun2_przyblizenia_bisekcja.png');

figure();
semilogy(xdif);
title('Zmiany wartości przybliżonego rozwiązania prędkości kątowej omega[rad/s] przy użyciu metody bisekcji');
xlabel('Numer iteracji');
ylabel('Różnica pomiędzy kolejnymi wartościami');
saveas(gcf, 'fun2_roznice_bisekcja.png');

[xvect,xdif,fx,it_cnt] = secant(@impendancja,a,b,eps);

figure();
plot(xvect);
title('Wartosci przybliżonego rozwiązania prędkości kątowej omega[rad/s] przy użyciu metody siecznych');
xlabel('Numer iteracji');
ylabel('Wartość');
saveas(gcf, 'fun2_przyblizenia_sieczne.png');

figure();
semilogy(xdif);
title('Zmiany wartości przybliżonego rozwiązania prędkości kątowej omega[rad/s] przy użyciu metody siecznych');
xlabel('Numer iteracji');
ylabel('Różnica pomiędzy kolejnymi wartościami');
saveas(gcf, 'fun2_roznice_sieczne.png');


[xvect,xdif,fx,it_cnt] = bisection(@predkosc,a,b,eps);

figure();
plot(xvect);
title('Wartosci przybliżonego rozwiązania czasu t[s] przy użyciu metody bisekcji');
xlabel('Numer iteracji');
ylabel('Wartość');
saveas(gcf, 'fun3_przyblizenia_bisekcja.png');

figure();
semilogy(xdif);
title('Zmiany wartości przybliżonego rozwiązania pczasu t[s] przy użyciu metody bisekcji');
xlabel('Numer iteracji');
ylabel('Różnica pomiędzy kolejnymi wartościami');
saveas(gcf, 'fun3_roznice_bisekcja.png');

[xvect,xdif,fx,it_cnt] = secant(@predkosc,a,b,eps);

figure();
plot(xvect);
title('Wartosci przybliżonego rozwiązania czasu t[s] przy użyciu metody siecznych');
xlabel('Numer iteracji');
ylabel('Wartość');
saveas(gcf, 'fun3_przyblizenia_sieczne.png');

figure();
semilogy(xdif);
title('Zmiany wartości przybliżonego rozwiązania czasu t[s]] przy użyciu metody siecznych');
xlabel('Numer iteracji');
ylabel('Różnica pomiędzy kolejnymi wartościami');
saveas(gcf, 'fun3_roznice_sieczne.png');