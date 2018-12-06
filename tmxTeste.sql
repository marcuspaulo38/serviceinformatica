-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 06-Dez-2018 às 17:23
-- Versão do servidor: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tmxTeste`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `actions`
--

CREATE TABLE `actions` (
  `id` int(11) NOT NULL,
  `nome` varchar(160) NOT NULL,
  `alias` varchar(160) NOT NULL,
  `controllers_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `actions`
--

INSERT INTO `actions` (`id`, `nome`, `alias`, `controllers_id`) VALUES
(1, 'index', 'Tela Inicial', 1),
(2, 'adicionar_usuario', 'Adicionar usuário', 2),
(3, 'editar_usuario', 'Editar usuário', 2),
(4, 'index_grupos', 'Consulta  grupos de acesso ', 3),
(5, 'adicionar_grupos', 'Adicionar grupo de acesso ', 3),
(6, 'editar_grupos', 'Editar grupos de acesso', 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `action_grupos`
--

CREATE TABLE `action_grupos` (
  `id` int(11) NOT NULL,
  `action_id` int(11) NOT NULL,
  `grupo_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `contatos`
--

CREATE TABLE `contatos` (
  `id` int(6) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `tipo` varchar(100) NOT NULL,
  `data` varchar(100) NOT NULL,
  `telefone` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `controllers`
--

CREATE TABLE `controllers` (
  `id` int(11) NOT NULL,
  `nome` varchar(160) NOT NULL,
  `alias` varchar(160) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `controllers`
--

INSERT INTO `controllers` (`id`, `nome`, `alias`) VALUES
(1, 'HomeController', 'Inicio'),
(2, 'UsersController', 'Usuario'),
(3, 'GruposController', 'Grupo');

-- --------------------------------------------------------

--
-- Estrutura da tabela `grupos`
--

CREATE TABLE `grupos` (
  `id` int(11) NOT NULL,
  `nome` varchar(160) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `grupos`
--

INSERT INTO `grupos` (`id`, `nome`) VALUES
(1, 'Admin'),
(2, 'Usuario - Operador'),
(3, 'Supervisor');

-- --------------------------------------------------------

--
-- Estrutura da tabela `grupo_id`
--

CREATE TABLE `grupo_id` (
  `id` int(11) NOT NULL,
  `nome` varchar(200) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `ativo` int(11) DEFAULT NULL,
  `nivel` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `model` varchar(60) NOT NULL,
  `action` varchar(60) NOT NULL,
  `old_data` varchar(60) DEFAULT NULL,
  `new_data` varchar(60) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `usuario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(6) NOT NULL,
  `nome` varchar(160) NOT NULL,
  `email` varchar(160) NOT NULL,
  `username` varchar(160) NOT NULL,
  `password` varchar(160) NOT NULL,
  `ativo` int(11) NOT NULL,
  `nivel` int(11) NOT NULL,
  `grupo_id` int(11) NOT NULL,
  `cpf` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `email`, `username`, `password`, `ativo`, `nivel`, `grupo_id`, `cpf`) VALUES
(1, 'admin', 'testes@teste.com.br', 'admin', '31b96e584b046fb834de3121bfe789fbf624470a', 1, 0, 1, '11111111111');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `actions`
--
ALTER TABLE `actions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `action_grupos`
--
ALTER TABLE `action_grupos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contatos`
--
ALTER TABLE `contatos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contatos`
--
ALTER TABLE `contatos`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;