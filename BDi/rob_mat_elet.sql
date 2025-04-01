/* create database mat_elet
create table departamentos
(
idDepartamentos int(11) NOT NULL AUTO_INCREMENT,
  Nome varchar(60) NOT NULL,
 localizacao varchar(30) NOT NULL,
  PRIMARY KEY (idDepartamentos)

);


create table funcionarios
(
idFuncionario int not null auto_increment,
Nome varchar(60) not null,
CPF char(15) not null,
salario varchar(20) not null,
idDepartamentos_fk int(11)not null,
primary key (idFuncionario),
foreign key(idDepartamentos_fk) references departamentos(idDepartamentos)

);

CREATE TABLE dependentes (
  idDependentes int(11) NOT NULL AUTO_INCREMENT,
  Nome varchar(60) NOT NULL,
  grau_parentesco varchar(30) NOT NULL,
  idFuncionario_fk int(11) not null,
  PRIMARY KEY (idDependentes),
  foreign key(idFuncionario_fk) references funcionarios(idFuncionario)
);


 CREATE TABLE projetos (
  idProjetos int(11) NOT NULL AUTO_INCREMENT,
  Nome varchar(60) NOT NULL,
  Verba varchar(30) NOT NULL,
  Tipo varchar(30) NOT NULL,
  Numero char(30) NOT NULL,
  idFuncionario_fk int(11) not null,
  idDepartamentos_fk int(11)not null,
  PRIMARY KEY (idProjetos),
  foreign key(idFuncionario_fk) references funcionarios(idFuncionario),
  foreign key(idDepartamentos_fk) references departamentos(idDepartamentos)
) ;


CREATE TABLE telefone (
  idTelefone int(11) NOT NULL AUTO_INCREMENT,
  DDI char(4) NOT NULL,
  DDD varchar(3) NOT NULL,
  Operadora varchar(30) NOT NULL,
  Numero varchar(15) NOT NULL,
   idFuncionario_fk int(11) not null,
   idDependentes_fk int(11) NOT NULL,
  PRIMARY KEY (idTelefone),
  foreign key(idFuncionario_fk) references funcionarios(idFuncionario),
  foreign key(idDependentes_fk) references dependentes(idDependentes)
) 

CREATE TABLE endereco (
  idEndereco int(11) NOT NULL AUTO_INCREMENT,
  bairro varchar(60) NOT NULL,
  complemento varchar(60) NOT NULL,
  logradouro varchar(30) NOT NULL,
  Numero varchar(30) NOT NULL,
  cidade varchar(30) NOT NULL,
  UF varchar(30) NOT NULL,
  Pais varchar(30) NOT NULL,
  CEP varchar(30) NOT NULL,
   idFuncionario_fk int(11) not null,
   idDependentes_fk int(11) NOT NULL,
PRIMARY KEY (idEndereco),
  foreign key(idFuncionario_fk) references funcionarios(idFuncionario),
  foreign key(idDependentes_fk) references dependentes(idDependentes)
);
;*/