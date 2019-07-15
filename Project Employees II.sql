# Write your MySQL query statement below
 select project_id from project group by project_id having count(employee_id)= 
 (select max(cnt) as max_count from (select project_id, count(employee_id) as cnt from project group by project_id) result );
