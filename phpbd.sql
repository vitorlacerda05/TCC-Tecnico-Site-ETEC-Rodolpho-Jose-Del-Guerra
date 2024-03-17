-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 08-Dez-2020 às 19:36
-- Versão do servidor: 5.7.31
-- versão do PHP: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `phpbd`
--
CREATE DATABASE IF NOT EXISTS `phpbd` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `phpbd`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `apm`
--

DROP TABLE IF EXISTS `apm`;
CREATE TABLE IF NOT EXISTS `apm` (
  `id_apm` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) NOT NULL,
  `descricao` varchar(2000) NOT NULL,
  PRIMARY KEY (`id_apm`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `apm`
--

INSERT INTO `apm` (`id_apm`, `titulo`, `descricao`) VALUES
(1, 'O que é a Associação de Pais e Mestres - APM?', '<p>A APM é uma entidade jurídica de direito privado, criada com a finalidade de colaborar para o aperfeiçoamento do processo educacional,\r\n						para a assistência ao escolar e para a integração escola-comunidade. Atualmente, sua principal função é atuar, em conjunto com o Conselho de Escola.\r\n						</p>'),
(2, 'Existe algum regulamento para a Associação de Pais e Mestres?', '<p>Através do Decreto n.º 12.983, de 15 de dezembro de 1978, alterado pelo Decreto n.º 48,408, de 06 de Janeiro de 2004, foi estabelecido o \r\n						Estatuto Padrão das Associações de Pais e Mestres, e este é o instrumento que dispõe sobre as finalidades, atribuições e deveres para seu funcionamento como instituição. </p>\r\n'),
(3, 'Qual a finalidade da Associação de Pais e Mestres?', '<p>A APM tem por finalidade colaborar no aprimoramento do processo educacional, na assistência ao escolar e na integração família / escola / comunidade.\r\n						Os objetivos da APM são de natureza social e educativa, sem caráter político, racial ou religioso e sem finalidades lucrativas. </p>\r\n'),
(4, 'Qual a função do Diretor de Escola na Associação de Pais e Mestres?', '<p>O Diretor de Escola é o presidente nato do Conselho Deliberativo da APM, devendo acompanhar todas as reuniões, sem direito a voto. </p>\r\n'),
(5, 'A APM deve ter Plano de Trabalho?', '<p>Sim. A APM deve elaborar o seu Plano Anual de Trabalho, do qual devem constar as atividades de assistência ao escolar, a programação\r\n							de atividades culturais e de lazer, a previsão de recursos para conservação e manutenção do prédio, dos equipamentos e das instalações, a aplicação dos recursos financeiros. </p>\r\n'),
(6, 'O pagamento de taxa da APM é obrigatório?', '<p>A contribuição financeira para a APM é sempre facultativa. No início de cada ano letivo e após o encerramento do período de matrículas, serão fixadas\r\n							a forma e a época para a campanha de arrecadação das contribuições dos sócios. </p>\r\n');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cafe_intervalo`
--

DROP TABLE IF EXISTS `cafe_intervalo`;
CREATE TABLE IF NOT EXISTS `cafe_intervalo` (
  `id_intervalo` int(11) NOT NULL AUTO_INCREMENT,
  `segunda` varchar(100) NOT NULL,
  `terca` varchar(100) NOT NULL,
  `quarta` varchar(100) NOT NULL,
  `quinta` varchar(100) NOT NULL,
  `sexta` varchar(100) NOT NULL,
  PRIMARY KEY (`id_intervalo`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `cafe_intervalo`
--

INSERT INTO `cafe_intervalo` (`id_intervalo`, `segunda`, `terca`, `quarta`, `quinta`, `sexta`) VALUES
(1, 'Leite Achocolatado/Bolacha', 'Leite Achocolatado/Bolacha', 'Leite Achocolatado/Bolacha', 'Leite Achocolatado/Bolacha', 'Leite Achocolatado/Bolacha');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cardapio`
--

DROP TABLE IF EXISTS `cardapio`;
CREATE TABLE IF NOT EXISTS `cardapio` (
  `id_cardapio` int(11) NOT NULL AUTO_INCREMENT,
  `id_intervalo` int(11) NOT NULL,
  `id_almoco` int(11) NOT NULL,
  `id_janta` int(11) NOT NULL,
  PRIMARY KEY (`id_cardapio`),
  KEY `id_almoco` (`id_almoco`),
  KEY `id_janta` (`id_janta`),
  KEY `id_intervalo` (`id_intervalo`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `cardapio`
--

INSERT INTO `cardapio` (`id_cardapio`, `id_intervalo`, `id_almoco`, `id_janta`) VALUES
(1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `cardapio_almoco`
--

DROP TABLE IF EXISTS `cardapio_almoco`;
CREATE TABLE IF NOT EXISTS `cardapio_almoco` (
  `id_almoco` int(11) NOT NULL AUTO_INCREMENT,
  `segunda` varchar(100) NOT NULL,
  `terca` varchar(100) NOT NULL,
  `quarta` varchar(100) NOT NULL,
  `quinta` varchar(100) NOT NULL,
  `sexta` varchar(100) NOT NULL,
  PRIMARY KEY (`id_almoco`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `cardapio_almoco`
--

INSERT INTO `cardapio_almoco` (`id_almoco`, `segunda`, `terca`, `quarta`, `quinta`, `sexta`) VALUES
(1, 'Arroz/Strogonoff/Salada', 'Arroz/Strogonoff/Salada', 'Arroz/Strogonoff/Salada', 'Arroz/Strogonoff/Salada', 'Arroz/Strogonoff/Salada');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cardapio_janta`
--

DROP TABLE IF EXISTS `cardapio_janta`;
CREATE TABLE IF NOT EXISTS `cardapio_janta` (
  `id_janta` int(11) NOT NULL AUTO_INCREMENT,
  `segunda` varchar(100) NOT NULL,
  `terca` varchar(100) NOT NULL,
  `quarta` varchar(100) NOT NULL,
  `quinta` varchar(100) NOT NULL,
  `sexta` varchar(100) NOT NULL,
  PRIMARY KEY (`id_janta`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `cardapio_janta`
--

INSERT INTO `cardapio_janta` (`id_janta`, `segunda`, `terca`, `quarta`, `quinta`, `sexta`) VALUES
(1, 'Arroz/Strogonoff/Salada', 'Arroz/Strogonoff/Salada', 'Arroz/Strogonoff/Salada', 'Arroz/Strogonoff/Salada', 'Arroz/Strogonoff/Salada');

-- --------------------------------------------------------

--
-- Estrutura da tabela `comunicados`
--

DROP TABLE IF EXISTS `comunicados`;
CREATE TABLE IF NOT EXISTS `comunicados` (
  `id_comunicado` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) NOT NULL,
  `comunicado` varchar(2000) NOT NULL,
  PRIMARY KEY (`id_comunicado`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `comunicados`
--

INSERT INTO `comunicados` (`id_comunicado`, `titulo`, `comunicado`) VALUES
(1, 'Comunicado 1', 'Não há comunicados ;)');

-- --------------------------------------------------------

--
-- Estrutura da tabela `concursos`
--

DROP TABLE IF EXISTS `concursos`;
CREATE TABLE IF NOT EXISTS `concursos` (
  `id_concurso` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) NOT NULL,
  `links` varchar(1000) NOT NULL,
  PRIMARY KEY (`id_concurso`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `concursos`
--

INSERT INTO `concursos` (`id_concurso`, `titulo`, `links`) VALUES
(1, 'Processo seletivo Eletro para o Ensino Médio - Eletrô (Aberto)', '<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/concursos_e_proc_selet_2020/eletro/4B-ALTERACAOCRONOGRAMA-COMPPI-ETEC-PSS-01-10-2019.pdf\">Alteração de cronograma (20/12/2019)</a></p>\r\n						<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/concursos_e_proc_selet_2020/eletro/4B-ALTERACAOCRONOGRAMA-COMPPI-ETEC-PSS-01-10-2019 - 3ª alt..pdf\">Alteração de cronograma (11/03/2020)</a></p>\r\n						<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/concursos_e_proc_selet_2020/eletro/6-DEFINDEF-ETEC-PSS-25-06-2019.pdf\">Edital de deferimento e indeferimento (11/03/2020)</a></p>\r\n'),
(2, 'Processo Seletivo 150/03/2019 - Informática Para Internet (Encerrado)', '<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/concursos_e_proc_selet_2020/InfoNet/150-03-2019-PSS-EDITALDEABERTURA.pdf\">Aviso de Abertura de Inscrições (26/09/2019)</a></p>\r\n						<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/concursos_e_proc_selet_2020/InfoNet/6-DEFINDEF-ETEC-PSS-25-06-2019.pdf\">Edital de deferimento/indeferimento e convocação para entrega de Memorial Circunstanciado. (23/10/2019)</a></p>\r\n						<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/concursos_e_proc_selet_2020/InfoNet/9A-RESULTADOMEMORIAL-SEMPPI-ETEC-PSS-25-06-2019.pdf\">Resultado do Memorial circunstanciado e convocação para prova de Métodos pedagógicos (27/11/2019)</a></p>\r\n						<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/concursos_e_proc_selet_2020/InfoNet/150-03-2019 -PSS- CLASSIFICAÇÃO FINAL.pdf\">Classificação final (20/12/2019)</a></p>\r\n'),
(3, 'Processo Seletivo 150/02/2019 - Química (Encerrado)', '<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/concursos_e_proc_selet_2019/QUI/150-02-2019-PSS-EDITALDEABERTURA.pdf\">Aviso de Abertura de Inscrições (23/07/2019)</a></p>\r\n						<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/concursos_e_proc_selet_2019/QUI/def e convocacao.pdf\">Deferimento de inscrições e convocação para entrega do memorial circunstanciado (12/08/2019)</a></p>\r\n						<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/concursos_e_proc_selet_2019/QUI/9A-RESULTADOMEMORIAL-SEMPPI-ETEC-PSS-25-06-2019.pdf\">Resultado do exame de memorial circunstanciado e convocação para prova de métodos pedagógicos (27/08/2019)</a></p>\r\n						<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/concursos_e_proc_selet_2019/QUI/150-02-2019 -PSS- CLASSIFICAÇÃO FINAL12-09-2019_10h50min.pdf\">Resultado Final (13/09/2019)</a></p>\r\n'),
(4, 'Processo Seletivo 150/01/2019 - Informática para Internet e Ensino Médio(Encerrado)', '<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/concursos_e_proc_selet_2019/INFONET/150-01-2019 -PSS- CLASSIFICAÇÃO FINAL.pdf\">13/06/2019 Classificação Final</a></p>\r\n						<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/concursos_e_proc_selet_2019/INFONET/Resultado Memorial Circunstanciado.pdf\">21/05/2019 - Resultado Memorial Circunstanciado</a></p>\r\n						<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/concursos_e_proc_selet_2019/INFONET/MODELO DE MEMORIAL CIRCUNSTANCIADO.docx\">Modelo De Memorial Circunstanciado.docx</a></p>\r\n						<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/concursos_e_proc_selet_2019/INFONET/6-DEFINDEF-ETEC-PSS-10-04-2019.pdf\">Deferimento, indeferimento e convocação</a></p>\r\n						<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/concursos_e_proc_selet_2019/INFONET/150-01-2019-PSS-EDITALDEABERTURAr.pdf\">Aviso de Abertura de Inscrições</a></p>\r\n'),
(5, 'Processo Seletivo 150/04/2018 - Informática (Encerrado)', '<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/concursos_e_proc_selet_2018/outubro/Info 04/150-04-2018-PS-AVISODEABERTURA.pdf\">Aviso de Abertura de Inscrições</a></p>\r\n						<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/concursos_e_proc_selet_2018/outubro/Info 04/150-04-2018 -PS- DEF INDEF CONV PROVA informatica.pdf\">Deferimento, indeferimento e convocação para aula teste</a></p>\r\n						<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/concursos_e_proc_selet_2018/outubro/Info 04/150-04-2018 -PS- CLASSIFICAÇÃO FINAL - Informatica.pdf\">Resultado aula teste – Classificação final</a></p>\r\n'),
(6, 'Processo Seletivo 150/05/2018 - Administração e Segurança do Trabalho (Encerrado)', '<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/concursos_e_proc_selet_2018/outubro/Adm e Seg 05/150-05-2018-PS-AVISODEABERTURA.pdf\">Aviso de Abertura de Inscrições</a></p>\r\n						<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/concursos_e_proc_selet_2018/outubro/Adm e Seg 05/150-05-2018 -PS- DEF INDEF CONV PROVA adm e segurança.pdf\">&gt;Deferimento, indeferimento e convocação para aula teste</a></p>\r\n						<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/concursos_e_proc_selet_2018/outubro/Adm e Seg 05/150-05-2018 -PS- CLASSIFICAÇÃO FINAL - Administração.pdf\">Resultado aula teste – Classificação final</a></p>\r\n'),
(7, 'Processo Seletivo 150/06/2018 - Ensino Médio (Encerrado)', '<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/concursos_e_proc_selet_2018/outubro/EM 06/150-06-2018-PS-AVISODEABERTURA.pdf\">Aviso de Abertura de Inscrições</a></p>\r\n						<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/concursos_e_proc_selet_2018/outubro/EM 06/150-06-2018 -PS- DEF INDEF CONV PROVA ensino medio.pdf\">Deferimento, indeferimento e convocação para aula teste</a></p>\r\n						<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/concursos_e_proc_selet_2018/outubro/EM 06/150-06-2018 -PS- CLASSIFICAÇÃO FINAL - Ensino Médio.pdf\">Resultado aula teste – Classificação final</a></p>\r\n'),
(8, 'Processo Seletivo 150/03/2018 - Administração, Segurança do Trabalho e Quimica (Encerrado)', '<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/concursos_e_proc_selet_2018/adm_seg_quim/150-03-2018-PS-AVISODEABERTURA.pdf\">Aviso de Abertura de Inscrições</a></p>\r\n						<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/concursos_e_proc_selet_2018/adm_seg_quim/M3c-07-02-deferimento 150-03-2018.pdf\">Avisos de deferimento e indeferimento e convocação para aulas testes</a></p>\r\n						<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/concursos_e_proc_selet_2018/adm_seg_quim/150-03-2018 -PS- CLASSIFICAÇÃO FINAL.pdf\">Classificação Final</a></p>\r\n						<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/concursos_e_proc_selet_2018/adm_seg_quim/150-03-2018-PS-HOMOLOGAO.pdf\">Homologação</a></p>\r\n'),
(9, 'Processo Seletivo 150/02/2018 - Informática (Encerrado)', '<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/concursos_e_proc_selet_2018/info/150-02-2018-PS-AVISODEABERTURA.pdf\">Aviso de Abertura de Inscrições</a></p>\r\n						<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/concursos_e_proc_selet_2018/info/M3c-07-02-deferimento 150-02-2018.pdf\">Avisos de deferimento e indeferimento e convocação para aulas testes</a></p>\r\n						<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/concursos_e_proc_selet_2018/info/150-02-2018 -PS- CLASSIFICAÇÃO FINAL.pdf\">Classificação Final</a></p>\r\n						<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/concursos_e_proc_selet_2018/info/150-02-2018-PS-HOMOLOGAO.pdf\">Homologação</a></p>\r\n'),
(10, 'Processo Seletivo 150/01/2018 - Informática para Internet integrado ao Ensino Médio e Informática (E', '<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/concursos_e_proc_selet_2018/etim_info/150-01-2018-PS-AVISODEABERTURA.pdf\">Aviso de Abertura de Inscrições</a></p>\r\n						<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/concursos_e_proc_selet_2018/etim_info/M3c-07-02-deferimento 150-01-2018.pdf\">Avisos de deferimento e indeferimento e convocação para aulas testes</a></p>\r\n						<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/concursos_e_proc_selet_2018/etim_info/150-01-2018 -PS- CLASSIFICAÇÃO FINAL.pdf\">Classificação Final</a></p>\r\n						<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/concursos_e_proc_selet_2018/etim_info/150-01-2018-PS-HOMOLOGAO.pdf\">Homologação</a></p>\r\n'),
(11, 'Processo seletivo para Docente de Administração e Química (Encerrado)', '<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/concursos_e_proc_selet_2017/Adm/150-04-2017-PS-AVISODEABERTURAismael.carvalho01-11-201711h13min09s1.pdf\">Aviso de Abertura de Inscrições</a></p>\r\n						<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/concursos_e_proc_selet_2017/Adm/3c-avisodedeferimentoeindeferimentodeinscricoeseconvocacaoparaaulateste-ps(2).pdf\">Aviso de deferimento e convocação para aula teste</a></p>\r\n						<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/concursos_e_proc_selet_2017/Adm/5 - resultado 150042017.pdf\">Resultado da aula teste e classificação final</a></p>\r\n'),
(12, 'Processo seletivo para Docente de Administração em Tapiratiba (Encerrado)', '<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/concursos_e_proc_selet_2017/Adm/150-02-2017-PS-AVISODEABERTURA.pdf\">Aviso de Abertura de Inscrições</a></p>\r\n						<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/concursos_e_proc_selet_2017/Adm/3c-avisodedeferimentoeindeferimentodeinscricoeseconvocacaoparaaulateste-ps (1).pdf\">Aviso de deferimento e Convocação para Aula-teste</a></p>\r\n						<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/concursos_e_proc_selet_2017/Adm/5 - classificaçãofinal 150022017tap.pdf\">Resultado da aula teste e classificação final</a></p>\r\n'),
(13, 'Processo seletivo para Docente de Informática e Administração(Encerrado)', '<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/concursos_e_proc_selet_2017/Info/150-03-2017-PS-AVISODEABERTURA.pdf\">Aviso de Abertura de Inscrições</a></p>\r\n						<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/concursos_e_proc_selet_2017/Info/3c-avisodedeferimentoeindeferimentodeinscricoeseconvocacaoparaaulateste-ps.pdf\">Aviso de deferimento e convocação para aula teste</a></p>\r\n						<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/concursos_e_proc_selet_2017/Info/5 - classificaçãofinal 150032017.pdf\">Resultado da aula teste e classificação final</a></p>\r\n'),
(14, 'Processo seletivo para Docente de Física - Ensino Médio (Encerrado)', '<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/concursos_e_proc_selet_2017/Fisica(EM)/Aviso_de_abertura (Fisica).pdf\">Aviso de Abertura de Inscrições</a></p>\r\n						<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/concursos_e_proc_selet_2017/Fisica(EM)/3c - deferimento e convocação aula teste.pdf\">Deferimento, Indeferimento e Convocação para aula teste</a></p>\r\n						<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/concursos_e_proc_selet_2017/Fisica(EM)/5 - resultado final.pdf\">Resultado final</a></p>\r\n		'),
(15, 'Processo seletivo para Docentes Etec Rio Pardo (Encerrado)', '<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/concursos_e_proc_selet_2016/proc_selet_docente_etecriopardo/Aviso_de_abertura_proc_selet_150_02_2016.pdf\">Aviso de Abertura de Inscrições</a></p>\r\n						<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/concursos_e_proc_selet_2016/proc_selet_docente_etecriopardo/3c - deferimento e convocacao aula teste.pdf\">Deferimento e convocação para aula teste</a></p>\r\n						<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/concursos_e_proc_selet_2016/proc_selet_docente_etecriopardo/5 - resultado final - SJ.pdf\">Resultado final</a></p>\r\n	'),
(16, 'Processo seletivo para Docentes na classe descentralizada de Tapiratiba (Encerrado)', '<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/concursos_e_proc_selet_2016/proc_selet_docente_cd_tapiratiba/Aviso_de_Abertura_proc_selet_150_03_2016_Tapiratiba.pdf\">Aviso de Abertura de Inscrições</a></p>\r\n						<a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/concursos_e_proc_selet_2016/proc_selet_docente_cd_tapiratiba/3c - deferimento e convocação aula teste - tap..pdf\">Deferimento e convocação para aula teste</a></p>\r\n						<a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/concursos_e_proc_selet_2016/proc_selet_docente_cd_tapiratiba/5 - resultado final - Tap.pdf\">Resultado final</a></p>\r\n'),
(17, 'Concurso Público para Auxiliar Docente em Informática (Mococa) (Encerrado)', '<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/concursos_e_proc_selet_2016/conc_aux_doc_info_mococa/7ETEC - edital deferimento de inscriçõesInfo.pdf\">Edital de deferimento, indeferimento e convocação para prova prática</a></p>\r\n						<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/concursos_e_proc_selet_2016/conc_aux_doc_info_mococa/Auxiliar Docente Informatica - GABARITO.pdf\">Gabarito da prova</a></p>\r\n						<p><a target=\"blank\" \" \r\n'),
(18, 'Concurso Público para Professor de Sociologia (Encerrado)', '<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/concursos_e_proc_selet_2016/conc_sicoII/Selecao_ETEC_CONCURSO_150_150-02-2016EDITALDEABERTURA-CP25-04_sicoII.pdf\">Edital de Abertura</a></p>\r\n						<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/concursos_e_proc_selet_2016/conc_sicoII/6A - edital de convocação SICOII.pdf\">Edital de Convocação para Prova Escrita</a></p>\r\n\r\n'),
(19, 'Concurso Público para Auxiliar Docente em Química (Encerrado)', '<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/concursos_e_proc_selet_2016/conc_aux_doc_seg_trab/150-02-2016 EDITAL DE ABERTURA - AD Seg Trabalho.pdf\">Edital Abertura de Inscrições</a></p>\r\n						<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/concursos_e_proc_selet_2016/conc_aux_doc_seg_trab/7ETEC - edital deferimento de inscrições Seg.pdf\">Edital de deferimento, indeferimento e Convocação para Prova Escrita</a></p>\r\n						<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/concursos_e_proc_selet_2016/conc_aux_doc_seg_trab/Retificacao_Anexo_II_Edital_abertura_Seg_trab.pdf\">Retificação do Edital de Abertura</a></p>\r\n						<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/concursos_e_proc_selet_2016/conc_aux_doc_seg_trab/cancelamento_prova_seg_trab.pdf\">Cancelamento da prova</a></p>\r\n					'),
(20, 'Legislação de Processo Seletivo', '<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/concursos_e_proc_selet_2017/legislacao_proc_selet/Comunicado - CEETEPS - 1.pdf\">Comunicado - CEETEPS - 1 </a></p>\r\n						<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/concursos_e_proc_selet_2017/legislacao_proc_selet/Comunicado - CEETEPS - 001 - Atualizado.pdf\">Comunicado - CEETEPS - 001 - Atualizado</a></p>\r\n						<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/concursos_e_proc_selet_2017/legislacao_proc_selet/Comunicado - CEETEPS - 001 - 08022010.pdf\">Comunicado - CEETEPS - 001 - 08/02/2010</a></p>\r\n						<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/concursos_e_proc_selet_2017/legislacao_proc_selet/Comunicado - CEETEPS - 2 - 02022010.pdf\">Comunicado - CEETEPS - 2 - 02/02/2010</a></p>\r\n');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cursos_tecnicos`
--

DROP TABLE IF EXISTS `cursos_tecnicos`;
CREATE TABLE IF NOT EXISTS `cursos_tecnicos` (
  `id_curso` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) NOT NULL,
  `descricao` varchar(5000) NOT NULL,
  PRIMARY KEY (`id_curso`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `cursos_tecnicos`
--

INSERT INTO `cursos_tecnicos` (`id_curso`, `titulo`, `descricao`) VALUES
(1, 'Técnico em Administração', '<p>O <strong>TÉCNICO EM ADMINISTRAÇÃO</strong> é o profissional que adota postura ética na execução da rotina administrativa, na elaboração do planejamento da produção e materiais, recursos humanos, financeiros e mercadológicos. Realiza atividades de controles e auxilia nos processos de direção utilizando ferramentas da informática básica. Fomenta ideias e práticas empreendedoras. Desempenha suas atividades observando as normas de segurança, saúde e higiene do trabalho, bem como as de preservação ambiental </p>\r\n					<p><strong>Eixo Tecnológico:</strong> GESTÃO E NEGÓCIOS</p>\r\n					<p><strong>Mercado de trabalho:</strong> instituições públicas, privadas e do terceiro setor.</p>\r\n					\r\n					<h5><strong>Pré-requisitos</strong></h5>\r\n					<p>Para candidato que concluiu ou está cursando o Ensino Médio regular: possuir Certificado de Conclusão do Ensino Médio ou declaração que está matriculado na 2ª ou 3ª série do Ensino Médio.</p>\r\n					<p>Para candidato que concluiu ou está cursando a Educação de Jovens e Adultos - EJA ou o Exame Nacional para Certificação de Competências de Jovens e Adultos - ENCCEJA: possuir Certificado de Conclusão do Ensino Médio ou declaração que está matriculado, a partir do 2º semestre do EJA ou 2 (dois) certificados de aprovação em áreas de estudos do EJA, ou boletim de aprovação do ENCCEJA enviado pelo MEC, ou certificado de aprovação do ENCCEJA em 2 (duas) áreas de estudos avaliadas. </p>\r\n					<p>Para candidato que tenha realizado o Exame Nacional do Ensino Médio – ENEM: possuir certificado ou declaração de conclusão do Ensino Médio expedido por órgão competente. </p>'),
(2, 'Técnico em Informática para internet', '<p>O <strong>TÉCNICO EM INFORMÁTICA PARA INTERNET</strong> é o profissional que desenvolve e realiza manutenções em websites, portais na Internet e Intranet. Utiliza ferramentas de desenvolvimento de projetos para construir soluções que auxiliam o processo de criação de interfaces e aplicativos empregados no comércio e marketing eletrônicos.  </p>\r\n					<p><strong>Eixo Tecnológico:</strong> INFORMAÇÃO E COMUNICAÇÃO </p>\r\n					<p><strong>Mercado de trabalho:</strong> instituições públicas, privadas e do terceiro setor que demandem programação de computadores para Internet.</p>\r\n					\r\n					<h5><strong>Pré-requisitos</strong></h5>\r\n					<p>Para candidato que concluiu ou está cursando o Ensino Médio regular: possuir Certificado de Conclusão do Ensino Médio ou declaração que está matriculado na 2ª ou 3ª série do Ensino Médio.</p>\r\n					<p>Para candidato que concluiu ou está cursando a Educação de Jovens e Adultos - EJA ou o Exame Nacional para Certificação de Competências de Jovens e Adultos - ENCCEJA: possuir Certificado de Conclusão do Ensino Médio ou declaração que está matriculado, a partir do 2º semestre do EJA ou 2 (dois) certificados de aprovação em áreas de estudos do EJA, ou boletim de aprovação do ENCCEJA enviado pelo MEC, ou certificado de aprovação do ENCCEJA em 2 (duas) áreas de estudos avaliadas. </p>\r\n					<p>Para candidato que tenha realizado o Exame Nacional do Ensino Médio – ENEM: possuir certificado ou declaração de conclusão do Ensino Médio expedido por órgão competente. </p>\r\n'),
(3, 'Técnico em quimíca', '<p>O <strong>TÉCNICO EM QUÍMICA</strong> é o profissional que atua no planejamento, na coordenação, na operação e controle dos processos industriais e equipamentos nos processos produtivos. Planeja e coordena os processos laboratoriais. Realiza amostragens, análises químicas, físico-químicas e microbiológicas. Realiza vendas e assistência técnica na aplicação de equipamentos e produtos químicos. Participa do desenvolvimento de produtos e validação de métodos. Atua com responsabilidade ambiental e em conformidade com as normas técnicas, as normas de qualidade e de boas práticas de manufatura e de segurança.  </p>\r\n					<p><strong>Eixo Tecnológico:</strong>  PRODUÇÃO INDUSTRIAL  </p>\r\n					<p><strong>Mercado de trabalho:</strong> indústrias; empresas de comercialização e assistência técnica; laboratórios de ensino, de calibração, de análise e controle de qualidade e ambiental; entidades de certificação de produtos; tratamento de águas e de efluentes.</p>\r\n					\r\n					<h5><strong>Pré-requisitos</strong></h5>\r\n					<p>Para candidato que concluiu ou está cursando o Ensino Médio regular: possuir Certificado de Conclusão do Ensino Médio ou declaração que está matriculado na 2ª ou 3ª série do Ensino Médio.</p>\r\n					<p>Para candidato que concluiu ou está cursando a Educação de Jovens e Adultos - EJA ou o Exame Nacional para Certificação de Competências de Jovens e Adultos - ENCCEJA: possuir Certificado de Conclusão do Ensino Médio ou declaração que está matriculado, a partir do 2º semestre do EJA ou 2 (dois) certificados de aprovação em áreas de estudos do EJA, ou boletim de aprovação do ENCCEJA enviado pelo MEC, ou certificado de aprovação do ENCCEJA em 2 (duas) áreas de estudos avaliadas. </p>\r\n					<p>Para candidato que tenha realizado o Exame Nacional do Ensino Médio – ENEM: possuir certificado ou declaração de conclusão do Ensino Médio expedido por órgão competente. </p>\r\n'),
(4, 'Técnico em segurança do trabalho', '<p>O <strong>TÉCNICO EM SEGURANÇA DO TRABALHO</strong> é o profissional que atua em ações prevencionistas nos processos produtivos com auxílio de métodos e técnicas de identificação, avaliação e medidas de controle de riscos ambientais, de acordo com a Legislação Brasileira, Normas Regulamentadoras e princípios de Higiene, Saúde e Segurança do Trabalho. Desenvolve ações educativas na área de Saúde e Segurança do Trabalho. Seleciona, controla, orienta e fiscaliza o uso de EPI e EPC. Coleta e organiza informações de saúde e de segurança no trabalho. Avalia e executa diversos programas de prevenção em SST, inclusive PPRA (Programa de Prevenção de Riscos Ambientais). Investiga, analisa acidentes e recomenda medidas de prevenção e controle.  </p>\r\n					<p><strong>Eixo Tecnológico:</strong>  SEGURANÇA  </p>\r\n					<p><strong>Mercado de trabalho:</strong> empresas públicas e privadas, como indústrias, hospitais, empresas comerciais, mineradoras, de construção civil e área rural.</p>\r\n					\r\n					<h5><strong>Pré-requisitos</strong></h5>\r\n					<p>Para candidato que concluiu ou está cursando o Ensino Médio regular: possuir Certificado de Conclusão do Ensino Médio ou declaração que está matriculado na 2ª ou 3ª série do Ensino Médio.</p>\r\n					<p>Para candidato que concluiu ou está cursando a Educação de Jovens e Adultos - EJA ou o Exame Nacional para Certificação de Competências de Jovens e Adultos - ENCCEJA: possuir Certificado de Conclusão do Ensino Médio ou declaração que está matriculado, a partir do 2º semestre do EJA ou 2 (dois) certificados de aprovação em áreas de estudos do EJA, ou boletim de aprovação do ENCCEJA enviado pelo MEC, ou certificado de aprovação do ENCCEJA em 2 (duas) áreas de estudos avaliadas. </p>\r\n					<p>Para candidato que tenha realizado o Exame Nacional do Ensino Médio – ENEM: possuir certificado ou declaração de conclusão do Ensino Médio expedido por órgão competente. </p>\r\n');

-- --------------------------------------------------------

--
-- Estrutura da tabela `downloads`
--

DROP TABLE IF EXISTS `downloads`;
CREATE TABLE IF NOT EXISTS `downloads` (
  `id_download` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(150) NOT NULL,
  `descricao` varchar(1000) NOT NULL,
  `arquivo` varchar(500) NOT NULL,
  PRIMARY KEY (`id_download`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `downloads`
--

INSERT INTO `downloads` (`id_download`, `titulo`, `descricao`, `arquivo`) VALUES
(1, 'Manual da Biblioteca', ' Manual da Biblioteca', '<p>Para fazer download do Manual da Biblioteca<a href=\"http://www.etecriopardo.com.br/home/docs/Manual%20biblioteca%202019.pdf\" class=\"link active\"><strong> clique aqui!</strong></a></p>'),
(2, 'Plano Plurianual de Gestão', '<p>De acordo com o disposto no Capítulo II do Regimento Comum das Escolas Técnicas do CEETEPS, o Plano Plurianual de Gestão - PPG apresenta a proposta de trabalho da ETEC. Conta, como eixo norteador, com o Projeto Político Pedagógico – PPP, no qual são explicitados os valores, as crenças e os princípios pedagógicos da escola. A concepção coletiva dos projetos a serem desenvolvidos parte, necessariamente, do PPP, dos \r\n					   objetivos e metas estabelecidos por meio da análise dos contextos interno e externo, da reflexão sobre o instituído e da escola almejada pela comunidade. </p>\r\n					<p>O Plano Plurianual de Gestão tem uma vigência de cinco anos, com replanejamento, no mínimo, anual. A atualização anual, com inclusão de novos projetos, garante o horizonte permanente de cinco anos.</p> \r\n					', '<p>Baixe o <a href=\"http://www.etecriopardo.com.br/home/docs/plano_plurianual_gestao/ppg2019.pdf\"><strong>Plano Plurianual de Gestão</strong></a></p>'),
(3, 'Manual do Aluno', 'Manual do Aluno', '<p>Para fazer download do Manual do Aluno<a href=\"http://www.etecriopardo.com.br/home/docs/manual%20do%20aluno%202019.pdf\" class=\"link active\"><strong> clique aqui!</strong></a></p>'),
(4, 'Regimento Comum das Etecs', 'Regimento Comum das Etecs', '<p>Para fazer download do Regimento Comum das Etecs<a href=\"http://www.etecriopardo.com.br/home/docs/regimento_comum_das_etecs_2013.pdf\" class=\"link active\"><strong> clique aqui!</strong></a></p>');

-- --------------------------------------------------------

--
-- Estrutura da tabela `estagio`
--

DROP TABLE IF EXISTS `estagio`;
CREATE TABLE IF NOT EXISTS `estagio` (
  `id_estagio` int(11) NOT NULL AUTO_INCREMENT,
  `nome_vaga` varchar(100) NOT NULL,
  `vagas` varchar(1000) NOT NULL,
  PRIMARY KEY (`id_estagio`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `estagio`
--

INSERT INTO `estagio` (`id_estagio`, `nome_vaga`, `vagas`) VALUES
(1, 'Vagas para estágio - Administração', '<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/estagio/vagas/estagio aci 2020.pdf\">Estágio ACI (Divulgação: 17/07/2020)</a></p>\r\n						<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/estagio/vagas/2 VAGAS DE ESTÁGIO sAERP.pdf\">Estágio Saerp (Divulgação: 02/07/2020)</a></p>\r\n						<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/estagio/vagas/VAGAADM.pdf\">Estágio ACI (Divulgação: 05/03/2020)</a></p>\r\n'),
(2, 'Vagas para estágio - Segurança do Trabalho', '<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/estagio/vagas/VAGA DE ESTÁGIO EMPRESOFT.pdf\">Estágio Empresoft (Divulgação: 16/03/2020)</a></p>\r\n						<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/estagio/vagas/VAGA DE ESTÁGIO Alfred.pdf\">Estágio Alfred (Divulgação: 05/03/2020)</a></p>\r\n						<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/estagio/vagas/VAGAINFO.pdf\">Estágio Fox Vídeos (Divulgação: 08/01/2020)</a></p>\r\n						<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/estagio/vagas/VAGA DE ESTÁGIO atelie.pdf\">Estágio Ateliê de costura (Divulgação: 08/01/2020)</a></p>\r\n'),
(3, 'Vagas para estágio - Logística', 'Não há vagas no momento.'),
(4, 'Vagas para estágio - Química', 'Não há vagas no momento.'),
(5, 'Vagas para estágio - Ensino médio', 'Não há vagas no momento.'),
(6, 'Links Importantes', '<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/estagio/cartilha_estagio.pdf\">Cartilha esclarecedora sobre a Lei do Estágio</a></p>\r\n						<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/estagio/lei_estagio.pdf\">Lei nº 11.788/2008 - Dispõe sobre estágio de estudantes</a></p>\r\n');

-- --------------------------------------------------------

--
-- Estrutura da tabela `eventos_futuros`
--

DROP TABLE IF EXISTS `eventos_futuros`;
CREATE TABLE IF NOT EXISTS `eventos_futuros` (
  `id_evento` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `local` varchar(100) NOT NULL,
  `data` date NOT NULL,
  `horario` time NOT NULL,
  `descricao` varchar(1000) NOT NULL,
  PRIMARY KEY (`id_evento`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `eventos_futuros`
--

INSERT INTO `eventos_futuros` (`id_evento`, `nome`, `local`, `data`, `horario`, `descricao`) VALUES
(1, 'Fira de Profissões', 'ETEC Rodolpho José Del Guerra', '2020-12-15', '14:30:00', 'Essa atividade é uma excelente forma de colocar os estudantes em contato com algumas profissões, possibilitando uma interação maior entre a vida acadêmica e a profissional. Além disso, aproveitar datas comemorativas como o Dia do Trabalho pode incentivar ainda mais o engajamento dos alunos.'),
(2, 'Workshops', 'ETEC Rodolpho José Del Guerra', '2020-12-22', '14:30:00', 'Assim como nas palestras, promover workshops para professores e demais colaboradores é uma iniciativa indispensável para o fortalecimento da escola. A capacitação profissional, aliada com a distribuição do conhecimento, pode contribuir para um ensino de melhor qualidade para os alunos, o que favorece a retenção dos mesmos. Devido a esses fatores, a Etec José Rodolpho Del Guerra vem buscando tais melhorias, que serão acrescentadas os próximos meses.'),
(3, '  Palestra ', 'ETEC Rodolpho José Del Guerra', '2020-12-31', '14:30:00', 'É com um prazer imenso, que buscamos trazer palestras frequentemente, (uma vez ao mês), com o intuito de enriquecer e complementar os conteúdos vistos em salas de aula. As palestras educativas são também um formato muito interessante, não só para os alunos, como para toda a comunidade acadêmica. Trazer para a escola alguns dos assuntos que apresentam o maior déficit de aprendizagem entre os estudantes pode fortalecer esses pontos fracos, e resultar em melhor rendimento escolar.'),
(4, 'Hallowen', 'ETEC Rodolpho José Del Guerra', '2020-10-31', '14:30:00', 'hallowen');

-- --------------------------------------------------------

--
-- Estrutura da tabela `gabarito`
--

DROP TABLE IF EXISTS `gabarito`;
CREATE TABLE IF NOT EXISTS `gabarito` (
  `id_gabarito` int(11) NOT NULL AUTO_INCREMENT,
  `serie` varchar(100) NOT NULL,
  `link` varchar(500) NOT NULL,
  PRIMARY KEY (`id_gabarito`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `gabarito`
--

INSERT INTO `gabarito` (`id_gabarito`, `serie`, `link`) VALUES
(1, '1° ETIM INFO - ÁREA TÉCNICA', '<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/gabarito_simulado_2019/2sem/tec/GABARITO_1º_ETIM.pdf\">Gabarito área técnica</a></p>'),
(2, '2° ETIM INFO - GABARITO ÁREA TÉCNICA', '<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/gabarito_simulado_2019/2sem/tec/GABARITO_2º_ETIM.pdf\">GABARITO ÁREA TÉCNICA 2° ETIM INFO </a></p>'),
(3, 'GABARITO 1° ano A ', '<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/gabarito_simulado_2019/2sem/em/GABARITO OFICIAL -  1ºANO A - 2º_SEM - 2019.pdf\">GABARITO 1° ano A </a></p>'),
(4, 'GABARITO 1° ano Informática e Química', '<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/gabarito_simulado_2019/2sem/em/GABARITO OFICIAL -  1ºANO INFO-QUIM - 2º_SEM - 2019.pdf\">GABARITO 1° ano Informática e Química</a></p>'),
(5, 'GABARITO 2° ano A, Informática e Química', '<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/gabarito_simulado_2019/2sem/em/GABARITO OFICIAL - 2ºANO- 2°A_2°INFO_2°QUIM - 2º_SEM - 2019.pdf\">GABARITO 2° ano A, Informática e Química</a></p>');

-- --------------------------------------------------------

--
-- Estrutura da tabela `projetos`
--

DROP TABLE IF EXISTS `projetos`;
CREATE TABLE IF NOT EXISTS `projetos` (
  `id_projeto` int(11) NOT NULL AUTO_INCREMENT,
  `nome_do_projeto` varchar(100) NOT NULL,
  `descricao` varchar(10000) NOT NULL,
  PRIMARY KEY (`id_projeto`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `projetos`
--

INSERT INTO `projetos` (`id_projeto`, `nome_do_projeto`, `descricao`) VALUES
(1, 'Lixo eletrônico', '<p>Com o crescimento do uso da informática e de vários dispositivos eletrônicos nos mais diversos meios (doméstico ou empresarial)\r\n					   ocorreu uma grande expansão de aquisição destes equipamentos. O uso e a troca destes equipamentos estão ocorrendo em uma escala assustadora,\r\n					   gerando um material que está sendo descartado muitas vezes de forma irregular, chamado de “Lixo Eletrônico”. Com este projeto pretendem-se conscientizar alunos,\r\n					   professores e funcionários a fazer o uso destes equipamentos por um período maior do que está ocorrendo nos dias de hoje, e também quando for descartar,\r\n					   fazer de maneira a não prejudicar o meio ambiente, mostrando os locais corretos de possíveis coletas para depois serem separados e reciclados de maneira\r\n					   consciente e sustentável.</p>\r\n					<p>Muitos de nós até sabemos que é preciso reaproveitar, descartar o lixo corretamente, reciclar, mas isto às vezes fica no esquecimento,\r\n					   ou deixando para que outra pessoa faça por nós. O entendimento sobre este assunto está abrangendo todas as mídias, e nós educadores temos que mostrar\r\n					   que podemos ser melhores tanto em aproveitamento de equipamentos eletrônicos, quanto no descarte correto.</p>\r\n					<p>O projeto Lixo Eletrônico tem propostas de um esclarecimento abrangente sobre o assunto, e também mostrar ao publico de nossa comunidade que podemos\r\n					   fazer melhor e de maneira melhor, mostrando as melhores práticas de aproveitamento de equipamentos (computadores, impressoras, etc.) e também reciclando\r\n					   todos estes materiais de maneira a não prejudicar o meio ambiente onde vivemos.</p>\r\n					<p>O Professor Ronaldo Luiz de Paula é o principal responsável pelo projeto na nossa escola. </p> '),
(2, 'Office', '<p>Verifique se já está disponível o Office 365 Pro Plus para você instalar em seu computador, tablet ou smartphone.</p>\r\n						<p>Trata-se de uma licença que você pode instalar em até 5 dispositivos.</p>\r\n						<p>Este benefício está disponível para Alunos, Professores que possuem um e-mail institucional @etec.sp.gov.br; @fatec.sp.gov.br; @cpspos.sp.gov.br e @cps.sp.gov.br</p>\r\n						<p>Para maiores informações, procure o responsável local pelo Projeto MSDNAA em sua unidade.</p>\r\n						<p>Para ter acesso aos serviços disponibilizados pelo projeto MSDNAA é necessário ter a conta de e-mail institucional (nome@etec.sp.gov.br). Caso ainda não possua conta do e-mail institucional, envie um e-mail para” msdnaa.rpardo@etec.sp.gov.br “informando seu RM e seu nome completo ou cique no link abaixo para requisitar seus dados no MSDNAA.</p>\r\n						\r\n						<p>Importante: Dúvidas quanto ao download dos softwares? Envie um email para: elms@etec.sp.gov.br</p>\r\n						\r\n						<p><a href=\"https://login.microsoftonline.com\">Acesse sua conta utilizando seu email institucional</a></p>\r\n\r\n						<p><a href=\"https://portal.office.com/start\">Clique aqui para instalar o Office 365 Pro Plus</a></p>'),
(3, 'safgfgsdf', '111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111'),
(4, 'TCC', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa'),
(5, 're', 'edfwertgerwytewr'),
(6, 'TCC ETEC 2020', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa');

-- --------------------------------------------------------

--
-- Estrutura da tabela `reunioes`
--

DROP TABLE IF EXISTS `reunioes`;
CREATE TABLE IF NOT EXISTS `reunioes` (
  `id_reuniao` int(11) NOT NULL AUTO_INCREMENT,
  `nome_reuniao` varchar(100) NOT NULL,
  `descricao` varchar(500) NOT NULL,
  `local` varchar(200) NOT NULL,
  `data` date NOT NULL,
  `hora` time NOT NULL,
  PRIMARY KEY (`id_reuniao`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `reunioes`
--

INSERT INTO `reunioes` (`id_reuniao`, `nome_reuniao`, `descricao`, `local`, `data`, `hora`) VALUES
(1, 'Para alunos da 3°série do EM e ETIM', ' Reunião de pais/responsáveis 3°s séries do EM e ETIM', 'ETEC Rodolpho José Del Guerra', '2020-12-24', '10:30:00'),
(2, ' Para alunos da 2°série do EM e ETIM', 'Reunião de pais/responsáveis 2°s séries do EM e ETIM', 'ETEC Rodolpho José Del Guerra', '2020-12-25', '09:00:00'),
(3, 'ara alunos das 1°séries do EM e ETIM', 'Reunião de pais/responsáveis 1°s séries do EM e ETIM', 'ETEC Rodolpho José Del Guerra', '2020-12-13', '08:00:00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `slider`
--

DROP TABLE IF EXISTS `slider`;
CREATE TABLE IF NOT EXISTS `slider` (
  `id_slider` int(11) NOT NULL AUTO_INCREMENT,
  `imagem` varchar(1000) NOT NULL,
  `nome_imagem` varchar(500) NOT NULL,
  PRIMARY KEY (`id_slider`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `slider`
--

INSERT INTO `slider` (`id_slider`, `imagem`, `nome_imagem`) VALUES
(1, 'bg_2.jpg', 'bg-2'),
(2, 'bg_5.jpg', 'bg-3');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tcc`
--

DROP TABLE IF EXISTS `tcc`;
CREATE TABLE IF NOT EXISTS `tcc` (
  `id_tcc` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `arquivo` varchar(1000) NOT NULL,
  `descricao` varchar(1000) NOT NULL,
  `nomes_dos_desenvolvedores` varchar(150) NOT NULL,
  PRIMARY KEY (`id_tcc`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tcc`
--

INSERT INTO `tcc` (`id_tcc`, `nome`, `arquivo`, `descricao`, `nomes_dos_desenvolvedores`) VALUES
(1, 'Atualização do Site da Escola', 'Aqui vai um link que vai redirecionar para um pdf onde vai estar a parte escrita', 'Descrição do tema e do tcc', 'Gabriel'),
(2, 'TCC 2 ', 'arquivo', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa'),
(3, 'TCC 3', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 'aaaaaaaaaaaaaaaaaaaaaaaaaa', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(25) NOT NULL,
  `usuario` varchar(20) NOT NULL,
  `senha` varchar(30) NOT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `nome`, `usuario`, `senha`) VALUES
(1, 'Administrador', 'admin', '123');

-- --------------------------------------------------------

--
-- Estrutura da tabela `vagas_remanescentes`
--

DROP TABLE IF EXISTS `vagas_remanescentes`;
CREATE TABLE IF NOT EXISTS `vagas_remanescentes` (
  `id_vaga` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) NOT NULL,
  `descricao` varchar(2000) NOT NULL,
  PRIMARY KEY (`id_vaga`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `vagas_remanescentes`
--

INSERT INTO `vagas_remanescentes` (`id_vaga`, `titulo`, `descricao`) VALUES
(1, 'Técnico em Administração, Informática para Internet e Segurança do Trabalho (Aberto)', '<p>1º passo: Leia o edital: <a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/vagas_reman_2020/tecAdm-Inf-St/Edital 01 Extraordinário 2º sem. 2020.pdf\"><b>Edital</b></a></p>\r\n						<p>2º passo: O candidato deve fazer a inscrição no período de 29/06/2020 à 10/07/2020 através do link: <a target=\"blank\" href=\"https://forms.office.com/Pages/ResponsePage.aspx?id=xWS-6vVodkqDAZV3pnnkSWo0naex1atLoAoY-UU5TJBUNEhCNkdINk9QTTlRUzgwTVFKVUc0U1BQMC4u\"><b>Formulário de inscrição </b></a></p>\r\n						<p>3º passo: Enviar os documentos discriminados no Capítulo II do Edital para o email: <b>e150acad@cps.sp.gov.br</b></p>\r\n						<hr> \r\n						<a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/vagas_reman_2020/tecAdm-Inf-St/Convocados para entrevista.pdf\">Convocados para a entrevista (15/07/20)</a><br>	\r\n						<a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/vagas_reman_2020/tecAdm-Inf-St/CLASSIFICAÇÃO FINAL.pdf\">Classificação final (24/07/20)</a><br>\r\n'),
(2, 'Técnico em Química (Encerrado)', '<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/vagas_reman_2020/tecQui/Edital 02-2019 - VR Qui e Net.pdf\">Edital</a></p>\r\n					<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/vagas_reman_2020/tecQui/Atribuições e Responsabilidades dos Cursos.pdf\">Atribuições e Responsabilidades do Curso </a></p>\r\n					<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/vagas_reman_2020/tecQui/Química - 294_CS_2 sem 2019.pdf\">Plano de Curso </a></p>\r\n					<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/vagas_reman_2020/tecQui/GABARITO - QUI.pdf\">Gabarito </a></p>\r\n					<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/vagas_reman_2020/tecQui/Qui - Convocados para Prova Prática e ENTREVISTA.pdf\">Convocados para Prova Prática e Entrevista </a></p>\r\n					<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/vagas_reman_2020/tecQui/CLASSIFICAÇÃO FINAL QUI.pdf\">Classificação Final</a></p>\r\n					<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/vagas_reman_2020/tecQui/Divulgação de Vagas Qui.pdf\">Divulgação de Vagas</a></p>\r\n'),
(3, 'Técnico em Informática para Internet (Encerrado)', '<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/vagas_reman_2020/tecInfo/Edital 02-2019 - VR Qui e Net.pdf\">Edital</a></p>\r\n					<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/vagas_reman_2020/tecInfo/Atribuições e Responsabilidades dos Cursos.pdf\">Atribuições e Responsabilidades do Curso </a></p>\r\n					<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/vagas_reman_2020/tecInfo/Informática para Internet - 184_CS_2 sem 2019.pdf\">Plano de Curso </a></p>\r\n					<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/vagas_reman_2020/tecInfo/GABARITO - NET.pdf\">Gabarito </a></p>\r\n					<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/vagas_reman_2020/tecInfo/Net - Convocados para Prova Prática e ENTREVISTA.pdf\">Convocados para Prova Prática e Entrevista</a></p>\r\n					<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/vagas_reman_2020/tecInfo/CLASSIFICAÇÃO FINAL NET.pdf\">Classificação Final</a></p>\r\n					<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/vagas_reman_2020/tecInfo/Divulgação de Vagas Net.pdf\">Divulgação de vagas</a></p>\r\n'),
(4, 'Ensino Médio Integrado ao Técnico em Informática para Internet (Encerrado)', '<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/vagas_reman_2019_2sem/Edital 01-2019 - Site.pdf\">Edital</a></p>\r\n					<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/vagas_reman_2019_2sem/Proposta Curricular.pdf\">Proposta curricular </a></p>\r\n					<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/vagas_reman_2019_2sem/GABARITO - Final - CORRIGIDO - MURAL.pdf\">Gabarito </a></p>\r\n					<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/vagas_reman_2019_2sem/1 - Resultado prova objetiva Etim.pdf\">Resultado prova objetiva Etim </a></p>\r\n					<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/vagas_reman_2019_2sem/2 - Convocados para a ENTREVISTA.pdf\">Convocados para a ENTREVISTA </a></p>\r\n					<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/vagas_reman_2019_2sem/2 - Convocados para a ENTREVISTA.pdf\">Convocados para a ENTREVISTA </a></p>\r\n					<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/vagas_reman_2019_2sem/1 CLASSIFICAÇÃO FINAL Etim.pdf\">CLASSIFICAÇÃO FINAL Etim </a></p>\r\n					<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/vagas_reman_2019_2sem/2 Divulgação de Vagas.pdf\">Divulgação de Vagas </a></p>\r\n'),
(5, 'Técnico em Informática para Internet (Encerrado)', '<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/vagas_reman_2019/InfoNet/08 - edital VR Técnico em Informática para Internet.pdf\">Edital</a></p>\r\n					<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/vagas_reman_2019/InfoNet/Proposta Curricular.pdf\">Proposta curricular </a></p>\r\n					<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/vagas_reman_2019/InfoNet/1 - 2º Net RESULTADO PROVA.pdf\">Resultado da prova </a></p>\r\n					<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/vagas_reman_2019/InfoNet/2 - 2º Net CLASSIFICAÇÃO.pdf\">Classificação </a></p>\r\n					<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/vagas_reman_2019/InfoNet/3 - Divulgação de Vagas.pdf\">Divulgação de vagas </a></p>\r\n'),
(6, 'Ensino Médio - 3ª série (Encerrado)', '<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/vagas_reman_2019/EM/07 - edital vagas remanescentes ensino médio.pdf\">Edital</a></p>\r\n					<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/vagas_reman_2019/EM/Proposta Curricular Ensino Médio.pdf\">Proposta curricular </a></p>\r\n					<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/vagas_reman_2019/EM/matriz curricular.jpg\">Matriz curricular</a></p>\r\n					<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/vagas_reman_2019/EM/GABARITO VAGAS REMANESCENTES mural.pdf\">Gabarito</a></p>\r\n					<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/vagas_reman_2019/EM/3ª SÉRIE - CLASSIFICAÇÃO - ENSINO MÉDIO.pdf\">Classificação Final</a></p>\r\n					<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/vagas_reman_2019/EM/Divulgação de Vagas.pdf\">Divulgação de Vagas</a></p>\r\n'),
(7, 'Técnico em Segurança do Trabalho (Encerrado)', '<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/vagas_reman_2018/Seg Trab/Doc.04 - edital vagas remanescentes tecnico.pdf\">Edital</a></p>\r\n					<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/vagas_reman_2018/Seg Trab/Segurança do Trabalho - 332_CS_1 sem 2018.pdf\">Proposta curricular </a></p>\r\n					<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/vagas_reman_2018/Seg Trab/GABARITO - Seg do Trabalho.pdf\">Gabarito</a></p>\r\n					<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/vagas_reman_2018/Seg Trab/Resultado final prova objetiva- Seg..pdf\">Resultado da prova e convocação para entrevista</a></p>\r\n					<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/vagas_reman_2018/Seg Trab/Classificação Final - Seg do Trabalho.pdf\">Resultado da final e convocação para matrícula</a></p>\r\n'),
(8, 'Técnico em Administração (Encerrado)', '<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/vagas_reman_2018/Adm/Doc.04 - edital vagas remanescentes tecnico.pdf\">Edital</a></p>\r\n					<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/vagas_reman_2018/Adm/Administracao - 206_CS_1 sem 2018.pdf\">Proposta curricular </a></p>\r\n'),
(9, 'Técnico em Administração (Classe descentralizada de Tapiratiba) (Encerrado)', '<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/vagas_reman_2018/Tapiratiba/Edital - Vagas Remanescentes - Tec. em Adm - Tapiratiba.pdf\">Edital</a></p>\r\n					<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/vagas_reman_2018/Tapiratiba/Proposta Curricular - Tec. Adm.pdf\">Proposta curricular </a></p>\r\n					<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/vagas_reman_2018/Tapiratiba/GABARITO - TAPIRATIBA.pdf\">Gabarito </a></p>\r\n					<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/vagas_reman_2018/Tapiratiba/Resultado Prova Objetiva - Tapiratiba.pdf\">Resultado da prova e convocação para entrevista </a></p>\r\n					<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/vagas_reman_2018/Tapiratiba/CLASSIFICAÇÃO FINAL do processo Tap - Cópia.pdf\">Resultado da final e convocação para matrícula</a></p>\r\n'),
(10, 'Técnico em Administração (Classe descentralizada de São Sebastião da Grama) (Encerrado)', '<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/vagas_reman_2018/Grama/Edital - Vagas Remanescentes - Tec. Adm - Grama.pdf\">Edital</a></p>\r\n					<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/vagas_reman_2018/Grama/Proposta Curricular - Tec. Adm.pdf\">Proposta curricular </a></p>\r\n					<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/vagas_reman_2018/Grama/GABARITO - SSGRAMA.pdf\">Gabarito </a></p>\r\n					<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/vagas_reman_2018/Grama/Resultado Prova Objetiva- Grama.pdf\">Resultado da prova e convocação para entrevista </a></p>\r\n					<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/vagas_reman_2018/Grama/CLASSIFICAÇÃO FINAL do processo Grama - Cópia.pdf\">Resultado da final e convocação para matrícula </a></p>\r\n'),
(11, 'Ensino Médio Integrado ao Ensino Técnico em Informática para Internet 2018 (Encerrado)', '<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/vagas_reman_2018/ETIM/Edital vagas remanescentes etim2018.pdf\">Edital</a></p>\r\n					<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/vagas_reman_2018/ETIM/Proposta Curricular.pdf\">Proposta curricular </a></p>\r\n					<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/vagas_reman_2018/ETIM/GABARITO - ETIM.pdf\">Gabarito </a></p>\r\n					<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/vagas_reman_2018/ETIM/GABARITO - Final Corrigido - MURAL.pdf\">Gabarito - corrigido</a></p>\r\n					<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/vagas_reman_2018/ETIM/CLASSIFICAÇÃO FINAL Etim.pdf\">Classificação Final</a></p>\r\n					<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/vagas_reman_2018/ETIM/Divulgação de Vagas.pdf\">Divulgação de vagas</a></p>\r\n'),
(12, 'Técnico em Administração (Classe descentralizada de Caconde) (Encerrado)', '<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/vagas_reman_2018/Caconde/Doc.04 - edital vagas remanescentes técnico Caconde.pdf\">Edital</a></p>\r\n					<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/vagas_reman_2018/Caconde/Plano de Curso - Administração.pdf\">Plano de curso</a></p>\r\n					<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/vagas_reman_2018/Caconde/GABARITO - CACONDE.pdf\">Gabarito</a></p>\r\n					<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/vagas_reman_2018/Caconde/Resultado Prova Objetiva - CACONDE.pdf\">Resultado da prova e convocação para entrevista</a></p>\r\n					<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/vagas_reman_2018/Caconde/CLASSIFICAÇÃO FINAL PROCESSO - CACONDE .pdf\">Classificação Final</a></p>\r\n					<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/vagas_reman_2018/Caconde/CLASSIFICAÇÃO FINAL PROCESSO - CACONDE .pdf\">Classificação Final</a></p>\r\n					<p><a target=\"blank\" href=\"http://www.etecriopardo.com.br/home/docs/vagas_reman_2018/Caconde/CLASSIFICAÇÃO FINAL PROCESSO - CACONDE .pdf\">Classificação Final</a></p>\r\n');

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `cardapio`
--
ALTER TABLE `cardapio`
  ADD CONSTRAINT `cardapio_ibfk_1` FOREIGN KEY (`id_almoco`) REFERENCES `cardapio_almoco` (`id_almoco`),
  ADD CONSTRAINT `cardapio_ibfk_2` FOREIGN KEY (`id_janta`) REFERENCES `cardapio_janta` (`id_janta`),
  ADD CONSTRAINT `cardapio_ibfk_3` FOREIGN KEY (`id_intervalo`) REFERENCES `cafe_intervalo` (`id_intervalo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
