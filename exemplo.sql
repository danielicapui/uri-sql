CREATE TABLE aluno (
  id NUMERIC PRIMARY KEY,
  name CHARACTER VARYING (255),
  nota Numeric,
  city CHARACTER VARYING (255),
);

INSERT INTO aluno(id, name,nota,city)
VALUES 
  (1,'Pedro Augusto da Rocha',10,'Porto Alegre'),
  (2,'Antonio Carlos Mamel',9,'Belo Horizonte'),
  (3,'Daniel Lucas ',8,'Icapui'),
  (4, 'Marcos Antônio dos Santos',7,'Porto Alegre');

  
  /*  Execute this query to drop the tables */
  -- DROP TABLE customers; --
