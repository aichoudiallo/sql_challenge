-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Departments" (
    "dept_no" int   NOT NULL,
    "dept_name" VARCHAR(40)   NOT NULL,
    CONSTRAINT "pk_Departments" PRIMARY KEY (
        "dept_no"
     )
);

CREATE TABLE "Dept_emp" (
    "emp_no" int   NOT NULL,
    "dept_no" INT(10)   NOT NULL
);

CREATE TABLE "Dept_manager" (
    "dept_no" INT(10)   NOT NULL,
    "emp_no" INT(11)   NOT NULL
);

CREATE TABLE "employess" (
    "emp_no" INT(11)   NOT NULL,
    "emp_title" int(40)   NOT NULL,
    "birth_date" DATE   NOT NULL,
    "first_name" VARCHAR(14)   NOT NULL,
    "last_name" VARCHAR(14)   NOT NULL,
    "sex" ENUM(M',F')   NOT NULL,
    "hire_date" DATE   NOT NULL
);

CREATE TABLE "salaries" (
    "emp_no" INT(11)   NOT NULL,
    "salary" MONEY   NOT NULL
);

CREATE TABLE "titles" (
    "title_id" INT(11)   NOT NULL,
    "title" VARCHAR(40)   NOT NULL
);

ALTER TABLE "Departments" ADD CONSTRAINT "fk_Departments_dept_name" FOREIGN KEY("dept_name")
REFERENCES "Dept_emp" ("emp_no");

ALTER TABLE "Dept_emp" ADD CONSTRAINT "fk_Dept_emp_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employess" ("last_name");

ALTER TABLE "Dept_manager" ADD CONSTRAINT "fk_Dept_manager_emp_no" FOREIGN KEY("emp_no")
REFERENCES "Departments" ("dept_no");

ALTER TABLE "employess" ADD CONSTRAINT "fk_employess_emp_no" FOREIGN KEY("emp_no")
REFERENCES "Dept_manager" ("dept_no");

ALTER TABLE "employess" ADD CONSTRAINT "fk_employess_last_name" FOREIGN KEY("last_name")
REFERENCES "salaries" ("salary");

ALTER TABLE "salaries" ADD CONSTRAINT "fk_salaries_salary" FOREIGN KEY("salary")
REFERENCES "titles" ("title");

ALTER TABLE "titles" ADD CONSTRAINT "fk_titles_title_id" FOREIGN KEY("title_id")
REFERENCES "Dept_manager" ("dept_no");

