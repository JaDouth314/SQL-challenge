-- Create employees table
DROP TABLE employees;

CREATE TABLE "employees" (
    "emp_no" INTEGER   NOT NULL,
    "emp_title_id" VARCHAR(30)   NOT NULL,
    "birth_date" DATE   NOT NULL,
    "first_name" VARCHAR(30)   NOT NULL,
    "last_name" VARCHAR(30)   NOT NULL,
    "sex" VARCHAR(30)   NOT NULL,
    "hire_date" DATE   NOT NULL,
    CONSTRAINT "pk_employees" PRIMARY KEY (
        "emp_no","emp_title_id"
     )
);

SELECT * FROM employees;

-- Create department table
DROP TABLE department;

CREATE TABLE "department" (
    "dept_no" VARCHAR(30)   NOT NULL,
    "dept_name" VARCHAR(30)   NOT NULL,
    CONSTRAINT "pk_department" PRIMARY KEY (
        "dept_no"
     )
);

SELECT * FROM department;

-- Create department employee table
DROP TABLE dept_emp;

CREATE TABLE "dept_emp" (
    "emp_no" INTEGER   NOT NULL,
    "dept_no" VARCHAR(30)   NOT NULL
);

SELECT * FROM dept_emp;

-- Create department manager table
DROP TABLE dept_manager;

CREATE TABLE "dept_manager" (
    "dept_no" VARCHAR(30)   NOT NULL,
    "emp_no" INTEGER   NOT NULL
);

SELECT * FROM dept_manager;

-- Create salaries table
DROP TABLE salaries;

CREATE TABLE "salaries" (
    "emp_no" INTEGER   NOT NULL,
    "salary" INTEGER   NOT NULL
);

SELECT * FROM salaries;

-- Create titles table
DROP TABLE titles

CREATE TABLE "titles" (
    "title_id" VARCHAR(30)   NOT NULL,
    "title" VARCHAR(30)   NOT NULL
);

SELECT * FROM titles;

---- Constraints and FKs from QuickDBD
--ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_emp_no" FOREIGN KEY("emp_no")
--REFERENCES "employees" ("emp_no");

--ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_dept_no" FOREIGN KEY("dept_no")
--REFERENCES "department" ("dept_no");

--ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_dept_no" FOREIGN KEY("dept_no")
--REFERENCES "department" ("dept_no");

--ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_emp_no" FOREIGN KEY("emp_no")
--REFERENCES "employees" ("emp_no");

--ALTER TABLE "salaries" ADD CONSTRAINT "fk_salaries_emp_no" FOREIGN KEY("emp_no")
--REFERENCES "employees" ("emp_no");

--ALTER TABLE "titles" ADD CONSTRAINT "fk_titles_title_id" FOREIGN KEY("title_id")
--REFERENCES "employees" ("emp_title_id");

