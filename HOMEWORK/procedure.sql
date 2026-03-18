CREATE TABLE IF NOT EXISTS employees (
    id SERIAL PRIMARY KEY,
    name VARCHAR(150) NOT NULL,
    birth_date DATE,
    department VARCHAR(300) NOT NULL
);

CREATE OR REPLACE PROCEDURE add_new_employee(
    p_name VARCHAR, 
    p_birth_date DATE, 
    p_department VARCHAR
)
    LANGUAGE plpgsql
AS
$$
BEGIN
    INSERT INTO employees (name, birth_date, department)
    VALUES (p_name, p_birth_date, p_department);
END;
$$;

CALL add_new_employee ('Amir Temur', '1336-04-09', 'Sulton');

SELECT * FROM employees;





ALTER TABLE employees ADD COLUMN salary NUMERIC(15, 2);

UPDATE employees
SET salary = 23000
WHERE id = 1;

CREATE OR REPLACE PROCEDURE update_employee_salary(
    p_emp_id INTEGER,
    p_raise_amount NUMERIC
)
LANGUAGE plpgsql
AS $$
BEGIN
    UPDATE employees
    SET salary = salary + p_raise_amount
    WHERE id = p_emp_id 
      AND salary < 50000;

    IF NOT FOUND THEN
        RAISE NOTICE 'Зарплата сотрудника с ID % не была обновлена (уже выше порога или ID не найден).', p_emp_id;
    END IF;
END;
$$;

CALL update_employee_salary(1, 3000);

SELECT * FROM employees;
