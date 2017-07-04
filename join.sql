select prova.nome, prova.cognome, jin.ordercode
from prova
inner join jin
on prova.pid = jin.pid
order by prova.cognome
;