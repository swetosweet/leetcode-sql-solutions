# Write your MySQL query statement below
SELECT s.NAME FROM   salesperson s 
WHERE  sales_id NOT IN(SELECT sales_id FROM   orders o 
LEFT JOIN company c ON o.com_id = c.com_id WHERE  c.NAME = 'RED');
