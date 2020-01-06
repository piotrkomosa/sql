/*1*/
SELECT first_name, last_name, hire_date FROM employees WHERE hire_date > '1990-01-01' ;

/*2*/
SELECT COUNT(employees.emp_no) from employees where employees.gender ='F';

/*3*/
SELECT e.first_name, e.last_name,de.dept_name
FROM employees e 
JOIN dept_emp d ON e.emp_no=d.emp_no  
JOIN departments de ON d.dept_no = de.dept_no;
/* sprawdzenie czy dziala - where de.dept_name <> 'Customer service';*/

/*4*/
SELECT first_name, last_name, birth_date FROM employees WHERE gender ='F' order by birth_date DESC LIMIT 1;

/*5*/
SELECT e.first_name, e.last_name, t.title FROM employees e JOIN titles t ON e.emp_no=t.emp_no AND t.emp_no='10009 ';

/*6*/
SELECT e.first_name, e.last_name, t.title FROM employees e JOIN titles t ON e.emp_no=t.emp_no AND t.to_date> curdate();

/*7*/
SELECT first_name, last_name, salary FROM salaries s JOIN employees e ON s.emp_no=e.emp_no WHERE salary =  (SELECT MAX(salary) FROM salaries);

/*8*/
SELECT first_name, last_name, salary FROM salaries s JOIN employees e ON s.emp_no=e.emp_no WHERE salary = (SELECT MAX(salary) FROM salaries) 
OR salary=(SELECT MIN(salary) from salaries);

/*9*/
SELECT 
    first_name, last_name
FROM
    employees a
        JOIN
    dept_emp b ON a.emp_no = b.emp_no
        JOIN
    dept_manager c ON b.dept_no = c.dept_no
    where c.to_date> curdate() and b.to_date> curdate();
    
/*10*/
select distinct title from titles ;

