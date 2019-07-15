# Write your MySQL query statement below
select project_id,round(avg(experience_years),2) as average_years from
(select project_id,p.employee_id,name, experience_years from Project p inner join Employee e on p.employee_id=e.employee_id) result group by project_id;
