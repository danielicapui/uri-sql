DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS providers;
DROP TABLE IF EXISTS categories;

CREATE TABLE providers
(
  id     numeric PRIMARY KEY,
  name   varchar(50),
  street varchar(50),
  city   varchar(50),
  state  varchar(2)
);
CREATE TABLE categories
(
	id numeric,
	name varchar(50)
);

CREATE TABLE products
(
  id            numeric PRIMARY KEY,
  name          varchar(50),
  amount        numeric,
  price         numeric(7, 2),
  id_providers  numeric, --REFERENCES providers (id),
  id_categories numeric --REFERENCES categories (id)
);

INSERT INTO categories(id,name)
VALUES  (1,'Super Luxury'),
		(2,'Imported'),
		(3,'Tech'),
		(4,'Vintage'),
		(5,'Supreme');

INSERT INTO providers (id, name, street, city, state)
VALUES (1,'Ajax SA','Presidente Castelo Branco','Porto Alegre','RS'),
       (2,'Sansul SA','Av Brasil','Rio de Janeiro','RJ'),
       (3,'South Chairs','Av Moinho','Santa Maria','RS'),
       (4,'Elon Electro','Apolo','São Paulo','SP'),
       (5,'Mike Electro','Pedro da Cunha','Curitiba','PR');

INSERT INTO products (id,name,amount,price,id_providers,id_categories)
VALUES (1,'Blue Chair',	30,300.00,5,5),
       (2,'Red Chair',50,2150.00,2,1),
       (3,'Disney Wardrobe',400,829.50,4,1),
       (4,'Blue Toaster',20,9.90,3,1),
       (5,'TV',30,3000.25,2,2);
--search
select products.name,providers.name,products.price from products
join providers on products.id_providers=providers.id
join categories on products.id_categories=categories.id
where products.price>1000 and categories.name='Super Luxury'
