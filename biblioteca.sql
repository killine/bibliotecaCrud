-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 28-Jul-2020 às 02:33
-- Versão do servidor: 10.1.37-MariaDB
-- versão do PHP: 7.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `biblioteca`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `aluno`
--

CREATE TABLE `aluno` (
  `ra` int(11) NOT NULL,
  `email` varchar(150) DEFAULT NULL,
  `dataNascimento` date DEFAULT NULL,
  `turma` varchar(15) DEFAULT NULL,
  `nome` varchar(150) DEFAULT NULL,
  `telefone` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `aluno`
--

INSERT INTO `aluno` (`ra`, `email`, `dataNascimento`, `turma`, `nome`, `telefone`) VALUES
(1, 'guinho@gmail.com', '2003-10-07', '3ºC', 'Min Yoongi', '95555-2222'),
(2, 'jinjin@gmail.com', '2004-12-09', '2ºC', 'Kim Namjoon', '95578-6666'),
(3, 'jonie.rm@gmail.com', '2003-11-14', '3ºC', 'Kim Seokjin nu', '95156-8447'),
(4, 'hope@gmail.com', '2004-10-20', '2ºC', 'Jung Hoseok', '93131-7444'),
(5, 'jiminie@gmail.com', '2005-11-18', '1ºC', 'Park Jimin', '91234-7654'),
(6, 'taetae@gmail.com', '2005-01-25', '1ºC', 'Kim Taehyung', '96679-5398'),
(7, 'kookie@gmail.com', '2006-07-15', '9ºC', 'Jeon Jungkook', '95643-5222'),
(8, 'seungkwa.booo@gmail.com', '2004-09-25', '2ºC', 'Boo Seung-kwa', '9337-9999'),
(9, 'markinhos@gmail.com', '2003-05-21', '3ºC', 'Mark Tuan', '91111-0977'),
(10, 'uaw.jacksonwaang@gmail.com', '2006-01-03', '9ºC', 'Jackson Wang', '9432-4310'),
(20, 'umaotakumeiogeek@gmail.com', '2004-05-18', '2C', 'Karoline', '944706561'),
(22, 'felixizinho@gmail.com', '2004-07-04', '2C', 'Felix', '89999-0000');

-- --------------------------------------------------------

--
-- Estrutura da tabela `bibliotecaria`
--

CREATE TABLE `bibliotecaria` (
  `codFunc` int(11) NOT NULL,
  `telefone` varchar(15) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `nome` varchar(150) DEFAULT NULL,
  `cpf` varchar(15) DEFAULT NULL,
  `rg` varchar(15) DEFAULT NULL,
  `logradouro` varchar(150) DEFAULT NULL,
  `numero` int(11) DEFAULT NULL,
  `complemento` varchar(150) DEFAULT NULL,
  `bairro` varchar(150) DEFAULT NULL,
  `cidade` varchar(150) DEFAULT NULL,
  `uf` varchar(2) DEFAULT NULL,
  `cep` varchar(15) DEFAULT NULL,
  `dataNascimento` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `bibliotecaria`
--

INSERT INTO `bibliotecaria` (`codFunc`, `telefone`, `email`, `nome`, `cpf`, `rg`, `logradouro`, `numero`, `complemento`, `bairro`, `cidade`, `uf`, `cep`, `dataNascimento`) VALUES
(1, '95555-6666', 'akihito_akimi@gmail.com', 'Akimi Akihito', '43.444.543-87', NULL, NULL, NULL, NULL, NULL, 'São Paulo', 'SP', NULL, '2000-01-12'),
(2, '96454-9484', 'pi_eita@gmail.com', 'Pietra Lima', '55.465.223-17', NULL, NULL, NULL, NULL, NULL, 'São Caetano', 'SP', NULL, '2002-11-22'),
(3, '98374-2134', 'soso_lu@gmail.com', 'Luana Soo', '22.857.980-77', NULL, NULL, NULL, NULL, NULL, 'São Bernado', 'SP', NULL, '1999-05-18');

-- --------------------------------------------------------

--
-- Estrutura da tabela `esmprestimo_devolucao`
--

CREATE TABLE `esmprestimo_devolucao` (
  `codEmp` int(11) NOT NULL,
  `dataDeDevolucao` date DEFAULT NULL,
  `dataDeEmprestimo` date DEFAULT NULL,
  `ra` int(11) DEFAULT NULL,
  `codLi` int(11) DEFAULT NULL,
  `codFunc` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `esmprestimo_devolucao`
--

INSERT INTO `esmprestimo_devolucao` (`codEmp`, `dataDeDevolucao`, `dataDeEmprestimo`, `ra`, `codLi`, `codFunc`) VALUES
(1, '2020-05-19', '2020-03-19', 1, 6, 3),
(2, '2020-06-29', '2020-05-29', 2, 10, 2),
(3, '2020-09-09', '2020-07-09', 6, 1, 2),
(4, '2020-11-20', '2020-10-20', 4, 2, 1),
(5, '2020-04-11', '2020-02-11', 5, 5, 3),
(6, '2020-12-05', '2020-11-14', 3, 4, 1),
(7, '2021-02-10', '2020-12-07', 7, 7, 1),
(8, '2020-07-27', '2020-06-27', 10, 8, 2),
(9, '2020-09-02', '2020-08-01', 9, 3, 3),
(10, '2020-05-05', '2020-04-04', 8, 9, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `livros`
--

CREATE TABLE `livros` (
  `codLi` int(11) NOT NULL,
  `editora` varchar(150) DEFAULT NULL,
  `autor` varchar(150) DEFAULT NULL,
  `titulo` varchar(150) DEFAULT NULL,
  `genero` varchar(150) DEFAULT NULL,
  `pag` int(11) DEFAULT NULL,
  `qtdeExemplares` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `livros`
--

INSERT INTO `livros` (`codLi`, `editora`, `autor`, `titulo`, `genero`, `pag`, `qtdeExemplares`) VALUES
(1, 'Companhia Editora Nacional', 'Sir Arthur Conan Doyle', 'As aventuras de Sherlock Holmes', 'Ficção policíal, Suspense, Mistério e Crime', 430, 5),
(2, 'Panini', 'Masashi Kishimoto e Maruo Kyozuka', 'The Last - Naruto the movie', 'Romance, Comédia, Aventura', 175, 5),
(3, 'Intrínseca', 'John Green', 'Cidades de Papel', 'Romance e Mistério', 366, 3),
(4, 'Intrínseca', 'Kyung-Sook Shin', 'Por favor cuide da mamãe', 'Romance', 236, 10),
(5, 'JBC', 'Hiro Mashima', 'Fairy Tail - Zero', 'Ficção de aventura e Fantasia', 270, 8),
(6, 'Panini', 'Hajime Isayama', 'Ataque dos Titãs', 'Ação, Ficção pos-apocalíptica e Fantasia Sombria', 150, 4),
(7, 'Paniniii', 'Kafka Asagiri e Sango Harukawa', 'Bungo Stray Dogs', 'Ação, Ficção supernatural e Mistério', 180, 10),
(8, 'Arte Ensaio', 'Fan Zhibin e Zeng Fu', 'Pincel Oriental', 'Pintura chinesa, Arte, Fotografia', 99, 7),
(9, 'DarkSide', 'George Lucas', 'Star Wars - A triologia', 'Ficção científica, Ação e Aventura', 521, 2),
(10, 'Harper Collins', 'J.R.R. Tolkien', 'A Sociedade do Anel', 'Romance e Fantasia', 604, 1),
(11, 'Galera', 'Adrian Besley', 'BTS - a biografia não oficial dos ícones do k-pop', 'Biografia', 209, 15);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `senha` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `email`, `senha`) VALUES
(1, 'Levi ', 'levizinho@gmail.com', '1234'),
(2, 'Eren', 'eren_yeger@gmail.com', '1234');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aluno`
--
ALTER TABLE `aluno`
  ADD PRIMARY KEY (`ra`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `bibliotecaria`
--
ALTER TABLE `bibliotecaria`
  ADD PRIMARY KEY (`codFunc`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `cpf` (`cpf`),
  ADD UNIQUE KEY `rg` (`rg`);

--
-- Indexes for table `esmprestimo_devolucao`
--
ALTER TABLE `esmprestimo_devolucao`
  ADD PRIMARY KEY (`codEmp`),
  ADD KEY `ra` (`ra`),
  ADD KEY `codLi` (`codLi`),
  ADD KEY `codFunc` (`codFunc`);

--
-- Indexes for table `livros`
--
ALTER TABLE `livros`
  ADD PRIMARY KEY (`codLi`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aluno`
--
ALTER TABLE `aluno`
  MODIFY `ra` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `bibliotecaria`
--
ALTER TABLE `bibliotecaria`
  MODIFY `codFunc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `esmprestimo_devolucao`
--
ALTER TABLE `esmprestimo_devolucao`
  MODIFY `codEmp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `livros`
--
ALTER TABLE `livros`
  MODIFY `codLi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `esmprestimo_devolucao`
--
ALTER TABLE `esmprestimo_devolucao`
  ADD CONSTRAINT `esmprestimo_devolucao_ibfk_1` FOREIGN KEY (`ra`) REFERENCES `aluno` (`ra`),
  ADD CONSTRAINT `esmprestimo_devolucao_ibfk_2` FOREIGN KEY (`codLi`) REFERENCES `livros` (`codLi`),
  ADD CONSTRAINT `esmprestimo_devolucao_ibfk_3` FOREIGN KEY (`codFunc`) REFERENCES `bibliotecaria` (`codFunc`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
