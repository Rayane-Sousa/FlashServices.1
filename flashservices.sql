-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 01-Set-2022 às 12:35
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
-- Banco de dados: `flashservices`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `agendamento`
--

CREATE TABLE `agendamento` (
  `id` int(11) NOT NULL,
  `data` varchar(50) NOT NULL,
  `hora` varchar(50) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `endereco` varchar(50) NOT NULL,
  `start` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `end` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `color` varchar(50) NOT NULL,
  `servico_id` int(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `agendamento`
--

INSERT INTO `agendamento` (`id`, `data`, `hora`, `usuario`, `endereco`, `start`, `end`, `color`, `servico_id`) VALUES
(14, '2022-08-24', '09:30', 'Rayane Santos', 'eefg', '2022-08-16 12:10:08', '2022-08-24 13:10:00', 'red', 14),
(13, '2022-08-24', '12:00', 'Rayane Santos', 'Tijuca', '2022-08-24 15:00:00', '2022-08-24 15:40:00', 'blue', 11),
(12, '2022-08-26', '06:00', 'Rayane Santos', 'Nova Iguacu 1082', '2022-08-26 09:00:00', '2022-08-26 09:40:00', 'blue', 40);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pagamento`
--

CREATE TABLE `pagamento` (
  `ID_pagamento` int(11) NOT NULL,
  `ID_cliente` int(11) NOT NULL,
  `ID_plano` int(11) DEFAULT NULL,
  `Valor` double NOT NULL,
  `Status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `pagamento`
--

INSERT INTO `pagamento` (`ID_pagamento`, `ID_cliente`, `ID_plano`, `Valor`, `Status`) VALUES
(1, 1, NULL, 2000, NULL),
(2, 1, NULL, 2000, 'realizado'),
(3, 1, 3, 3000, 'realizado'),
(4, 1, 2, 2000, 'realizado');

-- --------------------------------------------------------

--
-- Estrutura da tabela `plano`
--

CREATE TABLE `plano` (
  `ID_plano` int(11) NOT NULL,
  `Nome_plano` varchar(50) NOT NULL,
  `Preco` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `plano`
--

INSERT INTO `plano` (`ID_plano`, `Nome_plano`, `Preco`) VALUES
(1, 'Teste 01', 10),
(2, 'Teste 02', 20),
(3, 'Teste 03', 30);

-- --------------------------------------------------------

--
-- Estrutura da tabela `profissional`
--

CREATE TABLE `profissional` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `servico_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `profissional`
--

INSERT INTO `profissional` (`id`, `usuario_id`, `servico_id`) VALUES
(1, 1, 4),
(2, 6, 20),
(3, 7, 40),
(4, 3, 37),
(5, 8, 18),
(11, 2, 24),
(12, 7, 33),
(18, 0, 0),
(19, 0, 0),
(20, 0, 0),
(21, 0, 0),
(22, 1, 2),
(23, 2, 42),
(24, 1, 11),
(25, 1, 26),
(26, 1, 38),
(27, 1, 9),
(28, 15, 3),
(29, 15, 40);

-- --------------------------------------------------------

--
-- Estrutura da tabela `servico`
--

CREATE TABLE `servico` (
  `id` int(11) NOT NULL,
  `servico` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `servico`
--

INSERT INTO `servico` (`id`, `servico`) VALUES
(1, 'Animador de Festas'),
(2, 'Assistencia Tecnica de Celular'),
(3, 'Assistencia Tecnica de Computador'),
(4, 'Assistencia Tecnica de Fogao'),
(5, 'Assistencia Tecnica de Geladeira'),
(6, 'Assistencia Tecnica de Informatica'),
(7, 'Assistencia de Maquina de Lavar '),
(8, 'Assistencia Tecnica de Notebook '),
(9, 'Assistencia Tecnica de Refrigeracao '),
(10, 'Assistencia Tecnica de TV '),
(11, 'Baba'),
(12, 'Barman '),
(13, 'Cabeleireira '),
(14, 'Cantor '),
(15, 'Carro de Som '),
(16, 'Churrasqueiro '),
(17, 'Colocador de pisos'),
(18, 'Costureira '),
(19, 'Cozinheiro'),
(20, 'Cuidador(a) de idosos '),
(21, 'Desentupidor '),
(22, 'Desenvolvedor de Sites '),
(23, 'Diarista'),
(24, 'Eletricista '),
(25, 'Encanador '),
(26, 'Esteticista '),
(27, 'Estofador '),
(28, 'Faxineira'),
(29, 'Fotografo '),
(30, 'Garcom '),
(31, 'Gesseiro '),
(32, 'Impermeabilizacao '),
(33, 'Instalador de Papel de parede '),
(34, 'Jardineiro '),
(35, 'Limpeza pos obras '),
(36, 'Manutencao de portao eletronico'),
(37, 'Marceneiro '),
(38, 'Montador de moveis '),
(39, 'Passadeira '),
(40, 'Pedreiro'),
(41, 'Perfuracao de poco '),
(42, 'Pintor '),
(43, 'Piscineiro '),
(44, 'Professor particular'),
(45, 'Psicologo '),
(46, 'Serralheiro '),
(47, 'Tapeceiro '),
(48, 'Tecnico de Informatica ');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `senha` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `telefone` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `acesso` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `data_acesso` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`id`, `nome`, `email`, `senha`, `telefone`, `acesso`, `data_acesso`, `status`) VALUES
(1, 'rayane', 'rayane@gmail.com', '12345678', '0', 'Admin', '07/03/2022', 'ativo'),
(2, 'luisa', 'luisa@gmail.com', '87654321', '988888888', 'Admin', '07/03/2022', 'ativo'),
(3, 'Millena', 'Millena@gmail.com', '123', '0', 'Admin', '11/04/2022', 'inativo'),
(6, 'Julio', 'Julio@gmail.com', 'xxx', '2147483647', 'Comum', '27/04/2022', 'ativo'),
(8, 'Juliana', 'Juliana@gmail.com', 'qf4PGuMhBUkk3rH', '2147483647', 'Comum', '21/05/2022', 'ativo'),
(11, 'Melanie', 'melanie@gmail.com', '456', '2147483647', 'Comum', '04/06/2022', 'ativo'),
(15, 'Rayane Santos', 'rayanessousa1406@gmail.com', '1082', '2147483647', 'Admin', '11/07/2022', 'Ativo'),
(17, 'Rafael', 'Rafael@gmail.com', '$2y$10$Z1Y7dr4hQgDXG5ebC/aWb.a.bpZHMn.xQBiSZL9Ndwd', '2147483647', 'Admin', '19/08/2022', 'Ativo'),
(21, 'sfsfsdfsd', 'rayanessousa1406@gmail.com', '$2y$10$F77wfeFchokui1CPEZGeJ.s4fQBuPOJMSQwzcxZDAST', '123213123123123', 'Comum', '19/08/2022', 'Ativo'),
(22, '123123', 'rayan1406@gmail.com', '$2y$10$fB8dhhjfWJzHuKYvDkaAP.h2ZQbqLX3NSW.mZhNawH0', '6321783123', 'Comum', '19/08/2022', 'Ativo');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `agendamento`
--
ALTER TABLE `agendamento`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `pagamento`
--
ALTER TABLE `pagamento`
  ADD PRIMARY KEY (`ID_pagamento`);

--
-- Índices para tabela `plano`
--
ALTER TABLE `plano`
  ADD PRIMARY KEY (`ID_plano`);

--
-- Índices para tabela `profissional`
--
ALTER TABLE `profissional`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `servico`
--
ALTER TABLE `servico`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `agendamento`
--
ALTER TABLE `agendamento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de tabela `pagamento`
--
ALTER TABLE `pagamento`
  MODIFY `ID_pagamento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `plano`
--
ALTER TABLE `plano`
  MODIFY `ID_plano` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `profissional`
--
ALTER TABLE `profissional`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de tabela `servico`
--
ALTER TABLE `servico`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
