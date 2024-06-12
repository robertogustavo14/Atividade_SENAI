-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 06-Ago-2021 às 00:35
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
-- Banco de dados: `gustavotii2002t_03`
--
CREATE DATABASE IF NOT EXISTS `gustavotii2002t_03` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `gustavotii2002t_03`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `itens_de_venda`
--

CREATE TABLE `itens_de_venda` (
  `cod_venda` int(5) NOT NULL,
  `cod_produto` int(5) NOT NULL,
  `qtd_item` int(5) DEFAULT NULL,
  `valor_item` decimal(15,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `itens_de_venda`
--

INSERT INTO `itens_de_venda` (`cod_venda`, `cod_produto`, `qtd_item`, `valor_item`) VALUES
(1001, 10, 5, '10'),
(1001, 11, 1, '791'),
(1002, 10, 1, '10'),
(1002, 12, 1, '226'),
(1003, 10, 2, '10'),
(1005, 10, 1, '12'),
(1005, 13, 1, '40');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto`
--

CREATE TABLE `produto` (
  `cod_produto` int(5) NOT NULL,
  `nome_produto` varchar(45) DEFAULT NULL,
  `qtd` int(10) DEFAULT NULL,
  `valor` decimal(15,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `produto`
--

INSERT INTO `produto` (`cod_produto`, `nome_produto`, `qtd`, `valor`) VALUES
(10, 'Mouse', 100, '11'),
(11, 'Office 2013', 30, '579'),
(12, 'HD Externo', 80, '249'),
(13, 'Teclado', 100, '40'),
(14, 'Mouse sem Fio', 0, '54'),
(15, 'Monitor', 50, '450');

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `tabela_preco`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `tabela_preco` (
`nome_produto` varchar(45)
,`valor` decimal(15,0)
,`cod_produto` int(5)
);

-- --------------------------------------------------------

--
-- Estrutura da tabela `vendas`
--

CREATE TABLE `vendas` (
  `cod_venda` int(5) NOT NULL,
  `data_venda` date DEFAULT NULL,
  `valor_venda` decimal(15,0) DEFAULT NULL,
  `registro` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `vendas`
--

INSERT INTO `vendas` (`cod_venda`, `data_venda`, `valor_venda`, `registro`) VALUES
(1001, '2014-03-05', '841', 101),
(1002, '2014-03-06', '236', 102),
(1003, '2014-03-07', '20', 103),
(1004, '2013-05-10', '46', 101),
(1005, '2013-05-10', '52', 102);

-- --------------------------------------------------------

--
-- Estrutura da tabela `vendedor`
--

CREATE TABLE `vendedor` (
  `registro` int(5) NOT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `sexo` enum('M','F') DEFAULT NULL,
  `loja` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `vendedor`
--

INSERT INTO `vendedor` (`registro`, `nome`, `sexo`, `loja`, `email`) VALUES
(101, 'Aldebaran Touro', 'M', 'centro', 'Aldebaran@praticabd.com.br'),
(102, 'Carina Dias', 'F', 'Santo Antonio', 'Carina@praticabd.com.br'),
(103, 'Paula Fernandes', 'F', 'Cruzeiro', 'Paula@praticabd.com.br'),
(104, 'Seya', 'M', NULL, 'Seya@praticabd.com.br'),
(105, 'Sheila santos', 'F', 'centro', 'Sheila@praticabd.com.br'),
(106, 'Carlos santos', 'M', 'centro', 'Carlos@praticabd.com.br'),
(107, 'Mario Bros', 'M', 'Centro', 'Nintendo@gmail.com');

-- --------------------------------------------------------

--
-- Estrutura para vista `tabela_preco`
--
DROP TABLE IF EXISTS `tabela_preco`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tabela_preco`  AS SELECT `produto`.`nome_produto` AS `nome_produto`, `produto`.`valor` AS `valor`, `produto`.`cod_produto` AS `cod_produto` FROM `produto` ORDER BY `produto`.`nome_produto` ASC ;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `itens_de_venda`
--
ALTER TABLE `itens_de_venda`
  ADD PRIMARY KEY (`cod_venda`,`cod_produto`),
  ADD KEY `itens_de_venda` (`cod_produto`);

--
-- Índices para tabela `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`cod_produto`);

--
-- Índices para tabela `vendas`
--
ALTER TABLE `vendas`
  ADD PRIMARY KEY (`cod_venda`),
  ADD KEY `vendas` (`registro`);

--
-- Índices para tabela `vendedor`
--
ALTER TABLE `vendedor`
  ADD PRIMARY KEY (`registro`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `produto`
--
ALTER TABLE `produto`
  MODIFY `cod_produto` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de tabela `vendas`
--
ALTER TABLE `vendas`
  MODIFY `cod_venda` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1006;

--
-- AUTO_INCREMENT de tabela `vendedor`
--
ALTER TABLE `vendedor`
  MODIFY `registro` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `itens_de_venda`
--
ALTER TABLE `itens_de_venda`
  ADD CONSTRAINT `itens_de_venda` FOREIGN KEY (`cod_produto`) REFERENCES `produto` (`cod_produto`);

--
-- Limitadores para a tabela `vendas`
--
ALTER TABLE `vendas`
  ADD CONSTRAINT `vendas` FOREIGN KEY (`registro`) REFERENCES `vendedor` (`registro`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
