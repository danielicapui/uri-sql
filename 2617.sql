DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS providers;

CREATE TABLE providers
(
  id     numeric PRIMARY KEY,
  name   varchar(50),
  street varchar(50),
  city   varchar(50),
  state  varchar(2)
);

CREATE TABLE products
(
  id            numeric PRIMARY KEY,
  name          varchar(50),
  amount         numeric,
  value        numeric(7, 2),
  id_providers  numeric REFERENCES providers (id),
  id_categories numeric REFERENCES categories (id)
);


INSERT INTO providers (id, name, street, city, state)
VALUES (1,'Ajax SA','Presidente Castelo Branco','Porto Alegre','RS'),
       (2,'Sansul SA','Av Brasil','Rio de Janeiro','RJ'),
       (3,'South Chairs','Av Moinho','Santa Maria','RS'),
       (4,'Elon Electro','Apolo','São Paulo','SP'),
       (5,'Mike Electro','Pedro da Cunha','Curitiba','PR');

INSERT INTO products (id,name,amount,value,id_providers)
VALUES (1,'Blue Chair',	30,300.00,5),
       (2,'Red Chair',50,2150.00,1),
       (3,'Disney Wardrobe',400,829.50,4),
       (4,'Blue Toaster',20,9.90,3),
       (5,'Solar Panel',30,3000.25,4);

--search
  --select products.name, providers.name from products,providers
  --where providers.name='Ajax SA' and products.id_providers=1

--solution acepted
  select products.name, providers.name from providers
  join  products on providers.id=products.id_providers 
  and providers.name='Ajax SA'
