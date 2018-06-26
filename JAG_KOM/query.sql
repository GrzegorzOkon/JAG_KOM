select count(*) as ile, status_przetw from celina_centr..cntr_valid_dok where data_przeslania >=current_date() group by status_przetw at isolation read uncommitted
go