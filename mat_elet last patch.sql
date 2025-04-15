-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 15-Abr-2025 às 14:39
-- Versão do servidor: 10.4.24-MariaDB
-- versão do PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `mat_elet`
--
CREATE DATABASE IF NOT EXISTS `mat_elet` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `mat_elet`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `departamentos`
--

CREATE TABLE `departamentos` (
  `idDepartamentos` int(11) NOT NULL,
  `Nome` varchar(60) NOT NULL,
  `localizacao` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `departamentos`
--

INSERT INTO `departamentos` (`idDepartamentos`, `Nome`, `localizacao`) VALUES
(1, 'Gerência', 'SDF01'),
(2, 'RH', 'SDF02'),
(3, 'Presidência', 'SDF10'),
(4, 'Recepção', 'SDF01'),
(5, 'Almoxarifado', 'SDF03');

-- --------------------------------------------------------

--
-- Estrutura da tabela `dependentes`
--

CREATE TABLE `dependentes` (
  `idDependentes` int(11) NOT NULL,
  `Nome` varchar(60) NOT NULL,
  `grau_parentesco` varchar(30) NOT NULL,
  `idFuncionario_fk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `dependentes`
--

INSERT INTO `dependentes` (`idDependentes`, `Nome`, `grau_parentesco`, `idFuncionario_fk`) VALUES
(1, 'Geraldo Magela', 'Filho', 1),
(2, 'Michel Jackson', 'Cônjuge', 3),
(3, 'Maria Cardoso', 'Enteada', 6),
(4, 'Roberto Justus', 'Sogro', 4),
(5, 'José Alcântara', 'Neto', 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `endereco`
--

CREATE TABLE `endereco` (
  `idEndereco` int(11) NOT NULL,
  `bairro` varchar(60) NOT NULL,
  `complemento` varchar(60) NOT NULL,
  `logradouro` varchar(30) NOT NULL,
  `Numero` varchar(30) NOT NULL,
  `cidade` varchar(30) NOT NULL,
  `UF` varchar(30) NOT NULL,
  `Pais` varchar(30) NOT NULL,
  `CEP` varchar(30) NOT NULL,
  `idFuncionario_fk` int(11) NOT NULL,
  `idDependentes_fk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `endereco`
--

INSERT INTO `endereco` (`idEndereco`, `bairro`, `complemento`, `logradouro`, `Numero`, `cidade`, `UF`, `Pais`, `CEP`, `idFuncionario_fk`, `idDependentes_fk`) VALUES
(1, 'P-Norte', 'Conj F', 'Qnp 5', '27', 'Ceilândia', 'DF', 'Brasil', '72.224-800', 1, 1),
(2, 'Setor O', 'Conj b', 'Qno 22', '24', 'Ceilândia', 'DF', 'Brasil', '70.232-815', 3, 2),
(3, 'Taguatinga sul', 'Conj z', 'Qnl 24', '33', 'Taguatinga', 'DF', 'Brasil', '71.204-720', 6, 3),
(4, 'Eixo Norte', 'Quadra B apt', '310 Norte ', '24', 'Asa Norte', 'DF', 'Brasil', '75.284-132', 4, 4),
(5, 'W3 Sul', 'Quadra b apartamento', '512 Sul', '24', 'Asa Sul', 'DF', 'Brasil', '68.215-22', 5, 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionarios`
--

CREATE TABLE `funcionarios` (
  `idFuncionario` int(11) NOT NULL,
  `Nome` varchar(60) NOT NULL,
  `cpf` char(15) NOT NULL,
  `salario` varchar(20) NOT NULL,
  `idDepartamentos_fk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `funcionarios`
--

INSERT INTO `funcionarios` (`idFuncionario`, `Nome`, `cpf`, `salario`, `idDepartamentos_fk`) VALUES
(1, 'Pedro Ferreira', '005.612.333-71', 'R$10.000,00', 1),
(3, 'Beatriz Pereira', '004.242.153-18', 'R$15.000,00', 2),
(4, 'José Leite', '127.772.124-25', 'R$70.000,00', 3),
(5, 'Raimundo Nonato', '111.111.111-11', 'R$2.000,00', 5),
(6, 'Ana Luiza Silva', '035.222.772-04', 'R$2.000,00', 4);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pilotos`
--

CREATE TABLE `pilotos` (
  `cod_piloto` int(3) NOT NULL,
  `Nome` varchar(45) NOT NULL,
  `Pais` varchar(30) NOT NULL,
  `idade` int(3) NOT NULL,
  `equipe` varchar(30) NOT NULL,
  `motor` varchar(30) NOT NULL,
  `pontos` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `pilotos`
--

INSERT INTO `pilotos` (`cod_piloto`, `Nome`, `Pais`, `idade`, `equipe`, `motor`, `pontos`) VALUES
(1, 'Michael Schumacher', 'Alemanha', 56, 'Ferrari', 'Ferrari', 148),
(2, 'Lewis Hamilton', 'Reino Unido', 40, 'McLaren', 'McLaren', 77),
(3, 'Rubens Barrichello', 'Brasil', 52, 'Ferrari', 'Ferrari', 658);

-- --------------------------------------------------------

--
-- Estrutura da tabela `projetos`
--

CREATE TABLE `projetos` (
  `idProjetos` int(11) NOT NULL,
  `Nome` varchar(60) NOT NULL,
  `Verba` varchar(30) NOT NULL,
  `Tipo` varchar(30) NOT NULL,
  `Numero` varchar(30) NOT NULL,
  `idFuncionario_fk` int(11) NOT NULL,
  `idDepartamentos_fk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `projetos`
--

INSERT INTO `projetos` (`idProjetos`, `Nome`, `Verba`, `Tipo`, `Numero`, `idFuncionario_fk`, `idDepartamentos_fk`) VALUES
(13, 'Kit Treinamento Técnico', 'R$ 10.000,00', 'Treinamento', '001', 1, 1),
(14, 'Loja Online', 'R$ 30.000,00', 'Tecnologia', '002', 6, 3),
(15, 'Controle Estoque RFID', 'R$ 20.000,00', 'Logística', '003', 3, 2),
(16, 'Energia Solar na Sede', 'R$ 60.000,00', 'Sustentável', '004', 4, 4),
(17, 'Campanha para Eletricistas', 'R$ 10.000,00', 'Marketing', '005', 5, 5),
(18, 'Parceria com Escolas', 'R$ 10.000,00', 'Social', '006', 3, 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `ranking`
--

CREATE TABLE `ranking` (
  `cod_ranking` int(3) NOT NULL,
  `cod_piloto_FK` int(3) NOT NULL,
  `Gp` int(11) NOT NULL,
  `Classificacao1` int(11) NOT NULL,
  `Classificacao2` int(11) NOT NULL,
  `Classificacao3` int(11) NOT NULL,
  `podio` int(10) NOT NULL,
  `numPolePosition` int(10) DEFAULT NULL,
  `voltaMaisRapida` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `ranking`
--

INSERT INTO `ranking` (`cod_ranking`, `cod_piloto_FK`, `Gp`, `Classificacao1`, `Classificacao2`, `Classificacao3`, `podio`, `numPolePosition`, `voltaMaisRapida`) VALUES
(1, 3, 326, 4, 3, 1, 68, 14, 17),
(2, 1, 308, 1, 1, 1, 155, 68, 77),
(3, 2, 359, 1, 2, 2, 202, 104, 67);

-- --------------------------------------------------------

--
-- Estrutura da tabela `telefone`
--

CREATE TABLE `telefone` (
  `idTelefone` int(11) NOT NULL,
  `DDI` varchar(60) NOT NULL,
  `DDD` char(4) DEFAULT NULL,
  `Operadora` varchar(30) NOT NULL,
  `Numero` varchar(60) NOT NULL,
  `idFuncionario_fk` int(11) NOT NULL,
  `idDependentes_fk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `telefone`
--

INSERT INTO `telefone` (`idTelefone`, `DDI`, `DDD`, `Operadora`, `Numero`, `idFuncionario_fk`, `idDependentes_fk`) VALUES
(1, '+55', '061', 'Vivo', '99475-7282', 1, 1),
(2, '+55', '051', 'Claro', '99998-5524', 3, 2),
(3, '+55', '071', 'Tim', '99744-2286', 6, 3),
(4, '+55', '077', 'OI', '98475-2244', 4, 4),
(5, '+55', '024', 'Vivo', '99934-4343', 5, 5);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `departamentos`
--
ALTER TABLE `departamentos`
  ADD PRIMARY KEY (`idDepartamentos`);

--
-- Índices para tabela `dependentes`
--
ALTER TABLE `dependentes`
  ADD PRIMARY KEY (`idDependentes`),
  ADD KEY `idFuncionario_fk` (`idFuncionario_fk`);

--
-- Índices para tabela `endereco`
--
ALTER TABLE `endereco`
  ADD PRIMARY KEY (`idEndereco`),
  ADD KEY `idFuncionario_fk` (`idFuncionario_fk`),
  ADD KEY `idDependentes_fk` (`idDependentes_fk`);

--
-- Índices para tabela `funcionarios`
--
ALTER TABLE `funcionarios`
  ADD PRIMARY KEY (`idFuncionario`),
  ADD KEY `idDepartamentos_fk` (`idDepartamentos_fk`);

--
-- Índices para tabela `pilotos`
--
ALTER TABLE `pilotos`
  ADD PRIMARY KEY (`cod_piloto`);

--
-- Índices para tabela `projetos`
--
ALTER TABLE `projetos`
  ADD PRIMARY KEY (`idProjetos`),
  ADD KEY `idFuncionario_fk` (`idFuncionario_fk`),
  ADD KEY `idDepartamentos_fk` (`idDepartamentos_fk`);

--
-- Índices para tabela `ranking`
--
ALTER TABLE `ranking`
  ADD PRIMARY KEY (`cod_ranking`),
  ADD KEY `cod_piloto_FK` (`cod_piloto_FK`);

--
-- Índices para tabela `telefone`
--
ALTER TABLE `telefone`
  ADD PRIMARY KEY (`idTelefone`),
  ADD KEY `idFuncionario_fk` (`idFuncionario_fk`),
  ADD KEY `idDependentes_fk` (`idDependentes_fk`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `departamentos`
--
ALTER TABLE `departamentos`
  MODIFY `idDepartamentos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `dependentes`
--
ALTER TABLE `dependentes`
  MODIFY `idDependentes` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `endereco`
--
ALTER TABLE `endereco`
  MODIFY `idEndereco` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `funcionarios`
--
ALTER TABLE `funcionarios`
  MODIFY `idFuncionario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `pilotos`
--
ALTER TABLE `pilotos`
  MODIFY `cod_piloto` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `projetos`
--
ALTER TABLE `projetos`
  MODIFY `idProjetos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de tabela `ranking`
--
ALTER TABLE `ranking`
  MODIFY `cod_ranking` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `telefone`
--
ALTER TABLE `telefone`
  MODIFY `idTelefone` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `dependentes`
--
ALTER TABLE `dependentes`
  ADD CONSTRAINT `dependentes_ibfk_1` FOREIGN KEY (`idFuncionario_fk`) REFERENCES `funcionarios` (`idFuncionario`);

--
-- Limitadores para a tabela `endereco`
--
ALTER TABLE `endereco`
  ADD CONSTRAINT `endereco_ibfk_1` FOREIGN KEY (`idFuncionario_fk`) REFERENCES `funcionarios` (`idFuncionario`),
  ADD CONSTRAINT `endereco_ibfk_2` FOREIGN KEY (`idDependentes_fk`) REFERENCES `dependentes` (`idDependentes`);

--
-- Limitadores para a tabela `funcionarios`
--
ALTER TABLE `funcionarios`
  ADD CONSTRAINT `funcionarios_ibfk_1` FOREIGN KEY (`idDepartamentos_fk`) REFERENCES `departamentos` (`idDepartamentos`);

--
-- Limitadores para a tabela `projetos`
--
ALTER TABLE `projetos`
  ADD CONSTRAINT `projetos_ibfk_1` FOREIGN KEY (`idFuncionario_fk`) REFERENCES `funcionarios` (`idFuncionario`),
  ADD CONSTRAINT `projetos_ibfk_2` FOREIGN KEY (`idDepartamentos_fk`) REFERENCES `departamentos` (`idDepartamentos`);

--
-- Limitadores para a tabela `ranking`
--
ALTER TABLE `ranking`
  ADD CONSTRAINT `ranking_ibfk_1` FOREIGN KEY (`cod_piloto_FK`) REFERENCES `pilotos` (`cod_piloto`);

--
-- Limitadores para a tabela `telefone`
--
ALTER TABLE `telefone`
  ADD CONSTRAINT `telefone_ibfk_1` FOREIGN KEY (`idFuncionario_fk`) REFERENCES `funcionarios` (`idFuncionario`),
  ADD CONSTRAINT `telefone_ibfk_2` FOREIGN KEY (`idDependentes_fk`) REFERENCES `dependentes` (`idDependentes`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
