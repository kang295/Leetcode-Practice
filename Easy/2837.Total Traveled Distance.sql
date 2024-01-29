/*
Table: Users

+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| user_id     | int     |
| name        | varchar |
+-------------+---------+
user_id is the column with unique values for this table.
Each row of this table contains user id and name.
Table: Rides

+--------------+------+
| Column Name  | Type |
+--------------+------+
| ride_id      | int  |
| user_id      | int  | 
| distance     | int  |
+--------------+------+
ride_id is the column of unique values for this table.
Each row of this table contains ride id, user id, and traveled distance.

Write a solution to calculate the distance traveled by each user. If there is a user who hasn't completed any rides, then their distance should be considered as 0. Output the user_id, name and total traveled distance.

Return the result table ordered by user_id in ascending order.

The result format is in the following example.
*/

-- solution:
select U.user_id, U.name, ifnull(sum(R.distance),0) as 'traveled distance'
from Users U left join Rides R on U.user_id = R.user_id
group by U.user_id
order by U.user_id 
 
