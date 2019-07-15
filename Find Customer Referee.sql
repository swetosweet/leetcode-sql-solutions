# Write your MySQL query statement below
SELECT name FROM customer
WHERE referee_id != 2 OR referee_id IS NULL;

# select name from customer where name not in (select name from customer where referee_id=2);

# for this table above query is ok, but not for others
