
#select all cols
select * from table;

#select few cols
select col1,col2 from table;

#insert
Insert into table (col1,col2) VALUES ("abc","def");

#Update
Update table set col2="value2" where col1="value1";

#Delete
Delete from table where col1="value1";

#Filter
Select col1,col2 from table where col1 = "value1";

#group by and having
select city,avg(salary) as avg_salary from table group by city
 having avg_salary > 20000 order by avg_salary desc;

#joins
select a.col1,b.col2 from table1 a join table2 b on a.col1=b.col2;

#union
select * from table1
union
select * from table1;

#subquery
select
* from table1
where 
transaction_date=(
	select max(transaction_date) from table1 
 	where id in(1234,5678));

#CTE
With selection as
(
	select * from podcasts 
	where dateposted="2021-05-22"
)

select title from selection;

#window functions
select name,rank()
over (partition by country_iso order by score desc)
as country_rank 
from table;
