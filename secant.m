function [xvect,xdif,fx,it_cnt] = secant(fun,a,b,eps)
% fun - funkcja, ktorej miejsce zerowe bedzie poszukiwane
% [a,b] - przedzial poszukiwania miejsca zerowego
% eps - prog dokladnosci obliczen
% 
% xvect - wektor kolejnych wartosci przyblizonego rozwiazania
% xdif - wektor roznic pomiedzy kolejnymi wartosciami przyblizonego rozwiazania
% fx - wektor wartosci funkcji dla kolejnych elementow wektora xvect
% it_cnt - liczba iteracji wykonanych przy poszukiwaniu miejsca zerowego
    xvect = [];
    xdif = [];
    fx = [];
    it_cnt = 1;
    fb = fun(b);
    for i = 1:1000
        % a = x_(k-1)
        % b = x_(k)
        c = b - (fb*(b-a))/(fb-fun(a));
        if i == 1
            if abs(a-c) > abs(b-c)
                previous = a;
            else
                previous = b;
            end
        end
        fc = fun(c);
        xvect(it_cnt) = c;
        xdif(it_cnt) = abs(previous - c);
        fx(it_cnt) = fc;
        previous = c;
        if abs(fc) < eps || abs(fb - fc) < eps
            return;
        end
        a = b;
        b = c;
        fb = fc;
        it_cnt = it_cnt + 1;
    end
end
