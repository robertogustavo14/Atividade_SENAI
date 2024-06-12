-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 01-Ago-2021 às 21:51
-- Versão do servidor: 10.4.19-MariaDB
-- versão do PHP: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `serviços_gerais_ltda`
--
CREATE DATABASE IF NOT EXISTS `serviços_gerais_ltda` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `serviços_gerais_ltda`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionario`
--

CREATE TABLE `funcionario` (
  `id_func` int(4) NOT NULL,
  `nome_funcionario` varchar(45) DEFAULT NULL,
  `cargo` varchar(45) DEFAULT NULL,
  `carga_horaria` time DEFAULT NULL,
  `nivel_acesso` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `funcionario`
--

INSERT INTO `funcionario` (`id_func`, `nome_funcionario`, `cargo`, `carga_horaria`, `nivel_acesso`) VALUES
(1, 'Gustavo Roberto', 'Administrador database', '06:00:00', 'Gerente'),
(2, 'Raphael Algusto', 'Gerente de TI', '10:00:00', 'Gerente'),
(3, 'Gabriela Rocha', 'RH', '19:00:00', 'Funcionario'),
(4, 'Pablo firmino', 'tester', '13:00:00', 'Funcionario'),
(5, 'Marcos reis', 'desenvolvedor web', '06:00:00', 'Funcionario'),
(6, 'Bruno correia', 'FiveM Mecanico', '10:00:00', 'Funcionario');

-- --------------------------------------------------------

--
-- Estrutura da tabela `ponto`
--

CREATE TABLE `ponto` (
  `id_ponto` int(4) NOT NULL,
  `data_atual` date DEFAULT current_timestamp(),
  `id_funcionario` int(4) NOT NULL,
  `nome_funcionario` varchar(45) DEFAULT NULL,
  `hr_entra_exigido` time DEFAULT NULL,
  `hr_saida_exigido` time DEFAULT NULL,
  `hr_entra_registrado` time DEFAULT NULL,
  `hr_saida_registrado` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `ponto`
--

INSERT INTO `ponto` (`id_ponto`, `data_atual`, `id_funcionario`, `nome_funcionario`, `hr_entra_exigido`, `hr_saida_exigido`, `hr_entra_registrado`, `hr_saida_registrado`) VALUES
(1, '2021-08-01', 1, 'Gustavo Roberto', '07:00:00', '17:00:00', '06:50:00', '17:10:00'),
(2, '2021-08-01', 2, 'Raphael Algusto', '07:00:00', '13:00:00', '06:20:00', '13:05:00'),
(3, '2021-08-01', 3, 'Gabriela Rocha', '13:00:00', '19:00:00', '13:05:00', '19:00:00'),
(4, '2021-08-01', 4, 'Pablo firmino', '08:00:00', '13:00:00', '07:50:00', '13:00:00'),
(5, '2021-08-01', 5, 'Marcos reis', '09:00:00', '18:00:00', '09:50:00', '20:00:00'),
(6, '2021-08-01', 6, 'Bruno correia', '05:00:00', '12:00:00', '04:00:00', '12:00:00');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `funcionario`
--
ALTER TABLE `funcionario`
  ADD PRIMARY KEY (`id_func`);

--
-- Índices para tabela `ponto`
--
ALTER TABLE `ponto`
  ADD PRIMARY KEY (`id_ponto`,`id_funcionario`),
  ADD KEY `ponto` (`id_funcionario`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `funcionario`
--
ALTER TABLE `funcionario`
  MODIFY `id_func` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `ponto`
--
ALTER TABLE `ponto`
  MODIFY `id_ponto` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `ponto`
--
ALTER TABLE `ponto`
  ADD CONSTRAINT `ponto` FOREIGN KEY (`id_funcionario`) REFERENCES `funcionario` (`id_func`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
