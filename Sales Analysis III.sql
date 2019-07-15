# Write your MySQL query statement below
# select product_id,product_name from Product where product_id not in (select product_id from sales where sale_date between '2019-04-01' and '2019-12-01');

#select product_id,product_name from product where product_id not in (select product_id from sales where sale_date not between '2019-01-01' and '2019-03-31');

SELECT product_id, product_name
FROM product
JOIN SALES
USING(product_id)
GROUP BY product_id
HAVING sum(CASE WHEN sale_date between '2019-01-01' and '2019-03-31' THEN 1 ELSE 0 end) > 0
AND sum(CASE WHEN sale_date between '2019-01-01' and '2019-03-31' THEN 0 else 1 end) = 0
