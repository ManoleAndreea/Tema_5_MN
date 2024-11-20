% Tema 5 MN
% Manole Andreea - Cristina 321 AA

%   Scrieti un program pentru calculul radicalului  unui numar folosind
% algoritmuul lui Heron. Ilustreaza functionalitatea programului prin
% cateva exemple, facand graficul aproximatiei radacinii (pana la
% convergenta). Verifica corectitudinea rezultatului. 

valoare=5;

% Vom avea 3 exemple, 5, 25, 45;
for j=1:3

    numar=valoare+20;
    aprox_init=numar;
    v=zeros(1, 100);
    v(1)=1;
    toleranta=1e-7;
    for i=1:100
        aprox_urm=0.5*(aprox_init+numar/aprox_init);
        v (i+1)=aprox_urm;
        if abs(aprox_init-aprox_urm)<toleranta
            break;
        end
        aprox_init=aprox_urm;
    end

    disp(aprox_urm)
    disp("Aproximatia curenta este a numarului: ")
    disp(numar)
    disp("Si calculand cu functia MatLab sqrt ne da: ")
    disp(sqrt(numar))
  
    disp("Si graficul: ")
    figure;
    plot(1 : i, v(1 : i), '-o');
    title(['Convergenta']);
    xlabel('Iteratiile');
    ylabel('Aproximarile');
    valoare=numar;
    disp("-------------------------------------------------------------")
end
