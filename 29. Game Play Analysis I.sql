# Write your MySQL query statement below
#select player_id, event_date as first_login from (select *, row_number() over #(partition by player_id order by event_date) as row_num from Activity) as # result where row_num=1;

select player_id, min(event_date) as first_login
from activity group by player_id;

# select player_id, event_date as first_login from
# (select player_id, event_date,
# rank() over (partition by player_id order by event_date) as rnk
# from Activity) as temp where rnk =1;
