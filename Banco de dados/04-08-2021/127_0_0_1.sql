-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 04-Ago-2021 às 22:52
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
-- Banco de dados: `petshop`
--
CREATE DATABASE IF NOT EXISTS `petshop` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `petshop`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `animal`
--

CREATE TABLE `animal` (
  `cod_animal` int(11) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `dono` varchar(30) NOT NULL,
  `especie` varchar(15) DEFAULT NULL,
  `observacoes` varchar(20) DEFAULT NULL,
  `sexo` enum('M','F') DEFAULT NULL,
  `nascimento` date DEFAULT NULL,
  `morte` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `animal`
--

INSERT INTO `animal` (`cod_animal`, `nome`, `dono`, `especie`, `observacoes`, `sexo`, `nascimento`, `morte`) VALUES
(1, 'venus', 'ana', 'Girafa', NULL, 'M', '0000-00-00', '0000-00-00'),
(2, 'sky', 'davi', 'cao', NULL, 'F', '0000-00-00', '0000-00-00'),
(3, 'Amora', 'Diogo', 'gato', NULL, 'F', '0000-00-00', '0000-00-00'),
(4, '', 'Eric', '', NULL, '', '0000-00-00', '0000-00-00'),
(5, 'Chanel', 'Gabriel', 'Calopsita', NULL, 'F', '0000-00-00', '0000-00-00'),
(6, '', 'Gustavo', '', NULL, '', '0000-00-00', '0000-00-00'),
(7, 'Princesa', 'Kayque', 'cao', NULL, 'F', '0000-00-00', '0000-00-00'),
(8, '', 'Lucas', '', NULL, '', '0000-00-00', '0000-00-00'),
(9, 'Wesley', 'Luiz', 'cao', NULL, 'M', '0000-00-00', '0000-00-00'),
(10, 'Luna', 'Marcio', 'cao', NULL, 'F', '0000-00-00', '0000-00-00'),
(11, 'Kalifa', 'Matheus', 'cao', NULL, 'F', '0000-00-00', '0000-00-00'),
(12, 'Lena', 'Rafael', 'Gato', NULL, 'F', '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `donos`
--

CREATE TABLE `donos` (
  `cod_cliente` int(11) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `contato` varchar(20) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `donos`
--

INSERT INTO `donos` (`cod_cliente`, `nome`, `contato`, `email`) VALUES
(1, 'ana', '789', 'ana@gmail.com'),
(2, 'davi', '790', 'davi@gmail.com'),
(3, 'diogo', '791', ''),
(4, 'eric', '792', ''),
(5, 'Gabriel', '793', ''),
(6, 'Gustavo', '794', ''),
(7, 'Kayque', '795', ''),
(8, 'Lucas', '796', ''),
(9, 'Luiz', '797', ''),
(10, 'Marcio', '798', ''),
(11, 'Matheus', '799', ''),
(12, 'Rafael', '800', '');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `animal`
--
ALTER TABLE `animal`
  ADD PRIMARY KEY (`cod_animal`);

--
-- Índices para tabela `donos`
--
ALTER TABLE `donos`
  ADD PRIMARY KEY (`cod_cliente`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `animal`
--
ALTER TABLE `animal`
  MODIFY `cod_animal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `donos`
--
ALTER TABLE `donos`
  MODIFY `cod_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
