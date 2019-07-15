# Write your MySQL query statement below
select c.Name as Customers
 from Customers as c
 left join Orders as o on c.Id=o.CustomerId where o.customerId is null;
