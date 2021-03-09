create type e_list is varray(15) of varchar2(50);
/
declare
    employees e_list := e_list();   --constructor
    idx number := 1;
begin
    for i in 100..110 loop
        employees.extend;
        select first_name into employees(idx) from employees where employee_id = i;
        idx:= idx+1;
    end loop;
    
    for x in 1..employees.count() loop
        dbms_output.put_line(employees(x));
    end loop;
end;