/*insert into departamentos(nome, localizacao)
values("Gerência","SDF01"),("RH","SDF02"),("Presidência", "SDF10"),("Recepção","SDF01"),
("Almoxarifado","SDF03");
/*select * from departamentos;
/*insert into funcionarios(nome, cpf, salario, idDepartamentos_fk)
values("Pedro Ferreira", "005.612.333-71","R$ 10.000,00",1),("Ana Luiza Silva", "35.222.772-04","R$2.000,00",4),
("Beatriz Pereira", "004.242.153-18","R$15.000,00",2),("José Leite", "127.772.124-25","R$70.000,00",3),
("Raimundo Nonato","111.111.111-11", "R$ 2.000,00",5);
/*select * from funcionarios;
/*delete from funcionarios where idfuncionario = 2;
/* insert into funcionarios(nome, cpf, salario, idDepartamentos_fk)
values ("Ana Luiza Silva", "035.222.772-04","R$2.000,00",4);
/*select * from funcionarios;
/*insert into dependentes(nome, grau_parentesco, idfuncionario_fk)
values ("Geraldo Magela", "Filho", 1), ("Michel Jackson", "Cônjuge",3),("Maria Cardoso", "Enteada", 6),
("Roberto Justus", "Sogro", 4),("José Alcântara","Neto",5);
/*SELECT * FROM DEPENDENTES, FUNCIONARIOS;
/*INSERT INTO TELEFONE(ddi, ddd, operadora, numero, idfuncionario_fk,iddependentes_fk)
values("+55", "061", "Vivo", "99475-7282",1,1);
/*INSERT INTO TELEFONE(ddi, ddd, operadora, numero, idfuncionario_fk,iddependentes_fk)
values("+55", "051", "Claro", "99998-5524",3,2),("+55","071", "Tim","99744-2286",6,3),
("+55","077", "OI","98475-2244",4,4), ("+55", "024", "Vivo", "99934-4343",5,5);
insert into endereco(bairro, complemento, logradouro, numero, cidade, uf, pais, cep, idfuncionario_fk,iddependentes_fk)
values ("P-Norte","Conj F", "Qnp 5","27", "Ceilândia","DF","Brasil","72.224-800",1,1)
/*insert into endereco(bairro, complemento, logradouro, numero, cidade, uf, pais, cep, idfuncionario_fk,iddependentes_fk)
values ("Setor O","Conj b", "Qno 22","24", "Ceilândia","DF","Brasil","70.232-815",3,2),("Taguatinga sul","Conj z", "Qnl 24","33", "Taguatinga","DF","Brasil","71.204-720",6,3),
 ("Eixo Norte","Quadra B apt", "310 Norte ","24", "Asa Norte","DF","Brasil","75.284-132",4,4), ("W3 Sul","Quadra b apartamento", "512 Sul","24", "Asa Sul","DF","Brasil","68.215-22",5,5)
 */
