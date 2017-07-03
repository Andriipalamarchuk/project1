declare 
    v_today date;
    v_id VARCHAR2(100);
begin
for i in 1..1000000 loop
    select sysdate 
    into v_today 
    from dual;
    v_id := 'A' || i;
    insert into prova 
    values(v_id, v_id, v_today);
    end loop;
    commit;
end;