INSERT INTO employees (name, birth_date, department, salary) VALUES
    ('Alisher Navoiy', '1441-02-09', 'Shoir', 60000),
    ('Mirzo Ulugbek', '1394-03-22', 'Astronom', 75000),
    ('Abu Ali ibn Sino', '0980-08-16', 'Tabib', 80000),
    ('Al-Xorazmiy', '0783-01-01', 'Matematik', 90000);

CREATE OR REPLACE VIEW employee_details AS
SELECT
    id,
    name, 
    EXTRACT(YEAR FROM AGE(birth_date))::INTEGER AS age,
    department
FROM employees;

SELECT * FROM employee_details;





INSERT INTO employees (name, birth_date, department, salary) VALUES
    ('Abul Hasan Muhammad al-Ifriqiy', '0864-01-01', 'Shoir', 45000),
    ('Zahiriddin Muhammad Bobur', '1483-02-14', 'Shoir', 95000);

CREATE OR REPLACE VIEW department_salaries AS
SELECT 
    department, 
    SUM(salary) AS total_salary
FROM employees
GROUP BY department;

SELECT * FROM department_salaries;





CREATE TABLE IF NOT EXISTS projects (
    id SERIAL PRIMARY KEY,
    project_name VARCHAR(255) NOT NULL,
    start_date DATE,
    budget NUMERIC(15, 2)
);

CREATE TABLE IF NOT EXISTS assignments (
    id SERIAL PRIMARY KEY,
    project_id INTEGER NOT NULL REFERENCES projects(id) ON DELETE CASCADE,
    employee_id INTEGER NOT NULL REFERENCES employees(id) ON DELETE CASCADE,
    role VARCHAR(100) NOT NULL,
    assignment_date DATE DEFAULT CURRENT_DATE
);

INSERT INTO projects (project_name, budget) VALUES
    ('Buyuk Ipak yoli', 1000000);

INSERT INTO assignments (project_id, employee_id, role) VALUES
    (1, 1, 'Maslahatchi');

CREATE OR REPLACE VIEW project_assignments AS
SELECT 
    p.project_name, 
    e.name AS employee_name, 
    a.role
FROM projects p
INNER JOIN assignments a ON p.id = a.project_id
INNER JOIN employees e ON a.employee_id = e.id;

SELECT * FROM project_assignments;
