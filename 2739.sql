drop table if exists loan;
create table loan
(
  id numeric,
  name varchar(50),
  value numeric,
  payday timestamp
);

insert into loan(id,name,value,payday)
values
  (1,'Cristian Ghyprievy',3000.50,'2017-10-19'),
  (2,'John Serial',10000,'2017-10-10'),
  (3,'Michael Seven',5000.40,'2017-10-17'),
  (4,'Joana Cabel',2000,'2017-10-05'),
  (5,'Miguel Santos',4050,'2017-10-20');
  
--search
select loan.name,cast(extract(day from loan.payday)as integer) as day from loan
