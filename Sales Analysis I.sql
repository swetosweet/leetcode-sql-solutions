# Write your MySQL query statement below

# SELECT sum(price) FROM sales group by seller_id order by sum(price) desc limit 1;

# above query executes perfectly. 2nd time I ran below query
SELECT seller_id FROM Sales GROUP BY seller_id HAVING sum(price) >= 
(SELECT sum(price) FROM sales group by seller_id order by sum(price) desc limit 1);
