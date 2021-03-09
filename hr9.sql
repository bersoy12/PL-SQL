declare 
v_name varchar2(50);
v_salary employees.salary%type;
v_employee_id employees.employee_id%type :=130;

begin
select first_name || ' ' || last_name,salary 
INTO v_name, v_salary from employees
where employee_id=v_employee_id;
dbms_output.put_line('The salary of ' || v_name || ' is : '|| v_salary);
end;