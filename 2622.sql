drop table if exists legal_person;
create table legal_person
(
	id_customers numeric,
	cnpj varchar(18),
	contact varchar(50)
);
insert into legal_person(id_customers,cnpj,contact)
values
	(4,'85883842000191','99767-0562'),
	(5,'47773848000117','99100-8965');
--search
select customers.name from customers
join legal_person on legal_person.id_customers=customers.id
