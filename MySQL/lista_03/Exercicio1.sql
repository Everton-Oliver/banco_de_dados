CREATE DATABASE db_RH2;
use db_RH2;
CREATE TABLE tb_categoria (
	id_categoria int primary key not null auto_increment,
    tipo_carne varchar(30),
    origem varchar(30)
    );
    
CREATE TABLE tb_produto (
	nome varchar(30),
	peso decimal (4,2),
	validade date,
	preco decimal (4,2),
    id_categoria integer,
    CONSTRAINT tb_categoria FOREIGN KEY (id_categoria) REFERENCES tb_categoria (id_categoria)
    );
INSERT INTO tb_categoria (tipo_carne, origem) VALUES
	("Soja","Vegetal"),
	("Carne Vermelha","Animal"),
	("Carne Branca","Animal");
	
INSERT INTO tb_produto (id_categoria,nome, peso, validade, preco) VALUES
	(2,"Alcatra", 47.50,'2020-12-02',80.45),
	(3,"Peito de frango", 40.00,'2020-12-10',20.50),
	(2,"linguiça calabresa", 26.35,'2020-12-03',15.00),
	(2,"Costela suína", 14.20,'2020-12-12',5.00),
	(1,"Carne de soja", 70.54,'2021-02-10',50.00),
	(2,"Hamburguer", 30.00,'2021-02-30',3.50),
	(1,"Tofu", 10.22,'2021-03-03',25.39),
	(2,"Patinho", 50.00,'2021-04-30',30.00);
        
select * from tb_produto where preco > 50.00;

SELECT * FROM tb_produto
WHERE preco BETWEEN 3.00 AND 60.00;

SELECT * FROM tb_produto WHERE nome LIKE 'CO%';

SELECT * FROM tb_produto
INNER JOIN tb_categoria
ON tb_produto.id_categoria = tb_categoria.id_categoria;

SELECT nome FROM tb_produto WHERE id_categoria = 2;
