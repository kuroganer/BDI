create table Endereco
(
idEndereco int not null auto_increment,
bairro varchar(60) not null,
complemento varchar(60) not null,
logradouro varchar(30) not null,
Numero varchar(30) not null,
cidade varchar(30) not null,
UF varchar(30) not null,
Pais varchar(30) not null,
CEP varchar(30) not null,
primary key (idEndereco)
);