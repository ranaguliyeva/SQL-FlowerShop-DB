/*Task 1:
Description: Retrieve the employee ID, first name, department name, job title, and country name of all employees 
along with their corresponding department and job title information. 
Include employees without a country.*/
select e.employee_id, e.first_name, d.department_name, j.job_title, c.country_name
from employees e
join departments d on e.department_id=d.department_id
join jobs j on e.job_id=j.job_id
join locations l on d.location_id=l.location_id
right join countries c on l.country_id=c.country_id;

/*Task 2:
Description: Retrieve the employee ID, first name, department name, job title, and country name of all employees 
along with their corresponding department and country information. 
Include employees without a job title.*/
select e.employee_id, e.first_name, d.department_name, j.job_title, c.country_name
from employees e
join departments d on e.department_id=d.department_id
join locations l on d.location_id=l.location_id
join countries c on l.country_id=c.country_id
left join jobs j on e.job_id=j.job_id;

/*Task 3:
Description: Retrieve the employee ID, first name, department name, job title, and country name of all employees 
along with their corresponding job title and country information. 
Include employees without a department.*/
select e.employee_id, e.first_name, d.department_name, j.job_title, c.country_name
from employees e
left join departments d on e.department_id=d.department_id
left join jobs j on e.job_id=j.job_id
left join locations l on d.location_id=l.location_id
left join countries c on l.country_id=c.country_id;
 
/*Task 4:
Description: Retrieve the employee ID, first name, department name, job title, and country name of all employees 
along with their corresponding department, job title, and country information. 
Include employees without a department.*/
select e.employee_id, e.first_name, d.department_name, j.job_title, c.country_name
from employees e
join departments d on e.department_id=d.department_id
join jobs j on e.job_id=j.job_id
join locations l on d.location_id=l.location_id
join countries c on l.country_id=c.country_id;

/*Task 5:
Description: Retrieve the employee ID, first name, department name, job title, and country name of all employees 
along with their corresponding department, job title, and country information. 
Include employees without a department, job title, or country.*/
select e.employee_id, e.first_name, d.department_name, j.job_title, c.country_name
from employees e
left join departments d on e.department_id=d.department_id
left join jobs j on e.job_id=j.job_id
left join locations l on d.location_id=l.location_id
left join countries c on l.country_id=c.country_id;