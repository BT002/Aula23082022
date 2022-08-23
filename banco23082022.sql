-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 23-Ago-2022 às 21:18
-- Versão do servidor: 10.4.22-MariaDB
-- versão do PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `banco23082022`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `consulta`
--

CREATE TABLE `consulta` (
  `fk_paciente_cpf` varchar(50) COLLATE utf8mb4_unicode_nopad_ci DEFAULT NULL,
  `fk_medico_cpf` varchar(50) COLLATE utf8mb4_unicode_nopad_ci DEFAULT NULL,
  `data` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_nopad_ci;

--
-- Extraindo dados da tabela `consulta`
--

INSERT INTO `consulta` (`fk_paciente_cpf`, `fk_medico_cpf`, `data`) VALUES
('1111', '7777', '2001-10-06'),
('1111', '8888', '2009-09-15'),
('2222', '9999', '2003-02-27');

-- --------------------------------------------------------

--
-- Estrutura da tabela `medico`
--

CREATE TABLE `medico` (
  `cpf` varchar(50) COLLATE utf8mb4_unicode_nopad_ci NOT NULL,
  `nome` varchar(50) COLLATE utf8mb4_unicode_nopad_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_nopad_ci;

--
-- Extraindo dados da tabela `medico`
--

INSERT INTO `medico` (`cpf`, `nome`) VALUES
('7777', 'Evandro'),
('8888', 'Jr.'),
('9999', 'Márcio');

-- --------------------------------------------------------

--
-- Estrutura da tabela `paciente`
--

CREATE TABLE `paciente` (
  `cpf` varchar(50) COLLATE utf8mb4_unicode_nopad_ci NOT NULL,
  `nome` varchar(50) COLLATE utf8mb4_unicode_nopad_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_nopad_ci;

--
-- Extraindo dados da tabela `paciente`
--

INSERT INTO `paciente` (`cpf`, `nome`) VALUES
('1111', 'Ana'),
('2222', 'Bia'),
('3333', 'Carlos'),
('4444', 'Ana');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `consulta`
--
ALTER TABLE `consulta`
  ADD KEY `FK_consulta_1` (`fk_paciente_cpf`),
  ADD KEY `FK_consulta_2` (`fk_medico_cpf`);

--
-- Índices para tabela `medico`
--
ALTER TABLE `medico`
  ADD PRIMARY KEY (`cpf`);

--
-- Índices para tabela `paciente`
--
ALTER TABLE `paciente`
  ADD PRIMARY KEY (`cpf`);

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `consulta`
--
ALTER TABLE `consulta`
  ADD CONSTRAINT `FK_consulta_1` FOREIGN KEY (`fk_paciente_cpf`) REFERENCES `paciente` (`cpf`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_consulta_2` FOREIGN KEY (`fk_medico_cpf`) REFERENCES `medico` (`cpf`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
