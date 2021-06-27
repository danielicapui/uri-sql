DROP TABLE IF EXISTS locations;
--table locations
--table customers in 2615.sql
CREATE TABLE locations
(
  id     numeric PRIMARY KEY,
  locations_date   date,
  id_customers numeric
);

INSERT INTO locations(id,locations_date,id_customers)
VALUES (1,'2016-10-09',3),
       (2,'2016-09-02',1),
       (3,'2016-08-02',4),
       (4,'2016-09-02',2),
       (5,'2016-03-02',6),
       (6,'2016-04-04',4);

--search
select customers.id,name from customers
where customers.id not in(select id_customers from locations)
