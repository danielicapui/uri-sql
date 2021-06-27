create table lawyers
(
	register integer,
	name varchar(50),
	customers_number integer
);
insert into lawyers(register,name,customers_number)
values
	(1648,'Marty M. Harrison',5),
	(2427,'Jonathan J. Blevins',15),
	(3365,'Chelsey D. Sanders',20),
	(4153,'Dorothy W. Ford',16),
	(5525,'Penny J. Cormier',6);
  
--search

(select lawyers.name,lawyers.customers_number from lawyers
where lawyers.customers_number=(select min(customers_number)  from lawyers) or lawyers.customers_number=(select max(customers_number) from lawyers)
order by customers_number desc
)
union all
select 'Average'as name,round(avg(lawyers.customers_number),0) from lawyers
