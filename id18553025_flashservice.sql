-- phpMyAdmin SQL Dump
-- version 4.1.4
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 05-Jul-2022 às 15:14
-- Versão do servidor: 5.6.15-log
-- PHP Version: 5.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `id18553025_flashservice`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `profissional`
--

CREATE TABLE IF NOT EXISTS `profissional` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario_id` int(11) NOT NULL,
  `servico_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

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
(23, 2, 42);

-- --------------------------------------------------------

--
-- Estrutura da tabela `servico`
--

CREATE TABLE IF NOT EXISTS `servico` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `servico` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=49 ;

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

CREATE TABLE IF NOT EXISTS `usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `senha` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `telefone` int(9) NOT NULL,
  `acesso` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `data_acesso` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=14 ;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`id`, `nome`, `email`, `senha`, `telefone`, `acesso`, `data_acesso`, `status`) VALUES
(1, 'rayane', 'rayane@gmail.com', '12345678', 0, 'Admin', '2022-03-07', 'ativo'),
(2, 'luisa', 'luisa@gmail.com', '87654321', 988888888, 'Admin', '2022-03-07', 'ativo'),
(3, 'Millena', 'Millena@gmail.com', '123', 0, 'Admin', '2022-04-11', 'inativo'),
(6, 'Julio', 'Julio@gmail.com', 'xxx', 2147483647, 'Comum', '2022-04-27', 'inativo'),
(7, 'Luciano', 'Luciano@gmail.com', 'yyy', 2147483647, 'Comum', '2022-05-10', 'inativo'),
(8, 'Juliana', 'Juliana@gmail.com', 'qf4PGuMhBUkk3rH', 2147483647, 'Comum', '2022-05-31', 'ativo'),
(10, 'Rafael', 'rafael@gmail.com', 'opq', 2147483647, 'Comum', '0000-00-00', 'ativo'),
(11, 'Melanie', 'melanie@gmail.com', '456', 2147483647, 'Comum', '0000-00-00', 'ativo'),
(12, 'Vanessa', 'vanessa@gmail.com', '12345678', 2147483647, 'Comum', '04/07/2022', 'ativo'),
(13, 'gsuigdy', 'rayane@gmail.com', '123', 2147483647, 'Comum', '04/07/2022', 'Ativo');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
