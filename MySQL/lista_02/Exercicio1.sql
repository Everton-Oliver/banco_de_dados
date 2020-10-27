CREATE DATABASE db_RH2;
use db_RH2;
CREATE TABLE tb_cargo (
	id_cargo int primary key not null auto_increment,
    nome_cargo varchar(30),
    setor_cargo varchar(30)
    );
CREATE TABLE tb_funcionarios (
	re_fn int primary key not null auto_increment,
    nome_fn varchar(30) not null,
    nascimento_fn date not null,
    salario_fn double not null,
    sexo_fn enum('M','F'),
	id_cargo integer,
    CONSTRAINT fk_cargo FOREIGN KEY (id_cargo) REFERENCES tb_cargo (id_cargo)
    );
INSERT INTO tb_cargo (nome_cargo, setor_cargo) VALUES
		('Desenvolvedor Java Jr', 'TI - Desenvolvimento'),
		('Suporte Técnico', 'TI - Suporte'),
		('Desenvolvedor Full Stack', 'TI - Desenvolvimento'),
		('Desenvolvedor Back End', 'TI - Desenvolvimento'),
		('Desenvolvedor Front End', 'TI - Desenvolvimento');
INSERT INTO tb_funcionarios (nome_fn, nascimento_fn, salario_fn, sexo_fn, id_cargo) VALUES
		('Lucas Oliveira', '1993-08-04', 6500, 'M', 3),
		('William Fortunato', '1997-03-23', 1800, 'M', 2),
		('Leticia Sena', '1998-10-14', 4500, 'F', 4),
		('Patricia Dias', '1992-10-03', 3000, 'F', 5),
		('Daniel Nicacio', '1990-05-01', 6500, 'M', 3),
		('Wellington Souza', '1982-01-16', 2000, 'M', 1),
		('Victor Oliveira', '1989-04-08', 1800, 'M', 2),
		('Mirriam Rosario', '1990-04-18', 2000, 'F', 1),
		('Antonio Lucas Furtado', '1994-03-02', 6500, 'M', 3),
		('Luiz de Oliveira', '1985-02-14', 4500, 'M', 4),
		('Cassia Rosario', '1988-05-04', 3000, 'F', 5),
		('Jamille Trindade', '1989-09-01', 3000, 'F', 5),
		('Everton Oliveira', '1989-09-29', 3000, 'M', 5),
		('Alexandre Silva', '1985-08-10', 6500, 'M', 3),
		('Tartal Victor', '1992-04-26', 6500, 'M', 3);
        
SELECT * FROM tb_funcionarios  WHERE salario_fn > 2000;

SELECT * FROM tb_funcionarios
WHERE salario_fn BETWEEN 1000 AND 2000;

SELECT * FROM tb_funcionarios WHERE nome_fn LIKE 'C%';
