/* Write your T-SQL query statement below */
With Duplicate as(
select Row_Number() over (partition by email order by email) Row_Num, Email
from Person
)
select distinct Email
from Duplicate
where Row_Num>1;
