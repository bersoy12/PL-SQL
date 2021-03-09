DECLARE
    v_text VARCHAR2(50) NOT NULL DEFAULT 'HELLO';
    v_number NUMBER(4,1) NOT NULL := 50.42;
BEGIN
    v_text:= 'PL/SQL' || ' course';
    dbms_output.put_line(v_text || ' beginner to advanced');
    dbms_output.put_line(v_number || ' beginner to advanced');
END; 