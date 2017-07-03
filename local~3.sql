declare 
    v_pa VARCHAR2(1000);
    cursor c is select NOME 
    from prova; 
begin
for r in c loop

    v_pa='A ' || 
    
    update prova set COGNOME = v_pa
    where NOME = r.nome;
  
end loop;
commit;
end;