create database letscode_planosaude

create table tb_cliente( 

id int primary key generated always as identity,
nome varchar(50),
data_nasc date,
email varchar(100)
)

create table tb_dependentes(
id int primary key generated always as identity,
id_responsavel int,
nome varchar(50),
foreign key (id_responsavel) references tb_cliente(id)
)


create table tb_produto(
id int primary key generated always as identity,
cod_ans varchar(6),
descricao varchar(50),
valor money
)

create table tb_item_contrato(
id int primary key generated always as identity,
id_produto int,
qtd_produto int,
foreign key (id_produto) references tb_produto(id)
)

create table tb_contrato(
id int primary key generated always as identity,
id_segurado int,
data_inicio date,
id_item_contrato int,
foreign key (id_item_contrato) references tb_item_contrato(id),
foreign key (id_segurado) references tb_cliente(id)
)

select * from tb_cliente 


