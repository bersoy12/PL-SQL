begin 
    for i in 1..10 loop
        insert into employees_copy
           (employee_id,first_name,last_name,email,hire_date,job_id,salary)
        values
            (employee_id_seq.nextval,'employee_id#' ||employee_id_seq.nextval,'temp_emp','abc@xmail.com', sysdate ,'IT_PROG',1000);         
    end loop;
end;
/
select * from employees_copy;