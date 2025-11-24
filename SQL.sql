create schema empresa;

create table empresa.departamento(
	codigo int primary key,
	descricao varchar(85)
);

insert into empresa.departamento(codigo, descricao)
values (1,'RH'), (2,'DeptoFinanc'), (3,'Compras');

select * from empresa.departamento
select * from empresa.funcionario

create table empresa.funcionario(
	matricula int primary key,
	nome varchar(55),
	codigo int not null, 
	foreign key(codigo) references empresa.departamento(codigo)
);

insert into empresa.funcionario(matricula, nome, codigo)
values(200,'João',1), (250,'Gustavo',2);

update empresa.fucionario
SET matricula=280
WHERE nome='Joaoo'

