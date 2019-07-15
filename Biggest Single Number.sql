# Write your MySQL query statement below
select
(select num as num from my_numbers group by num having count(num)=1 order by num desc limit 1 ) as num;
