/*
Table: Triangle

+-------------+------+
| Column Name | Type |
+-------------+------+
| x           | int  |
| y           | int  |
| z           | int  |
+-------------+------+
(x, y, z) is the primary key column for this table.
Each row of this table contains the lengths of three line segments.
 

Write an SQL query to report for every three line segments whether they can form a triangle.

Return the result table in any order.

The query result format is in the following example.

 

Example 1:

Input: 
Triangle table:
+----+----+----+
| x  | y  | z  |
+----+----+----+
| 13 | 15 | 30 |
| 10 | 20 | 15 |
+----+----+----+
Output: 
+----+----+----+----------+
| x  | y  | z  | triangle |
+----+----+----+----------+
| 13 | 15 | 30 | No       |
| 10 | 20 | 15 | Yes      |
+----+----+----+----------+
*/

-- solution1:
select x, y, z, case when x + y > z and x + z > y and z + y > x then 'Yes'
else 'No' end as 'triangle'
from Triangle

-- solution2:
SELECT *, 
IF(x+y>z and y+z>x and z+x>y, "Yes", "No") as triangle 
FROM Triangle
