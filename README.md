#JAG_KOM

Sprawdzamy ilość komunikatów na centr_valid_dok w obecnym dniu:

select count(*)as ile, status_przetw from  celina_centr..cntr_valid_dok where data_przeslania >=current_date() group by status_przetw at isolation read uncommitted

Czego wynikiem może być jak poniżej:

 ile           status_przetw   
 ------        ----------------
 2             F               
 450         N               
 35           O                
 17           S               
 7778     Z  

Alarmującym będzie przyrost dokumentów w statusie S (wchodzące) oraz N (niepoprawne) i brak przyrostu w Z (zakończone). Także przyrost O (oczekujących na przesłanie na jednostkę) czy F (walidacja formalna, w trakcie) jest niepożądaną sytuacją.
