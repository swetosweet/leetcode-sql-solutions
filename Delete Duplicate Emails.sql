# Write your MySQL query statement below
Delete t1 FROM Person t1 INNER JOIN Person t2
Where t1.Email=t2.Email and t1.Id > t2.Id;
