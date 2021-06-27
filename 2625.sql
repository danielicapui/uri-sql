drop table if exists natural_person;
create table natural_person
(
	id_customers numeric,
	cpf varchar(14)
);

insert into natural_person(id_customers,cpf)
values
	(1,'26774287840'),
	(2,'97918477200');
  
  --search
  select substring(cpf,1,3)||'.'||substring(cpf,4,3)||'.'||substring(cpf,7,3)||'-'||substring(cpf,10,11) from natural_person;
