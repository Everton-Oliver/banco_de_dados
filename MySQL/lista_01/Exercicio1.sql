
create table colaboradores
(id_pessoa integer PRIMARY KEY AUTO_INCREMENT,
nome varchar(30),
data_nascimento date,
sexo enum ("M", "F", "A"),
cargo varchar (30),
salario decimal (7,2)
)engine = innodb;
;

insert into colaboradores (nome,data_nascimento,sexo,cargo,salario)values (
"Cassia Rosário", 
"1988-04-04", 
"F", 
"Psicóloga", 
3500.00 );

insert into colaboradores (nome,data_nascimento,sexo,cargo,salario)values (
"Alexandre Souza", 
"1985-04-04", 
"M", 
"Contador", 
3800.00 );

insert into colaboradores (nome,data_nascimento,sexo,cargo,salario)values (
"Lucas Oliveira", 
"1993-08-04", 
"A", 
"Estagiário", 
1500.00 );

insert into colaboradores (nome,data_nascimento,sexo,cargo,salario)values (
"Leticia Sena", 
"1998-10-14", 
"F", 
"Desenvolvedora", 
4500.00 );

insert into colaboradores (nome,data_nascimento,sexo,cargo,salario)values (
"Everton Luiz", 
"1989-09-29", 
"M", 
"Analista de Suporte", 
3000.00 );

insert into colaboradores (nome,data_nascimento,sexo,cargo,salario)values (
"Luan Laurentino", 
"2002-04-05", 
"M", 
"Analista", 
1900.00 );

select *  from colaboradores
where salario > 2000.00;

select *  from colaboradores
where salario < 2000.00