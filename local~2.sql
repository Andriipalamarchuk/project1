
declare 
    v_today date;
    v_id VARCHAR2(100);
    v_pa VARCHAR2(10);
begin
for i in 1..1000000 loop

    select sysdate 
    into v_today 
    from dual;
    
    select dbms_random.string('X', 20) into v_id from dual;
    
    insert into prova 
    values(v_id, v_pa, v_today);
  
end loop;
commit;
end;