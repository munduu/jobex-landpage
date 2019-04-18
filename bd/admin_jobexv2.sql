-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 08/04/2019 às 15:32
-- Versão do servidor: 5.6.43-cll-lve
-- Versão do PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `admin_jobexv2`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_avaliacao`
--

CREATE TABLE `tb_avaliacao` (
  `id` int(10) NOT NULL,
  `obs` varchar(255) CHARACTER SET utf8 NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_user_f` int(11) NOT NULL,
  `stars` tinyint(11) NOT NULL,
  `data_cad` datetime NOT NULL,
  `data_del` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `tb_avaliacao`
--

INSERT INTO `tb_avaliacao` (`id`, `obs`, `id_user`, `id_user_f`, `stars`, `data_cad`, `data_del`) VALUES
(57, 'Profissional sério e competente!', 50, 46, 5, '2017-12-08 20:04:04', NULL),
(61, 'Profissional sério e competente! ', 65, 50, 5, '2018-02-13 12:01:22', NULL),
(62, 'Fui bem atendida por um ótimo profissional dentro do horário que eu precisava.', 64, 50, 5, '2018-02-16 18:54:06', NULL),
(63, 'Excelente profissional. Atenciosa e dedicada.!', 50, 133, 5, '2018-05-17 20:47:24', NULL),
(85, 'Profissional excelente, com alta qualidade, variedade e preços imbatíveis!', 50, 183, 5, '2018-07-26 22:44:58', NULL),
(75, 'Teste ', 55, 46, 4, '2018-06-13 12:59:40', NULL),
(82, 'Excelente cantora, linda voz e repertório maravilhoso!', 76, 133, 5, '2018-07-06 00:13:44', NULL),
(83, 'Excelente pessoa , educada e comprometida.\n', 133, 165, 5, '2018-07-06 14:47:47', NULL),
(84, 'Ótimo atendimento e simpatia total.', 50, 96, 5, '2018-07-10 19:35:20', NULL),
(77, 'Bbbbbb', 55, 152, 2, '2018-06-19 21:03:47', NULL),
(81, 'Excelente profissional. Sério e competente!', 50, 163, 5, '2018-07-05 17:43:54', NULL),
(79, 'Excelente atendimento, profissionais competentes e educados. Um exemplo a ser seguido!', 50, 159, 5, '2018-07-03 17:54:39', NULL),
(80, 'Fiquei surpreso com a qualidade dos serviços e s equipe de atendentes. Show!', 50, 76, 5, '2018-07-03 17:57:02', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_banco`
--

CREATE TABLE `tb_banco` (
  `id` int(10) NOT NULL,
  `obs` varchar(255) CHARACTER SET utf8 NOT NULL,
  `id_user` int(11) NOT NULL,
  `valor` float DEFAULT NULL,
  `id_plano` int(11) DEFAULT NULL,
  `dias` int(11) NOT NULL,
  `id_notif_pgseguro` int(11) DEFAULT NULL,
  `data_cad` datetime NOT NULL,
  `data_del` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `tb_banco`
--

INSERT INTO `tb_banco` (`id`, `obs`, `id_user`, `valor`, `id_plano`, `dias`, `id_notif_pgseguro`, `data_cad`, `data_del`) VALUES
(60, '1 MÃªs Pelo PreÃ§o adequado / R$ 19.9', 54, 19.9, 3, 30, 65, '2017-12-15 16:58:04', NULL),
(66, 'plano teste real / R$ 5', 64, 25.9, 1, 30, 138, '2018-01-30 04:27:34', NULL),
(70, 'plano teste real / R$ 5', 50, 5, 7, 999, 202, '2018-07-11 03:45:45', NULL),
(71, '1 MÃªs Pelo PreÃ§o adequado / R$ 19.9', 83, 19.9, 31, 30, 202, '2018-02-26 00:00:00', NULL),
(72, 'plano teste real / R$ 5', 55, 100, 5, 365, 202, '2018-03-08 00:00:00', NULL),
(73, '3 Meses Com Desconto', 82, 99, 4, 90, 202, '2018-03-09 12:00:00', NULL),
(74, '3 Meses Com Desconto', 78, 99, 4, 90, 202, '2018-03-09 12:00:00', NULL),
(75, '3 Meses Com Desconto', 68, 99, 4, 90, 202, '2018-03-09 12:00:00', NULL),
(76, '3 Meses Com Desconto', 90, 99, 4, 90, 202, '2018-03-09 12:00:00', NULL),
(77, '3 Meses Com Desconto', 76, 99, 4, 90, 202, '2018-03-09 12:00:00', NULL),
(78, '3 Meses Com Desconto', 84, 99, 4, 90, 202, '2018-03-09 12:00:00', NULL),
(79, '3 Meses Com Desconto', 85, 99, 4, 90, 202, '2018-03-09 12:00:00', NULL),
(80, '3 Meses Com Desconto', 72, 99, 4, 90, 202, '2018-03-09 12:00:00', NULL),
(81, '3 Meses Com Desconto', 87, 99, 4, 90, 202, '2018-03-09 12:00:00', NULL),
(82, '3 Meses Com Desconto', 91, 99, 4, 90, 202, '2018-03-09 12:00:00', NULL),
(83, '3 Meses Com Desconto', 88, 99, 4, 90, 202, '2018-03-09 12:00:00', NULL),
(84, '3 Meses Com Desconto', 92, 99, 4, 90, 202, '2018-03-12 11:00:00', NULL),
(85, '3 Meses Com Desconto', 95, 99, 4, 90, NULL, '2018-03-14 12:00:00', NULL),
(86, '3 Meses Com Desconto', 96, 99, 4, 90, NULL, '2018-03-14 12:00:00', NULL),
(87, '3 Meses Com Desconto', 97, 99, 4, 90, NULL, '2018-03-14 12:00:00', NULL),
(88, '3 Meses Com Desconto', 97, 99, 4, 90, NULL, '2018-03-14 12:00:00', NULL),
(89, '3 Meses Com Desconto', 98, 99, 4, 90, NULL, '2018-03-14 12:00:00', NULL),
(90, '3 Meses Com Desconto', 99, 99, 4, 90, NULL, '2018-03-14 12:00:00', NULL),
(91, '3 Meses Com Desconto', 100, 99, 4, 90, NULL, '2018-03-14 12:00:00', NULL),
(92, '3 Meses Com Desconto', 101, 99, 4, 90, NULL, '2018-03-14 12:00:00', NULL),
(93, '3 Meses Com Desconto', 102, 99, 4, 90, NULL, '2018-03-14 12:00:00', NULL),
(94, '3 Meses Com Desconto', 107, 99, 4, 90, NULL, '2018-03-16 12:00:00', NULL),
(95, '3 Meses Com Desconto', 108, 99, 4, 90, NULL, '2018-03-22 12:00:00', NULL),
(96, '3 Meses Com Desconto', 109, 99, 4, 90, NULL, '2018-03-22 12:00:00', NULL),
(97, '3 Meses Com Desconto', 110, 99, 4, 90, NULL, '2018-03-22 12:00:00', NULL),
(98, '3 Meses Com Desconto', 111, 99, 4, 90, NULL, '2018-03-22 12:00:00', NULL),
(99, '3 Meses Com Desconto', 121, 99, 4, 90, 202, '2018-05-10 12:00:00', NULL),
(100, '3 Meses Com Desconto', 133, 99, 4, 90, 202, '2018-05-16 12:00:00', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_cartoes_credt`
--

CREATE TABLE `tb_cartoes_credt` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `data_cad` datetime NOT NULL,
  `data_del` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `tb_cartoes_credt`
--

INSERT INTO `tb_cartoes_credt` (`id`, `nome`, `data_cad`, `data_del`) VALUES
(1, 'Visa', '2017-12-13 00:00:00', NULL),
(2, 'Master', '2017-12-13 00:00:00', NULL),
(3, 'Amex', '2017-12-13 00:00:00', NULL),
(4, 'Hipercard', '2017-12-13 00:00:00', NULL),
(5, 'Elo', '2017-12-13 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_drawer_panel_reactnative`
--

CREATE TABLE `tb_drawer_panel_reactnative` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `icon_awesome` varchar(100) NOT NULL,
  `name_class` varchar(100) NOT NULL,
  `delete_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `tb_drawer_panel_reactnative`
--

INSERT INTO `tb_drawer_panel_reactnative` (`id`, `title`, `icon_awesome`, `name_class`, `delete_date`) VALUES
(1, 'Chamar Profissional', 'briefcase', 'BaseApp', NULL),
(2, 'Propostas', 'file-text-o', 'MinhasPropostas', NULL),
(3, 'Mensagens', 'comments-o', 'MensagensList', NULL),
(4, 'Reclamações', 'comments', 'ReclamacoesList', NULL),
(5, 'Meu Calendário', 'calendar-o', 'MeuCalendario', NULL),
(6, 'Perfíl Profissional', 'user-circle-o', 'PerfilProfissional', NULL),
(7, 'Créditos', 'shopping-bag', 'ComprarCreditos', NULL),
(8, 'Minha Conta', 'cogs', 'MinhaConta', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_especialidades`
--

CREATE TABLE `tb_especialidades` (
  `id` int(11) NOT NULL,
  `nome` varchar(150) NOT NULL,
  `id_grupo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `tb_especialidades`
--

INSERT INTO `tb_especialidades` (`id`, `nome`, `id_grupo`) VALUES
(51, 'web', 2),
(52, 'mobile', 2),
(53, 'ios', 2),
(61, 'espec murilo', 354),
(62, 'espec murilo', 354),
(63, 'espec murilo', 354),
(70, 'Web', 2),
(71, 'Mobile', 2),
(72, 'Pyton', 2),
(73, 'Tester', 2),
(74, 'PHP', 2),
(75, 'Junior', 32),
(76, 'Senior', 32),
(77, 'Pleno', 32),
(78, 'Corte Masculino', 36),
(79, 'Corte Feminino', 36),
(80, 'Pintura', 36),
(81, 'Relaxamento', 36),
(82, 'Permanente', 36),
(83, 'Afro', 36),
(84, 'TranÃ§a', 36),
(85, 'Dread', 36),
(86, 'Cachos', 36),
(87, 'Escova', 36),
(88, 'Visagismo', 36),
(89, 'Mega Hair', 36),
(90, 'Reporter', 37),
(91, 'pop e rock', 57),
(92, 'sertanejo universitario', 57),
(93, 'samba e pagode', 57),
(94, 'internacional', 57),
(95, 'estilos variados', 57),
(96, 'hip hop', 57),
(97, 'funk', 57),
(98, 'gospel', 57),
(99, 'Violonista', 74),
(100, 'Guitarrista', 74),
(101, 'Baterista', 74),
(102, 'Baixista', 74),
(103, 'Tecladista', 74),
(104, 'Sanfoneiro', 74),
(105, 'Percussionista', 74),
(106, 'Saxofonista', 74),
(107, 'Trumpetista', 74),
(108, 'Flautista', 74),
(109, 'Violeiro', 74),
(110, 'Gaitista', 74),
(111, 'Pianista', 74),
(112, 'A Laser', 79),
(113, 'Com Linha', 79),
(114, 'Com Cera', 79),
(115, 'Pedicure', 83),
(116, 'Artistica', 84),
(117, 'Convencional', 84),
(118, 'Especial', 84),
(119, 'quick massage - terapeutica', 85),
(120, 'drenagem linfatica', 85),
(121, 'shiatsu', 85),
(122, 'esportiva', 85),
(123, 'para gestantes', 85),
(124, 'modeladora', 85),
(125, 'facial', 85),
(126, 'aplicacao', 91),
(127, 'retoque', 91),
(128, 'remocao', 91),
(129, 'aplicacao', 92),
(130, 'retoque', 92),
(131, 'remocao', 92),
(132, 'locacao', 93),
(133, 'venda', 93),
(134, 'instalacao', 94),
(135, 'manutencao', 94),
(136, 'venda', 94),
(137, 'projeto', 95),
(138, 'instalacao', 95),
(139, 'reparo', 95),
(140, 'venda', 95),
(141, 'instalacao', 97),
(142, 'reparo', 97),
(143, 'remocao', 97),
(144, 'instalacao', 98),
(145, 'venda', 98),
(146, 'manutencao', 98),
(147, 'venda', 98),
(148, 'projeto', 99),
(149, 'instalacao', 99),
(150, 'venda', 99),
(151, 'locacao', 100),
(152, 'venda', 100),
(153, 'limpeza/lavagem', 101),
(154, 'projeto', 101),
(155, 'instalacao', 101),
(156, 'remocao', 101),
(157, 'venda', 101),
(158, 'projeto', 102),
(159, 'instalacao', 102),
(160, 'lavagem', 104),
(161, 'projeto', 104),
(162, 'instalacao', 104),
(163, 'manutencao', 104),
(164, 'remocao', 104),
(165, 'venda', 104),
(166, 'Projeto', 105),
(167, 'reparo', 106),
(168, 'projeto', 106),
(169, 'instalacao', 106),
(170, 'Projeto', 108),
(171, 'Instalacao', 108),
(172, 'Venda', 108),
(173, 'Manutencao', 108),
(174, 'projeto', 111),
(175, 'instalacao', 111),
(176, 'venda', 111),
(177, 'manutencao', 111),
(178, 'projeto', 112),
(179, 'manutencao', 112),
(180, 'instalacao', 112),
(181, 'venda', 112),
(182, 'projeto', 114),
(183, 'instalacao', 114),
(184, 'projeto', 115),
(185, 'instalacao', 115),
(186, 'manutencao', 115),
(187, 'remocao', 115),
(188, 'Montagem', 117),
(189, 'Desmontagem', 117),
(190, 'projeto', 118),
(191, 'construcao', 118),
(192, 'reparo', 118),
(193, 'remocao', 118),
(194, 'Paredes', 120),
(195, 'Muro', 120),
(196, 'Pontes', 120),
(197, 'projeto', 121),
(198, 'instalacao', 121),
(199, 'manutencao', 121),
(200, 'limpeza', 121),
(201, 'venda', 121),
(202, 'projeto', 122),
(203, 'instalacao', 122),
(204, 'manutencao', 122),
(205, 'remocao', 122),
(206, 'projeto', 123),
(207, 'manutencao', 123),
(208, 'instalacao', 123),
(209, 'remocao', 123),
(210, 'projeto', 124),
(211, 'instalacao', 124),
(212, 'manutencao', 124),
(213, 'venda', 124),
(214, 'instalacao', 125),
(215, 'manutencao', 125),
(216, 'venda', 125),
(217, 'projeto', 126),
(218, 'instalacao', 126),
(219, 'remocao', 126),
(220, 'venda', 126),
(221, 'projeto', 127),
(222, 'construcao', 127),
(223, 'manutencao', 127),
(224, 'venda', 127),
(225, 'projeto', 129),
(226, 'instalacao', 129),
(227, 'manutencao', 129),
(228, 'remocao', 129),
(229, 'venda', 129),
(230, 'Projeto', 130),
(231, 'Manutencao', 130),
(232, 'Limpeza', 130),
(233, 'Projeto', 131),
(234, 'Instalacao', 131),
(235, 'Menutencao', 131),
(236, 'Remocao', 131),
(237, 'Quero Comprar', 132),
(238, 'Quero Vender', 132),
(239, 'Projeto', 133),
(240, 'Manutencao', 133),
(241, 'Instalacao', 133),
(242, 'Remocao', 133),
(243, 'Venda', 133),
(244, 'projeto', 134),
(245, 'instalacao', 134),
(246, 'manutencao', 134),
(247, 'Facas', 136),
(248, 'Tesouras', 136),
(249, 'Alicates', 136),
(250, 'Projeto', 137),
(251, 'Instalacao', 137),
(252, 'Manutencao', 137),
(253, 'Projeto', 138),
(254, 'Instalacao', 138),
(255, 'Manutencao', 138),
(256, 'Reforma', 142),
(257, 'Pintura', 142),
(258, 'Conserto', 143),
(259, 'Manutencao', 143),
(260, 'Instalacao', 143),
(261, 'Conserto', 144),
(262, 'Manutencao', 144),
(263, 'Instalacao', 144),
(264, 'Instalacao', 145),
(265, 'Manutencao', 145),
(266, 'Manutencao', 148),
(267, 'Instalacao', 148),
(268, 'Conserto', 148),
(269, 'Conserto', 152),
(270, 'Instalacao', 152),
(271, 'Manutencao', 152),
(272, 'Instalacao', 154),
(273, 'Manutencao', 154),
(274, 'Conserto', 154),
(275, 'Manutencao', 155),
(276, 'Limpeza', 155),
(277, 'Instalacao', 155),
(278, 'Tira Risco', 156),
(279, 'Pintura', 156),
(280, 'Martelinho de Ouro', 156),
(281, 'Manutencao', 157),
(282, 'Instalacao', 157),
(283, 'Conserto', 157),
(284, 'Instalacao', 161),
(285, 'Manutencao', 161),
(286, 'Conserto', 161),
(287, 'HP', 161),
(288, 'Samsung', 161),
(289, 'LG', 161),
(290, 'Lenovo', 161),
(291, 'Acer', 161),
(292, 'Apple', 161),
(293, 'Dell', 161),
(294, 'Sony Vaio', 161),
(295, 'Em Veiculos', 162),
(296, 'Outros', 162),
(297, 'Instalacao', 163),
(298, 'Manutencao', 163),
(299, 'Conserto', 163),
(300, 'Conserto', 164),
(301, 'Ajuste', 164),
(302, 'Pintura', 164),
(303, 'Conserto', 165),
(304, 'Pintura', 165),
(305, 'Limpeza/Lavagem', 166),
(306, 'Reforma', 166),
(307, 'Fabricacao', 166),
(308, 'Projeto', 167),
(309, 'Instalacao', 167),
(310, 'Manutencao', 167),
(311, 'Civel', 168),
(312, 'Familia', 168),
(313, 'Juros Abusivos', 168),
(314, 'Ambiental', 168),
(315, 'Previdenciario', 168),
(316, 'Financeiro', 168),
(317, 'Outro', 168),
(318, 'Junior', 169),
(319, 'Pleno', 169),
(320, 'Senior', 169),
(321, 'Para Empresas', 174),
(322, 'Particular', 174),
(323, 'Veiculos', 180),
(324, 'Aduaneiro', 180),
(325, 'Assessoria de Imprensa', 182),
(326, 'Reporter', 182),
(327, 'Redator', 182),
(328, 'Pessoal', 185),
(329, 'Armarios', 185),
(330, 'Geral', 185),
(331, 'jiu jitsu', 202),
(332, 'karate', 202),
(333, 'judo', 202),
(334, 'krav maga', 202),
(335, 'tae kwondo', 202),
(336, 'kung fu', 202),
(337, 'capoeira', 202),
(338, 'muay thai', 202),
(339, 'Moto', 203),
(340, 'Carro', 203),
(341, 'Caminhoes', 203),
(342, 'Onibus', 203),
(343, 'Treinamento para Habilitados', 203),
(344, 'Ingles', 204),
(345, 'Portugues', 204),
(346, 'Espanhol', 204),
(347, 'Frances', 204),
(348, 'Mandarim', 204),
(349, 'Alemao', 204),
(350, 'Guitarra', 205),
(351, 'Violao', 205),
(352, 'Piano', 205),
(353, 'Flauta', 205),
(354, 'Saxofone', 205),
(355, 'Bateria', 205),
(356, 'Percussao', 205),
(357, 'Violino', 205),
(358, 'Gaita', 205),
(359, 'Canto', 205),
(360, 'PÃ³s Obra', 218),
(361, 'PÃ³s Eventos', 218),
(362, 'Quintal', 218),
(363, 'Banheiros', 218),
(364, 'Limpeza', 220),
(365, 'Instalacao', 220),
(366, 'Manutencao', 220),
(367, 'Pastor', 234),
(368, 'Padre', 234),
(369, 'Geral', 243),
(370, 'Ocupacional', 243),
(371, 'Automovel', 245),
(372, 'Van', 245),
(373, 'Onibus', 245),
(374, 'Moto', 245),
(375, 'Automovel', 247),
(376, 'Moto', 247),
(377, 'Onibus', 247),
(378, 'Caminhao', 247),
(379, 'Micro Onibus', 247),
(380, 'Van', 247),
(381, 'Locacao', 250),
(382, 'Manutencao', 250),
(383, 'Kombi', 255),
(384, 'Pick Up', 255),
(385, 'Caminhao Pequeno', 255),
(386, 'Caminhao Medio', 255),
(387, 'Caminhao Grande', 255),
(388, 'automovel', 257),
(389, 'caminhao', 257),
(390, 'onibus', 257),
(391, 'micro onibus', 257),
(392, 'van', 257),
(393, 'Aviao', 258),
(394, 'Helicoptero', 258),
(395, 'Van', 261),
(396, 'Carro Particular', 261),
(397, 'Sitio', 265),
(398, 'Fazenda', 265),
(399, 'Clube', 265),
(400, 'Rapida', 271),
(401, 'Tradicional', 271),
(402, 'Locacao', 274),
(403, 'Fabricacao', 274),
(404, 'ingles/portugues', 275),
(405, 'italiano/portugues', 275),
(406, 'mandarim/portugues', 275),
(407, 'espanhol/portugues', 275),
(408, 'frances/portugues', 275),
(409, 'alemao/portugues', 275),
(410, 'Projeto', 278),
(411, 'Instalacao', 278),
(412, 'Manutencao', 278),
(413, 'Venda', 278),
(414, 'Poda', 279),
(415, 'Corte', 279),
(416, 'Projeto', 280),
(417, 'Instalacao', 280),
(418, 'Manutencao', 280),
(419, 'Projeto', 281),
(420, 'Instalacao', 281),
(421, 'Manutencao', 281),
(422, 'InglÃªs', 285),
(423, 'PortuguÃªs', 285),
(424, 'MatemÃ¡tica', 285),
(425, 'Espanhol', 285),
(426, 'AlemÃ£o', 285),
(427, 'FrancÃªs', 285),
(428, 'Mandarim', 285),
(429, 'HP', 286),
(430, 'Samsung', 286),
(431, 'LG', 286),
(432, 'Lenovo', 286),
(433, 'Acer', 286),
(434, 'Dell', 286),
(435, 'Apple', 286),
(436, 'Sony Vaio', 286),
(437, 'Outro', 286),
(438, 'Guarda Chuva', 287),
(439, 'Sombrinha', 287),
(440, 'Guarda Sol', 287),
(441, 'Ombrelone', 287),
(442, 'Conserto', 288),
(443, 'Limpeza', 288),
(444, 'Profissional', 289),
(445, 'Amador', 289),
(446, 'Esportiva', 297),
(447, 'Estatica', 297),
(448, 'Funcional', 297),
(449, 'Infantil', 297),
(450, 'Ortomolecular', 297),
(451, 'Vegetarianismo', 297),
(452, 'Calha', 298),
(453, 'Rufo', 298),
(454, 'Coifa', 298),
(455, 'Duto', 298),
(456, 'juridica', 302),
(457, 'financeira', 302),
(458, 'imobiliaria', 302),
(459, 'esportiva', 302),
(460, 'marketing', 302),
(461, 'chaveiro', 304),
(462, 'bone', 304),
(463, 'squeeze', 304),
(464, 'lixocar', 304),
(465, 'caneca', 304),
(466, 'calendarios', 304),
(467, 'caneta', 304),
(468, 'outros', 304),
(469, 'Faixa em Tecido', 305),
(470, 'Faixa em Lona', 305),
(471, 'Placa Luminosa', 305),
(472, 'Placa Simples', 305),
(473, 'Producao', 307),
(474, 'Edicao', 307),
(475, 'Producao e Edicao', 307),
(476, 'violao', 310),
(477, 'guitarra', 310),
(478, 'bateria', 310),
(479, 'contrabaixo', 310),
(480, 'teclado', 310),
(481, 'piano afinacao', 310),
(482, 'acordeon', 310),
(483, 'saxofone', 310),
(484, 'flauta', 310),
(485, 'violoncelo', 310),
(486, 'banjo', 310),
(487, 'violino', 310),
(488, 'gaita', 310),
(489, 'viola', 310),
(490, 'Capina Tradicional', 313),
(491, 'Capina Quimica', 313),
(492, 'saude/bem estar', 315),
(493, 'alimentos/nutricao', 315),
(494, 'cosmeticos/perfumes', 315),
(495, 'roupas/calcados', 315),
(496, 'joias/bijuterias', 315),
(497, 'limpeza/higiene pessoal', 315),
(498, 'utilidades do lar', 315),
(499, 'moveis/adornos', 315),
(500, 'garrafao com 20 l', 316),
(501, 'fardo com 12 frascos de 500 ml', 316),
(502, 'caixa com 48 copos', 316),
(503, 'motoboy', 324),
(504, 'carro', 324),
(505, 'onibus', 324),
(506, 'caminhao', 324),
(507, 'aviao', 324),
(508, 'Projeto', 328),
(509, 'Instalacao', 328),
(510, 'Manutencao', 328),
(511, 'Limpeza/Manutencao', 330),
(512, 'Reparo/Conserto', 330),
(513, 'Automotivo', 336),
(514, 'Residencial', 336),
(515, 'Industrial', 336),
(516, 'Residencial', 337),
(517, 'Automotivo', 337),
(518, 'Central', 337),
(519, 'Instalacao', 337),
(520, 'Manutencao', 337),
(521, 'Remocao', 337),
(522, 'automoveis', 345),
(523, 'motocicletas', 345),
(524, 'bicicletas', 345),
(525, 'aviao particular', 348),
(526, 'helicoptero', 348),
(527, 'automoveis/teste', 348),
(528, 'drones', 348);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_genero`
--

CREATE TABLE `tb_genero` (
  `id` int(10) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `obs` varchar(120) NOT NULL,
  `id_user` int(11) NOT NULL,
  `data_cad` datetime NOT NULL,
  `data_del` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `tb_genero`
--

INSERT INTO `tb_genero` (`id`, `nome`, `obs`, `id_user`, `data_cad`, `data_del`) VALUES
(1, 'Masculino', 'Obs do genero', 2, '2017-07-26 00:00:00', NULL),
(3, 'Feminino', 'Feminino', 2, '2017-08-30 08:31:07', NULL),
(2, 'Indiferente', 'Nao faz diferenca', 2, '2017-12-11 08:31:07', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_grupmodulo`
--

CREATE TABLE `tb_grupmodulo` (
  `id` int(100) NOT NULL,
  `id_modulo` int(100) NOT NULL,
  `id_grupo` int(100) NOT NULL,
  `ler` enum('S','N') NOT NULL,
  `gravar` enum('S','N') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `tb_grupmodulo`
--

INSERT INTO `tb_grupmodulo` (`id`, `id_modulo`, `id_grupo`, `ler`, `gravar`) VALUES
(1916, 46, 12, 'S', 'S'),
(2180, 51, 6, 'S', 'S'),
(2179, 50, 6, 'S', 'S'),
(2178, 49, 6, 'S', 'S'),
(2177, 46, 6, 'S', 'S'),
(2176, 45, 6, 'S', 'S'),
(2175, 43, 6, 'S', 'S'),
(2042, 46, 8, 'S', 'S'),
(2174, 42, 6, 'S', 'S'),
(2041, 45, 8, 'N', 'N'),
(2173, 41, 6, 'S', 'S'),
(2040, 43, 8, 'S', 'S'),
(2039, 42, 8, 'S', 'S'),
(2038, 41, 8, 'S', 'S'),
(2037, 40, 8, 'S', 'S'),
(2036, 39, 8, 'S', 'S'),
(2035, 38, 8, 'S', 'S'),
(2172, 40, 6, 'S', 'S'),
(2034, 37, 8, 'S', 'S'),
(2033, 36, 8, 'N', 'N'),
(2171, 39, 6, 'S', 'S'),
(2065, 49, 10, 'S', 'N'),
(2064, 46, 10, 'S', 'N'),
(2063, 45, 10, 'N', 'N'),
(2062, 43, 10, 'S', 'N'),
(2061, 42, 10, 'N', 'N'),
(2060, 41, 10, 'N', 'N'),
(2059, 40, 10, 'S', 'N'),
(2058, 39, 10, 'N', 'N'),
(2057, 38, 10, 'N', 'N'),
(2056, 37, 10, 'N', 'N'),
(2055, 36, 10, 'N', 'N'),
(2054, 35, 10, 'N', 'N'),
(2604, 61, 7, 'S', 'S'),
(2603, 59, 7, 'N', 'N'),
(2602, 54, 7, 'S', 'S'),
(2601, 50, 7, 'N', 'N'),
(1200, 40, 11, 'N', 'N'),
(1199, 39, 11, 'N', 'N'),
(1198, 38, 11, 'N', 'N'),
(1197, 37, 11, 'N', 'N'),
(1196, 36, 11, 'N', 'N'),
(1195, 35, 11, 'N', 'N'),
(1194, 34, 11, 'N', 'N'),
(1193, 33, 11, 'N', 'N'),
(1192, 32, 11, 'N', 'N'),
(1191, 31, 11, 'N', 'N'),
(1190, 30, 11, 'S', 'N'),
(1189, 28, 11, 'N', 'N'),
(1188, 23, 11, 'N', 'N'),
(1187, 17, 11, 'N', 'N'),
(1186, 18, 11, 'N', 'N'),
(1185, 6, 11, 'N', 'N'),
(2053, 34, 10, 'N', 'N'),
(2052, 47, 10, 'S', 'N'),
(2051, 48, 10, '', ''),
(2050, 31, 10, 'N', 'N'),
(2049, 30, 10, 'N', 'N'),
(2048, 28, 10, 'N', 'N'),
(2505, 61, 9, 'S', 'S'),
(2504, 59, 9, 'S', 'S'),
(1201, 41, 11, 'N', 'N'),
(1202, 42, 11, 'N', 'N'),
(2170, 38, 6, 'S', 'S'),
(2169, 37, 6, 'S', 'S'),
(2168, 36, 6, 'S', 'S'),
(2167, 35, 6, 'S', 'S'),
(2166, 34, 6, 'S', 'S'),
(2165, 47, 6, 'S', 'S'),
(2164, 48, 6, 'S', 'S'),
(2163, 31, 6, 'S', 'S'),
(2626, 61, 1, 'S', 'S'),
(1915, 45, 12, 'N', 'N'),
(1914, 43, 12, 'S', 'S'),
(1913, 42, 12, 'N', 'N'),
(1912, 41, 12, 'N', 'N'),
(1911, 40, 12, 'N', 'N'),
(1910, 39, 12, 'N', 'N'),
(1909, 38, 12, 'S', 'N'),
(1908, 37, 12, 'N', 'N'),
(1907, 36, 12, 'N', 'N'),
(1906, 35, 12, 'N', 'N'),
(1905, 34, 12, 'N', 'N'),
(1904, 47, 12, 'S', 'S'),
(1903, 48, 12, 'N', 'N'),
(1902, 31, 12, 'N', 'N'),
(1901, 30, 12, 'S', 'S'),
(1900, 28, 12, 'N', 'N'),
(1899, 23, 12, 'N', 'N'),
(2625, 59, 1, 'N', 'N'),
(2503, 54, 9, 'S', 'S'),
(1898, 18, 12, 'N', 'N'),
(1897, 6, 12, 'N', 'N'),
(2624, 54, 1, 'S', 'S'),
(2032, 35, 8, 'S', 'S'),
(2031, 34, 8, 'N', 'N'),
(2030, 47, 8, '', ''),
(2029, 48, 8, 'S', 'S'),
(2028, 31, 8, 'S', 'S'),
(2027, 30, 8, 'S', 'S'),
(2026, 28, 8, 'N', 'N'),
(2025, 23, 8, 'N', 'N'),
(2024, 18, 8, 'N', 'N'),
(2023, 6, 8, 'N', 'N'),
(2502, 50, 9, 'S', 'S'),
(1666, 6, 13, 'S', 'S'),
(1667, 18, 13, 'S', 'S'),
(1668, 23, 13, 'S', 'S'),
(1669, 28, 13, 'S', 'S'),
(1670, 30, 13, 'S', 'S'),
(1671, 31, 13, 'S', 'S'),
(1672, 48, 13, 'S', 'S'),
(1673, 47, 13, 'S', 'S'),
(1674, 34, 13, 'S', 'S'),
(1675, 35, 13, 'S', 'S'),
(1676, 36, 13, 'S', 'S'),
(1677, 37, 13, 'S', 'S'),
(1678, 38, 13, 'S', 'S'),
(1679, 39, 13, 'S', 'S'),
(1680, 40, 13, 'S', 'S'),
(1681, 41, 13, 'S', 'S'),
(1682, 42, 13, 'S', 'S'),
(1683, 43, 13, 'S', 'S'),
(1684, 45, 13, 'S', 'S'),
(1685, 46, 13, 'S', 'S'),
(1686, 49, 13, 'S', 'S'),
(1687, 6, 14, 'S', 'S'),
(1688, 18, 14, 'S', 'S'),
(1689, 23, 14, 'S', 'S'),
(1690, 28, 14, 'S', 'S'),
(1691, 30, 14, 'S', 'S'),
(1692, 31, 14, 'S', 'S'),
(1693, 48, 14, 'S', 'S'),
(1694, 47, 14, 'S', 'S'),
(1695, 34, 14, 'S', 'S'),
(1696, 35, 14, 'S', 'S'),
(1697, 36, 14, 'S', 'S'),
(1698, 37, 14, 'S', 'S'),
(1699, 38, 14, 'S', 'S'),
(1700, 39, 14, 'S', 'S'),
(1701, 40, 14, 'S', 'S'),
(1702, 41, 14, 'S', 'S'),
(1703, 42, 14, 'S', 'S'),
(1704, 43, 14, 'S', 'S'),
(1705, 45, 14, 'S', 'S'),
(1706, 46, 14, 'S', 'S'),
(1707, 49, 14, 'S', 'S'),
(1708, 6, 15, 'S', 'S'),
(1709, 18, 15, 'S', 'S'),
(1710, 23, 15, 'S', 'S'),
(1711, 28, 15, 'S', 'S'),
(1712, 30, 15, 'S', 'S'),
(1713, 31, 15, 'S', 'S'),
(1714, 48, 15, 'S', 'S'),
(1715, 47, 15, 'S', 'S'),
(1716, 34, 15, 'S', 'S'),
(1717, 35, 15, 'S', 'S'),
(1718, 36, 15, 'S', 'S'),
(1719, 37, 15, 'S', 'S'),
(1720, 38, 15, 'S', 'S'),
(1721, 39, 15, 'S', 'S'),
(1722, 40, 15, 'S', 'S'),
(1723, 41, 15, 'S', 'S'),
(1724, 42, 15, 'S', 'S'),
(1725, 43, 15, 'S', 'S'),
(1726, 45, 15, 'S', 'S'),
(1727, 46, 15, 'S', 'S'),
(1728, 49, 15, 'S', 'S'),
(1729, 6, 16, 'S', 'S'),
(1730, 18, 16, 'S', 'S'),
(1731, 23, 16, 'S', 'S'),
(1732, 28, 16, 'S', 'S'),
(1733, 30, 16, 'S', 'S'),
(1734, 31, 16, 'S', 'S'),
(1735, 48, 16, 'S', 'S'),
(1736, 47, 16, 'S', 'S'),
(1737, 34, 16, 'S', 'S'),
(1738, 35, 16, 'S', 'S'),
(1739, 36, 16, 'S', 'S'),
(1740, 37, 16, 'S', 'S'),
(1741, 38, 16, 'S', 'S'),
(1742, 39, 16, 'S', 'S'),
(1743, 40, 16, 'S', 'S'),
(1744, 41, 16, 'S', 'S'),
(1745, 42, 16, 'S', 'S'),
(1746, 43, 16, 'S', 'S'),
(1747, 45, 16, 'S', 'S'),
(1748, 46, 16, 'S', 'S'),
(1749, 49, 16, 'S', 'S'),
(1750, 6, 17, 'S', 'S'),
(1751, 18, 17, 'S', 'S'),
(1752, 23, 17, 'S', 'S'),
(1753, 28, 17, 'S', 'S'),
(1754, 30, 17, 'S', 'S'),
(1755, 31, 17, 'S', 'S'),
(1756, 48, 17, 'S', 'S'),
(1757, 47, 17, 'S', 'S'),
(1758, 34, 17, 'S', 'S'),
(1759, 35, 17, 'S', 'S'),
(1760, 36, 17, 'S', 'S'),
(1761, 37, 17, 'S', 'S'),
(1762, 38, 17, 'S', 'S'),
(1763, 39, 17, 'S', 'S'),
(1764, 40, 17, 'S', 'S'),
(1765, 41, 17, 'S', 'S'),
(1766, 42, 17, 'S', 'S'),
(1767, 43, 17, 'S', 'S'),
(1768, 45, 17, 'S', 'S'),
(1769, 46, 17, 'S', 'S'),
(1770, 49, 17, 'S', 'S'),
(1771, 6, 18, 'N', 'N'),
(1772, 18, 18, 'N', 'N'),
(1773, 23, 18, 'N', 'N'),
(1774, 28, 18, 'N', 'N'),
(1775, 30, 18, 'S', 'S'),
(1776, 31, 18, 'N', 'N'),
(1777, 48, 18, 'N', 'N'),
(1778, 47, 18, 'N', 'N'),
(1779, 34, 18, 'S', 'N'),
(1780, 35, 18, 'N', 'N'),
(1781, 36, 18, 'N', 'N'),
(1782, 37, 18, 'N', 'N'),
(1783, 38, 18, 'N', 'N'),
(1784, 39, 18, 'N', 'N'),
(1785, 40, 18, 'N', 'N'),
(1786, 41, 18, 'N', 'N'),
(1787, 42, 18, 'N', 'N'),
(1788, 43, 18, 'N', 'N'),
(1789, 45, 18, 'N', 'N'),
(1790, 46, 18, 'N', 'N'),
(1791, 49, 18, 'N', 'N'),
(2047, 23, 10, 'N', 'N'),
(2046, 18, 10, 'N', 'N'),
(2045, 6, 10, 'S', 'N'),
(1917, 49, 12, 'S', 'N'),
(2383, 50, 20, 'S', 'S'),
(2382, 49, 20, 'S', 'S'),
(2381, 46, 20, 'S', 'S'),
(2380, 45, 20, 'S', 'S'),
(2379, 43, 20, 'S', 'S'),
(2378, 42, 20, 'S', 'S'),
(2377, 40, 20, 'S', 'S'),
(2376, 39, 20, 'S', 'S'),
(2375, 38, 20, 'S', 'S'),
(2374, 37, 20, 'S', 'S'),
(2373, 36, 20, 'S', 'S'),
(2372, 35, 20, 'S', 'S'),
(2371, 34, 20, 'S', 'S'),
(2370, 30, 20, 'S', 'S'),
(2369, 48, 20, 'S', 'S'),
(2368, 31, 20, 'S', 'S'),
(2367, 55, 20, 'S', 'S'),
(2366, 28, 20, 'S', 'S'),
(2365, 23, 20, 'S', 'S'),
(2364, 18, 20, 'S', 'S'),
(2363, 6, 20, 'S', 'S'),
(2043, 49, 8, 'S', 'S'),
(2044, 50, 8, 'N', 'N'),
(2066, 50, 10, 'N', 'N'),
(2501, 46, 9, 'S', 'S'),
(2500, 43, 9, 'S', 'S'),
(2499, 37, 9, 'S', 'S'),
(2600, 46, 7, 'S', 'S'),
(2599, 43, 7, 'S', 'S'),
(2598, 37, 7, 'S', 'S'),
(2597, 36, 7, 'N', 'N'),
(2596, 30, 7, 'S', 'S'),
(2595, 31, 7, 'S', 'S'),
(2594, 6, 7, 'N', 'N'),
(2162, 30, 6, 'S', 'S'),
(2161, 28, 6, 'S', 'S'),
(2160, 23, 6, 'S', 'S'),
(2159, 18, 6, 'S', 'S'),
(2158, 6, 6, 'S', 'S'),
(2623, 50, 1, 'S', 'S'),
(2622, 46, 1, 'S', 'S'),
(2621, 43, 1, 'S', 'S'),
(2620, 37, 1, 'S', 'S'),
(2619, 36, 1, 'N', 'N'),
(2498, 36, 9, 'S', 'S'),
(2497, 30, 9, 'S', 'S'),
(2496, 31, 9, 'S', 'S'),
(2362, 58, 19, 'N', 'N'),
(2361, 57, 19, 'N', 'N'),
(2360, 54, 19, 'N', 'N'),
(2359, 53, 19, 'N', 'N'),
(2358, 52, 19, 'N', 'N'),
(2357, 51, 19, 'S', 'S'),
(2356, 50, 19, 'N', 'N'),
(2355, 49, 19, 'N', 'N'),
(2354, 46, 19, 'N', 'N'),
(2353, 45, 19, 'N', 'N'),
(2352, 43, 19, 'N', 'N'),
(2351, 42, 19, 'N', 'N'),
(2350, 40, 19, 'S', 'S'),
(2349, 39, 19, 'S', 'S'),
(2348, 38, 19, 'N', 'N'),
(2347, 37, 19, 'N', 'N'),
(2346, 36, 19, 'N', 'N'),
(2345, 35, 19, 'N', 'N'),
(2344, 34, 19, 'N', 'N'),
(2343, 30, 19, 'S', 'S'),
(2342, 48, 19, 'S', 'S'),
(2341, 31, 19, 'N', 'N'),
(2340, 55, 19, 'N', 'N'),
(2339, 28, 19, 'N', 'N'),
(2338, 23, 19, 'N', 'N'),
(2337, 18, 19, 'N', 'N'),
(2336, 6, 19, 'N', 'N'),
(2384, 51, 20, 'S', 'S'),
(2385, 52, 20, 'S', 'S'),
(2386, 53, 20, 'S', 'S'),
(2387, 54, 20, 'S', 'S'),
(2388, 57, 20, 'S', 'S'),
(2389, 58, 20, 'S', 'S'),
(2618, 30, 1, 'S', 'S'),
(2617, 31, 1, 'S', 'S'),
(2495, 6, 9, 'S', 'S'),
(2571, 61, 21, 'S', 'S'),
(2570, 59, 21, 'S', 'S'),
(2569, 54, 21, 'S', 'S'),
(2568, 50, 21, 'S', 'S'),
(2567, 46, 21, 'S', 'S'),
(2566, 43, 21, 'S', 'S'),
(2565, 37, 21, 'S', 'S'),
(2564, 36, 21, 'N', 'N'),
(2563, 30, 21, 'S', 'S'),
(2562, 31, 21, 'S', 'S'),
(2561, 6, 21, 'S', 'S'),
(2616, 6, 1, 'S', 'S');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_grupos_servicos`
--

CREATE TABLE `tb_grupos_servicos` (
  `id` int(10) NOT NULL,
  `nome` varchar(255) CHARACTER SET utf8 NOT NULL,
  `obs` varchar(120) CHARACTER SET utf8 NOT NULL,
  `especialidades` varchar(250) CHARACTER SET utf8 NOT NULL,
  `id_user` int(11) NOT NULL,
  `data_cad` datetime NOT NULL,
  `data_del` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `tb_grupos_servicos`
--

INSERT INTO `tb_grupos_servicos` (`id`, `nome`, `obs`, `especialidades`, `id_user`, `data_cad`, `data_del`) VALUES
(2, 'Programador/Desenvolvedor de Software', '', 'Web,Mobile,Pyton,Tester,PHP', 70, '2017-07-26 00:00:00', NULL),
(32, 'Analista', 'faz programa', 'Junior,Senior,Pleno', 70, '2017-11-09 00:00:00', '2017-12-29 09:13:57'),
(33, 'Servicos Gerais', 'Limpa tudo', '', 70, '2017-11-09 00:00:00', NULL),
(35, 'bb', 'bb', '', 70, '2017-11-14 14:02:39', '2017-11-14 14:03:01'),
(36, 'Cabeleireiro', '', 'Corte Masculino,Corte Feminino,Pintura,Relaxamento,Permanente,Afro,Trança,Dread,Cachos,Escova,Visagismo,Mega Hair', 140, '2017-12-08 09:18:38', NULL),
(37, 'Jornalista', 'Jornaliza', 'Reporter', 70, '2017-12-14 17:16:02', '2017-12-29 09:13:29'),
(38, 'Auxiliar de Cozinha', '', '', 140, '2017-12-29 09:19:30', NULL),
(39, 'Banqueteiro', '', '', 140, '2017-12-29 09:19:46', NULL),
(40, 'Boleiro', '', '', 140, '2017-12-29 09:19:55', NULL),
(41, 'Buffet', '', '', 140, '2017-12-29 09:20:03', NULL),
(42, 'Cesta Cafe da Manhã', '', '', 140, '2017-12-29 09:20:42', NULL),
(43, 'Chef Particular', '', '', 140, '2017-12-29 09:20:55', NULL),
(44, 'Churrasqueiro', '', '', 140, '2017-12-29 09:21:07', NULL),
(45, 'Cozinheiro', '', '', 140, '2017-12-29 09:21:33', NULL),
(46, 'Doceiro', '', '', 140, '2017-12-29 09:21:44', NULL),
(47, 'Fritadeira', '', '', 140, '2017-12-29 09:21:53', NULL),
(48, 'Padeiro', '', '', 140, '2017-12-29 09:22:13', NULL),
(49, 'Pizzaiolo', '', '', 140, '2017-12-29 09:22:22', NULL),
(50, 'Salgadeiro', '', '', 140, '2017-12-29 09:22:31', NULL),
(51, 'Animador de Festa', '', '', 140, '2017-12-29 09:22:49', NULL),
(52, 'Arte Final', '', '', 140, '2017-12-29 09:22:58', '2018-03-16 10:56:41'),
(53, 'Artista Plástico', '', '', 140, '2017-12-29 09:23:11', NULL),
(54, 'Ator', '', '', 140, '2017-12-29 09:23:24', NULL),
(55, 'Atriz', '', '', 140, '2017-12-29 09:23:33', NULL),
(56, 'Brinquedos - Locação', '', '', 140, '2017-12-29 09:23:45', NULL),
(57, 'Cantor(a)', '', 'pop e rock,sertanejo universitario,samba e pagode,internacional,estilos variados,hip hop,funk,gospel', 140, '2017-12-29 09:24:00', NULL),
(58, 'Caricaturista', '', '', 140, '2017-12-29 09:24:10', NULL),
(59, 'Cartazista/Letrista', '', '', 140, '2017-12-29 09:24:28', NULL),
(60, 'Cenógrafo', '', '', 140, '2017-12-29 09:25:25', NULL),
(61, 'Cinegrafista', '', '', 140, '2017-12-29 09:25:34', NULL),
(62, 'Dançarino', '', '', 140, '2017-12-29 09:25:51', NULL),
(63, 'Decoração de Eventos', '', '', 140, '2017-12-29 09:26:13', NULL),
(64, 'Desenhista Artístico', '', '', 140, '2017-12-29 09:26:32', NULL),
(65, 'Designer Gráfico/Arte Final', '', '', 140, '2017-12-29 09:26:46', NULL),
(66, 'DJ', '', '', 140, '2017-12-29 09:27:04', NULL),
(67, 'Fotógrafo', '', '', 140, '2017-12-29 09:27:12', NULL),
(68, 'Grafiteiro', '', '', 140, '2017-12-29 09:27:21', NULL),
(69, 'Iluminador Técnico', '', '', 140, '2017-12-29 09:27:43', NULL),
(70, 'Impressão em 3D', '', '', 140, '2017-12-29 09:27:56', NULL),
(71, 'Instrumentista', '', '', 140, '2017-12-29 09:28:23', '2018-02-26 17:18:49'),
(72, 'Locutor', '', '', 140, '2017-12-29 09:28:31', NULL),
(73, 'Magico', '', '', 140, '2017-12-29 09:28:50', NULL),
(74, 'Musico', '', 'Violonista,Guitarrista,Baterista,Baixista,Tecladista,Sanfoneiro,Percussionista,Saxofonista,Trumpetista,Flautista,Violeiro,Gaitista,Pianista', 140, '2017-12-29 09:28:59', NULL),
(75, 'Palhaço', '', '', 140, '2017-12-29 09:29:08', NULL),
(76, 'Teatro', '', '', 140, '2017-12-29 09:29:16', NULL),
(77, 'Barbeiro', '', '', 140, '2017-12-29 09:30:10', NULL),
(78, 'Cabeleireiro', '', '', 140, '2017-12-29 09:30:20', '2018-02-07 12:01:18'),
(79, 'Depilação', '', 'A Laser,Com Linha,Com Cera', 140, '2017-12-29 09:30:45', NULL),
(80, 'Design de Sobrancelhas', '', '', 140, '2017-12-29 09:31:48', NULL),
(81, 'Estética Facial', '', '', 140, '2017-12-29 09:31:59', NULL),
(82, 'Instituto de Beleza', '', '', 140, '2017-12-29 09:32:16', NULL),
(83, 'Manicure', '', 'Pedicure', 140, '2017-12-29 09:32:34', NULL),
(84, 'Maquiagem', '', 'Artistica,Convencional,Especial', 140, '2017-12-29 09:34:05', NULL),
(85, 'Massagem/Massoterapia', '', 'quick massage - terapeutica,drenagem linfatica,shiatsu,esportiva,para gestantes,modeladora,facial', 140, '2017-12-29 09:35:19', NULL),
(86, 'Micropigmentação', '', '', 140, '2017-12-29 09:35:39', NULL),
(87, 'Personal Trainer', '', '', 140, '2017-12-29 09:35:57', NULL),
(88, 'Pet Shop', '', '', 140, '2017-12-29 09:36:06', NULL),
(89, 'Podólogo', '', '', 140, '2017-12-29 09:36:22', NULL),
(90, 'Yoga/Professor', '', '', 140, '2017-12-29 09:37:08', NULL),
(91, 'Tatuagem', '', 'aplicacao,retoque,remocao', 140, '2017-12-29 09:38:21', NULL),
(92, 'Piercing', '', 'aplicacao,retoque,remocao', 140, '2017-12-29 09:38:55', NULL),
(93, 'Andaimes', '', 'locacao,venda', 140, '2017-12-29 09:40:46', NULL),
(94, 'Antenista', '', 'instalacao,manutencao,venda', 140, '2017-12-29 09:45:06', NULL),
(95, 'Armários Planejados', '', 'projeto,instalacao,reparo,venda', 140, '2017-12-29 09:46:26', NULL),
(96, 'Arquiteto', '', '', 140, '2017-12-29 09:46:43', NULL),
(97, 'Azulejista', '', 'instalacao,reparo,remocao', 140, '2017-12-29 09:47:20', NULL),
(98, 'Bebedouro', '', 'instalacao,venda,manutencao,venda', 140, '2017-12-29 09:48:21', NULL),
(99, 'Box Banheiro', '', 'projeto,instalacao,venda', 140, '2017-12-29 09:48:54', NULL),
(100, 'cacambas/locacao', '', 'locacao,venda', 140, '2017-12-29 09:49:20', NULL),
(101, 'Carpete', '', 'limpeza/lavagem,projeto,instalacao,remocao,venda', 140, '2017-12-29 09:50:42', NULL),
(102, 'Carpinteiro', '', 'projeto,instalacao', 140, '2017-12-29 09:51:10', NULL),
(103, 'Controle de Acesso', '', '', 140, '2017-12-29 09:51:49', NULL),
(104, 'Cortinas/Persianas', '', 'lavagem,projeto,instalacao,manutencao,remocao,venda', 140, '2017-12-29 09:52:34', NULL),
(105, 'Design de Interiores', '', 'Projeto', 140, '2017-12-29 09:53:37', NULL),
(106, 'Bombeiro/Eletricista', '', 'reparo,projeto,instalacao', 140, '2017-12-29 09:54:14', NULL),
(107, 'Empreiteiro', '', '', 140, '2017-12-29 09:54:35', NULL),
(108, 'Energia Solar', '', 'Projeto,Instalacao,Venda,Manutencao', 140, '2017-12-29 09:55:13', NULL),
(109, 'Engenheiro', '', '', 140, '2017-12-29 09:55:35', NULL),
(110, 'forro/gesso/divisorias', '', '', 140, '2017-12-29 09:56:33', NULL),
(111, 'Interfone', '', 'projeto,instalacao,venda,manutencao', 140, '2017-12-29 09:57:20', NULL),
(112, 'Home Theater/Instalação', '', 'projeto,manutencao,instalacao,venda', 140, '2017-12-29 10:00:02', NULL),
(113, 'Manutenções Domésticas', '', '', 140, '2017-12-29 10:00:28', NULL),
(114, 'Marceneiro', '', 'projeto,instalacao', 140, '2017-12-29 10:00:46', NULL),
(115, 'Mármore/Granito/Pedras', '', 'projeto,instalacao,manutencao,remocao', 140, '2017-12-29 10:01:53', NULL),
(116, 'Mestre de Obras', '', '', 140, '2017-12-29 10:02:11', NULL),
(117, 'Montador de Móveis', '', 'Montagem,Desmontagem', 140, '2017-12-29 10:02:32', NULL),
(118, 'Passeios', '', 'projeto,construcao,reparo,remocao', 140, '2017-12-29 10:03:14', NULL),
(119, 'Pedreiro', '', '', 140, '2017-12-29 10:03:40', NULL),
(120, 'Pintor', '', 'Paredes,Muro,Pontes', 140, '2017-12-29 10:04:31', NULL),
(121, 'Piscina', '', 'projeto,instalacao,manutencao,limpeza,venda', 140, '2017-12-29 10:05:14', NULL),
(122, 'Piso Madeira', '', 'projeto,instalacao,manutencao,remocao', 140, '2017-12-29 10:06:36', NULL),
(123, 'Piso Cerâmica/Porcelanato', '', 'projeto,manutencao,instalacao,remocao', 140, '2017-12-29 10:07:19', NULL),
(124, 'portao eletronico', '', 'projeto,instalacao,manutencao,venda', 140, '2017-12-29 10:07:58', NULL),
(125, 'Purificador de Água', '', 'instalacao,manutencao,venda', 140, '2017-12-29 10:08:30', NULL),
(126, 'Redes de Proteção', '', 'projeto,instalacao,remocao,venda', 140, '2017-12-29 10:09:06', NULL),
(127, 'Sauna', '', 'projeto,construcao,manutencao,venda', 140, '2017-12-29 10:09:40', NULL),
(128, 'Serralheiro', '', '', 140, '2017-12-29 10:10:32', NULL),
(129, 'Telas Mosquiteiro', '', 'projeto,instalacao,manutencao,remocao,venda', 140, '2017-12-29 10:11:04', NULL),
(130, 'Telhadeiro', '', 'Projeto,Manutencao,Limpeza', 140, '2017-12-29 10:11:35', NULL),
(131, 'Toldos', '', 'Projeto,Instalacao,Menutencao,Remocao', 140, '2017-12-29 10:13:05', NULL),
(132, 'Topa Tudo', '', 'Quero Comprar,Quero Vender', 140, '2017-12-29 10:14:06', NULL),
(133, 'Trituradores', '', 'Projeto,Manutencao,Instalacao,Remocao,Venda', 140, '2017-12-29 10:14:45', NULL),
(134, 'Vidraceiro', '', 'projeto,instalacao,manutencao', 140, '2017-12-29 10:15:21', NULL),
(135, 'Alfaiate', '', '', 140, '2017-12-29 10:16:08', NULL),
(136, 'Amolador ', '', 'Facas,Tesouras,Alicates', 140, '2017-12-29 10:16:43', NULL),
(137, 'Ar Condicionado Residencial', '', 'Projeto,Instalacao,Manutencao', 140, '2017-12-29 10:17:22', '2018-01-01 14:49:47'),
(138, 'Ar Condicionado Automotivo', '', 'Projeto,Instalacao,Manutencao', 140, '2017-12-29 10:17:49', '2018-04-13 09:30:05'),
(139, 'Blindagem Automotiva', '', '', 140, '2017-12-29 10:18:18', NULL),
(140, 'Bombeiro Hidráulico', '', '', 140, '2017-12-29 10:18:35', NULL),
(141, 'Borracheiro', '', '', 140, '2017-12-29 10:18:58', NULL),
(142, 'Calçados', '', 'Reforma,Pintura', 140, '2017-12-29 10:19:40', NULL),
(143, 'Celular', '', 'Conserto,Manutencao,Instalacao', 140, '2017-12-29 10:20:28', '2018-03-16 11:01:55'),
(144, 'Tablet', '', 'Conserto,Manutencao,Instalacao', 140, '2017-12-29 10:20:55', '2018-03-16 10:38:47'),
(145, 'Cerca Elétrica', '', 'Instalacao,Manutencao', 140, '2017-12-29 10:21:28', NULL),
(146, 'Chaveiro', '', '', 140, '2017-12-29 10:21:50', NULL),
(147, 'Eletricista Automotivo', '', '', 140, '2017-12-29 10:22:27', '2018-04-12 11:00:47'),
(148, 'Computador/Conserto/Manutenção', '', 'Manutencao,Instalacao,Conserto', 140, '2017-12-29 10:23:00', NULL),
(149, 'Costureira', '', '', 140, '2017-12-29 10:23:21', NULL),
(150, 'Dedetização', '', '', 140, '2017-12-29 10:23:31', NULL),
(151, 'Desentupimento', '', '', 140, '2017-12-29 10:23:40', NULL),
(152, 'Eletrodomésticos/Conserto/Assistência Técnica', '', 'Conserto,Instalacao,Manutencao', 140, '2017-12-29 10:24:15', NULL),
(153, 'Engraxate', '', '', 140, '2017-12-29 10:24:34', NULL),
(154, 'Impressora', '', 'Instalacao,Manutencao,Conserto', 140, '2017-12-29 10:25:10', NULL),
(155, 'Jardineiro', '', 'Manutencao,Limpeza,Instalacao', 140, '2017-12-29 10:25:45', NULL),
(156, 'Lanterneiro/Tira Risco', '', 'Tira Risco,Pintura,Martelinho de Ouro', 140, '2017-12-29 10:26:33', NULL),
(157, 'Máquina de Costura', '', 'Manutencao,Instalacao,Conserto', 140, '2017-12-29 10:28:03', NULL),
(158, 'Mecânico de Automóveis', '', '', 140, '2017-12-29 10:28:40', '2018-04-13 10:16:06'),
(159, 'Martelinho de Ouro', '', '', 140, '2017-12-29 10:29:01', NULL),
(160, 'Tira Risco', '', '', 140, '2017-12-29 10:29:12', NULL),
(161, 'Notebook Assistência', '', 'Instalacao,Manutencao,Conserto,HP,Samsung,LG,Lenovo,Acer,Apple,Dell,Sony Vaio', 140, '2017-12-29 10:29:51', NULL),
(162, 'Plotagem/Adesivação', '', 'Em Veiculos,Outros', 140, '2017-12-29 10:31:28', NULL),
(163, 'Refrigeração', '', 'Instalacao,Manutencao,Conserto', 140, '2017-12-29 10:32:06', NULL),
(164, 'Roupas', '', 'Conserto,Ajuste,Pintura', 140, '2017-12-29 10:32:45', NULL),
(165, 'Sapateiro', '', 'Conserto,Pintura', 140, '2017-12-29 10:33:15', NULL),
(166, 'Sofás/Estofados', '', 'limpeza/lavagem,reforma,fabricacao,capas', 140, '2017-12-29 10:33:58', NULL),
(167, 'Tábua Corrida/Tacos', '', 'Projeto,Instalacao,Manutencao', 140, '2017-12-29 10:34:42', NULL),
(168, 'Advogado', '', 'Civel,Familia,Juros Abusivos,Ambiental,Previdenciario,Financeiro,Outro', 140, '2017-12-29 10:36:19', NULL),
(169, 'Programador/Desenvolvedor de Aplicativos', '', 'Junior,Pleno,Senior', 140, '2017-12-29 10:37:47', NULL),
(170, 'Analista de Sistemas', '', '', 140, '2017-12-29 10:37:59', NULL),
(171, 'Assessoria de Imprensa', '', '', 140, '2017-12-29 10:38:19', NULL),
(172, 'Bombeiro Civil', '', '', 140, '2017-12-29 10:38:31', NULL),
(173, 'Brigadista', '', '', 140, '2017-12-29 10:38:47', NULL),
(174, 'Cobrador de Dívidas', '', 'Para Empresas,Particular', 140, '2017-12-29 10:39:17', NULL),
(175, 'Concierge', '', '', 140, '2017-12-29 10:39:35', NULL),
(176, 'Comércio Exterior', '', '', 140, '2017-12-29 10:39:47', NULL),
(177, 'Contador', '', '', 140, '2017-12-29 10:40:58', NULL),
(178, 'Corretor de Imóveis', '', '', 140, '2017-12-29 10:41:14', NULL),
(179, 'Corretor de Seguros', '', '', 140, '2017-12-29 10:41:24', NULL),
(180, 'Despachante', '', 'Veiculos,Aduaneiro', 140, '2017-12-29 10:42:03', NULL),
(181, 'Detetive Particular/Investigador', '', '', 140, '2017-12-29 10:42:41', NULL),
(182, 'Jornalista', '', 'Assessoria de Imprensa,Reporter,Redator', 140, '2017-12-29 10:44:26', NULL),
(183, 'Marketing Pessoal', '', '', 140, '2017-12-29 10:45:05', NULL),
(184, 'Marketing Promocional', '', '', 140, '2017-12-29 10:45:20', NULL),
(185, 'Organizador Geral', '', 'Pessoal,Armarios,Geral', 140, '2017-12-29 10:46:10', NULL),
(186, 'Panfletista', '', '', 140, '2017-12-29 10:46:25', NULL),
(187, 'Personal Shopper', '', '', 140, '2017-12-29 10:46:35', NULL),
(188, 'Planejador de Festas', '', '', 140, '2017-12-29 10:46:52', NULL),
(189, 'Porteiro', '', '', 140, '2017-12-29 10:47:00', NULL),
(190, 'Promotor de Eventos', '', '', 140, '2017-12-29 10:47:30', NULL),
(191, 'Recepcionista para Eventos', '', '', 140, '2017-12-29 10:47:44', NULL),
(192, 'Acompanhante de Executivos', '', '', 140, '2017-12-29 10:48:27', '2017-12-29 20:19:09'),
(193, 'Redator', '', '', 140, '2017-12-29 10:48:44', NULL),
(194, 'Relações Públicas', '', '', 140, '2017-12-29 10:48:56', NULL),
(195, 'Segurança Particular/Guarda Costas', '', '', 140, '2017-12-29 10:49:26', NULL),
(196, 'Segurança para Eventos', '', '', 140, '2017-12-29 10:49:40', NULL),
(197, 'Segurança Patrimonial', '', '', 140, '2017-12-29 10:50:19', NULL),
(198, 'Vaqueiro', '', '', 140, '2017-12-29 10:50:28', NULL),
(199, 'Vigilante', '', '', 140, '2017-12-29 10:50:41', NULL),
(200, 'Adestrador de Cães', '', '', 140, '2017-12-29 10:51:28', NULL),
(201, 'Passeador de Cães', '', '', 140, '2017-12-29 10:51:38', '2018-03-16 11:04:01'),
(202, 'Artes Marciais/Lutas/Professor', '', 'jiu jitsu,karate,judo,krav maga,tae kwondo,kung fu,capoeira,muay thai', 140, '2017-12-29 10:51:56', NULL),
(203, 'Auto Escola Particular', '', 'Moto,Carro,Caminhoes,Onibus,Treinamento para Habilitados', 140, '2017-12-29 10:52:50', NULL),
(204, 'Professor de Idiomas/Linguas', '', 'Ingles,Portugues,Espanhol,Frances,Mandarim,Alemao', 140, '2017-12-29 10:54:07', NULL),
(205, 'Professor de Música', '', 'Guitarra,Violao,Piano,Flauta,Saxofone,Bateria,Percussao,Violino,Gaita,Canto', 140, '2017-12-29 10:55:31', NULL),
(206, 'Canto e Voz Aulas', '', '', 140, '2017-12-29 10:55:45', NULL),
(207, 'Matemática/Professor Particular', '', '', 140, '2017-12-29 10:57:10', NULL),
(208, 'Poker Professor', '', '', 140, '2017-12-29 10:57:38', NULL),
(209, 'Xadrez Professor', '', '', 140, '2017-12-29 10:57:49', NULL),
(210, 'Remo Professor', '', '', 140, '2017-12-29 10:58:10', NULL),
(211, 'Babá', '', '', 140, '2017-12-29 10:58:24', NULL),
(212, 'Colônia de Férias', '', '', 140, '2017-12-29 10:58:36', NULL),
(213, 'Cuidador de Idosos', '', '', 140, '2017-12-29 10:58:46', NULL),
(214, 'Cuidador de Animais', '', '', 140, '2017-12-29 10:59:07', NULL),
(215, 'Monitor Infantil', '', '', 140, '2017-12-29 10:59:23', NULL),
(216, 'Limpeza Geral', '', '', 140, '2017-12-29 11:06:53', NULL),
(217, 'Limpeza de Automóveis', '', '', 140, '2017-12-29 11:07:06', NULL),
(218, 'Limpeza', '', 'Pós Obra,Pós Eventos,Quintal,Banheiros', 140, '2017-12-29 11:08:05', '2017-12-29 11:33:24'),
(219, 'Ajudante/Auxiliar de Limpeza', '', '', 140, '2017-12-29 11:08:24', NULL),
(220, 'Caixa D\'água/Limpeza/Instalação/Manutenção', '', 'Limpeza,Instalacao,Manutencao', 140, '2017-12-29 11:08:47', NULL),
(221, 'Diarista', '', '', 140, '2017-12-29 11:09:02', NULL),
(222, 'Faxina', '', '', 140, '2017-12-29 11:09:10', NULL),
(223, 'Lavador de Carros', '', '', 140, '2017-12-29 11:09:20', NULL),
(224, 'Lavadeira', '', '', 140, '2017-12-29 11:09:35', NULL),
(225, 'Passadeira', '', '', 140, '2017-12-29 11:09:43', NULL),
(226, 'Lavador de Janelas', '', '', 140, '2017-12-29 11:09:53', NULL),
(227, 'Lavagem de Sofás/Estofados', '', '', 140, '2017-12-29 11:10:13', '2018-03-16 10:44:19'),
(228, 'Lavanderia', '', '', 140, '2017-12-29 11:10:21', NULL),
(229, 'Lavagem de Fachadas', '', '', 140, '2017-12-29 11:10:31', NULL),
(230, 'Limpeza Pesada', '', '', 140, '2017-12-29 11:10:49', NULL),
(231, 'Limpeza Pixação', '', '', 140, '2017-12-29 11:11:02', NULL),
(232, 'Piscina Limpeza e Manutenção', '', '', 140, '2017-12-29 11:11:46', NULL),
(233, 'Acupuntura', '', '', 140, '2017-12-29 11:12:16', NULL),
(234, 'Conselheiro Espiritual', '', 'Pastor,Padre', 140, '2017-12-29 11:12:51', NULL),
(235, 'Dentista', '', '', 140, '2017-12-29 11:13:09', NULL),
(236, 'Enfermeiro', '', '', 140, '2017-12-29 11:13:18', '2018-03-22 19:33:47'),
(237, 'Fisioterapeuta', '', '', 140, '2017-12-29 11:13:29', NULL),
(238, 'Fonoaudiólogo', '', '', 140, '2017-12-29 11:13:49', NULL),
(239, 'Médico', '', '', 140, '2017-12-29 11:13:57', '2018-04-13 10:28:19'),
(240, 'Pilates', '', '', 140, '2017-12-29 11:14:05', NULL),
(241, 'Psicólogo', '', '', 140, '2017-12-29 11:14:20', NULL),
(242, 'Psiquiatra', '', '', 140, '2017-12-29 11:14:28', NULL),
(243, 'Terapauta', '', 'Geral,Ocupacional', 140, '2017-12-29 11:14:56', NULL),
(244, 'Veterinário', '', '', 140, '2017-12-29 11:15:05', NULL),
(245, 'Transporte Pessoal Particular', '', 'Automovel,Van,Onibus,Moto', 140, '2017-12-29 11:16:12', NULL),
(246, 'Moto Taxi', '', '', 140, '2017-12-29 11:16:26', NULL),
(247, 'Aluguel/Locação de Veículos/Carros', '', 'Automovel,Moto,Onibus,Caminhao,Micro Onibus,Van', 140, '2017-12-29 11:16:55', NULL),
(248, 'Bateria Automotiva/Carros', '', '', 140, '2017-12-29 11:18:32', NULL),
(249, 'Bikeboy', '', '', 140, '2017-12-29 11:18:42', NULL),
(250, 'Cadeira de Rodas', '', 'Locacao,Manutencao', 140, '2017-12-29 11:19:09', NULL),
(251, 'Coleta de Entulhos', '', '', 140, '2017-12-29 11:19:20', NULL),
(252, 'Coleta de Objetos Usados', '', '', 140, '2017-12-29 11:19:40', NULL),
(253, 'Coleta de Roupas', '', '', 140, '2017-12-29 11:19:53', NULL),
(254, 'Coleta Seletiva', '', '', 140, '2017-12-29 11:20:10', NULL),
(255, 'Transporte/Carretos/Mudanças/Frete', '', 'Kombi,Pick Up,Caminhao Pequeno,Caminhao Medio,Caminhao Grande', 140, '2017-12-29 11:22:02', NULL),
(256, 'Motoboy', '', '', 140, '2017-12-29 11:23:17', NULL),
(257, 'Motorista Particular', '', 'automovel,caminhao,onibus,micro onibus,van', 140, '2017-12-29 11:24:14', NULL),
(258, 'Piloto Particular', '', 'Aviao,Helicoptero', 140, '2017-12-29 11:25:01', '2018-04-13 10:36:45'),
(259, 'Piloto Drones', '', '', 140, '2017-12-29 11:25:14', '2018-04-13 10:36:36'),
(260, 'Reboque/Guincho', '', '', 140, '2017-12-29 11:25:33', NULL),
(261, 'Transporte Escolar/Universitário', '', 'Van,Carro Particular', 140, '2017-12-29 11:26:08', NULL),
(262, 'Copeiro', '', '', 140, '2017-12-29 11:26:30', '2018-04-13 09:55:00'),
(263, 'Barman', '', '', 140, '2017-12-29 11:26:37', NULL),
(264, 'Bartender', '', '', 140, '2017-12-29 11:26:45', NULL),
(265, 'Caseiro', '', 'Sitio,Fazenda,Clube', 140, '2017-12-29 11:27:16', NULL),
(266, 'Digitação', '', '', 140, '2017-12-29 11:27:32', NULL),
(267, 'Divulgador', '', '', 140, '2017-12-29 11:27:40', NULL),
(268, 'Fragmentação de Documentos', '', '', 140, '2017-12-29 11:27:52', NULL),
(269, 'Garçom/Garçonete', '', '', 140, '2017-12-29 11:28:07', NULL),
(270, 'Garçonete', '', '', 140, '2017-12-29 11:28:17', '2018-03-16 11:07:32'),
(271, 'Grafica ', '', 'Rapida,Tradicional', 140, '2017-12-29 11:28:54', NULL),
(272, 'Manobrista', '', '', 140, '2017-12-29 11:29:13', NULL),
(273, 'Mesas/Cadeiras Locação', '', '', 140, '2017-12-29 11:29:25', NULL),
(274, 'Tendas ', '', 'Locacao,Fabricacao', 140, '2017-12-29 11:29:51', NULL),
(275, 'Tradutor', '', 'ingles/portugues,italiano/portugues,mandarim/portugues,espanhol/portugues,frances/portugues,alemao/portugues', 140, '2017-12-29 11:30:08', NULL),
(276, 'Limpeza Pós Obra', '', '', 140, '2017-12-29 11:33:54', NULL),
(277, 'Limpeza Pós Eventos', '', '', 140, '2017-12-29 11:34:05', NULL),
(278, 'CFTV Monitoramento', '', 'Projeto,Instalacao,Manutencao,Venda', 140, '2017-12-30 09:51:59', NULL),
(279, 'Arvore Poda e Corte', '', 'Poda,Corte', 140, '2018-01-01 14:45:02', NULL),
(280, 'Ar Condicionado Residencial', '', 'Projeto,Instalacao,Manutencao', 140, '2018-01-01 14:51:13', '2018-04-13 09:30:31'),
(281, 'Ar Condicionado Central', '', 'Projeto,Instalacao,Manutencao', 140, '2018-01-01 14:51:50', '2018-04-13 09:30:19'),
(282, 'Ajudante Geral', '', '', 140, '2018-01-01 15:14:41', NULL),
(283, 'Panelas/Conserto', '', '', 140, '2018-01-08 10:01:51', NULL),
(284, 'Móveis/Cadeiras/Reforma', '', '', 140, '2018-01-08 10:02:07', NULL),
(285, 'Professor de Inglês/Português/Matemática/Espanhol/Alemão/Francês/Mandarim', '', 'Inglês,Português,Matemática,Espanhol,Alemão,Francês,Mandarim', 140, '2018-01-08 10:14:11', '2018-01-08 10:18:30'),
(286, 'Fonte para Notebook', '', 'HP,Samsung,LG,Lenovo,Acer,Dell,Apple,Sony Vaio,Outro', 140, '2018-02-07 12:04:04', NULL),
(287, 'Guarda Chuva/Sombrinha/Ombrelone/Conserto', '', 'Guarda Chuva,Sombrinha,Guarda Sol,Ombrelone', 140, '2018-02-07 12:05:15', NULL),
(288, 'Fogão Conserto', '', 'Conserto,Limpeza', 140, '2018-02-07 12:05:57', NULL),
(289, 'Juiz de Futebol', '', 'Profissional,Amador', 140, '2018-02-08 16:25:23', NULL),
(290, 'Treinador de Futebol', '', '', 140, '2018-02-08 16:25:38', NULL),
(291, 'Tecnico de Futebol', '', '', 140, '2018-02-08 16:25:50', NULL),
(292, 'Consultoria Empresarial', '', '', 140, '2018-02-10 10:53:43', NULL),
(293, 'Palestrante Motivacional', '', '', 140, '2018-02-10 10:54:15', NULL),
(294, 'Coaching', '', '', 140, '2018-02-10 10:54:29', NULL),
(295, 'Backing Vocal', '', '', 140, '2018-02-10 10:57:03', NULL),
(296, 'Saladeira', '', '', 140, '2018-02-12 16:42:20', NULL),
(297, 'Nutricionista', '', 'Esportiva,Estatica,Funcional,Infantil,Ortomolecular,Vegetarianismo', 140, '2018-02-14 11:34:02', NULL),
(298, 'Calhas/Rufos/Coifas/Dutos', '', 'Calha,Rufo,Coifa,Duto', 140, '2018-02-16 18:51:24', NULL),
(299, 'Deck e Assoalho', '', '', 140, '2018-02-16 18:52:45', NULL),
(300, 'Segurança Eletrônica', '', '', 140, '2018-02-16 18:57:22', NULL),
(301, 'Vigilância Eletrônica', '', '', 140, '2018-02-16 18:58:04', NULL),
(302, 'Consultoria', '', 'juridica,financeira,imobiliaria,esportiva,marketing', 140, '2018-02-16 18:58:54', NULL),
(303, 'Sublimação / Silk Screen / Transfer', '', '', 140, '2018-02-19 15:39:14', NULL),
(304, 'Brindes', '', 'chaveiro,bone,squeeze,lixocar,caneca,calendarios,caneta,outros', 140, '2018-02-19 15:41:17', NULL),
(310, 'Instrumentos Musicais Conserto', '', 'violao,guitarra,bateria,contrabaixo,teclado,piano afinacao,acordeon,saxofone,flauta,violoncelo,banjo,violino,gaita,viola', 140, '2018-02-26 17:14:34', NULL),
(305, 'Placas/Faixas/Letreiros', '', 'Faixa em Tecido,Faixa em Lona ,Placa Luminosa,Placa Simples', 140, '2018-02-19 16:03:28', NULL),
(306, 'Grafica Rápida/Banners', '', '', 140, '2018-02-20 09:32:30', NULL),
(307, 'Videos Produção e Edição', '', 'Producao,Edicao,Producao e Edicao', 140, '2018-02-23 10:53:15', NULL),
(308, 'Juros Abusivos', '', '', 140, '2018-02-26 09:23:19', NULL),
(309, 'InsulFilm/WindowFilm', '', '', 140, '2018-02-26 09:23:51', NULL),
(311, 'Piano Afinação', '', '', 140, '2018-02-26 17:15:09', NULL),
(312, 'Piano Transporte', '', '', 140, '2018-02-26 17:15:27', NULL),
(313, 'Capina/Limpeza de Lotes', '', 'Capina Tradicional,Capina Quimica', 140, '2018-03-01 09:12:02', NULL),
(314, 'Quiroprata/Quiropraxia', '', '', 140, '2018-03-06 10:24:00', NULL),
(315, 'Venda/Apresentação/Demonstração de Produtos', '', 'alimentos/nutricao,consorcio,cosmeticos/perfumes,joias/bijuterias,limpeza/higiene pessoal,moveis/adornos,roupas/calcados,saude/bem estar,utilidades do lar', 140, '2018-03-07 08:30:15', NULL),
(316, 'Agua Mineral Delivery', '', 'garrafao com 20 l,fardo com 12 frascos de 500 ml,caixa com 48 copos', 140, '2018-03-08 09:57:34', NULL),
(317, 'Aparelhos de Iluminação/Assistência Tecnica', '', '', 140, '2018-03-12 14:55:03', NULL),
(318, 'Portas de Vidro/Blindex/Molas', '', '', 140, '2018-03-13 08:22:22', NULL),
(319, 'Português/Professor Particular', '', '', 140, '2018-03-13 08:29:01', NULL),
(320, 'Fisica/Professor Particular', '', '', 140, '2018-03-13 08:29:22', NULL),
(321, 'Geografia/Professor Particular', '', '', 140, '2018-03-13 08:29:34', NULL),
(322, 'Quimica/Professor Particular', '', '', 140, '2018-03-13 08:29:48', NULL),
(323, 'Convites/Papelaria de Luxo', '', '', 140, '2018-03-13 08:34:39', NULL),
(324, 'Encomendas Expressas', '', 'motoboy,carro,onibus,caminhao,aviao', 140, '2018-03-13 08:36:01', NULL),
(325, 'Conversão VHS e Vinil para DVD', '', '', 140, '2018-03-13 15:31:29', NULL),
(326, 'Manutenção Predial', '', '', 140, '2018-03-13 15:31:41', NULL),
(327, 'celular/tablet assistencia', '', 'conserto,manutencao,acessorio,limpeza', 140, '2018-03-15 17:11:19', NULL),
(329, 'Mecânico de Motocicletas', '', '', 140, '2018-03-16 11:03:14', '2018-04-13 10:16:19'),
(328, 'Iluminação/Residencial/Comercial', '', 'Projeto,Instalacao,Manutencao', 140, '2018-03-16 10:56:06', NULL),
(330, 'Oculos/Conserto', '', 'Limpeza/Manutencao,Reparo/Conserto', 140, '2018-03-16 11:14:43', NULL),
(331, 'Enfermeiro/Técnico', '', '', 140, '2018-03-22 19:32:43', NULL),
(332, 'Enfermeiro/Auxiliar', '', '', 140, '2018-03-22 19:33:02', NULL),
(333, 'Banho e Tosa', '', '', 140, '2018-03-31 10:17:49', NULL),
(334, 'Carga de Bateria / Auxiliar de Partida', '', '', 140, '2018-03-31 10:18:31', NULL),
(335, 'Troca de Pneu / Auxilio Combustível', '', '', 140, '2018-03-31 10:19:08', NULL),
(336, 'Eletricista', '', 'Automotivo,Residencial,Industrial', 140, '2018-04-12 11:01:21', NULL),
(337, 'Ar Condicionado', '', 'Residencial,Automotivo,Central,Instalacao,Manutencao,Remocao', 140, '2018-04-13 09:32:03', NULL),
(338, 'Arte Final', '', '', 140, '2018-04-13 09:41:11', NULL),
(339, 'Copeiro/a', '', '', 140, '2018-04-13 09:52:01', NULL),
(340, 'Espanhol/Professor', '', '', 140, '2018-04-13 10:00:11', NULL),
(341, 'Hipismo/Professor', '', '', 140, '2018-04-13 10:03:38', NULL),
(342, 'Inglês/Professor', '', '', 140, '2018-04-13 10:05:10', NULL),
(343, 'Investigação Particular', '', '', 140, '2018-04-13 10:10:59', NULL),
(344, 'Maquiagem Artística', '', '', 140, '2018-04-13 10:14:19', NULL),
(345, 'Mecanico', '', 'automoveis,motocicletas,bicicletas', 140, '2018-04-13 10:16:53', NULL),
(346, 'Médico', '', '', 140, '2018-04-13 10:27:25', NULL),
(347, 'Micro Onibus', '', '', 140, '2018-04-13 10:27:37', NULL),
(348, 'Piloto', '', 'aviao particular,helicoptero,automoveis/teste,drones', 140, '2018-04-13 10:37:40', NULL),
(349, 'Terapeuta', '', '', 140, '2018-04-13 11:05:38', NULL),
(350, 'Italiano/Professor', '', '', 140, '2018-04-18 09:06:59', NULL),
(351, 'Francês/Professor', '', '', 140, '2018-04-18 09:07:10', NULL),
(352, 'Mandarim/Professor', '', '', 140, '2018-04-18 09:07:31', NULL),
(353, 'coleta de oleo/gordura', '', '', 140, '2018-05-22 10:38:11', NULL),
(354, 'teste murilo', 'obs', '', 70, '2018-05-25 11:14:37', NULL),
(355, 'pediatra', '', '', 140, '2018-06-18 09:18:08', NULL),
(356, 'geriatra', '', '', 140, '2018-06-18 09:18:21', NULL),
(357, 'papelaria/copiadora', '', '', 140, '2018-07-03 15:00:00', NULL),
(358, 'faraone', '', '', 140, '2018-07-03 18:23:14', '2018-07-03 18:23:40'),
(359, 'corretor consorcios', '', '', 140, '2018-07-18 10:07:15', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_ip_time`
--

CREATE TABLE `tb_ip_time` (
  `id` int(11) NOT NULL,
  `ip` varchar(100) NOT NULL,
  `data_cad` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `tb_ip_time`
--

INSERT INTO `tb_ip_time` (`id`, `ip`, `data_cad`) VALUES
(1128, '179.155.105.31', '2017-12-07 16:40:53'),
(1129, '179.155.105.31', '2017-12-07 16:40:59'),
(1130, '191.44.56.105', '2017-12-07 19:13:15'),
(1131, '179.155.105.31', '2017-12-11 15:06:43'),
(1132, '179.155.109.103', '2018-01-11 15:24:53'),
(1133, '179.155.109.103', '2018-01-24 11:04:45'),
(1134, '179.155.109.103', '2018-02-14 15:16:08'),
(1135, '179.155.109.103', '2018-02-14 15:16:21'),
(1136, '179.155.105.95', '2018-03-08 09:44:45'),
(1137, '181.222.213.246', '2018-05-15 15:13:18'),
(1138, '181.222.213.246', '2018-05-15 17:37:42'),
(1139, '181.222.213.246', '2018-07-03 18:18:31'),
(1140, '181.222.213.246', '2018-07-09 09:50:34'),
(1141, '181.222.213.246', '2018-07-11 16:58:46'),
(1142, '181.222.213.246', '2018-08-08 14:59:13'),
(1143, '181.222.213.246', '2018-08-29 04:12:15');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_login`
--

CREATE TABLE `tb_login` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `usuario` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `cpf_cnpj` varchar(25) CHARACTER SET utf8 NOT NULL,
  `empresa` varchar(120) CHARACTER SET utf8 NOT NULL,
  `responsavel` varchar(120) CHARACTER SET utf8 NOT NULL,
  `telefone` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `senha` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `status` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `id_grupo` int(11) NOT NULL,
  `tmp` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `data_ca` datetime DEFAULT NULL,
  `host_server` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `token_id` varchar(255) CHARACTER SET utf8 NOT NULL,
  `obs` varchar(120) CHARACTER SET utf8 NOT NULL,
  `data_del` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `tb_login`
--

INSERT INTO `tb_login` (`id`, `nome`, `usuario`, `email`, `cpf_cnpj`, `empresa`, `responsavel`, `telefone`, `senha`, `status`, `id_grupo`, `tmp`, `data_ca`, `host_server`, `token_id`, `obs`, `data_del`) VALUES
(70, 'Boris', 'boris', 'murilo@mundoinova.com.br', '', 'Boris', '', '(34) 3333-3333', '202cb962ac59075b964b07152d234b70', 'ON', 2, '', '2018-07-23 11:04:31', 'b5ded5f6.virtua', '', '', '0000-00-00 00:00:00'),
(140, 'Gerald', 'gerald', 'geraldnunnes@gmail.com', '', 'Gerals', '', '(34) 3333-3333', '202cb962ac59075b964b07152d234b70', 'ON', 2, '', '2018-09-04 21:28:18', 'b5ded5f6.virtua', '', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_menu`
--

CREATE TABLE `tb_menu` (
  `id` int(11) NOT NULL,
  `atributo` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `link` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `link_pai` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `link_fisico` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `ordem` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `icones` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `local_menu` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `modulo` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `icone_principal` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `tb_menu`
--

INSERT INTO `tb_menu` (`id`, `atributo`, `link`, `link_pai`, `link_fisico`, `ordem`, `icones`, `local_menu`, `modulo`, `icone_principal`) VALUES
(1, 'Usuários', '#', '-', 'principal.php?p=usuarios_listar', '2', '', '1', '', 'fa fa-user'),
(71, 'Listar', 'usuarios_listar', '19', 'usuarios/listar.php', '2', '', '1', '', ''),
(6, 'Menu', '#', '118', '#', '2', '', '1', '', ''),
(10, 'Principal', '#', '-', 'principal.php', '1', 'img/icones_menu/principal.png', '2', '', ''),
(11, 'Troca de Senha', 'tsu', '-', 'usuarios/tsusuario.php', '2', 'img/icones_menu/trocar_senha.png', '2', '', ''),
(13, 'Sair do Sistema', 'logout', '-', 'logout.php', '4', 'img/icones_menu/sair.png', '2', '', ''),
(72, 'Cadastrar', 'usuarios_cadastrar', '19', 'usuarios/cadastrar.php', '1', '', '1', '', ''),
(49, 'Cadastrar', 'menu_cadastrar', '6', 'menu/cadastrar.php', '1', '', '1', NULL, ''),
(50, 'Listar', 'menu_listar', '6', 'menu/listar.php', '2', '', '1', NULL, ''),
(51, 'Backup', 'backup_index', '5', 'backup/index.php', '1', '', '1', '', ''),
(52, 'Logs', 'logs_listar', '5', 'logs/listar.php', '2', '', '1', '', ''),
(76, 'Sair', 'logout', '-', 'logout.php', '', '', '4', '', ''),
(75, 'Menu', 'menu_listar', '6', 'menu_listar.php', '1', 'img/icones_menu/solicita.png', '4', '', ''),
(67, 'Programa', 'programa', '118', 'prog.php', '3', '', '4', 'on', ''),
(68, 'Menu - Alterar', 'menu_alterar', '6', 'menu/alterar.php', '1', '', '4', '', ''),
(69, 'Menu - Deletar', 'menu_deletar', '6', 'menu/deletar.php', '2', '', '4', '', ''),
(88, 'Usuarios - Alterar', 'usuarios_alterar', '19', 'usuarios/alterar.php', '', '', '4', '', ''),
(112, 'Categorias', '#', '118', '#', '1', '', '4', '', ''),
(118, 'Configurações', '#', '-', '#', '7', '', '1', 'on', 'fa-gears'),
(188, 'Dados Banco', '#', '118', '#', '1', '', '4', '', ''),
(446, 'Mapa', '#', '', 'principal.php?p=mapa_listar', '5', 'img/icones_menu/mapa.png', '1', NULL, 'fa-map-marker'),
(475, 'Listar', 'plano_listar', '456', 'plano/listar.php', '2', '', '1', '', ''),
(454, 'Avaliações', 'avaliacoes_listar', '1', 'avaliacoes/listar.php', '2', '', '1', '', 'fa fa-star-half-o'),
(328, 'Troca de Senha', 'tsu2', '-', 'usuarios/tsusuario2.php', '', '', '4', '', ''),
(347, 'Logs', 'logs_listar', '7', 'logs/listar.php', '', '', '1', '', ''),
(359, 'Geral', '#', '-', 'principal.php', '1', '', '1', 'on', 'fa-pie-chart'),
(366, 'Checkins', '#', '405', '#', '4', '', '1', '', ''),
(414, 'Cadastrar', 'usuarios_cadastrar', '413', 'usuarios/cadastrar.php', '1', '', '1', '', ''),
(412, 'Listar', 'mapa_listar', '353', 'mapa/listar.php', '', '', '1', '', ''),
(415, 'Listar', 'usuarios_listar', '413', 'usuarios/listar.php', '2', '', '1', '', ''),
(468, 'propostas_alterar', 'propostas_alterar', '-', 'propostas/alterar.php', '', '', '4', '', ''),
(467, 'Controle de Propostas', 'propostas_listar', '1', 'propostas/listar.php', '6', '', '1', '', 'fa fa-address-card-o'),
(472, 'Configurações do APP', 'multa_alterar', '118', 'multa/alterar.php', '1', '', '1', '', ''),
(473, 'Plano', '#', '118', '#', '3', '', '4', '', ''),
(465, 'grupos_alterar', 'grupos_alterar', '-', 'grupos/alterar.php', '', '', '4', '', ''),
(461, 'avaliacoes_alterar', 'avaliacoes_alterar', '-', 'avaliacoes/alterar.php', '', '', '4', '', ''),
(463, 'Listar', 'grupos_listar', '453', 'grupos/listar.php', '1', '', '1', '', ''),
(464, 'Cadastrar', 'grupos_cadastrar', '453', 'grupos/cadastrar.php', '', '', '1', '', '2'),
(462, 'Listar', 'grupos', '-', 'grupos.php', '', '', '0', '', ''),
(474, 'Cadastrar', 'plano_cadastrar', '456', 'plano/cadastrar.php', '1', '', '1', '', ''),
(471, 'Controle Financeiro', 'financeiro_listar', '1', 'financeiro/listar.php', '4', '', '1', '', 'fa fa-money'),
(457, 'Controle de Push', 'push_listar', '1', 'msg_push/listar.php', '4', '', '1', '', 'fa fa-flag-o'),
(456, 'Controle de Créditos', 'principal.php?p=plano_listar', '-', 'principal.php?p=plano_listar', '3', '', '1', '', 'fa fa-money'),
(476, 'Plano - Alterar', 'plano_alterar', '473', 'plano/alterar.php', '1', '', '4', '', ''),
(469, 'Listar', 'push_listar', '457', 'msg_push/listar.php', '2', '', '1', '', ''),
(470, 'Enviar', 'push_cadastrar', '457', 'msg_push/cadastrar.php', '1', '', '1', '', ''),
(453, 'Grupos e Serviços', 'principal.php?p=grupos_listar', '-', 'principal.php?p=grupos_listar', '4', '', '1', '', 'fa fa-hand-rock-o'),
(452, 'Listar Usuários', 'usuarios_listar', '1', 'usuarios/listar.php', '', '', '1', '', ''),
(477, 'Preferências de Orçamento', 'principal.php?p=prefe_orcamento_listar', '-', 'principal.php?p=prefe_orcamento_listar', '6', '', '1', '', 'fa fa-sort-numeric-desc'),
(478, 'Listar', 'prefe_orcamento_listar', '477', 'prefe_orcamento/listar.php', '', '', '1', '', ''),
(479, 'Cadastrar', 'prefe_orcamento_cadastrar', '477', 'prefe_orcamento/cadastrar.php', '', '', '1', '', ''),
(480, 'prefe_orcamento_alterar', 'prefe_orcamento_alterar', '-', 'prefe_orcamento/alterar.php', '', '', '4', '', '');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_modulo`
--

CREATE TABLE `tb_modulo` (
  `id` int(100) NOT NULL,
  `nome` varchar(20) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `tb_modulo`
--

INSERT INTO `tb_modulo` (`id`, `nome`) VALUES
(6, 'Usuario'),
(31, 'Colaboradores'),
(30, 'Cliente'),
(36, 'Configurações'),
(37, 'Financeiro'),
(43, 'Cobranca'),
(46, 'Geral'),
(54, 'Veiculo'),
(59, 'Atributos');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_msg_push`
--

CREATE TABLE `tb_msg_push` (
  `id` int(11) NOT NULL,
  `obs` varchar(255) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `data_cad` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `tb_msg_push`
--

INSERT INTO `tb_msg_push` (`id`, `obs`, `id_user`, `id_cliente`, `data_cad`) VALUES
(9, 'Bom dia, Gerald!', 140, 50, '2017-12-08 09:08:37'),
(18, 'Obrigado por escolher a Jobex! Por favor, acesse o APP e complete seu cadastro, para receber os crÃ©ditos cortesia por 30 dias.', 140, 50, '2018-02-23 10:15:51'),
(19, 'Obrigado por escolher a Jobex! Por favor, acesse o APP e complete seu cadastro, para receber os crÃ©ditos cortesia por 30 dias.', 140, 72, '2018-02-23 10:48:01'),
(20, 'Obrigado por escolher a Jobex! Por favor, acesse o APP e complete seu cadastro, para receber os crÃ©ditos cortesia por 30 dias.', 140, 75, '2018-02-23 10:48:18'),
(21, 'Obrigado por escolher a Jobex! Por favor, acesse o APP e complete seu cadastro, para receber os crÃ©ditos cortesia por 30 dias.', 140, 74, '2018-02-23 10:48:40'),
(22, 'Obrigado por escolher a Jobex! Por favor, acesse o APP e complete seu cadastro, para receber os crÃ©ditos cortesia por 30 dias.', 140, 73, '2018-02-23 10:49:12'),
(23, 'Obrigado por escolher a Jobex! Por favor, acesse o APP e complete seu cadastro, para receber os crÃ©ditos cortesia por 30 dias.', 140, 50, '2018-02-23 10:49:30'),
(24, 'Obrigado por escolher a Jobex! Por favor, acesse o APP e complete seu cadastro, para receber os crÃ©ditos cortesia por 30 dias.', 140, 50, '2018-02-23 10:55:27'),
(25, 'Obrigado por escolher a Jobex! Por favor, acesse o APP e complete seu cadastro, para receber os crÃ©ditos cortesia por 30 dias.', 140, 50, '2018-02-23 11:16:53'),
(26, 'Obrigado por escolher a Jobex! Por favor, acesse o APP e complete seu cadastro, para receber os crÃ©ditos cortesia por 30 dias.', 140, 50, '2018-02-23 11:17:44'),
(27, 'Obrigado por escolher a Jobex! Por favor, acesse o APP e complete seu cadastro, para receber os crÃ©ditos cortesia por 30 dias.', 140, 64, '2018-02-23 11:19:05'),
(28, 'Obrigado por escolher a Jobex! Por favor, acesse o APP e complete seu cadastro, para receber os crÃ©ditos cortesia por 30 dias.', 140, 77, '2018-02-23 18:09:41'),
(29, 'Obrigado por escolher a Jobex! Por favor, acesse o APP e complete seu cadastro, para receber os crÃ©ditos cortesia por 30 dias.', 140, 78, '2018-02-23 18:10:10'),
(30, 'Obrigado por escolher a Jobex! Por favor, acesse o APP e complete seu cadastro, para receber os crÃ©ditos cortesia por 30 dias.', 140, 76, '2018-02-23 18:10:35'),
(31, 'Obrigado por escolher a Jobex! Por favor, acesse o APP e complete seu cadastro, para receber os crÃ©ditos cortesia por 30 dias.', 140, 79, '2018-02-24 12:53:10'),
(32, 'Obrigado por escolher a Jobex! Por favor, acesse o APP e complete seu cadastro, para receber os crÃ©ditos cortesia por 30 dias.', 140, 80, '2018-02-24 12:53:33'),
(33, 'Profissional Independente, complete seu cadastro. Acesse o APP >> Minha Conta >> Perfil Profissional', 140, 87, '2018-03-07 08:53:56'),
(34, 'Profissional Independente, complete seu cadastro. Acesse o APP >> Minha Conta >> Perfil Profissional', 140, 50, '2018-03-07 08:54:18'),
(35, 'Profissional Independente, complete seu cadastro. Acesse o APP >> Minha Conta >> Perfil Profissional', 140, 85, '2018-03-07 08:54:36'),
(36, 'Profissional Independente, complete seu cadastro. Acesse o APP >> Minha Conta >> Perfil Profissional', 140, 86, '2018-03-07 08:54:53'),
(37, 'Profissional Independente, complete seu cadastro. Acesse o APP >> Minha Conta >> Perfil Profissional', 140, 88, '2018-03-07 08:55:13'),
(38, 'Profissional Independente, complete seu cadastro. Acesse o APP >> Minha Conta >> Perfil Profissional', 140, 84, '2018-03-07 08:56:11'),
(39, 'Teste Envio Push!', 140, 50, '2018-03-08 09:45:50'),
(40, 'Teste Envio Push!', 140, 70, '2018-03-08 09:50:11'),
(41, 'Teste Envio Push!', 140, 48, '2018-03-08 09:50:30'),
(42, 'Teste Envio Push!', 140, 62, '2018-03-08 09:50:42'),
(43, 'Teste Envio Push!', 140, 55, '2018-03-08 09:50:56'),
(44, 'Teste Envio Push!', 140, 46, '2018-03-08 09:54:17'),
(45, 'Teste Envio Push!', 140, 55, '2018-03-08 10:11:47'),
(46, 'OlÃ¡! Seja bem bem vindo Ã  Jobex!', 140, 90, '2018-03-08 10:35:06'),
(47, 'OlÃ¡! Seja bem bem vindo Ã  Jobex!', 140, 89, '2018-03-08 10:37:12'),
(48, 'teste', 140, 55, '2018-03-13 15:54:26'),
(49, 'Teste Envio Push!', 140, 55, '2018-03-14 08:02:29'),
(50, 'OlÃ¡! Seja bem bem vindo Ã  Jobex!', 140, 108, '2018-03-21 14:24:08'),
(51, 'OlÃ¡! Seja bem bem vindo Ã  Jobex!', 140, 109, '2018-03-21 14:25:10'),
(52, 'OlÃ¡! Seja bem bem vindo Ã  Jobex!', 140, 110, '2018-03-21 14:25:39'),
(53, 'OlÃ¡! Seja bem bem vindo Ã  Jobex!', 140, 111, '2018-03-21 14:26:15'),
(54, 'OlÃ¡! Seja bem bem vindo Ã  Jobex!', 140, 50, '2018-03-21 14:26:40'),
(55, 'Teste envio', 140, 55, '2018-03-22 22:02:24'),
(56, 'Teste envio Push 00023', 140, 50, '2018-03-23 07:00:22'),
(57, 'Teste Envio Push! Gerald!', 140, 50, '2018-03-23 09:30:06'),
(58, 'Teste Envio Push!', 140, 55, '2018-03-23 09:30:26'),
(59, 'Teste Envio Push Gerald.', 140, 50, '2018-03-23 14:21:32'),
(60, 'Teste Envio Push!', 140, 47, '2018-03-23 14:21:45'),
(61, 'Teste Envio Push!', 140, 57, '2018-03-23 14:21:55'),
(62, 'Teste Envio Push!', 140, 55, '2018-03-23 14:22:13'),
(63, 'Seja bem Vindo Ã  Jobex!', 140, 50, '2018-03-23 14:44:34'),
(64, 'Seja bem Vindo Ã  Jobex!', 140, 103, '2018-03-23 14:45:11'),
(65, 'Seja bem Vindo Ã  Jobex!', 140, 112, '2018-03-23 15:02:07'),
(66, 'Seja bem Vindo Ã  Jobex!', 140, 113, '2018-03-23 15:02:28'),
(67, 'OlÃ¡! Seja bem Vindo Ã  Jobex!', 140, 115, '2018-03-31 10:34:14'),
(68, 'OlÃ¡! Seja bem Vindo Ã  Jobex!', 140, 50, '2018-03-31 10:34:36'),
(69, 'OlÃ¡! Seja bem Vindo Ã  Jobex!', 140, 116, '2018-03-31 10:35:48'),
(70, 'testee', 140, 55, '2018-04-03 11:34:17'),
(71, 'OlÃ¡! Seja bem Vindo Ã  Jobex!', 140, 125, '2018-04-18 09:09:51'),
(72, 'OlÃ¡! Seja bem Vindo Ã  Jobex!', 140, 126, '2018-04-18 09:10:17'),
(73, 'Olá! O novo APP da Jobex espera por você. Habilite seu aparelho para \"Atualizar automaticamente\" ou desinstale o APP atual e reinstale o novo, direto da PlayStore ou AppStore.', 140, NULL, '2018-07-03 20:03:27'),
(74, 'teste', 70, 55, '2018-07-16 15:31:04'),
(75, 'teste', 70, 55, '2018-07-16 15:31:25'),
(76, 'asdfasdf', 70, 55, '2018-07-16 15:34:59'),
(77, 'Obrigado por escolher a Jobex! Por favor, acesse o APP e complete seu cadastro, para receber os créditos cortesia por 30 dias.', 140, 185, '2018-08-28 12:51:12');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_multa`
--

CREATE TABLE `tb_multa` (
  `id` int(11) NOT NULL,
  `obs_multa` varchar(100) NOT NULL,
  `vl_multa` float NOT NULL,
  `dias_multa` int(11) NOT NULL,
  `key_onesignal` varchar(50) NOT NULL,
  `REST_API_Key` varchar(100) NOT NULL,
  `valor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `tb_multa`
--

INSERT INTO `tb_multa` (`id`, `obs_multa`, `vl_multa`, `dias_multa`, `key_onesignal`, `REST_API_Key`, `valor`) VALUES
(1, 'Valor repassado por multa', 20.01, 21, '7dfa825c-fab9-4e24-bcf8-429d3dea083f', 'NmIyZTA5MDAtYTM5YS00MjA5LWE0MzctODFiMjliZDlmZGMz', 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_pgseguro_notification`
--

CREATE TABLE `tb_pgseguro_notification` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `code` varchar(50) NOT NULL,
  `notificationCode` varchar(100) NOT NULL,
  `notificationReceiver` text,
  `notificationType` varchar(50) DEFAULT NULL,
  `data_cad` datetime NOT NULL,
  `data_del` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `tb_pgseguro_notification`
--

INSERT INTO `tb_pgseguro_notification` (`id`, `id_user`, `status`, `code`, `notificationCode`, `notificationReceiver`, `notificationType`, `data_cad`, `data_del`) VALUES
(62, 54, 3, '41E987A7-17CC-413E-8BC8-95256231C54D', '7CD8F3-8A4B5E4B5EFA-8EE4321FAC24-10EE99', '{\"date\":\"2017-12-15T14:40:12.000-02:00\",\"code\":\"41E987A7-17CC-413E-8BC8-95256231C54D\",\"type\":\"1\",\"status\":\"3\",\"lastEventDate\":\"2017-12-15T14:40:33.000-02:00\",\"paymentMethod\":{\"type\":\"1\",\"code\":\"101\"},\"grossAmount\":\"19.90\",\"discountAmount\":\"0.00\",\"feeAmount\":\"1.19\",\"netAmount\":\"18.71\",\"extraAmount\":\"0.00\",\"escrowEndDate\":\"2018-01-14T14:40:33.000-02:00\",\"installmentCount\":\"1\",\"itemCount\":\"1\",\"items\":{\"item\":{\"id\":\"3\",\"description\":\"1 Mu00eas Pelo Preu00e7o adequado / R$ 19.9\",\"quantity\":\"1\",\"amount\":\"19.90\"}},\"sender\":{\"name\":\"Gerald Profissional\",\"email\":\"gerald@sandbox.pagseguro.com.br\",\"phone\":{\"areaCode\":\"34\",\"number\":\"991910501\"},\"documents\":{\"document\":{\"type\":\"CPF\",\"value\":\"11416146695\"}}},\"gatewaySystem\":{\"type\":\"cielo\",\"rawCode\":{},\"rawMessage\":{},\"normalizedCode\":{},\"normalizedMessage\":{},\"authorizationCode\":\"0\",\"nsu\":\"0\",\"tid\":\"0\",\"establishmentCode\":\"1056784170\",\"acquirerName\":\"CIELO\"}}', 'transaction', '2017-12-15 14:40:32', NULL),
(65, 54, 3, 'B3875233-C2E1-4719-84F2-BEDD099D08EF', '6AF2BA-38F8EAF8EAB7-A55458AF848F-2471F1', '{\"date\":\"2017-12-15T16:57:52.000-02:00\",\"code\":\"B3875233-C2E1-4719-84F2-BEDD099D08EF\",\"type\":\"1\",\"status\":\"3\",\"lastEventDate\":\"2017-12-15T16:58:06.000-02:00\",\"paymentMethod\":{\"type\":\"1\",\"code\":\"101\"},\"grossAmount\":\"19.90\",\"discountAmount\":\"0.00\",\"feeAmount\":\"1.19\",\"netAmount\":\"18.71\",\"extraAmount\":\"0.00\",\"escrowEndDate\":\"2018-01-14T16:58:06.000-02:00\",\"installmentCount\":\"1\",\"itemCount\":\"1\",\"items\":{\"item\":{\"id\":\"3\",\"description\":\"1 Mu00eas Pelo Preu00e7o adequado / R$ 19.9\",\"quantity\":\"1\",\"amount\":\"19.90\"}},\"sender\":{\"name\":\"Gerald Profissional\",\"email\":\"gerald@sandbox.pagseguro.com.br\",\"phone\":{\"areaCode\":\"34\",\"number\":\"991910501\"},\"documents\":{\"document\":{\"type\":\"CPF\",\"value\":\"11416146695\"}}},\"gatewaySystem\":{\"type\":\"cielo\",\"rawCode\":{},\"rawMessage\":{},\"normalizedCode\":{},\"normalizedMessage\":{},\"authorizationCode\":\"0\",\"nsu\":\"0\",\"tid\":\"0\",\"establishmentCode\":\"1056784170\",\"acquirerName\":\"CIELO\"}}', 'transaction', '2017-12-15 16:58:04', NULL),
(79, NULL, NULL, '', 'BED3FA-09C1BCC1BCF8-DFF4EA7FA4D3-7C3367', 'false', 'transaction', '2018-01-17 13:56:11', NULL),
(80, NULL, NULL, '', 'DF47AE-3B0FBE0FBE27-3884778FA801-1722C5', 'false', 'transaction', '2018-01-17 13:58:30', NULL),
(81, NULL, NULL, '', 'F81F14-2DBC17BC173E-CEE4E66F8958-F7FCDE', 'false', 'transaction', '2018-01-17 13:58:37', NULL),
(82, NULL, NULL, '', '3E3EAD-D6AACAAACAD4-6AA4034FA13B-087FC7', 'false', 'transaction', '2018-01-17 13:58:55', NULL),
(83, NULL, NULL, '', '5D6391-24312B312B5C-BEE445CFA305-9FD0DB', 'false', 'transaction', '2018-01-17 14:00:11', NULL),
(84, NULL, NULL, '', 'DEE113-CAFCEEFCEEF7-5BB4EF4F8D2E-C736FA', 'false', 'transaction', '2018-01-17 14:00:41', NULL),
(85, NULL, NULL, '', '156769-078160816078-44441B4F9AF2-D44D37', 'false', 'transaction', '2018-01-17 14:18:24', NULL),
(86, NULL, NULL, '', 'E67571-66AD3FAD3F23-5884127F9D90-F03246', 'false', 'transaction', '2018-01-17 15:02:59', NULL),
(87, NULL, NULL, '', '5883C5-02D5D0D5D0B4-65547C6FADB7-EC48B3', 'false', 'transaction', '2018-01-17 15:13:18', NULL),
(88, NULL, NULL, '', '3C5E2F-D90C0B0C0BF9-F55423FF906C-EA5C60', 'false', 'transaction', '2018-01-17 15:14:17', NULL),
(89, NULL, NULL, '', '5FCCB5-C42A1C2A1C4C-2CC4FBDF9670-6D340E', 'false', 'transaction', '2018-01-17 15:15:31', NULL),
(90, NULL, NULL, '', '8AFC24-D2B1E6B1E69A-7884E23F85EB-84AB39', 'false', 'transaction', '2018-01-17 15:20:04', NULL),
(91, NULL, NULL, '', '0F6609-8EAE7BAE7B15-D334D80FBEE4-A0E32C', 'false', 'transaction', '2018-01-17 15:20:38', NULL),
(92, NULL, NULL, '', 'ACCF0E-C4DD45DD4552-69941B0F9A41-9B7008', 'false', 'transaction', '2018-01-17 17:15:59', NULL),
(93, NULL, NULL, '', '3EF670-F654565456C5-7004FE3FBB69-2B71B8', 'false', 'transaction', '2018-01-17 18:21:14', NULL),
(94, NULL, NULL, '', '6C7448-E41A621A6245-8444401F9963-98595F', 'false', 'transaction', '2018-01-17 18:22:24', NULL),
(95, NULL, NULL, '', '87EF76-B55B845B84A7-4BB46A8F804E-FFDC8B', 'false', 'transaction', '2018-01-17 18:22:28', NULL),
(96, NULL, NULL, '', '9BF613-4D7B567B56D0-3774EFEFAB02-E25C0F', 'false', 'transaction', '2018-01-17 18:22:33', NULL),
(97, NULL, NULL, '', 'EE5217-76BF4DBF4D6B-2FF49E8FAA76-187C81', 'false', 'transaction', '2018-01-17 18:22:54', NULL),
(98, NULL, NULL, '', '37BBB9-9D70817081C8-7BB4FAEFAD1F-FB3ABC', 'false', 'transaction', '2018-01-17 18:25:24', NULL),
(99, NULL, NULL, '', '62D131-F4D815D81510-8334A0AFBB3D-61E907', 'false', 'transaction', '2018-01-17 18:25:35', NULL),
(100, NULL, NULL, '', '1C7C74-F9FEB9FEB9F8-AEE4B0EF9B9B-86B3B4', 'false', 'transaction', '2018-01-18 08:16:30', NULL),
(101, NULL, NULL, '', '43C400-8F2BB42BB485-3CC43BAFB827-DFC3AE', 'false', 'transaction', '2018-01-18 08:21:03', NULL),
(102, NULL, NULL, '', '60B6AC-BD7D7A7D7A38-9AA4843F8B6F-54D21B', 'false', 'transaction', '2018-01-18 08:23:20', NULL),
(103, NULL, NULL, '', '56D487-7234A434A495-FDD4A64FB006-B3250E', 'false', 'transaction', '2018-01-18 08:24:24', NULL),
(104, NULL, NULL, '', 'FFFBD3-BEA6B3A6B366-EAA43F1FBC95-C29F09', 'false', 'transaction', '2018-01-18 08:30:34', NULL),
(105, NULL, NULL, '', '009388-B3344634461B-7BB40B6F80A3-00B44E', 'false', 'transaction', '2018-01-18 08:31:41', NULL),
(106, NULL, NULL, '', '47D864-C77643764371-8884E85FA894-045BCC', 'false', 'transaction', '2018-01-18 15:17:12', NULL),
(107, NULL, NULL, '', '889B95-A15E545E54FA-DCC42CEF8E56-F328FF', 'false', 'transaction', '2018-01-19 11:01:29', NULL),
(108, NULL, NULL, '', 'AACB64-AACADBCADB36-311438FF9905-EAFB1F', 'false', 'transaction', '2018-01-19 11:09:17', NULL),
(109, NULL, NULL, '', 'E5940A-2366A166A18C-AAA4A8AF80E8-BCC90A', 'false', 'transaction', '2018-01-19 11:11:43', NULL),
(110, NULL, NULL, '', 'BBE8B6-2B87158715BA-FBB46D9FA269-69C1F6', 'false', 'transaction', '2018-01-19 11:13:43', NULL),
(111, NULL, NULL, '', 'D0B146-8C6AAB6AAB5E-4BB4A0AFB1FD-3BEE96', 'false', 'transaction', '2018-01-24 11:15:09', NULL),
(112, NULL, NULL, '', '9D103F-27E7F7E7F70D-3EE4BBEF9FAE-0FBC79', 'false', 'transaction', '2018-01-24 11:17:06', NULL),
(113, NULL, NULL, '', '8B37E0-A18A898A890D-5664ADBFB972-C1DE8A', 'false', 'transaction', '2018-01-24 11:20:18', NULL),
(114, NULL, NULL, '', '7AEFCA-2A7212721230-EFF4F69F8CB2-E8545F', 'false', 'transaction', '2018-01-24 12:27:57', NULL),
(115, NULL, NULL, '', 'D13F55-AA66A266A2A1-1884D89FA439-DC584A', 'false', 'transaction', '2018-01-24 15:52:35', NULL),
(116, NULL, NULL, '', '97A498-C635D935D9C4-C004B97FB94C-01A4BA', 'false', 'transaction', '2018-01-25 03:37:58', NULL),
(117, NULL, NULL, '', 'FFB040-D3F928F928AF-5884111F8350-2D01B4', 'false', 'transaction', '2018-01-26 17:16:05', NULL),
(118, NULL, NULL, '', '1D4301-0FF571F57110-0114815FA6B8-800AF9', 'false', 'transaction', '2018-01-26 17:48:59', NULL),
(119, NULL, NULL, '', '4C2790-44426B426B9F-1444BE6FB97C-D0E3DA', 'false', 'transaction', '2018-01-26 17:54:38', NULL),
(120, 54, 3, '97E24EC9-630B-49E1-AB54-6C27277B9563', 'DA1797-B669146914EC-7554A66F9CC2-EFDBDA', 'false', 'transaction', '2018-01-26 18:02:53', NULL),
(121, NULL, NULL, '', '53B323-C2093F093F49-F664E85FA1FA-92E843', 'false', 'transaction', '2018-01-26 18:11:03', NULL),
(122, NULL, NULL, '', 'AD0FE7-83FF51FF5132-5114E64FB16E-9CF87B', 'false', 'transaction', '2018-01-26 18:16:54', NULL),
(123, NULL, NULL, '', '773B9A-19FB9EFB9EF3-51143DFFA46C-3FADAC', 'false', 'transaction', '2018-01-26 18:18:51', NULL),
(124, NULL, NULL, '', 'E4F387-92277D277D39-0DD4C17F843C-258067', 'false', 'transaction', '2018-01-26 18:20:25', NULL),
(125, NULL, NULL, '', '540653-D6697369735C-411465AFA2CD-79169B', 'false', 'transaction', '2018-01-26 18:21:59', NULL),
(126, NULL, NULL, '', '6CE074-B623E823E8AE-47748B5FBE1A-82E27C', 'false', 'transaction', '2018-01-26 18:25:22', NULL),
(127, NULL, NULL, '', 'A88D09-3923C023C098-2FF4846F82D2-BD491D', 'false', 'transaction', '2018-01-26 18:27:48', NULL),
(128, NULL, NULL, '', '0CE0EE-49E225E225EC-522490FFB20A-544140', 'false', 'transaction', '2018-01-27 03:12:31', NULL),
(129, NULL, NULL, '', '8E3C2F-D3172C172CBF-5AA4746FB129-2AAD7F', 'false', 'transaction', '2018-01-27 03:15:15', NULL),
(133, NULL, NULL, '', 'AB1E43-7CEC65EC65F6-9884BCFFB3E7-AF4341', 'false', 'transaction', '2018-01-29 18:13:33', NULL),
(134, NULL, NULL, '', '39D1C3-D5B8BFB8BFC0-5554C97F9060-BE8498', 'false', 'transaction', '2018-01-29 18:15:15', NULL),
(139, NULL, 7, '1C75A8DB-143F-4766-B646-33BE82ED9A9F', 'FDC189-20146B146B84-B884F08FB80A-80B21D', '{\"date\":\"2018-01-17T13:56:11.000-02:00\",\"code\":\"1C75A8DB-143F-4766-B646-33BE82ED9A9F\",\"reference\":\"Referencia Qualquer\",\"type\":\"1\",\"status\":\"7\",\"cancellationSource\":\"INTERNAL\",\"lastEventDate\":\"2018-01-30T07:15:58.000-02:00\",\"paymentMethod\":{\"type\":\"2\",\"code\":\"202\"},\"paymentLink\":\"https://pagseguro.uol.com.br/checkout/payment/booklet/print.jhtml?c=47be753b2dad757ed611d37690944ff2ffc8a83cdbebf06477df1dd80d96b4cfe39396ae5129b828\",\"grossAmount\":\"5.12\",\"discountAmount\":\"0.00\",\"feeAmount\":\"0.60\",\"netAmount\":\"4.52\",\"extraAmount\":\"0.00\",\"installmentCount\":\"1\",\"itemCount\":\"1\",\"items\":{\"item\":{\"id\":\"001\",\"description\":\"Assinatura SDK SNoob\",\"quantity\":\"1\",\"amount\":\"5.12\"}},\"sender\":{\"name\":\"Noob Master\",\"email\":\"financeiro@sounoob.com.br\",\"phone\":{\"areaCode\":\"11\",\"number\":\"98909084\"}},\"shipping\":{\"address\":{\"street\":\"Av Faria lima\",\"number\":\"103 A\",\"complement\":{},\"district\":\"Vila Olimpia\",\"city\":\"Su00e3o Paulo\",\"state\":\"SP\",\"country\":\"BRA\",\"postalCode\":\"01230000\"},\"type\":\"3\",\"cost\":\"0.00\"}}', 'transaction', '2018-01-30 07:15:58', NULL),
(140, NULL, 7, '7A3C72C7-2249-4BB9-A510-C555C9C7F7DD', 'FEA2B9-6F900990097B-7DD4C52FAFAD-D724B0', '{\"date\":\"2018-01-17T13:58:29.000-02:00\",\"code\":\"7A3C72C7-2249-4BB9-A510-C555C9C7F7DD\",\"reference\":\"Referencia Qualquer\",\"type\":\"1\",\"status\":\"7\",\"cancellationSource\":\"INTERNAL\",\"lastEventDate\":\"2018-01-30T07:15:58.000-02:00\",\"paymentMethod\":{\"type\":\"2\",\"code\":\"202\"},\"paymentLink\":\"https://pagseguro.uol.com.br/checkout/payment/booklet/print.jhtml?c=38a778a1bb24cbfadfce7bb010eb3ab8d9f62747055983d2b505eaa28a137874df205573e20e3630\",\"grossAmount\":\"5.12\",\"discountAmount\":\"0.00\",\"feeAmount\":\"0.60\",\"netAmount\":\"4.52\",\"extraAmount\":\"0.00\",\"installmentCount\":\"1\",\"itemCount\":\"1\",\"items\":{\"item\":{\"id\":\"001\",\"description\":\"Assinatura SDK SNoob\",\"quantity\":\"1\",\"amount\":\"5.12\"}},\"sender\":{\"name\":\"Noob Master\",\"email\":\"financeiro@sounoob.com.br\",\"phone\":{\"areaCode\":\"11\",\"number\":\"98909084\"}},\"shipping\":{\"address\":{\"street\":\"Av Faria lima\",\"number\":\"103 A\",\"complement\":{},\"district\":\"Vila Olimpia\",\"city\":\"Su00e3o Paulo\",\"state\":\"SP\",\"country\":\"BRA\",\"postalCode\":\"01230000\"},\"type\":\"3\",\"cost\":\"0.00\"}}', 'transaction', '2018-01-30 07:15:58', NULL),
(141, NULL, 7, '42E8C090-50A9-475E-A647-881102657459', 'FF8C08-F97C2B7C2B47-CAA4BF5FAC98-07C466', '{\"date\":\"2018-01-17T13:58:36.000-02:00\",\"code\":\"42E8C090-50A9-475E-A647-881102657459\",\"reference\":\"Referencia Qualquer\",\"type\":\"1\",\"status\":\"7\",\"cancellationSource\":\"INTERNAL\",\"lastEventDate\":\"2018-01-30T07:15:58.000-02:00\",\"paymentMethod\":{\"type\":\"2\",\"code\":\"202\"},\"paymentLink\":\"https://pagseguro.uol.com.br/checkout/payment/booklet/print.jhtml?c=244fb44f1ee518adf1d3dfc35eb149411ec2206f216d465786cba0b2b876ce6abd6f21efcebd9985\",\"grossAmount\":\"5.12\",\"discountAmount\":\"0.00\",\"feeAmount\":\"0.60\",\"netAmount\":\"4.52\",\"extraAmount\":\"0.00\",\"installmentCount\":\"1\",\"itemCount\":\"1\",\"items\":{\"item\":{\"id\":\"001\",\"description\":\"Assinatura SDK SNoob\",\"quantity\":\"1\",\"amount\":\"5.12\"}},\"sender\":{\"name\":\"Noob Master\",\"email\":\"financeiro@sounoob.com.br\",\"phone\":{\"areaCode\":\"11\",\"number\":\"98909084\"}},\"shipping\":{\"address\":{\"street\":\"Av Faria lima\",\"number\":\"103 A\",\"complement\":{},\"district\":\"Vila Olimpia\",\"city\":\"Su00e3o Paulo\",\"state\":\"SP\",\"country\":\"BRA\",\"postalCode\":\"01230000\"},\"type\":\"3\",\"cost\":\"0.00\"}}', 'transaction', '2018-01-30 07:15:58', NULL),
(142, NULL, 7, '01285DF5-52C5-4B7F-9FE5-9E29117B0996', '003843-BD4D124D1295-7004C1DFA227-D3CB2F', '{\"date\":\"2018-01-17T13:58:54.000-02:00\",\"code\":\"01285DF5-52C5-4B7F-9FE5-9E29117B0996\",\"reference\":\"Referencia Qualquer\",\"type\":\"1\",\"status\":\"7\",\"cancellationSource\":\"INTERNAL\",\"lastEventDate\":\"2018-01-30T07:15:58.000-02:00\",\"paymentMethod\":{\"type\":\"2\",\"code\":\"202\"},\"paymentLink\":\"https://pagseguro.uol.com.br/checkout/payment/booklet/print.jhtml?c=7c252ffc44a6934d1907f7ebac24dbc9362281ff1ab6fa7dc9b34c92d33dc17869f4c41f6016194b\",\"grossAmount\":\"5.12\",\"discountAmount\":\"0.00\",\"feeAmount\":\"0.60\",\"netAmount\":\"4.52\",\"extraAmount\":\"0.00\",\"installmentCount\":\"1\",\"itemCount\":\"1\",\"items\":{\"item\":{\"id\":\"001\",\"description\":\"Assinatura SDK SNoob\",\"quantity\":\"1\",\"amount\":\"5.12\"}},\"sender\":{\"name\":\"Noob Master\",\"email\":\"financeiro@sounoob.com.br\",\"phone\":{\"areaCode\":\"11\",\"number\":\"98909084\"}},\"shipping\":{\"address\":{\"street\":\"Av Faria lima\",\"number\":\"103 A\",\"complement\":{},\"district\":\"Vila Olimpia\",\"city\":\"Su00e3o Paulo\",\"state\":\"SP\",\"country\":\"BRA\",\"postalCode\":\"01230000\"},\"type\":\"3\",\"cost\":\"0.00\"}}', 'transaction', '2018-01-30 07:15:58', NULL),
(143, NULL, 7, '7F4756B4-26B9-4957-9A7F-1449039BCD83', '00FF51-F2FDCBFDCB14-55540D0F9AEB-3741D9', '{\"date\":\"2018-01-17T14:00:07.000-02:00\",\"code\":\"7F4756B4-26B9-4957-9A7F-1449039BCD83\",\"reference\":\"Referencia Qualquer\",\"type\":\"1\",\"status\":\"7\",\"cancellationSource\":\"INTERNAL\",\"lastEventDate\":\"2018-01-30T07:15:59.000-02:00\",\"paymentMethod\":{\"type\":\"2\",\"code\":\"202\"},\"paymentLink\":\"https://pagseguro.uol.com.br/checkout/payment/booklet/print.jhtml?c=5317c8d7d8c9d4f102381e730b5c6e212b76ce9079757b388bf3c9d96fef60cf0999cbdae79250f6\",\"grossAmount\":\"5.12\",\"discountAmount\":\"0.00\",\"feeAmount\":\"0.60\",\"netAmount\":\"4.52\",\"extraAmount\":\"0.00\",\"installmentCount\":\"1\",\"itemCount\":\"1\",\"items\":{\"item\":{\"id\":\"001\",\"description\":\"Assinatura SDK SNoob\",\"quantity\":\"1\",\"amount\":\"5.12\"}},\"sender\":{\"name\":\"Noob Master\",\"email\":\"financeiro@sounoob.com.br\",\"phone\":{\"areaCode\":\"11\",\"number\":\"98909084\"}},\"shipping\":{\"address\":{\"street\":\"Av Faria lima\",\"number\":\"103 A\",\"complement\":{},\"district\":\"Vila Olimpia\",\"city\":\"Su00e3o Paulo\",\"state\":\"SP\",\"country\":\"BRA\",\"postalCode\":\"01230000\"},\"type\":\"3\",\"cost\":\"0.00\"}}', 'transaction', '2018-01-30 07:15:58', NULL),
(144, NULL, 7, '68D25AC1-239C-428F-8C4D-B236F3743E87', '02747D-5978E678E657-8994F7AFA063-0B3F70', '{\"date\":\"2018-01-17T14:18:24.000-02:00\",\"code\":\"68D25AC1-239C-428F-8C4D-B236F3743E87\",\"reference\":\"Referencia Qualquer\",\"type\":\"1\",\"status\":\"7\",\"cancellationSource\":\"INTERNAL\",\"lastEventDate\":\"2018-01-30T07:15:59.000-02:00\",\"paymentMethod\":{\"type\":\"2\",\"code\":\"202\"},\"paymentLink\":\"https://pagseguro.uol.com.br/checkout/payment/booklet/print.jhtml?c=214890630b40af97dfc590d93b473e4dca74f035907832e02668d9000f4b5352e12b78bd1abb2c47\",\"grossAmount\":\"5.12\",\"discountAmount\":\"0.00\",\"feeAmount\":\"0.60\",\"netAmount\":\"4.52\",\"extraAmount\":\"0.00\",\"installmentCount\":\"1\",\"itemCount\":\"1\",\"items\":{\"item\":{\"id\":\"001\",\"description\":\"Assinatura SDK SNoob\",\"quantity\":\"1\",\"amount\":\"5.12\"}},\"sender\":{\"name\":\"Noob Master\",\"email\":\"financeiro@sounoob.com.br\",\"phone\":{\"areaCode\":\"11\",\"number\":\"98909084\"}},\"shipping\":{\"address\":{\"street\":\"Av Faria lima\",\"number\":\"103 A\",\"complement\":{},\"district\":\"Vila Olimpia\",\"city\":\"Su00e3o Paulo\",\"state\":\"SP\",\"country\":\"BRA\",\"postalCode\":\"01230000\"},\"type\":\"3\",\"cost\":\"0.00\"}}', 'transaction', '2018-01-30 07:15:59', NULL),
(145, NULL, 7, '4CEB0B34-BB11-4C90-A7B5-ACE8653A26F7', '01B4F3-AF05D005D0CF-7AA4EF1F8BEC-587E5F', '{\"date\":\"2018-01-17T14:00:41.000-02:00\",\"code\":\"4CEB0B34-BB11-4C90-A7B5-ACE8653A26F7\",\"reference\":\"Referencia Qualquer\",\"type\":\"1\",\"status\":\"7\",\"cancellationSource\":\"INTERNAL\",\"lastEventDate\":\"2018-01-30T07:15:59.000-02:00\",\"paymentMethod\":{\"type\":\"2\",\"code\":\"202\"},\"paymentLink\":\"https://pagseguro.uol.com.br/checkout/payment/booklet/print.jhtml?c=61594b0c6eebde4cd8a59ae7ab4a6fa9c18798d6d0f90b5dabdca4cc95b13dda01d87b14f4f795aa\",\"grossAmount\":\"5.12\",\"discountAmount\":\"0.00\",\"feeAmount\":\"0.60\",\"netAmount\":\"4.52\",\"extraAmount\":\"0.00\",\"installmentCount\":\"1\",\"itemCount\":\"1\",\"items\":{\"item\":{\"id\":\"001\",\"description\":\"Assinatura SDK SNoob\",\"quantity\":\"1\",\"amount\":\"5.12\"}},\"sender\":{\"name\":\"Noob Master\",\"email\":\"financeiro@sounoob.com.br\",\"phone\":{\"areaCode\":\"11\",\"number\":\"98909084\"}},\"shipping\":{\"address\":{\"street\":\"Av Faria lima\",\"number\":\"103 A\",\"complement\":{},\"district\":\"Vila Olimpia\",\"city\":\"Su00e3o Paulo\",\"state\":\"SP\",\"country\":\"BRA\",\"postalCode\":\"01230000\"},\"type\":\"3\",\"cost\":\"0.00\"}}', 'transaction', '2018-01-30 07:15:59', NULL),
(170, 54, 7, '863C417D-7A1F-4E70-86EC-F8B810B001C2', '236ED7-20C14FC14F36-57747F1F9A06-F41166', '{\"date\":\"2018-01-19T11:01:29.000-02:00\",\"code\":\"863C417D-7A1F-4E70-86EC-F8B810B001C2\",\"reference\":\"3\",\"type\":\"1\",\"status\":\"7\",\"cancellationSource\":\"INTERNAL\",\"lastEventDate\":\"2018-02-01T08:27:26.000-02:00\",\"paymentMethod\":{\"type\":\"2\",\"code\":\"202\"},\"paymentLink\":\"https://pagseguro.uol.com.br/checkout/payment/booklet/print.jhtml?c=fdc4b441fa58de9f7877c062b44bac68f3fdf58aa2110e397cbe0a26f6841c5166cd1ab11bd097e8\",\"grossAmount\":\"39.90\",\"discountAmount\":\"0.00\",\"feeAmount\":\"1.99\",\"netAmount\":\"37.91\",\"extraAmount\":\"0.00\",\"installmentCount\":\"1\",\"itemCount\":\"1\",\"items\":{\"item\":{\"id\":\"001\",\"description\":\"Jobex Boleto\",\"quantity\":\"1\",\"amount\":\"39.90\"}},\"sender\":{\"name\":\"Gerald Profissional\",\"email\":\"gerald@sandbox.pagseguro.com.br\",\"phone\":{\"areaCode\":\"31\",\"number\":\"992497942\"}},\"shipping\":{\"address\":{\"street\":\"Avenida Olegu00e1rio Maciel\",\"number\":\"742\",\"complement\":{},\"district\":\"Centro\",\"city\":\"Belo Horizonte\",\"state\":\"MG\",\"country\":\"BRA\",\"postalCode\":\"30180110\"},\"type\":\"3\",\"cost\":\"0.00\"}}', 'transaction', '2018-02-01 08:27:25', NULL),
(171, 54, 7, '20DCC044-503A-4FD5-93CA-464D1C94D7D1', '24F9D3-069CAA9CAACB-9AA4DF6F9A6A-714F1D', '{\"date\":\"2018-01-19T11:09:16.000-02:00\",\"code\":\"20DCC044-503A-4FD5-93CA-464D1C94D7D1\",\"reference\":\"3\",\"type\":\"1\",\"status\":\"7\",\"cancellationSource\":\"INTERNAL\",\"lastEventDate\":\"2018-02-01T08:27:26.000-02:00\",\"paymentMethod\":{\"type\":\"2\",\"code\":\"202\"},\"paymentLink\":\"https://pagseguro.uol.com.br/checkout/payment/booklet/print.jhtml?c=616c78fe3048e4ab6bfad2831ef3a9907fbf042e723e5c3f77cafffb684213d4e5be4e6727d04e19\",\"grossAmount\":\"39.90\",\"discountAmount\":\"0.00\",\"feeAmount\":\"1.99\",\"netAmount\":\"37.91\",\"extraAmount\":\"0.00\",\"installmentCount\":\"1\",\"itemCount\":\"1\",\"items\":{\"item\":{\"id\":\"001\",\"description\":\"Jobex Boleto\",\"quantity\":\"1\",\"amount\":\"39.90\"}},\"sender\":{\"name\":\"Gerald Profissional\",\"email\":\"gerald@sandbox.pagseguro.com.br\",\"phone\":{\"areaCode\":\"31\",\"number\":\"992497942\"}},\"shipping\":{\"address\":{\"street\":\"Avenida Olegu00e1rio Maciel\",\"number\":\"742\",\"complement\":{},\"district\":\"Centro\",\"city\":\"Belo Horizonte\",\"state\":\"MG\",\"country\":\"BRA\",\"postalCode\":\"30180110\"},\"type\":\"3\",\"cost\":\"0.00\"}}', 'transaction', '2018-02-01 08:27:25', NULL),
(175, 54, 7, '05F17CCC-1827-49CB-AE24-27D8D975C844', '5A2540-507101710188-B664829FA569-7E77B8', '{\"date\":\"2018-01-24T11:17:05.000-02:00\",\"code\":\"05F17CCC-1827-49CB-AE24-27D8D975C844\",\"reference\":\"7\",\"type\":\"1\",\"status\":\"7\",\"cancellationSource\":\"INTERNAL\",\"lastEventDate\":\"2018-02-06T07:15:48.000-02:00\",\"paymentMethod\":{\"type\":\"2\",\"code\":\"202\"},\"paymentLink\":\"https://pagseguro.uol.com.br/checkout/payment/booklet/print.jhtml?c=7e72d3304d55ace7618252b59c0dc9e26b5a35460e4d17c290794c8144c0016884b59b012ab83a34\",\"grossAmount\":\"10.00\",\"discountAmount\":\"0.00\",\"feeAmount\":\"0.80\",\"netAmount\":\"9.20\",\"extraAmount\":\"0.00\",\"installmentCount\":\"1\",\"itemCount\":\"1\",\"items\":{\"item\":{\"id\":\"001\",\"description\":\"Jobex Boleto\",\"quantity\":\"1\",\"amount\":\"10.00\"}},\"sender\":{\"name\":\"Gerald Profissional\",\"email\":\"gerald@sandbox.pagseguro.com.br\",\"phone\":{\"areaCode\":\"31\",\"number\":\"992497942\"}},\"shipping\":{\"address\":{\"street\":\"Avenida Olegu00e1rio Maciel\",\"number\":\"742\",\"complement\":{},\"district\":\"Centro\",\"city\":\"Belo Horizonte\",\"state\":\"MG\",\"country\":\"BRA\",\"postalCode\":\"30180110\"},\"type\":\"3\",\"cost\":\"0.00\"}}', 'transaction', '2018-02-06 07:15:48', NULL),
(200, 50, 1, '4BF8D39F-88CD-4B8A-9CFD-B7AC9198DD0E', 'F32C74-9DC9C6C9C694-C00441FF9174-257617', '{\"date\":\"2018-02-08T11:39:57.000-02:00\",\"code\":\"4BF8D39F-88CD-4B8A-9CFD-B7AC9198DD0E\",\"reference\":\"7\",\"type\":\"1\",\"status\":\"1\",\"lastEventDate\":\"2018-02-08T11:39:59.000-02:00\",\"paymentMethod\":{\"type\":\"2\",\"code\":\"202\"},\"paymentLink\":\"https://pagseguro.uol.com.br/checkout/payment/booklet/print.jhtml?c=29b2b02addbce2987554803cb4280b0e269123b6713409f6c758681fc100f6dc56b378178f754f7f\",\"grossAmount\":\"5.00\",\"discountAmount\":\"0.00\",\"feeAmount\":\"0.60\",\"netAmount\":\"4.40\",\"extraAmount\":\"0.00\",\"installmentCount\":\"1\",\"itemCount\":\"1\",\"items\":{\"item\":{\"id\":\"001\",\"description\":\"Jobex Boleto\",\"quantity\":\"1\",\"amount\":\"5.00\"}},\"sender\":{\"name\":\"Gerald Nunes\",\"email\":\"gerald@jobex.org\",\"phone\":{\"areaCode\":\"31\",\"number\":\"992497942\"}},\"shipping\":{\"address\":{\"street\":\"Rua Guau00edra\",\"number\":\"416\",\"complement\":{},\"district\":\"Caiu00e7aras\",\"city\":\"Belo Horizonte\",\"state\":\"MG\",\"country\":\"BRA\",\"postalCode\":\"30770480\"},\"type\":\"3\",\"cost\":\"0.00\"}}', 'transaction', '2018-02-08 11:39:59', NULL),
(201, 50, 1, '2D251ABB-9B56-4FF3-9876-FBE3DC2A5CAC', '66B79D-19406E406EF4-1444A5BF8E10-0EDDA4', '{\"date\":\"2018-02-08T20:33:20.000-02:00\",\"code\":\"2D251ABB-9B56-4FF3-9876-FBE3DC2A5CAC\",\"reference\":\"7\",\"type\":\"1\",\"status\":\"1\",\"lastEventDate\":\"2018-02-08T20:33:31.000-02:00\",\"paymentMethod\":{\"type\":\"2\",\"code\":\"202\"},\"paymentLink\":\"https://pagseguro.uol.com.br/checkout/payment/booklet/print.jhtml?c=58dd1ae8eb1c399fdcef3e3a98c17091099b554ac2b1b8d1098c8208053c1e684bfa0a045eff6f1b\",\"grossAmount\":\"5.00\",\"discountAmount\":\"0.00\",\"feeAmount\":\"0.60\",\"netAmount\":\"4.40\",\"extraAmount\":\"0.00\",\"installmentCount\":\"1\",\"itemCount\":\"1\",\"items\":{\"item\":{\"id\":\"001\",\"description\":\"Jobex Boleto\",\"quantity\":\"1\",\"amount\":\"5.00\"}},\"sender\":{\"name\":\"Gerald Nunes\",\"email\":\"gerald@jobex.org\",\"phone\":{\"areaCode\":\"31\",\"number\":\"992497942\"}},\"shipping\":{\"address\":{\"street\":\"Rua Guau00edra\",\"number\":\"416\",\"complement\":{},\"district\":\"Caiu00e7aras\",\"city\":\"Belo Horizonte\",\"state\":\"MG\",\"country\":\"BRA\",\"postalCode\":\"30770480\"},\"type\":\"3\",\"cost\":\"0.00\"}}', 'transaction', '2018-02-08 20:33:30', NULL),
(202, 50, 3, '2D251ABB-9B56-4FF3-9876-FBE3DC2A5CAC', '21F155-4988ED88ED45-8AA446DF93EE-0DF0CC', '{\"date\":\"2018-02-08T20:33:20.000-02:00\",\"code\":\"2D251ABB-9B56-4FF3-9876-FBE3DC2A5CAC\",\"reference\":\"7\",\"type\":\"1\",\"status\":\"3\",\"lastEventDate\":\"2018-02-09T03:45:45.000-02:00\",\"paymentMethod\":{\"type\":\"2\",\"code\":\"202\"},\"paymentLink\":\"https://pagseguro.uol.com.br/checkout/payment/booklet/print.jhtml?c=58dd1ae8eb1c399fdcef3e3a98c17091099b554ac2b1b8d1098c8208053c1e684bfa0a045eff6f1b\",\"grossAmount\":\"5.00\",\"discountAmount\":\"0.00\",\"feeAmount\":\"0.60\",\"netAmount\":\"4.40\",\"extraAmount\":\"0.00\",\"escrowEndDate\":\"2018-03-11T02:45:45.000-03:00\",\"installmentCount\":\"1\",\"itemCount\":\"1\",\"items\":{\"item\":{\"id\":\"001\",\"description\":\"Jobex Boleto\",\"quantity\":\"1\",\"amount\":\"5.00\"}},\"sender\":{\"name\":\"Gerald Nunes\",\"email\":\"gerald@jobex.org\",\"phone\":{\"areaCode\":\"31\",\"number\":\"992497942\"}},\"shipping\":{\"address\":{\"street\":\"Rua Guau00edra\",\"number\":\"416\",\"complement\":{},\"district\":\"Caiu00e7aras\",\"city\":\"Belo Horizonte\",\"state\":\"MG\",\"country\":\"BRA\",\"postalCode\":\"30770480\"},\"type\":\"3\",\"cost\":\"0.00\"}}', 'transaction', '2018-02-09 03:45:45', NULL),
(218, 50, 7, '4BF8D39F-88CD-4B8A-9CFD-B7AC9198DD0E', '03C59E-CD9E1D9E1DC5-1334E4BF8407-FC3EC1', '{\"date\":\"2018-02-08T11:39:57.000-02:00\",\"code\":\"4BF8D39F-88CD-4B8A-9CFD-B7AC9198DD0E\",\"reference\":\"7\",\"type\":\"1\",\"status\":\"7\",\"cancellationSource\":\"INTERNAL\",\"lastEventDate\":\"2018-02-21T07:16:10.000-03:00\",\"paymentMethod\":{\"type\":\"2\",\"code\":\"202\"},\"paymentLink\":\"https://pagseguro.uol.com.br/checkout/payment/booklet/print.jhtml?c=29b2b02addbce2987554803cb4280b0e269123b6713409f6c758681fc100f6dc56b378178f754f7f\",\"grossAmount\":\"5.00\",\"discountAmount\":\"0.00\",\"feeAmount\":\"0.60\",\"netAmount\":\"4.40\",\"extraAmount\":\"0.00\",\"installmentCount\":\"1\",\"itemCount\":\"1\",\"items\":{\"item\":{\"id\":\"001\",\"description\":\"Jobex Boleto\",\"quantity\":\"1\",\"amount\":\"5.00\"}},\"sender\":{\"name\":\"Gerald Nunes\",\"email\":\"gerald@jobex.org\",\"phone\":{\"areaCode\":\"31\",\"number\":\"992497942\"}},\"shipping\":{\"address\":{\"street\":\"Rua Guau00edra\",\"number\":\"416\",\"complement\":{},\"district\":\"Caiu00e7aras\",\"city\":\"Belo Horizonte\",\"state\":\"MG\",\"country\":\"BRA\",\"postalCode\":\"30770480\"},\"type\":\"3\",\"cost\":\"0.00\"}}', 'transaction', '2018-02-21 07:16:16', NULL),
(219, 78, 1, '7CCB85FA-2CB8-41C2-A9B0-E42DFB0ED49C', '6978CC-4F67C867C878-7AA4C13FB207-798A3F', '{\"date\":\"2018-02-23T18:12:14.000-03:00\",\"code\":\"7CCB85FA-2CB8-41C2-A9B0-E42DFB0ED49C\",\"reference\":\"3\",\"type\":\"1\",\"status\":\"1\",\"lastEventDate\":\"2018-02-23T18:12:16.000-03:00\",\"paymentMethod\":{\"type\":\"2\",\"code\":\"202\"},\"paymentLink\":\"https://pagseguro.uol.com.br/checkout/payment/booklet/print.jhtml?c=63b3036ae3cb823944d075313bb7430eb2b19f93dff317cdc59000f43f0681d39872129399cca163\",\"grossAmount\":\"39.90\",\"discountAmount\":\"0.00\",\"feeAmount\":\"1.99\",\"netAmount\":\"37.91\",\"extraAmount\":\"0.00\",\"installmentCount\":\"1\",\"itemCount\":\"1\",\"items\":{\"item\":{\"id\":\"001\",\"description\":\"Jobex Boleto\",\"quantity\":\"1\",\"amount\":\"39.90\"}},\"sender\":{\"name\":\"Dayanne Franu00e7a\",\"email\":\"nanyfoliveira@gmail.com\",\"phone\":{\"areaCode\":\"31\",\"number\":\"319930886\"}},\"shipping\":{\"address\":{\"street\":\"Rua u00cdsis Magalhu00e3es\",\"number\":\"3\",\"complement\":{},\"district\":\"Betu00e2nia\",\"city\":\"Belo Horizonte\",\"state\":\"MG\",\"country\":\"BRA\",\"postalCode\":\"30590255\"},\"type\":\"3\",\"cost\":\"0.00\"}}', 'transaction', '2018-02-23 18:12:17', NULL),
(220, 54, 4, 'A83AC729-F03A-472C-ABD8-7A5FF441ED21', 'FA3B38-5B24AF24AF96-8CC41BBFB8E8-2B8985', '{\"date\":\"2018-01-24T11:20:16.000-02:00\",\"code\":\"A83AC729-F03A-472C-ABD8-7A5FF441ED21\",\"reference\":\"7\",\"type\":\"1\",\"status\":\"4\",\"lastEventDate\":\"2018-02-24T06:40:00.000-03:00\",\"paymentMethod\":{\"type\":\"2\",\"code\":\"202\"},\"paymentLink\":\"https://pagseguro.uol.com.br/checkout/payment/booklet/print.jhtml?c=3bce04a21be4efedb79bb59862c5c3e2917c53c34e0a956192038bd3ba990b82fa1223adc08040b8\",\"grossAmount\":\"10.00\",\"discountAmount\":\"0.00\",\"feeAmount\":\"0.80\",\"netAmount\":\"9.20\",\"extraAmount\":\"0.00\",\"escrowEndDate\":\"2018-02-24T02:37:57.000-03:00\",\"installmentCount\":\"1\",\"itemCount\":\"1\",\"items\":{\"item\":{\"id\":\"001\",\"description\":\"Jobex Boleto\",\"quantity\":\"1\",\"amount\":\"10.00\"}},\"sender\":{\"name\":\"Gerald Profissional\",\"email\":\"gerald@sandbox.pagseguro.com.br\",\"phone\":{\"areaCode\":\"31\",\"number\":\"992497942\"}},\"shipping\":{\"address\":{\"street\":\"Avenida Olegu00e1rio Maciel\",\"number\":\"742\",\"complement\":{},\"district\":\"Centro\",\"city\":\"Belo Horizonte\",\"state\":\"MG\",\"country\":\"BRA\",\"postalCode\":\"30180110\"},\"type\":\"3\",\"cost\":\"0.00\"}}', 'transaction', '2018-02-24 06:54:04', NULL),
(221, 54, 4, '97E24EC9-630B-49E1-AB54-6C27277B9563', 'D9B92F-71997F997F83-1CC450DF8A12-94D54A', '{\"date\":\"2018-01-26T18:02:52.000-02:00\",\"code\":\"97E24EC9-630B-49E1-AB54-6C27277B9563\",\"reference\":\"7\",\"type\":\"1\",\"status\":\"4\",\"lastEventDate\":\"2018-02-26T05:30:15.000-03:00\",\"paymentMethod\":{\"type\":\"2\",\"code\":\"202\"},\"paymentLink\":\"https://pagseguro.uol.com.br/checkout/payment/booklet/print.jhtml?c=0fbf8c2e7a2865cba78712512d5351409d37f1f2af8aa7d2d2040ef2d9ae75103fe1ee41aaed051f\",\"grossAmount\":\"5.00\",\"discountAmount\":\"0.00\",\"feeAmount\":\"0.60\",\"netAmount\":\"4.40\",\"extraAmount\":\"0.00\",\"escrowEndDate\":\"2018-02-26T02:15:17.000-03:00\",\"installmentCount\":\"1\",\"itemCount\":\"1\",\"items\":{\"item\":{\"id\":\"001\",\"description\":\"Jobex Boleto\",\"quantity\":\"1\",\"amount\":\"5.00\"}},\"sender\":{\"name\":\"Gerald Profissional\",\"email\":\"gerald@sandbox.pagseguro.com.br\",\"phone\":{\"areaCode\":\"31\",\"number\":\"992497942\"}},\"shipping\":{\"address\":{\"street\":\"Avenida Olegu00e1rio Maciel\",\"number\":\"742\",\"complement\":{},\"district\":\"Centro\",\"city\":\"Belo Horizonte\",\"state\":\"MG\",\"country\":\"BRA\",\"postalCode\":\"30180110\"},\"type\":\"3\",\"cost\":\"0.00\"}}', 'transaction', '2018-02-26 05:31:14', NULL),
(222, NULL, 4, 'CD71CA73-23E1-472A-93B6-67827A480E66', '9B587E-F3DE86DE863E-D444E2FFA0A4-20855A', '{\"date\":\"2018-01-26T17:16:04.000-02:00\",\"code\":\"CD71CA73-23E1-472A-93B6-67827A480E66\",\"reference\":\"7\",\"type\":\"1\",\"status\":\"4\",\"lastEventDate\":\"2018-02-26T05:31:05.000-03:00\",\"paymentMethod\":{\"type\":\"2\",\"code\":\"202\"},\"paymentLink\":\"https://pagseguro.uol.com.br/checkout/payment/booklet/print.jhtml?c=d0b3d28a7b45a296565e65b125befcbb12dd0347f71266bb56c5743bf8d6877de7d6717f7721ed2e\",\"grossAmount\":\"5.00\",\"discountAmount\":\"0.00\",\"feeAmount\":\"0.60\",\"netAmount\":\"4.40\",\"extraAmount\":\"0.00\",\"escrowEndDate\":\"2018-02-26T02:12:32.000-03:00\",\"installmentCount\":\"1\",\"itemCount\":\"1\",\"items\":{\"item\":{\"id\":\"001\",\"description\":\"Jobex Boleto\",\"quantity\":\"1\",\"amount\":\"5.00\"}},\"sender\":{\"name\":\"Otu00e1vio Lamartine\",\"email\":\"otavio@sandbox.pagseguro.com.br\",\"phone\":{\"areaCode\":\"34\",\"number\":\"349997265\"}},\"shipping\":{\"address\":{\"street\":\"Rua Francisco Barcelos\",\"number\":\"23\",\"complement\":{},\"district\":\"Fabru00edcio\",\"city\":\"Uberaba\",\"state\":\"MG\",\"country\":\"BRA\",\"postalCode\":\"38065330\"},\"type\":\"3\",\"cost\":\"0.00\"}}', 'transaction', '2018-02-26 05:35:19', NULL),
(223, NULL, 4, 'E5F1C30A-FA2F-4021-B119-2158A390A320', '49DCE5-DBD2D1D2D1FD-ADD4FE6FA900-9FB2F7', '{\"date\":\"2018-01-29T18:34:41.000-02:00\",\"code\":\"E5F1C30A-FA2F-4021-B119-2158A390A320\",\"reference\":\"7\",\"type\":\"1\",\"status\":\"4\",\"lastEventDate\":\"2018-03-01T05:54:41.000-03:00\",\"paymentMethod\":{\"type\":\"2\",\"code\":\"202\"},\"paymentLink\":\"https://pagseguro.uol.com.br/checkout/payment/booklet/print.jhtml?c=1f23836d183dd4f1d904e91c50472161ceb660c7f6404e3fe1714ce77b8c420eef3f41e726270b26\",\"grossAmount\":\"5.00\",\"discountAmount\":\"0.00\",\"feeAmount\":\"0.60\",\"netAmount\":\"4.40\",\"extraAmount\":\"0.00\",\"escrowEndDate\":\"2018-03-01T03:22:50.000-03:00\",\"installmentCount\":\"1\",\"itemCount\":\"1\",\"items\":{\"item\":{\"id\":\"001\",\"description\":\"Jobex Boleto\",\"quantity\":\"1\",\"amount\":\"5.00\"}},\"sender\":{\"name\":\"Otu00e1vio Lamartine\",\"email\":\"otavio@sandbox.pagseguro.com.br\",\"phone\":{\"areaCode\":\"34\",\"number\":\"349997265\"}},\"shipping\":{\"address\":{\"street\":\"Rua Francisco Barcelos\",\"number\":\"123\",\"complement\":{},\"district\":\"Fabru00edcio\",\"city\":\"Uberaba\",\"state\":\"MG\",\"country\":\"BRA\",\"postalCode\":\"38065330\"},\"type\":\"3\",\"cost\":\"0.00\"}}', 'transaction', '2018-03-01 06:04:34', NULL),
(224, 50, 1, '09B6B135-0D91-4005-8977-C0B40D7192C5', 'B78B3A-75BB29BB293B-D444B2CF923C-048BDF', '{\"date\":\"2018-03-05T22:55:55.000-03:00\",\"code\":\"09B6B135-0D91-4005-8977-C0B40D7192C5\",\"reference\":\"3\",\"type\":\"1\",\"status\":\"1\",\"lastEventDate\":\"2018-03-05T22:55:56.000-03:00\",\"paymentMethod\":{\"type\":\"2\",\"code\":\"202\"},\"paymentLink\":\"https://pagseguro.uol.com.br/checkout/payment/booklet/print.jhtml?c=b4622195bfccf09558447a61b223e37d7aca406b919df099886a9d8f6b7645feb60c51e9cf9459d9\",\"grossAmount\":\"39.00\",\"discountAmount\":\"0.00\",\"feeAmount\":\"1.96\",\"netAmount\":\"37.04\",\"extraAmount\":\"0.00\",\"installmentCount\":\"1\",\"itemCount\":\"1\",\"items\":{\"item\":{\"id\":\"001\",\"description\":\"Jobex Boleto\",\"quantity\":\"1\",\"amount\":\"39.00\"}},\"sender\":{\"name\":\"Gerald Nunes\",\"email\":\"gerald@jobex.org\",\"phone\":{\"areaCode\":\"31\",\"number\":\"992497942\"}},\"shipping\":{\"address\":{\"street\":\"Rua Guau00edra\",\"number\":\"416\",\"complement\":{},\"district\":\"Caiu00e7aras\",\"city\":\"Belo Horizonte\",\"state\":\"MG\",\"country\":\"BRA\",\"postalCode\":\"30770480\"},\"type\":\"3\",\"cost\":\"0.00\"}}', 'transaction', '2018-03-05 22:55:59', NULL),
(225, 78, 7, '7CCB85FA-2CB8-41C2-A9B0-E42DFB0ED49C', '5F5910-C85273527371-0DD4E6AF9680-61278F', '{\"date\":\"2018-02-23T18:12:14.000-03:00\",\"code\":\"7CCB85FA-2CB8-41C2-A9B0-E42DFB0ED49C\",\"reference\":\"3\",\"type\":\"1\",\"status\":\"7\",\"cancellationSource\":\"INTERNAL\",\"lastEventDate\":\"2018-03-08T08:31:30.000-03:00\",\"paymentMethod\":{\"type\":\"2\",\"code\":\"202\"},\"paymentLink\":\"https://pagseguro.uol.com.br/checkout/payment/booklet/print.jhtml?c=63b3036ae3cb823944d075313bb7430eb2b19f93dff317cdc59000f43f0681d39872129399cca163\",\"grossAmount\":\"39.90\",\"discountAmount\":\"0.00\",\"feeAmount\":\"1.99\",\"netAmount\":\"37.91\",\"extraAmount\":\"0.00\",\"installmentCount\":\"1\",\"itemCount\":\"1\",\"items\":{\"item\":{\"id\":\"001\",\"description\":\"Jobex Boleto\",\"quantity\":\"1\",\"amount\":\"39.90\"}},\"sender\":{\"name\":\"Dayanne Franu00e7a\",\"email\":\"nanyfoliveira@gmail.com\",\"phone\":{\"areaCode\":\"31\",\"number\":\"319930886\"}},\"shipping\":{\"address\":{\"street\":\"Rua u00cdsis Magalhu00e3es\",\"number\":\"3\",\"complement\":{},\"district\":\"Betu00e2nia\",\"city\":\"Belo Horizonte\",\"state\":\"MG\",\"country\":\"BRA\",\"postalCode\":\"30590255\"},\"type\":\"3\",\"cost\":\"0.00\"}}', 'transaction', '2018-03-08 08:31:36', NULL),
(226, NULL, 4, '13DFF071-A0A3-47D0-BEB6-0B54A1B57A66', '850092-8085AD85AD4D-B3349E8FBB94-2CB304', '{\"date\":\"2018-02-06T11:33:42.000-02:00\",\"code\":\"13DFF071-A0A3-47D0-BEB6-0B54A1B57A66\",\"type\":\"1\",\"status\":\"4\",\"lastEventDate\":\"2018-03-08T10:36:10.000-03:00\",\"paymentMethod\":{\"type\":\"1\",\"code\":\"101\"},\"grossAmount\":\"5.00\",\"discountAmount\":\"0.00\",\"feeAmount\":\"0.60\",\"netAmount\":\"4.40\",\"extraAmount\":\"0.00\",\"escrowEndDate\":\"2018-03-08T10:33:50.000-03:00\",\"installmentCount\":\"1\",\"itemCount\":\"1\",\"items\":{\"item\":{\"id\":\"7\",\"description\":\"plano teste real / R$ 5\",\"quantity\":\"1\",\"amount\":\"5.00\"}},\"sender\":{\"name\":\"Otu00e1vio Lamartine\",\"email\":\"otavio@sandbox.pagseguro.com.br\",\"phone\":{\"areaCode\":\"34\",\"number\":\"999726524\"}}}', 'transaction', '2018-03-08 10:36:12', NULL),
(228, 50, 4, '2D251ABB-9B56-4FF3-9876-FBE3DC2A5CAC', '06DBEF-1AB462B462A6-2DD48E3FBE85-10124F', '{\"date\":\"2018-02-08T20:33:20.000-02:00\",\"code\":\"2D251ABB-9B56-4FF3-9876-FBE3DC2A5CAC\",\"reference\":\"7\",\"type\":\"1\",\"status\":\"4\",\"lastEventDate\":\"2018-03-11T08:49:36.000-03:00\",\"paymentMethod\":{\"type\":\"2\",\"code\":\"202\"},\"paymentLink\":\"https://pagseguro.uol.com.br/checkout/payment/booklet/print.jhtml?c=58dd1ae8eb1c399fdcef3e3a98c17091099b554ac2b1b8d1098c8208053c1e684bfa0a045eff6f1b\",\"grossAmount\":\"5.00\",\"discountAmount\":\"0.00\",\"feeAmount\":\"0.60\",\"netAmount\":\"4.40\",\"extraAmount\":\"0.00\",\"escrowEndDate\":\"2018-03-11T02:45:45.000-03:00\",\"installmentCount\":\"1\",\"itemCount\":\"1\",\"items\":{\"item\":{\"id\":\"001\",\"description\":\"Jobex Boleto\",\"quantity\":\"1\",\"amount\":\"5.00\"}},\"sender\":{\"name\":\"Gerald Nunes\",\"email\":\"gerald@jobex.org\",\"phone\":{\"areaCode\":\"31\",\"number\":\"992497942\"}},\"shipping\":{\"address\":{\"street\":\"Rua Guau00edra\",\"number\":\"416\",\"complement\":{},\"district\":\"Caiu00e7aras\",\"city\":\"Belo Horizonte\",\"state\":\"MG\",\"country\":\"BRA\",\"postalCode\":\"30770480\"},\"type\":\"3\",\"cost\":\"0.00\"}}', 'transaction', '2018-03-11 08:56:17', NULL),
(229, 55, 1, '80DB1C05-F2CF-4D83-AFCB-1D9133EFAD06', 'E35CE7-F1DFA3DFA3DD-3554B97F92B4-608463', '{\"date\":\"2018-03-13T15:45:53.000-03:00\",\"code\":\"80DB1C05-F2CF-4D83-AFCB-1D9133EFAD06\",\"reference\":\"3\",\"type\":\"1\",\"status\":\"1\",\"lastEventDate\":\"2018-03-13T15:45:55.000-03:00\",\"paymentMethod\":{\"type\":\"2\",\"code\":\"202\"},\"paymentLink\":\"https://pagseguro.uol.com.br/checkout/payment/booklet/print.jhtml?c=8efdb8963be857b9bb0d3c815bbc0a76f5730fc9ba654dffd613881e37ba71a00b4405ba4df2bb47\",\"grossAmount\":\"39.00\",\"discountAmount\":\"0.00\",\"feeAmount\":\"1.96\",\"netAmount\":\"37.04\",\"extraAmount\":\"0.00\",\"installmentCount\":\"1\",\"itemCount\":\"1\",\"items\":{\"item\":{\"id\":\"001\",\"description\":\"Jobex Boleto\",\"quantity\":\"1\",\"amount\":\"39.00\"}},\"sender\":{\"name\":\"Otu00e1vio Larmartine\",\"email\":\"otaviollneto@gmail.com\",\"phone\":{\"areaCode\":\"34\",\"number\":\"999726524\"}},\"shipping\":{\"address\":{\"street\":\"Rua\",\"number\":\"123\",\"complement\":{},\"district\":\"Hshd\",\"city\":\"Uberaba\",\"state\":\"MG\",\"country\":\"BRA\",\"postalCode\":\"38065000\"},\"type\":\"3\",\"cost\":\"0.00\"}}', 'transaction', '2018-03-13 15:45:58', NULL),
(230, 50, 7, '09B6B135-0D91-4005-8977-C0B40D7192C5', 'D55C94-3A9FDD9FDD7C-BFF49A5FA2F9-89B8AF', '{\"date\":\"2018-03-05T22:55:55.000-03:00\",\"code\":\"09B6B135-0D91-4005-8977-C0B40D7192C5\",\"reference\":\"3\",\"type\":\"1\",\"status\":\"7\",\"cancellationSource\":\"INTERNAL\",\"lastEventDate\":\"2018-03-18T08:51:01.000-03:00\",\"paymentMethod\":{\"type\":\"2\",\"code\":\"202\"},\"paymentLink\":\"https://pagseguro.uol.com.br/checkout/payment/booklet/print.jhtml?c=b4622195bfccf09558447a61b223e37d7aca406b919df099886a9d8f6b7645feb60c51e9cf9459d9\",\"grossAmount\":\"39.00\",\"discountAmount\":\"0.00\",\"feeAmount\":\"1.96\",\"netAmount\":\"37.04\",\"extraAmount\":\"0.00\",\"installmentCount\":\"1\",\"itemCount\":\"1\",\"items\":{\"item\":{\"id\":\"001\",\"description\":\"Jobex Boleto\",\"quantity\":\"1\",\"amount\":\"39.00\"}},\"sender\":{\"name\":\"Gerald Nunes\",\"email\":\"gerald@jobex.org\",\"phone\":{\"areaCode\":\"31\",\"number\":\"992497942\"}},\"shipping\":{\"address\":{\"street\":\"Rua Guau00edra\",\"number\":\"416\",\"complement\":{},\"district\":\"Caiu00e7aras\",\"city\":\"Belo Horizonte\",\"state\":\"MG\",\"country\":\"BRA\",\"postalCode\":\"30770480\"},\"type\":\"3\",\"cost\":\"0.00\"}}', 'transaction', '2018-03-18 08:55:26', NULL),
(231, 55, 7, '80DB1C05-F2CF-4D83-AFCB-1D9133EFAD06', '37AA3C-E17EC27EC2E2-40049FEF8287-192032', '{\"date\":\"2018-03-13T15:45:53.000-03:00\",\"code\":\"80DB1C05-F2CF-4D83-AFCB-1D9133EFAD06\",\"reference\":\"3\",\"type\":\"1\",\"status\":\"7\",\"cancellationSource\":\"INTERNAL\",\"lastEventDate\":\"2018-03-26T08:07:53.000-03:00\",\"paymentMethod\":{\"type\":\"2\",\"code\":\"202\"},\"paymentLink\":\"https://pagseguro.uol.com.br/checkout/payment/booklet/print.jhtml?c=8efdb8963be857b9bb0d3c815bbc0a76f5730fc9ba654dffd613881e37ba71a00b4405ba4df2bb47\",\"grossAmount\":\"39.00\",\"discountAmount\":\"0.00\",\"feeAmount\":\"1.96\",\"netAmount\":\"37.04\",\"extraAmount\":\"0.00\",\"installmentCount\":\"1\",\"itemCount\":\"1\",\"items\":{\"item\":{\"id\":\"001\",\"description\":\"Jobex Boleto\",\"quantity\":\"1\",\"amount\":\"39.00\"}},\"sender\":{\"name\":\"Otu00e1vio Larmartine\",\"email\":\"otaviollneto@gmail.com\",\"phone\":{\"areaCode\":\"34\",\"number\":\"999726524\"}},\"shipping\":{\"address\":{\"street\":\"Rua\",\"number\":\"123\",\"complement\":{},\"district\":\"Hshd\",\"city\":\"Uberaba\",\"state\":\"MG\",\"country\":\"BRA\",\"postalCode\":\"38065000\"},\"type\":\"3\",\"cost\":\"0.00\"}}', 'transaction', '2018-03-26 08:07:53', NULL),
(232, 118, 1, '6C31083F-A3B8-4B5B-83AC-9F916B352036', '3F7927-75727B727B41-2DD420BFA21E-8BF946', '{\"date\":\"2018-04-01T01:46:23.000-03:00\",\"code\":\"6C31083F-A3B8-4B5B-83AC-9F916B352036\",\"reference\":\"3\",\"type\":\"1\",\"status\":\"1\",\"lastEventDate\":\"2018-04-01T01:46:32.000-03:00\",\"paymentMethod\":{\"type\":\"2\",\"code\":\"202\"},\"paymentLink\":\"https://pagseguro.uol.com.br/checkout/payment/booklet/print.jhtml?c=6868ec1e843aa8be1efbab5fe35eb3d4bc82fae41c7129d0c21f1c156a936b50983f8c32c13572fb\",\"grossAmount\":\"39.00\",\"discountAmount\":\"0.00\",\"feeAmount\":\"1.96\",\"netAmount\":\"37.04\",\"extraAmount\":\"0.00\",\"installmentCount\":\"1\",\"itemCount\":\"1\",\"items\":{\"item\":{\"id\":\"001\",\"description\":\"Jobex Boleto\",\"quantity\":\"1\",\"amount\":\"39.00\"}},\"sender\":{\"name\":\"Luciana Alvarez\",\"email\":\"lucianaalvarez@icloud.com\",\"phone\":{\"areaCode\":\"11\",\"number\":\"996781983\"}},\"shipping\":{\"address\":{\"street\":\"Rua Girassol\",\"number\":\"510\",\"complement\":{},\"district\":\"Vila Madalena\",\"city\":\"Su00e3o Paulo\",\"state\":\"SP\",\"country\":\"BRA\",\"postalCode\":\"05433001\"},\"type\":\"3\",\"cost\":\"0.00\"}}', 'transaction', '2018-04-01 01:46:37', NULL),
(233, 118, 1, 'ADED26A0-7A70-4B3B-B9BC-839488D5D2B2', 'CEADF9-2C57C657C6AE-D9947F8FA2B0-C2F8C0', '{\"date\":\"2018-04-01T01:48:13.000-03:00\",\"code\":\"ADED26A0-7A70-4B3B-B9BC-839488D5D2B2\",\"reference\":\"3\",\"type\":\"1\",\"status\":\"1\",\"lastEventDate\":\"2018-04-01T01:48:15.000-03:00\",\"paymentMethod\":{\"type\":\"2\",\"code\":\"202\"},\"paymentLink\":\"https://pagseguro.uol.com.br/checkout/payment/booklet/print.jhtml?c=e477f247e35e4f46cfe6cf9835c56a10c59a81b74177a47f4c776cbebec04adebb6a0a3ae6da62ba\",\"grossAmount\":\"39.00\",\"discountAmount\":\"0.00\",\"feeAmount\":\"1.96\",\"netAmount\":\"37.04\",\"extraAmount\":\"0.00\",\"installmentCount\":\"1\",\"itemCount\":\"1\",\"items\":{\"item\":{\"id\":\"001\",\"description\":\"Jobex Boleto\",\"quantity\":\"1\",\"amount\":\"39.00\"}},\"sender\":{\"name\":\"Luciana Alvarez\",\"email\":\"lucianaalvarez@icloud.com\",\"phone\":{\"areaCode\":\"11\",\"number\":\"996781983\"}},\"shipping\":{\"address\":{\"street\":\"Rua Girassol\",\"number\":\"510\",\"complement\":{},\"district\":\"Vila Madalena\",\"city\":\"Su00e3o PauloL\",\"state\":\"SP\",\"country\":\"BRA\",\"postalCode\":\"05433001\"},\"type\":\"3\",\"cost\":\"0.00\"}}', 'transaction', '2018-04-01 01:48:18', NULL),
(234, 118, 1, 'F6A0FEE4-1FE0-4AAF-970E-CA27CF8573AA', '479926-3DC028C028B1-CBB4608FBEB8-C3173E', '{\"date\":\"2018-04-01T01:48:43.000-03:00\",\"code\":\"F6A0FEE4-1FE0-4AAF-970E-CA27CF8573AA\",\"reference\":\"3\",\"type\":\"1\",\"status\":\"1\",\"lastEventDate\":\"2018-04-01T01:48:45.000-03:00\",\"paymentMethod\":{\"type\":\"2\",\"code\":\"202\"},\"paymentLink\":\"https://pagseguro.uol.com.br/checkout/payment/booklet/print.jhtml?c=026e978679c78e1d614c10598917e74cb761faa510e04f7a4c598d019517c5e736612eebda10848c\",\"grossAmount\":\"39.00\",\"discountAmount\":\"0.00\",\"feeAmount\":\"1.96\",\"netAmount\":\"37.04\",\"extraAmount\":\"0.00\",\"installmentCount\":\"1\",\"itemCount\":\"1\",\"items\":{\"item\":{\"id\":\"001\",\"description\":\"Jobex Boleto\",\"quantity\":\"1\",\"amount\":\"39.00\"}},\"sender\":{\"name\":\"Luciana Alvarez\",\"email\":\"lucianaalvarez@icloud.com\",\"phone\":{\"areaCode\":\"11\",\"number\":\"996781983\"}},\"shipping\":{\"address\":{\"street\":\"Rua Girassol\",\"number\":\"510\",\"complement\":{},\"district\":\"Vila Madalena\",\"city\":\"Su00e3o PauloL\",\"state\":\"SP\",\"country\":\"BRA\",\"postalCode\":\"05433001\"},\"type\":\"3\",\"cost\":\"0.00\"}}', 'transaction', '2018-04-01 01:48:48', NULL),
(235, 118, 1, 'EAB8A10C-FDBE-421A-B403-5BF6E84E7F55', 'C0D8F5-77138D138DC0-F004E78FA4DC-54A5FE', '{\"date\":\"2018-04-01T01:49:15.000-03:00\",\"code\":\"EAB8A10C-FDBE-421A-B403-5BF6E84E7F55\",\"reference\":\"3\",\"type\":\"1\",\"status\":\"1\",\"lastEventDate\":\"2018-04-01T01:49:17.000-03:00\",\"paymentMethod\":{\"type\":\"2\",\"code\":\"202\"},\"paymentLink\":\"https://pagseguro.uol.com.br/checkout/payment/booklet/print.jhtml?c=055289c7139ec4673eee15696a7f3f8ca33b60be2c1394491ab028f5fbcf51f7b08f94b04628abaf\",\"grossAmount\":\"39.00\",\"discountAmount\":\"0.00\",\"feeAmount\":\"1.96\",\"netAmount\":\"37.04\",\"extraAmount\":\"0.00\",\"installmentCount\":\"1\",\"itemCount\":\"1\",\"items\":{\"item\":{\"id\":\"001\",\"description\":\"Jobex Boleto\",\"quantity\":\"1\",\"amount\":\"39.00\"}},\"sender\":{\"name\":\"Luciana Alvarez\",\"email\":\"lucianaalvarez@icloud.com\",\"phone\":{\"areaCode\":\"11\",\"number\":\"996781983\"}},\"shipping\":{\"address\":{\"street\":\"Rua Girassol\",\"number\":\"510\",\"complement\":{},\"district\":\"Vila Madalena\",\"city\":\"Su00e3o PauloL\",\"state\":\"SP\",\"country\":\"BRA\",\"postalCode\":\"05433001\"},\"type\":\"3\",\"cost\":\"0.00\"}}', 'transaction', '2018-04-01 01:49:20', NULL),
(236, 119, 1, 'F91D2D15-D163-4A84-BE68-23B38A9D4B3E', '67A40A-3E3FEE3FEE33-CCC4697F83EA-8411A1', '{\"date\":\"2018-04-01T09:03:35.000-03:00\",\"code\":\"F91D2D15-D163-4A84-BE68-23B38A9D4B3E\",\"reference\":\"3\",\"type\":\"1\",\"status\":\"1\",\"lastEventDate\":\"2018-04-01T09:03:37.000-03:00\",\"paymentMethod\":{\"type\":\"2\",\"code\":\"202\"},\"paymentLink\":\"https://pagseguro.uol.com.br/checkout/payment/booklet/print.jhtml?c=6cf4040f865e44aa98cd594d3c4f62d1a721b152679ed4f7a7f01f521af29598411d080e80475091\",\"grossAmount\":\"39.00\",\"discountAmount\":\"0.00\",\"feeAmount\":\"1.96\",\"netAmount\":\"37.04\",\"extraAmount\":\"0.00\",\"installmentCount\":\"1\",\"itemCount\":\"1\",\"items\":{\"item\":{\"id\":\"001\",\"description\":\"Jobex Boleto\",\"quantity\":\"1\",\"amount\":\"39.00\"}},\"sender\":{\"name\":\"Michel Teixeira\",\"email\":\"teixeira.michel0@gmail.com\",\"phone\":{\"areaCode\":\"11\",\"number\":\"976499064\"}},\"shipping\":{\"address\":{\"street\":\"Rua Anhembi\",\"number\":\"105\",\"complement\":{},\"district\":\"Jardim Caiubi\",\"city\":\"Itaquaquecetuba\",\"state\":\"SP\",\"country\":\"BRA\",\"postalCode\":\"08588530\"},\"type\":\"3\",\"cost\":\"0.00\"}}', 'transaction', '2018-04-01 09:03:41', NULL),
(237, 118, 7, 'ADED26A0-7A70-4B3B-B9BC-839488D5D2B2', '8EA414-CE7FE97FE986-F334550F9AB4-823A4E', '{\"date\":\"2018-04-01T01:48:13.000-03:00\",\"code\":\"ADED26A0-7A70-4B3B-B9BC-839488D5D2B2\",\"reference\":\"3\",\"type\":\"1\",\"status\":\"7\",\"cancellationSource\":\"INTERNAL\",\"lastEventDate\":\"2018-04-14T10:40:16.000-03:00\",\"paymentMethod\":{\"type\":\"2\",\"code\":\"202\"},\"paymentLink\":\"https://pagseguro.uol.com.br/checkout/payment/booklet/print.jhtml?c=e477f247e35e4f46cfe6cf9835c56a10c59a81b74177a47f4c776cbebec04adebb6a0a3ae6da62ba\",\"grossAmount\":\"39.00\",\"discountAmount\":\"0.00\",\"feeAmount\":\"1.96\",\"netAmount\":\"37.04\",\"extraAmount\":\"0.00\",\"installmentCount\":\"1\",\"itemCount\":\"1\",\"items\":{\"item\":{\"id\":\"001\",\"description\":\"Jobex Boleto\",\"quantity\":\"1\",\"amount\":\"39.00\"}},\"sender\":{\"name\":\"Luciana Alvarez\",\"email\":\"lucianaalvarez@icloud.com\",\"phone\":{\"areaCode\":\"11\",\"number\":\"996781983\"}},\"shipping\":{\"address\":{\"street\":\"Rua Girassol\",\"number\":\"510\",\"complement\":{},\"district\":\"Vila Madalena\",\"city\":\"Su00e3o PauloL\",\"state\":\"SP\",\"country\":\"BRA\",\"postalCode\":\"05433001\"},\"type\":\"3\",\"cost\":\"0.00\"}}', 'transaction', '2018-04-14 10:40:15', NULL);
INSERT INTO `tb_pgseguro_notification` (`id`, `id_user`, `status`, `code`, `notificationCode`, `notificationReceiver`, `notificationType`, `data_cad`, `data_del`) VALUES
(238, 118, 7, 'F6A0FEE4-1FE0-4AAF-970E-CA27CF8573AA', '9214E5-C26758675823-15548AAFB124-B1CD25', '{\"date\":\"2018-04-01T01:48:43.000-03:00\",\"code\":\"F6A0FEE4-1FE0-4AAF-970E-CA27CF8573AA\",\"reference\":\"3\",\"type\":\"1\",\"status\":\"7\",\"cancellationSource\":\"INTERNAL\",\"lastEventDate\":\"2018-04-14T10:40:17.000-03:00\",\"paymentMethod\":{\"type\":\"2\",\"code\":\"202\"},\"paymentLink\":\"https://pagseguro.uol.com.br/checkout/payment/booklet/print.jhtml?c=026e978679c78e1d614c10598917e74cb761faa510e04f7a4c598d019517c5e736612eebda10848c\",\"grossAmount\":\"39.00\",\"discountAmount\":\"0.00\",\"feeAmount\":\"1.96\",\"netAmount\":\"37.04\",\"extraAmount\":\"0.00\",\"installmentCount\":\"1\",\"itemCount\":\"1\",\"items\":{\"item\":{\"id\":\"001\",\"description\":\"Jobex Boleto\",\"quantity\":\"1\",\"amount\":\"39.00\"}},\"sender\":{\"name\":\"Luciana Alvarez\",\"email\":\"lucianaalvarez@icloud.com\",\"phone\":{\"areaCode\":\"11\",\"number\":\"996781983\"}},\"shipping\":{\"address\":{\"street\":\"Rua Girassol\",\"number\":\"510\",\"complement\":{},\"district\":\"Vila Madalena\",\"city\":\"Su00e3o PauloL\",\"state\":\"SP\",\"country\":\"BRA\",\"postalCode\":\"05433001\"},\"type\":\"3\",\"cost\":\"0.00\"}}', 'transaction', '2018-04-14 10:40:16', NULL),
(239, 118, 7, 'EAB8A10C-FDBE-421A-B403-5BF6E84E7F55', '962019-7C7F177F1797-52247F1F8D39-DAC986', '{\"date\":\"2018-04-01T01:49:15.000-03:00\",\"code\":\"EAB8A10C-FDBE-421A-B403-5BF6E84E7F55\",\"reference\":\"3\",\"type\":\"1\",\"status\":\"7\",\"cancellationSource\":\"INTERNAL\",\"lastEventDate\":\"2018-04-14T10:40:18.000-03:00\",\"paymentMethod\":{\"type\":\"2\",\"code\":\"202\"},\"paymentLink\":\"https://pagseguro.uol.com.br/checkout/payment/booklet/print.jhtml?c=055289c7139ec4673eee15696a7f3f8ca33b60be2c1394491ab028f5fbcf51f7b08f94b04628abaf\",\"grossAmount\":\"39.00\",\"discountAmount\":\"0.00\",\"feeAmount\":\"1.96\",\"netAmount\":\"37.04\",\"extraAmount\":\"0.00\",\"installmentCount\":\"1\",\"itemCount\":\"1\",\"items\":{\"item\":{\"id\":\"001\",\"description\":\"Jobex Boleto\",\"quantity\":\"1\",\"amount\":\"39.00\"}},\"sender\":{\"name\":\"Luciana Alvarez\",\"email\":\"lucianaalvarez@icloud.com\",\"phone\":{\"areaCode\":\"11\",\"number\":\"996781983\"}},\"shipping\":{\"address\":{\"street\":\"Rua Girassol\",\"number\":\"510\",\"complement\":{},\"district\":\"Vila Madalena\",\"city\":\"Su00e3o PauloL\",\"state\":\"SP\",\"country\":\"BRA\",\"postalCode\":\"05433001\"},\"type\":\"3\",\"cost\":\"0.00\"}}', 'transaction', '2018-04-14 10:40:19', NULL),
(240, 118, 7, '6C31083F-A3B8-4B5B-83AC-9F916B352036', '893CB3-411CD81CD865-7444A18FAA73-C33B5D', '{\"date\":\"2018-04-01T01:46:23.000-03:00\",\"code\":\"6C31083F-A3B8-4B5B-83AC-9F916B352036\",\"reference\":\"3\",\"type\":\"1\",\"status\":\"7\",\"cancellationSource\":\"INTERNAL\",\"lastEventDate\":\"2018-04-14T10:40:14.000-03:00\",\"paymentMethod\":{\"type\":\"2\",\"code\":\"202\"},\"paymentLink\":\"https://pagseguro.uol.com.br/checkout/payment/booklet/print.jhtml?c=6868ec1e843aa8be1efbab5fe35eb3d4bc82fae41c7129d0c21f1c156a936b50983f8c32c13572fb\",\"grossAmount\":\"39.00\",\"discountAmount\":\"0.00\",\"feeAmount\":\"1.96\",\"netAmount\":\"37.04\",\"extraAmount\":\"0.00\",\"installmentCount\":\"1\",\"itemCount\":\"1\",\"items\":{\"item\":{\"id\":\"001\",\"description\":\"Jobex Boleto\",\"quantity\":\"1\",\"amount\":\"39.00\"}},\"sender\":{\"name\":\"Luciana Alvarez\",\"email\":\"lucianaalvarez@icloud.com\",\"phone\":{\"areaCode\":\"11\",\"number\":\"996781983\"}},\"shipping\":{\"address\":{\"street\":\"Rua Girassol\",\"number\":\"510\",\"complement\":{},\"district\":\"Vila Madalena\",\"city\":\"Su00e3o Paulo\",\"state\":\"SP\",\"country\":\"BRA\",\"postalCode\":\"05433001\"},\"type\":\"3\",\"cost\":\"0.00\"}}', 'transaction', '2018-04-14 10:40:21', NULL),
(241, 119, 7, 'F91D2D15-D163-4A84-BE68-23B38A9D4B3E', '99E588-F3B47FB47FB9-C554D6BF9579-39F1D0', '{\"date\":\"2018-04-01T09:03:35.000-03:00\",\"code\":\"F91D2D15-D163-4A84-BE68-23B38A9D4B3E\",\"reference\":\"3\",\"type\":\"1\",\"status\":\"7\",\"cancellationSource\":\"INTERNAL\",\"lastEventDate\":\"2018-04-14T10:45:46.000-03:00\",\"paymentMethod\":{\"type\":\"2\",\"code\":\"202\"},\"paymentLink\":\"https://pagseguro.uol.com.br/checkout/payment/booklet/print.jhtml?c=6cf4040f865e44aa98cd594d3c4f62d1a721b152679ed4f7a7f01f521af29598411d080e80475091\",\"grossAmount\":\"39.00\",\"discountAmount\":\"0.00\",\"feeAmount\":\"1.96\",\"netAmount\":\"37.04\",\"extraAmount\":\"0.00\",\"installmentCount\":\"1\",\"itemCount\":\"1\",\"items\":{\"item\":{\"id\":\"001\",\"description\":\"Jobex Boleto\",\"quantity\":\"1\",\"amount\":\"39.00\"}},\"sender\":{\"name\":\"Michel Teixeira\",\"email\":\"teixeira.michel0@gmail.com\",\"phone\":{\"areaCode\":\"11\",\"number\":\"976499064\"}},\"shipping\":{\"address\":{\"street\":\"Rua Anhembi\",\"number\":\"105\",\"complement\":{},\"district\":\"Jardim Caiubi\",\"city\":\"Itaquaquecetuba\",\"state\":\"SP\",\"country\":\"BRA\",\"postalCode\":\"08588530\"},\"type\":\"3\",\"cost\":\"0.00\"}}', 'transaction', '2018-04-14 10:45:45', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_pgseguro_transactions`
--

CREATE TABLE `tb_pgseguro_transactions` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `param_sent` text,
  `code` varchar(50) NOT NULL,
  `param_received` text,
  `param_received_error` text,
  `data_cad` datetime NOT NULL,
  `data_del` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `tb_pgseguro_transactions`
--

INSERT INTO `tb_pgseguro_transactions` (`id`, `id_user`, `param_sent`, `code`, `param_received`, `param_received_error`, `data_cad`, `data_del`) VALUES
(120, 54, '{\"creditCardToken\":\"cbc385db917442d6988a2451d08f068f\",\"creditCardHolderName\":\"Murlo Geraldo\",\"senderName\":\"Gerald Profissional\",\"senderEmail\":\"gerald@sandbox.pagseguro.com.br\",\"senderPhone\":\"991910501\",\"senderHash\":\"\",\"senderCPF\":\"11416146695\",\"billingAddressPostalCode\":\"38108000\",\"senderAreaCode\":\"34\",\"billingAddressStreet\":\"Rua Padre Zeferino\",\"billingAddressNumber\":\"12\",\"billingAddressComplement\":\"cs\",\"billingAddressDistrict\":\"Fabru00edcio\",\"billingAddressCity\":\"Delta\",\"billingAddressState\":\"MG\",\"itemDescription1\":\"1 Mu00eas Pelo Preu00e7o adequado / R$ 19.9\",\"itemId1\":\"3\",\"itemAmount1\":\"19.90\",\"billingAddressCountry\":\"Brasil\"}', 'B3875233-C2E1-4719-84F2-BEDD099D08EF', '{\"date\":\"2017-12-15T16:57:52.000-02:00\",\"code\":\"B3875233-C2E1-4719-84F2-BEDD099D08EF\",\"type\":\"1\",\"status\":\"1\",\"lastEventDate\":\"2017-12-15T16:57:52.000-02:00\",\"paymentMethod\":{\"type\":\"1\",\"code\":\"101\"},\"grossAmount\":\"19.90\",\"discountAmount\":\"0.00\",\"feeAmount\":\"1.19\",\"netAmount\":\"18.71\",\"extraAmount\":\"0.00\",\"installmentCount\":\"1\",\"itemCount\":\"1\",\"items\":{\"item\":{\"id\":\"3\",\"description\":\"1 Mu00eas Pelo Preu00e7o adequado / R$ 19.9\",\"quantity\":\"1\",\"amount\":\"19.90\"}},\"sender\":{\"name\":\"Gerald Profissional\",\"email\":\"gerald@sandbox.pagseguro.com.br\",\"phone\":{\"areaCode\":\"34\",\"number\":\"991910501\"},\"documents\":{\"document\":{\"type\":\"CPF\",\"value\":\"11416146695\"}}},\"gatewaySystem\":{\"type\":\"cielo\",\"rawCode\":{},\"rawMessage\":{},\"normalizedCode\":{},\"normalizedMessage\":{},\"authorizationCode\":\"0\",\"nsu\":\"0\",\"tid\":\"0\",\"establishmentCode\":\"1056784170\",\"acquirerName\":\"CIELO\"}}', NULL, '2017-12-15 16:57:49', NULL),
(125, 50, '{\"senderName\":\"Gerald Nunes\",\"senderEmail\":\"gerald@jobex.org\",\"senderPhone\":\"992497942\",\"senderCPF\":\"73951773634\",\"billingAddressPostalCode\":\"30180110\",\"senderAreaCode\":\"31\",\"billingAddressStreet\":\"Avenida Olegu00e1rio Maciel\",\"billingAddressNumber\":\"742\",\"billingAddressComplement\":\"\",\"billingAddressDistrict\":\"Centro\",\"billingAddressCity\":\"Belo Horizonte\",\"billingAddressState\":\"MG\",\"itemDescription1\":\"1 Mu00eas Pelo Preu00e7o adequado / R$ 19.9\",\"itemId1\":\"3\",\"itemAmount1\":\"19.90\",\"billingAddressCountry\":\"Brasil\"}', '', NULL, '{\"error\":{\"code\":\"53122\",\"message\":\"sender email invalid domain: gerald@jobex.org. You must use an email @sandbox.pagseguro.com.br\"}}', '2017-12-22 17:40:53', NULL),
(126, 50, '{\"senderName\":\"Gerald Nunes\",\"senderEmail\":\"gerald@jobex.org\",\"senderPhone\":\"992497942\",\"senderCPF\":\"73951773634\",\"billingAddressPostalCode\":\"30180110\",\"senderAreaCode\":\"31\",\"billingAddressStreet\":\"Avenida Olegu00e1rio Maciel\",\"billingAddressNumber\":\"742\",\"billingAddressComplement\":\"\",\"billingAddressDistrict\":\"Centro\",\"billingAddressCity\":\"Belo Horizonte\",\"billingAddressState\":\"MG\",\"itemDescription1\":\"1 Mu00eas Pelo Preu00e7o adequado / R$ 19.9\",\"itemId1\":\"3\",\"itemAmount1\":\"19.90\",\"billingAddressCountry\":\"Brasil\"}', '', NULL, '{\"error\":{\"code\":\"53122\",\"message\":\"sender email invalid domain: gerald@jobex.org. You must use an email @sandbox.pagseguro.com.br\"}}', '2017-12-22 17:41:11', NULL),
(127, 50, '{\"senderName\":\"Gerald Nunes\",\"senderEmail\":\"gerald@jobex.org\",\"senderPhone\":\"992497942\",\"senderCPF\":\"73951773634\",\"billingAddressPostalCode\":\"30180110\",\"senderAreaCode\":\"31\",\"billingAddressStreet\":\"Avenida Olegu00e1rio Maciel\",\"billingAddressNumber\":\"742\",\"billingAddressComplement\":\"\",\"billingAddressDistrict\":\"Centro\",\"billingAddressCity\":\"Belo Horizonte\",\"billingAddressState\":\"MG\",\"itemDescription1\":\"1 Mu00eas Pelo Preu00e7o adequado / R$ 19.9\",\"itemId1\":\"3\",\"itemAmount1\":\"19.90\",\"billingAddressCountry\":\"Brasil\"}', '', NULL, '{\"error\":{\"code\":\"53122\",\"message\":\"sender email invalid domain: gerald@jobex.org. You must use an email @sandbox.pagseguro.com.br\"}}', '2017-12-22 17:41:29', NULL),
(408, 50, '{\"senderName\":\"Gerald Nunes\",\"senderEmail\":\"gerald@jobex.org\",\"senderPhone\":\"992497942\",\"senderCPF\":\"28036337000178\",\"billingAddressPostalCode\":\"30180110\",\"senderAreaCode\":\"31\",\"billingAddressStreet\":\"Avenida Olegu00e1rio Maciel\",\"billingAddressNumber\":\"742\",\"billingAddressComplement\":\"\",\"billingAddressDistrict\":\"Centro\",\"billingAddressCity\":\"Belo Horizonte\",\"billingAddressState\":\"MG\",\"itemDescription1\":\"plano teste real / R$ 2\",\"itemId1\":\"7\",\"itemAmount1\":\"2.00\",\"billingAddressCountry\":\"Brasil\"}', '', NULL, NULL, '2018-01-19 10:54:25', NULL),
(409, 50, '{\"senderName\":\"Gerald Nunes\",\"senderEmail\":\"gerald@jobex.org\",\"senderPhone\":\"992497942\",\"senderCPF\":\"28036337000178\",\"billingAddressPostalCode\":\"30180110\",\"senderAreaCode\":\"31\",\"billingAddressStreet\":\"Avenida Olegu00e1rio Maciel\",\"billingAddressNumber\":\"742\",\"billingAddressComplement\":\"\",\"billingAddressDistrict\":\"Centro\",\"billingAddressCity\":\"Belo Horizonte\",\"billingAddressState\":\"MG\",\"itemDescription1\":\"Mes Preco regular / R$ 39.9\",\"itemId1\":\"3\",\"itemAmount1\":\"39.90\",\"billingAddressCountry\":\"Brasil\"}', '', NULL, NULL, '2018-01-19 10:55:27', NULL),
(410, 50, '{\"senderName\":\"Gerald Nunes\",\"senderEmail\":\"gerald@jobex.org\",\"senderPhone\":\"992497942\",\"senderCPF\":\"28036337000178\",\"billingAddressPostalCode\":\"30180110\",\"senderAreaCode\":\"31\",\"billingAddressStreet\":\"Avenida Olegu00e1rio Maciel\",\"billingAddressNumber\":\"742\",\"billingAddressComplement\":\"\",\"billingAddressDistrict\":\"Centro\",\"billingAddressCity\":\"Belo Horizonte\",\"billingAddressState\":\"MG\",\"itemDescription1\":\"Mes Preco regular / R$ 39.9\",\"itemId1\":\"3\",\"itemAmount1\":\"39.90\",\"billingAddressCountry\":\"Brasil\"}', '', NULL, NULL, '2018-01-19 10:57:23', NULL),
(411, 54, '{\"senderName\":\"Gerald Profissional\",\"senderEmail\":\"gerald@sandbox.pagseguro.com.br\",\"senderPhone\":\"992497942\",\"senderCPF\":\"73951773634\",\"billingAddressPostalCode\":\"30180110\",\"senderAreaCode\":\"31\",\"billingAddressStreet\":\"Avenida Olegu00e1rio Maciel\",\"billingAddressNumber\":\"742\",\"billingAddressComplement\":\"\",\"billingAddressDistrict\":\"Centro\",\"billingAddressCity\":\"Belo Horizonte\",\"billingAddressState\":\"MG\",\"itemDescription1\":\"Mes Preco regular / R$ 39.9\",\"itemId1\":\"3\",\"itemAmount1\":\"39.90\",\"billingAddressCountry\":\"Brasil\"}', '', '\"{\"boletos\":[{\"code\":\"863C417D-7A1F-4E70-86EC-F8B810B001C2\",\"paymentLink\":\"https:\\/\\/pagseguro.uol.com.br\\/checkout\\/payment\\/booklet\\/print.jhtml?c=fdc4b441fa58de9f7877c062b44bac68f3fdf58aa2110e397cbe0a26f6841c5166cd1ab11bd097e8\",\"barcode\":\"03399853012970000005152484501011574120000004090\",\"dueDate\":\"2018-01-22\"}]}\"', NULL, '2018-01-19 11:01:26', NULL),
(412, 54, '{\"senderName\":\"Gerald Profissional\",\"senderEmail\":\"gerald@sandbox.pagseguro.com.br\",\"senderPhone\":\"992497942\",\"senderHash\":\"cc3b03d8ad3801ce93ac0c54f01fafb60686bad940bee1c4579c016c98e12b2d\",\"senderCPF\":\"73951773634\",\"billingAddressPostalCode\":\"30180110\",\"senderAreaCode\":\"31\",\"billingAddressStreet\":\"Avenida Olegu00e1rio Maciel\",\"billingAddressNumber\":\"742\",\"billingAddressComplement\":\"\",\"billingAddressDistrict\":\"Centro\",\"billingAddressCity\":\"Belo Horizonte\",\"billingAddressState\":\"MG\",\"itemDescription1\":\"Mes Preco regular / R$ 39.9\",\"itemId1\":\"3\",\"itemAmount1\":\"39.90\",\"billingAddressCountry\":\"Brasil\"}', '', '\"{\"boletos\":[{\"code\":\"20DCC044-503A-4FD5-93CA-464D1C94D7D1\",\"paymentLink\":\"https:\\/\\/pagseguro.uol.com.br\\/checkout\\/payment\\/booklet\\/print.jhtml?c=616c78fe3048e4ab6bfad2831ef3a9907fbf042e723e5c3f77cafffb684213d4e5be4e6727d04e19\",\"barcode\":\"03399853012970000005152529701014874120000004090\",\"dueDate\":\"2018-01-22\"}]}\"', NULL, '2018-01-19 11:09:14', NULL),
(424, 54, '{\"senderName\":\"Gerald Profissional\",\"senderEmail\":\"gerald@sandbox.pagseguro.com.br\",\"senderPhone\":\"992497942\",\"senderHash\":\"97daa7f3e210dd582328202a218210acb06e23a4e1ca1ccf27e3613987b18c17\",\"senderCPF\":\"73951773634\",\"billingAddressPostalCode\":\"30180110\",\"senderAreaCode\":\"31\",\"billingAddressStreet\":\"Avenida Olegu00e1rio Maciel\",\"billingAddressNumber\":\"742\",\"billingAddressComplement\":\"\",\"billingAddressDistrict\":\"Centro\",\"billingAddressCity\":\"Belo Horizonte\",\"billingAddressState\":\"MG\",\"itemDescription1\":\"plano teste real / R$ 2\",\"itemId1\":\"7\",\"itemAmount1\":\"2.00\",\"billingAddressCountry\":\"Brasil\"}', '', NULL, NULL, '2018-01-24 10:57:29', NULL),
(425, 54, '{\"senderName\":\"Gerald Profissional\",\"senderEmail\":\"gerald@sandbox.pagseguro.com.br\",\"senderPhone\":\"992497942\",\"senderHash\":\"97daa7f3e210dd582328202a218210acb06e23a4e1ca1ccf27e3613987b18c17\",\"senderCPF\":\"73951773634\",\"billingAddressPostalCode\":\"30180110\",\"senderAreaCode\":\"31\",\"billingAddressStreet\":\"Avenida Olegu00e1rio Maciel\",\"billingAddressNumber\":\"742\",\"billingAddressComplement\":\"\",\"billingAddressDistrict\":\"Centro\",\"billingAddressCity\":\"Belo Horizonte\",\"billingAddressState\":\"MG\",\"itemDescription1\":\"plano teste real / R$ 2\",\"itemId1\":\"7\",\"itemAmount1\":\"2.00\",\"billingAddressCountry\":\"Brasil\"}', '', NULL, NULL, '2018-01-24 10:57:52', NULL),
(426, 54, '{\"senderName\":\"Gerald Profissional\",\"senderEmail\":\"gerald@sandbox.pagseguro.com.br\",\"senderPhone\":\"992497942\",\"senderHash\":\"c41e9d1274a3c9bae5fe86a1696b04a3dd8b3f9ed5fc15fb954468e81779beec\",\"senderCPF\":\"28036337000178\",\"billingAddressPostalCode\":\"30180110\",\"senderAreaCode\":\"31\",\"billingAddressStreet\":\"Avenida Olegu00e1rio Maciel\",\"billingAddressNumber\":\"742\",\"billingAddressComplement\":\"\",\"billingAddressDistrict\":\"Centro\",\"billingAddressCity\":\"Belo Horizonte\",\"billingAddressState\":\"MG\",\"itemDescription1\":\"plano teste real / R$ 2\",\"itemId1\":\"7\",\"itemAmount1\":\"2.00\",\"billingAddressCountry\":\"Brasil\"}', '', NULL, NULL, '2018-01-24 11:00:17', NULL),
(428, 54, '{\"senderName\":\"Gerald Profissional\",\"senderEmail\":\"gerald@sandbox.pagseguro.com.br\",\"senderPhone\":\"992497942\",\"senderHash\":\"42f2dc232e81cc5c4f125f0fed83984ebaa2cdbe5b9da04a1e059e150a43be95\",\"senderCPF\":\"73951773634\",\"billingAddressPostalCode\":\"30180110\",\"senderAreaCode\":\"31\",\"billingAddressStreet\":\"Avenida Olegu00e1rio Maciel\",\"billingAddressNumber\":\"742\",\"billingAddressComplement\":\"\",\"billingAddressDistrict\":\"Centro\",\"billingAddressCity\":\"Belo Horizonte\",\"billingAddressState\":\"MG\",\"itemDescription1\":\"plano teste real / R$ 10\",\"itemId1\":\"7\",\"itemAmount1\":\"10.00\",\"billingAddressCountry\":\"Brasil\"}', '', '\"{\"boletos\":[{\"code\":\"05F17CCC-1827-49CB-AE24-27D8D975C844\",\"paymentLink\":\"https:\\/\\/pagseguro.uol.com.br\\/checkout\\/payment\\/booklet\\/print.jhtml?c=7e72d3304d55ace7618252b59c0dc9e26b5a35460e4d17c290794c8144c0016884b59b012ab83a34\",\"barcode\":\"03399853012970000005172107501016574170000001100\",\"dueDate\":\"2018-01-27\"}]}\"', NULL, '2018-01-24 11:17:03', NULL),
(429, 54, '{\"senderName\":\"Gerald Profissional\",\"senderEmail\":\"gerald@sandbox.pagseguro.com.br\",\"senderPhone\":\"992497942\",\"senderHash\":\"ace8c33c9f7e24597df8702e803f098531a18c66a4b3b171b2805031d687949a\",\"senderCPF\":\"73951773634\",\"billingAddressPostalCode\":\"30180110\",\"senderAreaCode\":\"31\",\"billingAddressStreet\":\"Avenida Olegu00e1rio Maciel\",\"billingAddressNumber\":\"742\",\"billingAddressComplement\":\"\",\"billingAddressDistrict\":\"Centro\",\"billingAddressCity\":\"Belo Horizonte\",\"billingAddressState\":\"MG\",\"itemDescription1\":\"plano teste real / R$ 10\",\"itemId1\":\"7\",\"itemAmount1\":\"10.00\",\"billingAddressCountry\":\"Brasil\"}', '', '\"{\"boletos\":[{\"code\":\"A83AC729-F03A-472C-ABD8-7A5FF441ED21\",\"paymentLink\":\"https:\\/\\/pagseguro.uol.com.br\\/checkout\\/payment\\/booklet\\/print.jhtml?c=3bce04a21be4efedb79bb59862c5c3e2917c53c34e0a956192038bd3ba990b82fa1223adc08040b8\",\"barcode\":\"03399853012970000005172126501013774170000001100\",\"dueDate\":\"2018-01-27\"}]}\"', NULL, '2018-01-24 11:20:14', NULL),
(436, 54, '{\"senderName\":\"Gerald Profissional\",\"senderEmail\":\"gerald@sandbox.pagseguro.com.br\",\"senderPhone\":\"992497942\",\"senderHash\":\"6fe91a5d333ee89d86d30a46ce395155871be8e123ef27b8664d092300633033\",\"senderCPF\":\"73951773634\",\"billingAddressPostalCode\":\"30180110\",\"senderAreaCode\":\"31\",\"billingAddressStreet\":\"Avenida Olegu00e1rio Maciel\",\"billingAddressNumber\":\"742\",\"billingAddressComplement\":\"\",\"billingAddressDistrict\":\"Centro\",\"billingAddressCity\":\"Belo Horizonte\",\"billingAddressState\":\"MG\",\"itemDescription1\":\"plano teste real / R$ 5\",\"itemId1\":\"7\",\"itemAmount1\":\"5.00\",\"billingAddressCountry\":\"Brasil\"}', '97E24EC9-630B-49E1-AB54-6C27277B9563', '\"{\"boletos\":[{\"code\":\"97E24EC9-630B-49E1-AB54-6C27277B9563\",\"paymentLink\":\"https:\\/\\/pagseguro.uol.com.br\\/checkout\\/payment\\/booklet\\/print.jhtml?c=0fbf8c2e7a2865cba78712512d5351409d37f1f2af8aa7d2d2040ef2d9ae75103fe1ee41aaed051f\",\"barcode\":\"03399853012970000005182930901010174190000000600\",\"dueDate\":\"2018-01-29\"}]}\"', NULL, '2018-01-26 18:02:50', NULL),
(481, 50, '{\"senderName\":\"Gerald Nunes\",\"senderEmail\":\"gerald@jobex.org\",\"senderPhone\":\"992497942\",\"senderHash\":\"1bc57cf83ad8718c459b6fc8fafff9de6809c22e59da3ab93654c2dcc35e2b10\",\"senderCPF\":\"00715932683\",\"billingAddressPostalCode\":\"30770480\",\"senderAreaCode\":\"31\",\"billingAddressStreet\":\"Rua Guau00edra\",\"billingAddressNumber\":\"416\",\"billingAddressComplement\":\"\",\"billingAddressDistrict\":\"Caiu00e7aras\",\"billingAddressCity\":\"Belo Horizonte\",\"billingAddressState\":\"MG\",\"itemDescription1\":\"plano teste real / R$ 5\",\"itemId1\":\"7\",\"itemAmount1\":\"5.00\",\"billingAddressCountry\":\"Brasil\"}', '4BF8D39F-88CD-4B8A-9CFD-B7AC9198DD0E', '{\"boletos\":[{\"code\":\"4BF8D39F-88CD-4B8A-9CFD-B7AC9198DD0E\",\"paymentLink\":\"https://pagseguro.uol.com.br/checkout/payment/booklet/print.jhtml?c=29b2b02addbce2987554803cb4280b0e269123b6713409f6c758681fc100f6dc56b378178f754f7f\",\"barcode\":\"03399853012970000006937101801019174320000000600\",\"dueDate\":\"2018-02-11\"}]}', NULL, '2018-02-08 11:39:55', NULL),
(482, 50, '{\"senderName\":\"Gerald Nunes\",\"senderEmail\":\"gerald@jobex.org\",\"senderPhone\":\"992497942\",\"senderHash\":\"2eb6ce66fc2925477b24b4fdb4d5d6654b200da14c0fc0d770623592af8d6852\",\"senderCPF\":\"00715932683\",\"billingAddressPostalCode\":\"30770480\",\"senderAreaCode\":\"31\",\"billingAddressStreet\":\"Rua Guau00edra\",\"billingAddressNumber\":\"416\",\"billingAddressComplement\":\"\",\"billingAddressDistrict\":\"Caiu00e7aras\",\"billingAddressCity\":\"Belo Horizonte\",\"billingAddressState\":\"MG\",\"itemDescription1\":\"plano teste real / R$ 5\",\"itemId1\":\"7\",\"itemAmount1\":\"5.00\",\"billingAddressCountry\":\"Brasil\"}', '2D251ABB-9B56-4FF3-9876-FBE3DC2A5CAC', '{\"boletos\":[{\"code\":\"2D251ABB-9B56-4FF3-9876-FBE3DC2A5CAC\",\"paymentLink\":\"https://pagseguro.uol.com.br/checkout/payment/booklet/print.jhtml?c=58dd1ae8eb1c399fdcef3e3a98c17091099b554ac2b1b8d1098c8208053c1e684bfa0a045eff6f1b\",\"barcode\":\"03399853012970000006939857701013174320000000600\",\"dueDate\":\"2018-02-11\"}]}', NULL, '2018-02-08 20:33:18', NULL),
(483, 78, '{\"senderName\":\"Dayanne Franu00e7a\",\"senderEmail\":\"nanyfoliveira@gmail.com\",\"senderPhone\":\"31993088663\",\"senderHash\":\"916ccfdb4f0bcdb938dff321777d46ef6114862dfd11d2b057731b5b953cd57c\",\"senderCPF\":\"07207906625\",\"billingAddressPostalCode\":\"30590255\",\"senderAreaCode\":\"31\",\"billingAddressStreet\":\"Rua u00cdsis Magalhu00e3es\",\"billingAddressNumber\":\"3\",\"billingAddressComplement\":\"\",\"billingAddressDistrict\":\"Betu00e2nia\",\"billingAddressCity\":\"Belo Horizonte\",\"billingAddressState\":\"MG\",\"itemDescription1\":\"Mes Preco regular / R$ 39.9\",\"itemId1\":\"3\",\"itemAmount1\":\"39.90\",\"billingAddressCountry\":\"Brasil\"}', '7CCB85FA-2CB8-41C2-A9B0-E42DFB0ED49C', '{\"boletos\":[{\"code\":\"7CCB85FA-2CB8-41C2-A9B0-E42DFB0ED49C\",\"paymentLink\":\"https://pagseguro.uol.com.br/checkout/payment/booklet/print.jhtml?c=63b3036ae3cb823944d075313bb7430eb2b19f93dff317cdc59000f43f0681d39872129399cca163\",\"barcode\":\"03399853012970000006998848801019574470000004090\",\"dueDate\":\"2018-02-26\"}]}', NULL, '2018-02-23 18:12:12', NULL),
(484, 50, '{\"senderName\":\"Gerald Nunes\",\"senderEmail\":\"gerald@jobex.org\",\"senderPhone\":\"992497942\",\"senderHash\":\"f022ad6cc285c1aa6143631dfcc83902b1f9c2cdd02aa9063f17fd9a3fd4cab3\",\"senderCPF\":\"73951773634\",\"billingAddressPostalCode\":\"30770480\",\"senderAreaCode\":\"31\",\"billingAddressStreet\":\"Rua Guau00edra\",\"billingAddressNumber\":\"416\",\"billingAddressComplement\":\"\",\"billingAddressDistrict\":\"Caiu00e7aras\",\"billingAddressCity\":\"Belo Horizonte\",\"billingAddressState\":\"MG\",\"itemDescription1\":\"Mes Preco regular / R$ 39\",\"itemId1\":\"3\",\"itemAmount1\":\"39.00\",\"billingAddressCountry\":\"Brasil\"}', '09B6B135-0D91-4005-8977-C0B40D7192C5', '{\"boletos\":[{\"code\":\"09B6B135-0D91-4005-8977-C0B40D7192C5\",\"paymentLink\":\"https://pagseguro.uol.com.br/checkout/payment/booklet/print.jhtml?c=b4622195bfccf09558447a61b223e37d7aca406b919df099886a9d8f6b7645feb60c51e9cf9459d9\",\"barcode\":\"03399853012970000007738295301014474570000004000\",\"dueDate\":\"2018-03-08\"}]}', NULL, '2018-03-05 22:55:53', NULL),
(485, 55, '{\"senderName\":\"Otu00e1vio Larmartine\",\"senderEmail\":\"otaviollneto@gmail.com\",\"senderPhone\":\"999726524\",\"senderHash\":\"c5bc6863fd817d7edec2e9d38957837f0b6e84ff4a9bda427d8312a17a1970ba\",\"senderCPF\":\"39567510199\",\"billingAddressPostalCode\":\"38065000\",\"senderAreaCode\":\"34\",\"billingAddressStreet\":\"Rua\",\"billingAddressNumber\":\"123\",\"billingAddressComplement\":\"\",\"billingAddressDistrict\":\"Hshd\",\"billingAddressCity\":\"Uberaba\",\"billingAddressState\":\"MG\",\"itemDescription1\":\"Mes Preco regular / R$ 39\",\"itemId1\":\"3\",\"itemAmount1\":\"39.00\",\"billingAddressCountry\":\"Brasil\"}', '80DB1C05-F2CF-4D83-AFCB-1D9133EFAD06', '{\"boletos\":[{\"code\":\"80DB1C05-F2CF-4D83-AFCB-1D9133EFAD06\",\"paymentLink\":\"https://pagseguro.uol.com.br/checkout/payment/booklet/print.jhtml?c=8efdb8963be857b9bb0d3c815bbc0a76f5730fc9ba654dffd613881e37ba71a00b4405ba4df2bb47\",\"barcode\":\"03399853012970000007772978001013274650000004000\",\"dueDate\":\"2018-03-16\"}]}', NULL, '2018-03-13 15:45:52', NULL),
(486, 118, '{\"senderName\":\"Luciana Alvarez\",\"senderEmail\":\"lucianaalvarez@icloud.com\",\"senderPhone\":\"996781983\",\"senderHash\":\"a16250c827e9eb6ecd6ea8aa0a9cfd5388be5d2699cf63dc3d507e4a41e6bf16\",\"senderCPF\":\"12729358846\",\"billingAddressPostalCode\":\"05433001\",\"senderAreaCode\":\"11\",\"billingAddressStreet\":\"Rua Girassol\",\"billingAddressNumber\":\"510\",\"billingAddressComplement\":\"Apto 21\",\"billingAddressDistrict\":\"Vila Madalena\",\"billingAddressCity\":\"Su00e3o Paulo\",\"billingAddressState\":\"SP\",\"itemDescription1\":\"Mes Preco regular / R$ 39\",\"itemId1\":\"3\",\"itemAmount1\":\"39.00\",\"billingAddressCountry\":\"Brasil\"}', '6C31083F-A3B8-4B5B-83AC-9F916B352036', '{\"boletos\":[{\"code\":\"6C31083F-A3B8-4B5B-83AC-9F916B352036\",\"paymentLink\":\"https://pagseguro.uol.com.br/checkout/payment/booklet/print.jhtml?c=6868ec1e843aa8be1efbab5fe35eb3d4bc82fae41c7129d0c21f1c156a936b50983f8c32c13572fb\",\"barcode\":\"03399853012970000008544498201019274840000004000\",\"dueDate\":\"2018-04-04\"}]}', NULL, '2018-04-01 01:46:22', NULL),
(487, 118, '{\"senderName\":\"Luciana Alvarez\",\"senderEmail\":\"lucianaalvarez@icloud.com\",\"senderPhone\":\"996781983\",\"senderHash\":\"a16250c827e9eb6ecd6ea8aa0a9cfd5388be5d2699cf63dc3d507e4a41e6bf16\",\"senderCPF\":\"12729358846\",\"billingAddressPostalCode\":\"05433001\",\"senderAreaCode\":\"11\",\"billingAddressStreet\":\"Rua Girassol\",\"billingAddressNumber\":\"510\",\"billingAddressComplement\":\"Apto 21\",\"billingAddressDistrict\":\"Vila Madalena\",\"billingAddressCity\":\"Su00e3o PauloL\",\"billingAddressState\":\"SP\",\"itemDescription1\":\"Mes Preco regular / R$ 39\",\"itemId1\":\"3\",\"itemAmount1\":\"39.00\",\"billingAddressCountry\":\"Brasil\"}', 'ADED26A0-7A70-4B3B-B9BC-839488D5D2B2', '{\"boletos\":[{\"code\":\"ADED26A0-7A70-4B3B-B9BC-839488D5D2B2\",\"paymentLink\":\"https://pagseguro.uol.com.br/checkout/payment/booklet/print.jhtml?c=e477f247e35e4f46cfe6cf9835c56a10c59a81b74177a47f4c776cbebec04adebb6a0a3ae6da62ba\",\"barcode\":\"03399853012970000008544499401014574840000004000\",\"dueDate\":\"2018-04-04\"}]}', NULL, '2018-04-01 01:48:12', NULL),
(488, 118, '{\"senderName\":\"Luciana Alvarez\",\"senderEmail\":\"lucianaalvarez@icloud.com\",\"senderPhone\":\"996781983\",\"senderHash\":\"a16250c827e9eb6ecd6ea8aa0a9cfd5388be5d2699cf63dc3d507e4a41e6bf16\",\"senderCPF\":\"12729358846\",\"billingAddressPostalCode\":\"05433001\",\"senderAreaCode\":\"11\",\"billingAddressStreet\":\"Rua Girassol\",\"billingAddressNumber\":\"510\",\"billingAddressComplement\":\"Apto 21\",\"billingAddressDistrict\":\"Vila Madalena\",\"billingAddressCity\":\"Su00e3o PauloL\",\"billingAddressState\":\"SP\",\"itemDescription1\":\"Mes Preco regular / R$ 39\",\"itemId1\":\"3\",\"itemAmount1\":\"39.00\",\"billingAddressCountry\":\"Brasil\"}', 'F6A0FEE4-1FE0-4AAF-970E-CA27CF8573AA', '{\"boletos\":[{\"code\":\"F6A0FEE4-1FE0-4AAF-970E-CA27CF8573AA\",\"paymentLink\":\"https://pagseguro.uol.com.br/checkout/payment/booklet/print.jhtml?c=026e978679c78e1d614c10598917e74cb761faa510e04f7a4c598d019517c5e736612eebda10848c\",\"barcode\":\"03399853012970000008544499801015374840000004000\",\"dueDate\":\"2018-04-04\"}]}', NULL, '2018-04-01 01:48:42', NULL),
(489, 118, '{\"senderName\":\"Luciana Alvarez\",\"senderEmail\":\"lucianaalvarez@icloud.com\",\"senderPhone\":\"996781983\",\"senderHash\":\"a16250c827e9eb6ecd6ea8aa0a9cfd5388be5d2699cf63dc3d507e4a41e6bf16\",\"senderCPF\":\"12729358846\",\"billingAddressPostalCode\":\"05433001\",\"senderAreaCode\":\"11\",\"billingAddressStreet\":\"Rua Girassol\",\"billingAddressNumber\":\"510\",\"billingAddressComplement\":\"Apto 21\",\"billingAddressDistrict\":\"Vila Madalena\",\"billingAddressCity\":\"Su00e3o PauloL\",\"billingAddressState\":\"SP\",\"itemDescription1\":\"Mes Preco regular / R$ 39\",\"itemId1\":\"3\",\"itemAmount1\":\"39.00\",\"billingAddressCountry\":\"Brasil\"}', 'EAB8A10C-FDBE-421A-B403-5BF6E84E7F55', '{\"boletos\":[{\"code\":\"EAB8A10C-FDBE-421A-B403-5BF6E84E7F55\",\"paymentLink\":\"https://pagseguro.uol.com.br/checkout/payment/booklet/print.jhtml?c=055289c7139ec4673eee15696a7f3f8ca33b60be2c1394491ab028f5fbcf51f7b08f94b04628abaf\",\"barcode\":\"03399853012970000008544500301013574840000004000\",\"dueDate\":\"2018-04-04\"}]}', NULL, '2018-04-01 01:49:14', NULL),
(490, 119, '{\"senderName\":\"Michel Teixeira\",\"senderEmail\":\"teixeira.michel0@gmail.com\",\"senderPhone\":\"976499064\",\"senderHash\":\"71edf50c11a0fe081f7aecdad3e6423d5240226434a0d0234459ff0dfb8787ba\",\"senderCPF\":\"39000226821\",\"billingAddressPostalCode\":\"08588530\",\"senderAreaCode\":\"11\",\"billingAddressStreet\":\"Rua Anhembi\",\"billingAddressNumber\":\"105\",\"billingAddressComplement\":\"\",\"billingAddressDistrict\":\"Jardim Caiubi\",\"billingAddressCity\":\"Itaquaquecetuba\",\"billingAddressState\":\"SP\",\"itemDescription1\":\"Mes Preco regular / R$ 39\",\"itemId1\":\"3\",\"itemAmount1\":\"39.00\",\"billingAddressCountry\":\"Brasil\"}', 'F91D2D15-D163-4A84-BE68-23B38A9D4B3E', '{\"boletos\":[{\"code\":\"F91D2D15-D163-4A84-BE68-23B38A9D4B3E\",\"paymentLink\":\"https://pagseguro.uol.com.br/checkout/payment/booklet/print.jhtml?c=6cf4040f865e44aa98cd594d3c4f62d1a721b152679ed4f7a7f01f521af29598411d080e80475091\",\"barcode\":\"03399853012970000008544720301017474840000004000\",\"dueDate\":\"2018-04-04\"}]}', NULL, '2018-04-01 09:03:34', NULL),
(494, 55, '{\"senderName\":\"Otu00e1vio Larmartine\",\"senderEmail\":\"otaviollneto@gmail.com\",\"senderPhone\":\"999726524\",\"senderHash\":\"f803b7478792881e30745863d93c6f34f696cc9a0dfe045aeda5e76a981d2321\",\"senderCPF\":\"07458522623\",\"billingAddressPostalCode\":\"38065330\",\"senderAreaCode\":\"34\",\"billingAddressStreet\":\"Rua Francisco Barcelos\",\"billingAddressNumber\":\"265\",\"billingAddressComplement\":\"\",\"billingAddressDistrict\":\"Fabru00edcio\",\"billingAddressCity\":\"Uberaba\",\"billingAddressState\":\"MG\",\"itemDescription1\":\"3 Meses Com Desconto\",\"itemId1\":\"4\",\"itemAmount1\":\"99\",\"billingAddressCountry\":\"Brasil\"}', '71BA45A4-3FF0-4469-904A-637740662283', '{\"boletos\":[{\"code\":\"71BA45A4-3FF0-4469-904A-637740662283\",\"paymentLink\":\"https://pagseguro.uol.com.br/checkout/payment/booklet/print.jhtml?c=8373f7f32ec49653fef715e97d247fa3bbe6d3fac3de26f35466274f1047ec7dae2a9672d9edb0b3\",\"barcode\":\"03399853012970000011954469201013875570000010000\",\"dueDate\":\"2018-06-16\"}]}', NULL, '2018-06-13 09:45:53', NULL),
(501, 55, '{\"senderName\":\"Otu00e1vio Larmartine\",\"senderEmail\":\"otaviollneto@gmail.com\",\"senderPhone\":\"999726524\",\"senderHash\":\"c7d8e923d872ed454768c0d0a59ea5d886912f55ad2395708de68818edb7375b\",\"senderCPF\":\"07458522623\",\"billingAddressPostalCode\":\"38071704\",\"senderAreaCode\":\"34\",\"billingAddressStreet\":\"Rua Edson Dias\",\"billingAddressNumber\":\"124\",\"billingAddressComplement\":\"\",\"billingAddressDistrict\":\"Jardim Maria Alice\",\"billingAddressCity\":\"Uberaba\",\"billingAddressState\":\"MG\",\"itemDescription1\":\"Mes Preco regular\",\"itemId1\":\"3\",\"itemAmount1\":\"39\",\"billingAddressCountry\":\"Brasil\"}', 'AB506691-7CB7-4B4A-B574-3CC8BC6BD150', '{\"boletos\":[{\"code\":\"AB506691-7CB7-4B4A-B574-3CC8BC6BD150\",\"paymentLink\":\"https://pagseguro.uol.com.br/checkout/payment/booklet/print.jhtml?c=028f2ab9d436639c74a42b50cb6da9ccbeddf9156a897f3cee28eb39f74c053fdeb37154f8205050\",\"barcode\":\"03399853012970000011988414601018775650000004000\",\"dueDate\":\"2018-06-24\"}]}', NULL, '2018-06-21 18:12:39', NULL),
(502, 55, '{\"creditCardToken\":\"8a9b9344a5a34a3397e8bbdef04d7d5e\",\"creditCardHolderName\":\"Otelo Junior\",\"senderName\":\"Otu00e1vio Larmartine\",\"senderEmail\":\"otaviollneto@gmail.com\",\"senderPhone\":\"999726524\",\"senderHash\":\"e9b4549efb9d14a0f41ac6a0229b422c11f0702f81cb19eeaa9d0c105ab275ef\",\"installmentQuantity\":\"1\",\"totalAmount\":\"99\",\"installmentAmount\":\"99\",\"noInterestInstallmentQuantity\":\"1\",\"senderCPF\":\"07458522623\",\"billingAddressPostalCode\":\"38065220\",\"senderAreaCode\":\"34\",\"billingAddressStreet\":\"Travessa Josu00e9 do Patrocu00ednio\",\"billingAddressNumber\":\"123\",\"billingAddressComplement\":\"\",\"billingAddressDistrict\":\"Fabru00edcio\",\"billingAddressCity\":\"Uberaba\",\"billingAddressState\":\"MG\",\"itemDescription1\":\"3 Meses Com Desconto\",\"itemId1\":\"4\",\"itemAmount1\":\"99.00\",\"billingAddressCountry\":\"Brasil\"}', '0FBF6248-84C2-427C-8499-53A0D56C5EB7', '{\"date\":\"2018-06-21T18:15:20.000-03:00\",\"code\":\"0FBF6248-84C2-427C-8499-53A0D56C5EB7\",\"type\":\"1\",\"status\":\"1\",\"lastEventDate\":\"2018-06-21T18:15:20.000-03:00\",\"paymentMethod\":{\"type\":\"1\",\"code\":\"101\"},\"grossAmount\":\"99.00\",\"discountAmount\":\"0.00\",\"feeAmount\":\"4.35\",\"netAmount\":\"94.65\",\"extraAmount\":\"0.00\",\"installmentCount\":\"1\",\"itemCount\":\"1\",\"items\":{\"item\":{\"id\":\"4\",\"description\":\"3 Meses Com Desconto\",\"quantity\":\"1\",\"amount\":\"99.00\"}},\"sender\":{\"name\":\"Otu00e1vio Larmartine\",\"email\":\"otaviollneto@gmail.com\",\"phone\":{\"areaCode\":\"34\",\"number\":\"999726524\"}}}', NULL, '2018-06-21 18:15:17', NULL),
(503, 55, '{\"senderName\":\"Suporte Munduu\",\"senderEmail\":\"suporte@munduu.com\",\"senderPhone\":\"33150180\",\"senderHash\":\"068f540fa76e74480e4744e231d8f9f0d3fd3f70d1cdc940957866fa0fba79e8\",\"senderCPF\":\"07458522623\",\"billingAddressPostalCode\":\"38065330\",\"senderAreaCode\":\"34\",\"billingAddressStreet\":\"Rua Francisco Barcelos\",\"billingAddressNumber\":\"265\",\"billingAddressComplement\":\"\",\"billingAddressDistrict\":\"Fabru00edcio\",\"billingAddressCity\":\"Uberaba\",\"billingAddressState\":\"MG\",\"itemDescription1\":\"PRO 1 - 90 dias\",\"itemId1\":\"4\",\"itemAmount1\":\"99\",\"billingAddressCountry\":\"Brasil\"}', '694D585D-9C55-43E1-B297-2DBF426808B9', '{\"boletos\":[{\"code\":\"694D585D-9C55-43E1-B297-2DBF426808B9\",\"paymentLink\":\"https://pagseguro.uol.com.br/checkout/payment/booklet/print.jhtml?c=e3a34d44554529952a7688130ce3cae6afee39991b68c7c72ac4b4c64c871e8fa795194ee78c3e45\",\"barcode\":\"03399853012970000017605279201015776820000010000\",\"dueDate\":\"2018-10-19\"}]}', NULL, '2018-10-16 11:03:08', NULL),
(504, 55, '{\"senderName\":\"Suporte Munduu\",\"senderEmail\":\"suporte@munduu.com\",\"senderPhone\":\"33150180\",\"senderHash\":\"22badec702d32d7b9e5c609f206cb6cfb601b42d39c30fa4c0052907ec461bcd\",\"senderCPF\":\"07458522623\",\"billingAddressPostalCode\":\"38015120\",\"senderAreaCode\":\"34\",\"billingAddressStreet\":\"Rua Pires de Campos\",\"billingAddressNumber\":\"71\",\"billingAddressComplement\":\"\",\"billingAddressDistrict\":\"Estados Unidos\",\"billingAddressCity\":\"Uberaba\",\"billingAddressState\":\"MG\",\"itemDescription1\":\"PRO 1 - 90 dias\",\"itemId1\":\"4\",\"itemAmount1\":\"99\",\"billingAddressCountry\":\"Brasil\"}', '7781D9B5-9507-4890-B1E4-B003722D42D2', '{\"boletos\":[{\"code\":\"7781D9B5-9507-4890-B1E4-B003722D42D2\",\"paymentLink\":\"https://pagseguro.uol.com.br/checkout/payment/booklet/print.jhtml?c=33c60c8e6a1c904631ab001e2cf621ef384f340cd9ede6da83cf9de30a1175014a25c80ea6b59d08\",\"barcode\":\"03399853012970000017611257601010276830000010000\",\"dueDate\":\"2018-10-20\"}]}', NULL, '2018-10-17 13:55:45', NULL),
(505, 55, '{\"senderName\":\"Suporte Munduu\",\"senderEmail\":\"suporte@munduu.com\",\"senderPhone\":\"33150180\",\"senderCPF\":\"07458522623\",\"billingAddressPostalCode\":\"38015120\",\"senderAreaCode\":\"34\",\"billingAddressStreet\":\"Rua Pires de Campos\",\"billingAddressNumber\":\"71\",\"billingAddressComplement\":\"\",\"billingAddressDistrict\":\"Estados Unidos\",\"billingAddressCity\":\"Uberaba\",\"billingAddressState\":\"MG\",\"itemDescription1\":\"PRO 1 - 90 dias\",\"itemId1\":\"4\",\"itemAmount1\":\"99\",\"billingAddressCountry\":\"Brasil\"}', '07099C6C-C1AE-4D20-9467-FAF20BB4D924', '{\"boletos\":[{\"code\":\"07099C6C-C1AE-4D20-9467-FAF20BB4D924\",\"paymentLink\":\"https://pagseguro.uol.com.br/checkout/payment/booklet/print.jhtml?c=cd92a4dc46ac1ef253863e9da4d532663e08021f8f1d0ceaf75bd42f8fb43141a06bef9ba88cc548\",\"barcode\":\"03399853012970000017614583401014276840000010000\",\"dueDate\":\"2018-10-21\"}]}', NULL, '2018-10-18 08:08:43', NULL),
(506, 55, '{\"senderName\":\"Suporte Munduu\",\"senderEmail\":\"suporte@munduu.com\",\"senderPhone\":\"33150180\",\"senderHash\":\"d88820887ed76f839a8eeb7a132e6f22503ef0d290c9bc3217c6535e77930a4e\",\"senderCPF\":\"07458522623\",\"billingAddressPostalCode\":\"38015120\",\"senderAreaCode\":\"34\",\"billingAddressStreet\":\"Rua Pires de Campos\",\"billingAddressNumber\":\"71\",\"billingAddressComplement\":\"\",\"billingAddressDistrict\":\"Estados Unidos\",\"billingAddressCity\":\"Uberaba\",\"billingAddressState\":\"MG\",\"itemDescription1\":\"PRO 1 - 90 dias\",\"itemId1\":\"4\",\"itemAmount1\":\"99\",\"billingAddressCountry\":\"Brasil\"}', 'EF60C7CD-C6B9-4F1C-BFB2-6ACABC7BB1EA', '{\"boletos\":[{\"code\":\"EF60C7CD-C6B9-4F1C-BFB2-6ACABC7BB1EA\",\"paymentLink\":\"https://pagseguro.uol.com.br/checkout/payment/booklet/print.jhtml?c=421efa5aeb1bec048eec2237f3411e520b8e90bd1fb0210814524c48869983bed21b93c48ef47f83\",\"barcode\":\"03399853012970000017614787501015576840000010000\",\"dueDate\":\"2018-10-21\"}]}', NULL, '2018-10-18 08:45:45', NULL),
(507, 55, '{\"senderName\":\"Otavio Lamartine\",\"senderEmail\":\"suporte@munduu.com\",\"senderPhone\":\"999726524\",\"senderHash\":\"3b74a56a531b39d4b939b8119e03875c52184d484c093e4fa8fed4be95646e8a\",\"senderCPF\":\"07458522623\",\"billingAddressPostalCode\":\"38065330\",\"senderAreaCode\":\"34\",\"billingAddressStreet\":\"Rua Francisco Barcelos\",\"billingAddressNumber\":\"123\",\"billingAddressComplement\":\"\",\"billingAddressDistrict\":\"Fabru00edcio\",\"billingAddressCity\":\"Uberaba\",\"billingAddressState\":\"MG\",\"itemDescription1\":\"PRO 99 - 30 dias\",\"itemId1\":\"4\",\"itemAmount1\":\"5\",\"billingAddressCountry\":\"Brasil\"}', 'A2F54F2B-1B3F-4A7A-B085-77B9CCE4F486', '{\"boletos\":[{\"code\":\"A2F54F2B-1B3F-4A7A-B085-77B9CCE4F486\",\"paymentLink\":\"https://pagseguro.uol.com.br/checkout/payment/booklet/print.jhtml?c=1defe3002383c1db51686dcaf5f6fb29630f2a9e9deabc1016ffeb801698f6d9156be1123e0df40e\",\"barcode\":\"03399853012970000023489861001017578070000000600\",\"dueDate\":\"2019-02-21\"}]}', NULL, '2019-02-18 17:25:19', NULL),
(508, 55, '{\"senderName\":\"OTAVIO LEITE NETO\",\"senderEmail\":\"suporte@munduu.com\",\"senderPhone\":\"33150180\",\"senderHash\":\"f6b5aae42fff73d3e54620891d652be70afb30a27d07e1aa10f5152fd65e46a5\",\"senderCPF\":\"07458522623\",\"billingAddressPostalCode\":\"38065330\",\"senderAreaCode\":\"34\",\"billingAddressStreet\":\"Avenida Almirante Barroso\",\"billingAddressNumber\":\"265\",\"billingAddressComplement\":\"\",\"billingAddressDistrict\":\"Fabru00edcio\",\"billingAddressCity\":\"Uberaba\",\"billingAddressState\":\"MG\",\"itemDescription1\":\"PRO 99 - 30 dias\",\"itemId1\":\"4\",\"itemAmount1\":\"5\",\"billingAddressCountry\":\"Brasil\"}', '47F36799-4511-44DF-8060-E0C391AAE3B9', '{\"boletos\":[{\"code\":\"47F36799-4511-44DF-8060-E0C391AAE3B9\",\"paymentLink\":\"https://pagseguro.uol.com.br/checkout/payment/booklet/print.jhtml?c=09f46f5d3d77ef5b308d3021222b7b67cf044895c404f98d740fca107b579f86b08c10ddecaf5941\",\"barcode\":\"03399853012970000023490464801019978070000000600\",\"dueDate\":\"2019-02-21\"}]}', NULL, '2019-02-18 19:59:40', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_plano`
--

CREATE TABLE `tb_plano` (
  `id` int(11) NOT NULL,
  `obs` varchar(255) NOT NULL,
  `tempo` varchar(30) NOT NULL,
  `preco` float NOT NULL,
  `id_user` int(11) NOT NULL,
  `data_cad` datetime NOT NULL,
  `data_del` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `tb_plano`
--

INSERT INTO `tb_plano` (`id`, `obs`, `tempo`, `preco`, `id_user`, `data_cad`, `data_del`) VALUES
(3, 'Mes Preco regular', '30', 39, 70, '2017-12-05 16:18:36', NULL),
(4, '3 Meses com Desconto', '90', 99, 70, '2017-12-05 16:18:52', NULL),
(5, '6 Meses com Desconto', '180', 209, 140, '2017-12-29 11:37:51', NULL),
(6, '12 Meses + Camisa Polo Jobex', '360', 399, 140, '2017-12-29 11:38:16', NULL),
(7, 'plano teste real', '5', 5, 70, '2018-01-03 09:13:28', '2018-02-23 11:20:04');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_prog`
--

CREATE TABLE `tb_prog` (
  `id` int(11) NOT NULL,
  `prog_empresa` varchar(255) DEFAULT NULL,
  `prog_endereco` varchar(255) DEFAULT NULL,
  `prog_nome` varchar(255) DEFAULT NULL,
  `prog_sigla` varchar(255) DEFAULT NULL,
  `prog_versao` varchar(255) DEFAULT NULL,
  `prog_email` varchar(255) DEFAULT NULL,
  `prog_tel` varchar(255) DEFAULT NULL,
  `prog_link` varchar(255) DEFAULT NULL,
  `prog_creditos1` varchar(255) DEFAULT NULL,
  `prog_creditos2` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `tb_prog`
--

INSERT INTO `tb_prog` (`id`, `prog_empresa`, `prog_endereco`, `prog_nome`, `prog_sigla`, `prog_versao`, `prog_email`, `prog_tel`, `prog_link`, `prog_creditos1`, `prog_creditos2`) VALUES
(1, 'Unigestor .', 'Av. Almirante Barroso, 523 - FabrÃ­cio - Uberaba/MG', 'Unigestor', 'UniGestor', 'Beta', 'Atendimento - atendimento@mundoinova.com.br', '55 (34) 3315-0180', 'www.mundoinova.com.br', 'NÃºcleo de Desenvolvimento Unitracker LogÃ­stica. Todos os Direitos Reservados.', 'Boris Henrique Crema & OtÃ¡vio Lamartine');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_proposta`
--

CREATE TABLE `tb_proposta` (
  `id` int(10) NOT NULL,
  `obs` varchar(120) CHARACTER SET utf8 NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_grupo` int(11) DEFAULT NULL,
  `grupo_categorias` varchar(250) CHARACTER SET utf8 NOT NULL,
  `id_genero` int(11) DEFAULT NULL,
  `mei` tinyint(1) DEFAULT NULL,
  `id_type_orcam` int(11) DEFAULT NULL,
  `lat_lng` varchar(200) CHARACTER SET utf8 NOT NULL,
  `endereco` varchar(250) CHARACTER SET utf8 NOT NULL,
  `id_user_f` int(11) DEFAULT NULL,
  `valor` float DEFAULT NULL,
  `aceita_cartao` int(11) NOT NULL,
  `id_cartoes` varchar(250) CHARACTER SET utf8 NOT NULL,
  `cobra_visita` int(11) NOT NULL,
  `id_proposta_status` int(11) NOT NULL,
  `data_in` datetime NOT NULL,
  `data_start` datetime DEFAULT NULL,
  `data_out` datetime DEFAULT NULL,
  `data_cad` datetime NOT NULL,
  `data_del` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `tb_proposta`
--

INSERT INTO `tb_proposta` (`id`, `obs`, `id_user`, `id_grupo`, `grupo_categorias`, `id_genero`, `mei`, `id_type_orcam`, `lat_lng`, `endereco`, `id_user_f`, `valor`, `aceita_cartao`, `id_cartoes`, `cobra_visita`, `id_proposta_status`, `data_in`, `data_start`, `data_out`, `data_cad`, `data_del`) VALUES
(308, 'Cortar a unha', 177, 89, '', NULL, NULL, NULL, '{\"longitudeDelta\":0.02092894166707282,\"latitudeDelta\":0.006779744080471772,\"longitude\":-46.635742988437414,\"latitude\":-23.58812276493442}', 'Condomínio Edificio Bartira/Amália - R. Domingos de Morais, 1368 - Vila Mariana, São Paulo - SP, 04010-000, Brazil', NULL, NULL, 0, '', 0, 4, '2018-07-19 16:26:00', NULL, NULL, '0000-00-00 00:00:00', NULL),
(307, 'cartão de visita\n', 170, 306, '', NULL, NULL, NULL, '', '', NULL, NULL, 0, '', 0, 0, '2018-07-13 07:34:00', NULL, NULL, '0000-00-00 00:00:00', NULL),
(305, 'Cível ', 76, 168, '311', NULL, NULL, NULL, '', '', NULL, NULL, 0, '', 0, 0, '2018-07-15 19:00:00', NULL, NULL, '0000-00-00 00:00:00', NULL),
(306, 'Segurança em domicílio ', 76, 199, '', NULL, NULL, NULL, '{\"longitude\":-43.982237842157936,\"latitudeDelta\":0.006779775810283439,\"latitude\":-19.8780449133942,\"longitudeDelta\":0.006896668887179658}', 'R. Júlio Soares Santana, 390 - Ouro Preto, Belo Horizonte - MG, 31320-010, Brasil', NULL, NULL, 0, '', 0, 0, '2018-07-20 20:30:00', NULL, NULL, '0000-00-00 00:00:00', NULL),
(304, 'Criação identidade visual', 76, 65, '', NULL, NULL, NULL, '{\"longitude\":-43.9453002033608,\"latitudeDelta\":0.006779775810390021,\"latitude\":-19.92057930142377,\"longitudeDelta\":0.006898522425444753}', 'Av. Olegário Maciel, 742 - Centro, Belo Horizonte - MG, 30180-114, Brasil', 164, NULL, 0, '', 0, 3, '2018-07-18 13:06:00', NULL, NULL, '0000-00-00 00:00:00', NULL),
(303, '3 galões', 50, 316, '', NULL, NULL, NULL, '{\"longitudeDelta\":0.007554106414332296,\"latitudeDelta\":0.006779981554149828,\"longitude\":-43.950359243899584,\"latitude\":-19.920139318235712}', 'Rua dos Goitacazes, 1428 - Barro Preto, Belo Horizonte - MG, 30190-052, Brazil', NULL, NULL, 0, '', 0, 0, '2018-07-11 16:31:00', NULL, NULL, '0000-00-00 00:00:00', NULL),
(227, 'Teste', 55, 168, '65', NULL, NULL, NULL, '{\"longitudeDelta\":0.009014569222927094,\"latitudeDelta\":0.0067797391079444935,\"longitude\":-47.93024444952607,\"latitude\":-19.748477834840152}', 'R. P', 48, NULL, 0, '', 0, 0, '2018-06-19 17:27:00', NULL, NULL, '0000-00-00 00:00:00', NULL),
(226, 'Teste', 55, 168, '65', NULL, NULL, NULL, '', '', NULL, NULL, 0, '', 0, 0, '2018-06-19 17:27:00', NULL, NULL, '0000-00-00 00:00:00', NULL),
(301, 'Solda em portão', 50, 128, '', NULL, NULL, NULL, '', '', NULL, NULL, 0, '', 0, 4, '2018-07-10 15:16:00', NULL, NULL, '0000-00-00 00:00:00', NULL),
(302, 'Solda em portão', 50, 128, '', NULL, NULL, NULL, '', '', NULL, NULL, 0, '', 0, 0, '2018-07-10 15:16:00', NULL, NULL, '0000-00-00 00:00:00', NULL),
(300, 'armário  planejado \n', 166, 114, '', NULL, NULL, NULL, '{\"longitudeDelta\":0.0075467303395342356,\"latitudeDelta\":0.006779949260540263,\"longitude\":-43.944825511425734,\"latitude\":-19.920892367533312}', 'Av. Olegário Maciel, 748 - Centro, Belo Horizonte - MG, 30180-110, Brazil', 50, NULL, 0, '', 0, 3, '2018-07-11 14:00:00', NULL, NULL, '0000-00-00 00:00:00', NULL),
(180, 'Teste ', 55, 168, '', NULL, NULL, NULL, '{\"longitudeDelta\":0.007291249930858612,\"latitudeDelta\":0.00677973936264209,\"longitude\":-47.93025517836213,\"latitude\":-19.748471839259736}', 'R. P', 46, NULL, 0, '', 0, 2, '2018-06-14 09:56:00', NULL, NULL, '0000-00-00 00:00:00', NULL),
(181, 'Teste', 55, 168, '', NULL, NULL, NULL, '{\"longitudeDelta\":0.007639937102794647,\"latitudeDelta\":0.007104131811114911,\"longitude\":-47.93025551363826,\"latitude\":-19.74847215128907}', 'R. P', 46, NULL, 0, '', 0, 3, '2018-06-13 10:01:00', NULL, NULL, '0000-00-00 00:00:00', NULL),
(299, 'Redesenhar Logomarca ', 50, 65, '', NULL, NULL, NULL, '{\"longitudeDelta\":0.023767389357089996,\"latitudeDelta\":0.021331563836334055,\"longitude\":-43.94576596096158,\"latitude\":-19.920512210149614}', 'R. Rio Grande do Sul, 499 - Centro, Belo Horizonte - MG, 30170-110, Brazil', 164, NULL, 0, '', 0, 3, '2018-07-10 09:00:00', NULL, NULL, '0000-00-00 00:00:00', NULL),
(183, 'Ok', 153, 57, '', NULL, NULL, NULL, '{\"longitudeDelta\":0.006219707429401922,\"latitudeDelta\":0.0067801082062501905,\"longitude\":-43.97025955840945,\"latitude\":-19.902475516957725}', 'R. Gua', NULL, NULL, 0, '', 0, 0, '2018-06-14 18:14:00', NULL, NULL, '0000-00-00 00:00:00', NULL),
(184, 'Teste', 50, 168, '', NULL, NULL, NULL, '', '', NULL, NULL, 0, '', 0, 0, '2018-06-13 18:25:00', NULL, NULL, '0000-00-00 00:00:00', NULL),
(185, 'Teste', 50, 168, '', NULL, NULL, NULL, '{\"longitudeDelta\":0.007639937102794647,\"latitudeDelta\":0.007104131811114911,\"longitude\":-47.930253501981504,\"latitude\":-19.74847215128907}', 'R. P', 50, NULL, 0, '', 0, 3, '2018-06-13 18:25:00', NULL, NULL, '0000-00-00 00:00:00', NULL),
(186, 'Ok', 153, 57, '', NULL, NULL, NULL, '', '', NULL, NULL, 0, '', 0, 0, '2018-06-14 18:14:00', NULL, NULL, '0000-00-00 00:00:00', NULL),
(187, 'Teste', 55, 168, '', NULL, NULL, NULL, '{\"longitudeDelta\":0.008005388081073761,\"latitudeDelta\":0.007443671238153371,\"longitude\":-47.93026255443692,\"latitude\":-19.748467098510268}', 'R. P', 103, NULL, 0, '', 0, 0, '2018-06-13 18:33:00', NULL, NULL, '0000-00-00 00:00:00', NULL),
(188, 'Teste', 55, 168, '69,68', NULL, NULL, NULL, '', '', NULL, NULL, 0, '', 0, 0, '2018-06-13 18:41:00', NULL, NULL, '0000-00-00 00:00:00', NULL),
(298, 'Serviços', 50, 233, '', NULL, NULL, NULL, '{\"longitudeDelta\":0.00811602920293808,\"latitudeDelta\":0.0067799208254726295,\"longitude\":-43.981569763273,\"latitude\":-19.81833123216298}', 'Rua Newton da Costa Silveira, 428 - Rio Branco, Belo Horizonte - MG, 31535-030, Brazil', NULL, NULL, 0, '', 0, 4, '2018-07-09 14:00:00', NULL, NULL, '0000-00-00 00:00:00', NULL),
(191, 'Ok', 50, 57, '', NULL, NULL, NULL, '', '', NULL, NULL, 0, '', 0, 0, '2018-06-15 20:00:00', NULL, NULL, '0000-00-00 00:00:00', NULL),
(192, 'Ok', 50, 57, '', NULL, NULL, NULL, '{\"longitudeDelta\":0.006220377981655645,\"latitudeDelta\":0.0067801082062501905,\"longitude\":-43.97025955840945,\"latitude\":-19.902475516957725}', 'R. Gua', NULL, NULL, 0, '', 0, 0, '2018-06-15 20:00:00', NULL, NULL, '0000-00-00 00:00:00', NULL),
(193, 'Teste', 55, 337, '', NULL, NULL, NULL, '', '', NULL, NULL, 0, '', 0, 3, '2018-06-13 21:10:00', NULL, NULL, '0000-00-00 00:00:00', NULL),
(194, 'Teste', 55, 88, '', NULL, NULL, NULL, '{\"longitudeDelta\":0.006958656013004827,\"latitudeDelta\":0.006779739000695173,\"longitude\":-47.93024914339185,\"latitude\":-19.748480359295}', 'R. P', NULL, NULL, 0, '', 0, 0, '2018-06-15 21:15:00', NULL, NULL, '0000-00-00 00:00:00', NULL),
(195, 'Teste', 55, 168, '64', NULL, NULL, NULL, '{\"longitudeDelta\":0.004305280745022344,\"latitudeDelta\":0.004003468988283743,\"longitude\":-47.93025450780988,\"latitude\":-19.74851288509528}', 'R. P', 50, NULL, 0, '', 0, 0, '2018-06-15 21:15:00', NULL, NULL, '0000-00-00 00:00:00', NULL),
(196, 'Ok', 50, 168, '64', NULL, NULL, NULL, '{\"longitudeDelta\":0.006220377981669856,\"latitudeDelta\":0.006780108354821124,\"longitude\":-43.970267940312624,\"latitude\":-19.90247204919416}', 'R. Gua', 152, NULL, 0, '', 0, 0, '2018-06-15 21:15:00', NULL, NULL, '0000-00-00 00:00:00', NULL),
(197, 'Ok', 50, 247, '', NULL, NULL, NULL, '', '', NULL, NULL, 0, '', 0, 0, '2018-06-16 22:30:00', NULL, NULL, '0000-00-00 00:00:00', NULL),
(198, 'Ok', 50, 233, '', NULL, NULL, NULL, '{\"longitudeDelta\":0.006599910557284261,\"latitudeDelta\":0.0067801082062501905,\"longitude\":-43.97025955840945,\"latitude\":-19.902475516957725}', 'R. Gua', 103, NULL, 0, '', 0, 0, '2018-06-15 07:30:00', NULL, NULL, '0000-00-00 00:00:00', NULL),
(199, 'Teste', 55, 168, '', NULL, NULL, NULL, '', '', NULL, NULL, 0, '', 0, 0, '2018-06-14 09:47:00', NULL, NULL, '0000-00-00 00:00:00', NULL),
(200, 'Ok', 50, 233, '', NULL, NULL, NULL, '{\"longitudeDelta\":0.006599910557284261,\"latitudeDelta\":0.007194348322158817,\"longitude\":-43.97025955840945,\"latitude\":-19.902475512385426}', 'R. Gua', NULL, NULL, 0, '', 0, 0, '2018-06-16 09:50:00', NULL, NULL, '0000-00-00 00:00:00', NULL),
(201, 'Teste', 55, 168, '', NULL, NULL, NULL, '{\"longitudeDelta\":0.006958656013011932,\"latitudeDelta\":0.006779739282222863,\"longitude\":-47.93025182560086,\"latitude\":-19.748473732600942}', 'R. P', 103, NULL, 0, '', 0, 0, '2018-06-14 09:47:00', NULL, NULL, '0000-00-00 00:00:00', NULL),
(202, 'Ok', 50, 233, '', NULL, NULL, NULL, '{\"longitudeDelta\":0.006600581109530879,\"latitudeDelta\":0.007194348322158817,\"longitude\":-43.97025955840945,\"latitude\":-19.902475512385426}', 'R. Gua', NULL, NULL, 0, '', 0, 0, '2018-06-16 09:50:00', NULL, NULL, '0000-00-00 00:00:00', NULL),
(203, 'Teste', 55, 168, '65', NULL, NULL, NULL, '{\"latitudeDelta\":0.006068612049798361,\"latitude\":-19.751978367677054,\"longitude\":-47.93307253582182,\"longitudeDelta\":0.008059979207075685}', 'R. do Carmo, 290 - Nossa Sra. da Abadia, Uberaba - MG, 38025-000, Brasil', 48, NULL, 0, '', 0, 0, '2018-06-14 11:47:00', NULL, NULL, '0000-00-00 00:00:00', NULL),
(297, 'Manutenção de celular', 159, 327, '', NULL, NULL, NULL, '{\"longitudeDelta\":0.0075299665331840515,\"latitudeDelta\":0.006779788147770915,\"longitude\":-44.010155741125345,\"latitude\":-19.880496882473572}', 'R. Me. de Deus, 77 - Serrano, Belo Horizonte - MG, 30882-620, Brazil', NULL, NULL, 0, '', 0, 0, '2018-07-06 22:30:00', NULL, NULL, '0000-00-00 00:00:00', NULL),
(296, 'Xerox ', 159, 357, '', NULL, NULL, NULL, '{\"longitudeDelta\":0.007529966533191157,\"latitudeDelta\":0.0067797884985481005,\"longitude\":-44.01015875861049,\"latitude\":-19.880488684803655}', 'R. Me. de Deus, 77 - Serrano, Belo Horizonte - MG, 30882-620, Brazil', NULL, NULL, 0, '', 0, 0, '2018-07-09 09:30:00', NULL, NULL, '0000-00-00 00:00:00', NULL),
(210, 'Ok', 50, 168, '64', NULL, NULL, NULL, '{\"longitudeDelta\":0.008120723068714142,\"latitudeDelta\":0.0067801086384378095,\"longitude\":-43.97027799859643,\"latitude\":-19.902465428918056}', 'R. Gua', 152, NULL, 0, '', 0, 0, '2018-06-19 09:30:00', NULL, NULL, '0000-00-00 00:00:00', NULL),
(211, 'Notificar empresa de celular', 50, 168, '64', NULL, NULL, NULL, '{\"longitudeDelta\":0.007553435862057256,\"latitudeDelta\":0.00678010848988464,\"longitude\":-43.97028034552932,\"latitude\":-19.902468896681768}', 'R. Gua', 152, NULL, 0, '', 0, 0, '2018-06-19 10:30:00', NULL, NULL, '0000-00-00 00:00:00', NULL),
(212, 'Ok', 50, 168, '64', NULL, NULL, NULL, '{\"longitudeDelta\":0.007553435862071467,\"latitudeDelta\":0.006780108246772443,\"longitude\":-43.97026425227523,\"latitude\":-19.902474571204035}', 'R. Gua', 152, NULL, 0, '', 0, 0, '2018-06-19 12:00:00', NULL, NULL, '0000-00-00 00:00:00', NULL),
(295, 'Cartão', 164, 65, '', NULL, NULL, NULL, '{\"longitudeDelta\":0.03762837499379401,\"latitudeDelta\":0.02914932023972483,\"longitude\":-44.03608297929168,\"latitude\":-19.942168540400512}', 'R. Gilda Maria da Silva, 946 - Eldorado, Contagem - MG, 32310-220, Brazil', NULL, NULL, 0, '', 0, 4, '2018-07-11 04:31:00', NULL, NULL, '0000-00-00 00:00:00', NULL),
(294, 'Cartão', 164, 65, '', NULL, NULL, NULL, '{\"longitudeDelta\":0.03762301057577133,\"latitudeDelta\":0.02914874249578503,\"longitude\":-43.946122359484434,\"latitude\":-19.92138094427357}', 'R. Rio Grande do Sul, 551 - Barro Preto, Belo Horizonte - MG, 30170-110, Brazil', NULL, NULL, 0, '', 0, 0, '2018-07-11 04:23:00', NULL, NULL, '0000-00-00 00:00:00', NULL),
(293, 'Teste\n', 55, 282, '', NULL, NULL, NULL, '{\"latitudeDelta\":0.005787614709564792,\"latitude\":-19.748534824483826,\"longitude\":-47.93014670494015,\"longitudeDelta\":0.011244410850480335}', 'R. Píres de Campos, 76 - Estados Unidos, Uberaba - MG, 38015-120, Brasil', NULL, NULL, 0, '', 0, 0, '2018-07-06 10:58:00', NULL, NULL, '0000-00-00 00:00:00', NULL),
(217, 'Teste\n', 55, 168, '66,67', NULL, NULL, NULL, '', '', NULL, NULL, 0, '', 0, 0, '2018-06-18 18:21:00', NULL, NULL, '0000-00-00 00:00:00', NULL),
(218, 'Teste\n', 55, 168, '66,67', NULL, NULL, NULL, '{\"longitudeDelta\":0.007827021181576299,\"latitudeDelta\":0.006779739121355988,\"longitude\":-47.930246125906706,\"latitude\":-19.7484775192833}', 'R. P', 48, NULL, 0, '', 0, 0, '2018-06-18 18:21:00', NULL, NULL, '0000-00-00 00:00:00', NULL),
(292, 'Sertanejo', 76, 57, '92', NULL, NULL, NULL, '{\"longitude\":-43.98242089689455,\"latitudeDelta\":0.0067797758101200145,\"latitude\":-19.87799716575554,\"longitudeDelta\":0.006896666809041108}', 'R. Júlio Soares Santana, 369 - Ouro Preto, Belo Horizonte - MG, 31320-010, Brasil', 133, NULL, 0, '', 0, 3, '2018-07-07 21:05:00', NULL, NULL, '0000-00-00 00:00:00', NULL),
(225, '02 gal', 50, 316, '', NULL, NULL, NULL, '{\"longitudeDelta\":0.006915740668766546,\"latitudeDelta\":0.006780108287291142,\"longitude\":-43.97025955840945,\"latitude\":-19.90247362545034}', 'R. Gua', 96, NULL, 0, '', 0, 0, '2018-06-20 10:00:00', NULL, NULL, '0000-00-00 00:00:00', NULL),
(228, 'Fds cvd', 55, 168, '', NULL, NULL, NULL, '', '', NULL, NULL, 0, '', 0, 0, '2018-06-19 17:37:00', NULL, NULL, '0000-00-00 00:00:00', NULL),
(230, 'Teste', 55, 168, '65', NULL, NULL, NULL, '{\"longitudeDelta\":0.009014569222919988,\"latitudeDelta\":0.006779738839835403,\"longitude\":-47.93024914339185,\"latitude\":-19.748484145977194}', 'R. P', 46, NULL, 0, '', 0, 3, '2018-06-19 17:49:00', NULL, NULL, '0000-00-00 00:00:00', NULL),
(231, 'Sertanejo universit', 50, 57, '', NULL, NULL, NULL, '', '', NULL, NULL, 0, '', 0, 0, '2018-06-20 18:30:00', NULL, NULL, '0000-00-00 00:00:00', NULL),
(232, 'Treinamento para o meu cachorro', 50, 200, '', NULL, NULL, NULL, '', '', NULL, NULL, 0, '', 0, 0, '2018-06-21 09:00:00', NULL, NULL, '0000-00-00 00:00:00', NULL),
(233, 'Teste', 50, 168, '311', NULL, NULL, NULL, '{\"longitudeDelta\":0.008511990308761597,\"latitudeDelta\":0.006779738839835403,\"longitude\":-47.930246293544776,\"latitude\":-19.748484145977194}', 'R. P', NULL, NULL, 0, '', 0, 0, '2018-06-20 18:06:00', NULL, NULL, '0000-00-00 00:00:00', NULL),
(235, 'Descarregar materiais de constru', 50, 282, '', NULL, NULL, NULL, '{\"longitudeDelta\":0.008120723068707036,\"latitudeDelta\":0.006780108192764089,\"longitude\":-43.9702639169991,\"latitude\":-19.902475832208964}', 'R. Gua', 91, NULL, 0, '', 0, 0, '2018-06-22 09:00:00', NULL, NULL, '0000-00-00 00:00:00', NULL),
(236, 'Explicar sobre os pol', 50, 241, '', NULL, NULL, NULL, '{\"longitudeDelta\":0.00873025506733427,\"latitudeDelta\":0.007288923763688615,\"longitude\":-43.97025955840945,\"latitude\":-19.90247393504735}', 'R. Gua', NULL, NULL, 0, '', 0, 0, '2018-06-22 10:00:00', NULL, NULL, '0000-00-00 00:00:00', NULL),
(237, 'Apenas conhecer o procedimento', 50, 233, '', NULL, NULL, NULL, '{\"longitudeDelta\":0.009385384619235992,\"latitudeDelta\":0.007836199903859864,\"longitude\":-43.97025955840945,\"latitude\":-19.902473928509217}', 'R. Gua', 152, NULL, 0, '', 0, 0, '2018-06-22 10:00:00', NULL, NULL, '0000-00-00 00:00:00', NULL),
(289, 'Eduardo  de  Jesus  Santos ', 163, 196, '', NULL, NULL, NULL, '', '', NULL, NULL, 0, '', 0, 0, '2018-07-06 20:55:00', NULL, NULL, '0000-00-00 00:00:00', NULL),
(290, 'Músicas dancantes', 165, 57, '92', NULL, NULL, NULL, '{\"longitudeDelta\":0.007669441401965571,\"latitudeDelta\":0.006780157093807304,\"longitude\":-43.987040463835,\"latitude\":-19.842357997634906}', 'R. Eugênio Sáles, 49 - Copacabana, Belo Horizonte - MG, 31550-240, Brazil', 133, NULL, 0, '', 0, 3, '2018-07-13 21:00:00', NULL, NULL, '0000-00-00 00:00:00', NULL),
(291, 'Cartão de visita', 76, 271, '', NULL, NULL, NULL, '{\"longitude\":-43.98222775622567,\"latitudeDelta\":0.0037677032277088074,\"latitude\":-19.878123690660253,\"longitudeDelta\":0.004006413263169861}', 'R. Júlio Soares Santana, 370 - Ouro Preto, Belo Horizonte - MG, 31320-010, Brasil', NULL, NULL, 0, '', 0, 4, '2018-07-06 21:03:00', NULL, NULL, '0000-00-00 00:00:00', NULL),
(239, 'Hhhh', 55, 135, '', NULL, NULL, NULL, '{\"longitudeDelta\":0.0329519435763288,\"latitudeDelta\":0.024908943603747957,\"longitude\":-48.27224051579833,\"latitude\":-18.915747955754195}', 'Av. Ces', NULL, NULL, 0, '', 0, 0, '2018-06-21 18:20:00', NULL, NULL, '0000-00-00 00:00:00', NULL),
(240, 'Hhhh', 55, 200, '', NULL, NULL, NULL, '{\"longitudeDelta\":0.03295194357633591,\"latitudeDelta\":0.02624707259287362,\"longitude\":-47.93024545535445,\"latitude\":-19.7484776468233}', 'R. P', 50, NULL, 0, '', 0, 0, '2018-06-21 18:20:00', NULL, NULL, '0000-00-00 00:00:00', NULL),
(241, 'High school ', 55, 168, '', NULL, NULL, NULL, '{\"longitudeDelta\":0.009014569222927094,\"latitudeDelta\":0.0067797391079444935,\"longitude\":-47.9302360676229,\"latitude\":-19.748477834840152}', 'R. P', 50, NULL, 0, '', 0, 3, '2018-06-22 16:43:00', NULL, NULL, '0000-00-00 00:00:00', NULL),
(242, 'Passear com o cachorro', 50, 200, '', NULL, NULL, NULL, '{\"longitudeDelta\":0.007553435862064362,\"latitudeDelta\":0.006780108152220521,\"longitude\":-43.97026056423783,\"latitude\":-19.90247677796264}', 'R. Gua', 150, NULL, 0, '', 0, 0, '2018-06-23 17:00:00', NULL, NULL, '0000-00-00 00:00:00', NULL),
(244, 'Causa', 50, 168, '64', NULL, NULL, NULL, '{\"longitudeDelta\":0.007553435862064362,\"latitudeDelta\":0.006780108503392057,\"longitude\":-43.9702676050365,\"latitude\":-19.90246858143052}', 'R. Gua', 152, NULL, 0, '', 0, 0, '2018-06-30 12:00:00', NULL, NULL, '0000-00-00 00:00:00', NULL),
(245, 'Eu n', 55, 169, '', NULL, NULL, NULL, '{\"longitudeDelta\":0.008993782103061676,\"latitudeDelta\":0.006763961224905302,\"longitude\":-47.930239755660295,\"latitude\":-19.74847878167809}', 'R. P', 46, NULL, 0, '', 0, 3, '2018-06-22 16:58:00', NULL, NULL, '0000-00-00 00:00:00', NULL),
(288, 'Cartão de visita', 164, 271, '400', NULL, NULL, NULL, '{\"longitudeDelta\":0.00875037163496728,\"latitudeDelta\":0.006779332293906037,\"longitude\":-43.945565801113844,\"latitude\":-19.920578413559802}', 'R. Rio Grande do Sul, 499 - Centro, Belo Horizonte - MG, 30170-110, Brazil', 76, NULL, 0, '', 0, 0, '2018-07-06 09:11:00', NULL, NULL, '0000-00-00 00:00:00', NULL),
(247, '20 gal', 50, 316, '', NULL, NULL, NULL, '{\"longitudeDelta\":0.02376940101385827,\"latitudeDelta\":0.021333703473178645,\"longitude\":-43.93925791606307,\"latitude\":-19.918671657354608}', 'Av. Afonso Pena, 578 - Centro, Belo Horizonte - MG, 30130-001, Brazil', 96, NULL, 0, '', 0, 4, '2018-06-23 09:00:00', NULL, NULL, '0000-00-00 00:00:00', NULL),
(248, 'Teste agora', 55, 168, '', NULL, NULL, NULL, '{\"longitudeDelta\":0.009014569222927094,\"latitudeDelta\":0.0067797391079444935,\"longitude\":-47.93023372069001,\"latitude\":-19.748477834840152}', 'R. P', 50, NULL, 0, '', 0, 0, '2018-06-22 18:28:00', NULL, NULL, '0000-00-00 00:00:00', NULL),
(249, 'Teste', 55, 168, '', NULL, NULL, NULL, '{\"longitudeDelta\":0.008790604770183563,\"latitudeDelta\":0.006227776728312762,\"longitude\":-47.93425904586911,\"latitude\":-19.75793101280395}', 'R. Jos', 48, NULL, 0, '', 0, 0, '2018-06-25 10:03:00', NULL, NULL, '0000-00-00 00:00:00', NULL),
(250, 'T', 55, 168, '', NULL, NULL, NULL, '{\"longitudeDelta\":0.004784725606448603,\"latitudeDelta\":0.003390012788251795,\"longitude\":-47.92947633191943,\"latitude\":-19.749162618754465}', 'R. Sen. Feij', 103, NULL, 0, '', 0, 4, '2018-06-25 11:54:00', NULL, NULL, '0000-00-00 00:00:00', NULL),
(251, 'Hhhh', 55, 168, '', NULL, NULL, NULL, '{\"longitudeDelta\":0.009014569222934199,\"latitudeDelta\":0.006779738839835403,\"longitude\":-47.93024880811572,\"latitude\":-19.748484145977194}', 'R. P', NULL, NULL, 0, '', 0, 0, '2018-06-25 13:49:00', NULL, NULL, '0000-00-00 00:00:00', NULL),
(253, ' Notificar a Tim', 50, 168, '311', NULL, NULL, NULL, '{\"longitudeDelta\":0.007553435862064362,\"latitudeDelta\":0.006780108287291142,\"longitude\":-43.97025955840945,\"latitude\":-19.90247362545034}', 'R. Gua', NULL, NULL, 0, '', 0, 0, '2018-06-28 15:00:00', NULL, NULL, '0000-00-00 00:00:00', NULL),
(254, 'Teste Gerald', 55, 168, '', NULL, NULL, NULL, '{\"longitudeDelta\":0.008790604770190669,\"latitudeDelta\":0.006779738839835403,\"longitude\":-47.930249478667974,\"latitude\":-19.748484145977194}', 'R. P', 50, NULL, 0, '', 0, 3, '2018-06-25 14:22:00', NULL, NULL, '0000-00-00 00:00:00', NULL),
(255, 'Show ao vivo', 50, 57, '92', NULL, NULL, NULL, '{\"longitudeDelta\":0.008120723068707036,\"latitudeDelta\":0.006780108287291142,\"longitude\":-43.97025955840945,\"latitude\":-19.90247362545034}', 'R. Gua', NULL, NULL, 0, '', 0, 0, '2018-06-27 19:00:00', NULL, NULL, '0000-00-00 00:00:00', NULL),
(256, 'Teste', 55, 168, '', NULL, NULL, NULL, '{\"longitudeDelta\":0.00956911593676324,\"latitudeDelta\":0.006779738866651286,\"longitude\":-47.930120062083006,\"latitude\":-19.74848351486351}', 'R. P', 152, NULL, 0, '', 0, 0, '2018-06-25 18:29:00', NULL, NULL, '0000-00-00 00:00:00', NULL),
(257, 'Hhhh', 55, 168, '', NULL, NULL, NULL, '{\"longitudeDelta\":0.00956911593676324,\"latitudeDelta\":0.007379927989745738,\"longitude\":-47.930120062083006,\"latitude\":-19.748483508207233}', 'R. P', 48, NULL, 0, '', 0, 0, '2018-06-25 18:30:00', NULL, NULL, '0000-00-00 00:00:00', NULL),
(287, 'Segurança para evento particular', 50, 195, '', NULL, NULL, NULL, '{\"longitudeDelta\":0.008120723068714142,\"latitudeDelta\":0.006779331793808296,\"longitude\":-43.94555943086743,\"latitude\":-19.920590076520018}', 'R. Rio Grande do Sul, 499 - Centro, Belo Horizonte - MG, 30170-110, Brazil', 163, NULL, 0, '', 0, 3, '2018-07-06 14:30:00', NULL, NULL, '0000-00-00 00:00:00', NULL),
(259, 'Teste', 55, 168, '', NULL, NULL, NULL, '{\"longitudeDelta\":0.00956911593676324,\"latitudeDelta\":0.006779738839835403,\"longitude\":-47.930249478667974,\"latitude\":-19.748484145977194}', 'R. P', NULL, NULL, 0, '', 0, 0, '2018-06-26 12:44:00', NULL, NULL, '0000-00-00 00:00:00', NULL),
(285, 'Xeox', 159, 357, '', NULL, NULL, NULL, '', '', NULL, NULL, 0, '', 0, 0, '2018-07-04 09:45:00', NULL, NULL, '0000-00-00 00:00:00', NULL),
(286, 'Treinamento para meu cachorro', 50, 200, '', NULL, NULL, NULL, '{\"longitudeDelta\":0.007553435862057256,\"latitudeDelta\":0.006780147913591605,\"longitude\":-43.970912005752325,\"latitude\":-19.901548675628106}', 'R. Dr. Pedro Pinto, 77 - Alto Caiçaras, Belo Horizonte - MG, 30775-490, Brazil', 162, NULL, 0, '', 0, 0, '2018-07-05 21:00:00', NULL, NULL, '0000-00-00 00:00:00', NULL),
(261, 'Ffff\n', 55, 233, '', NULL, NULL, NULL, '{\"longitudeDelta\":0.009569115936749029,\"latitudeDelta\":0.006779738719188799,\"longitude\":-47.930231038481,\"latitude\":-19.748486985988787}', 'R. P', 61, NULL, 0, '', 0, 0, '2018-06-27 10:30:00', NULL, NULL, '0000-00-00 00:00:00', NULL),
(262, 'Bhhh', 55, 169, '', NULL, NULL, NULL, '{\"longitudeDelta\":0.00956911593676324,\"latitudeDelta\":0.007379927960556643,\"longitude\":-47.930249478667974,\"latitude\":-19.74848413932092}', 'R. P', 46, NULL, 0, '', 0, 0, '2018-06-27 10:33:00', NULL, NULL, '0000-00-00 00:00:00', NULL),
(263, 'Teste', 55, 2, '', NULL, NULL, NULL, '{\"longitudeDelta\":0.00956911593676324,\"latitudeDelta\":0.006779738839835403,\"longitude\":-47.930249478667974,\"latitude\":-19.748484145977194}', 'R. P', 46, NULL, 0, '', 0, 0, '2018-06-27 12:00:00', NULL, NULL, '0000-00-00 00:00:00', NULL),
(264, 'B', 156, 233, '', NULL, NULL, NULL, '{\"longitudeDelta\":0.007103495299801921,\"latitudeDelta\":0.00254166268773659,\"longitude\":-48.54607092216611,\"latitude\":-27.584017712019737}', 'Av. Jorn. Rub', NULL, NULL, 0, '', 0, 4, '2018-06-27 04:25:00', NULL, NULL, '0000-00-00 00:00:00', NULL),
(265, 'H', 156, 200, '', NULL, NULL, NULL, '{\"longitudeDelta\":0.007103495299823237,\"latitudeDelta\":0.006785280072477917,\"longitude\":-48.54902671650052,\"latitude\":-27.592268473773228}', 'Av. Rio Branco, 936 - Centro, Florian', NULL, NULL, 0, '', 0, 0, '2018-06-27 14:18:00', NULL, NULL, '0000-00-00 00:00:00', NULL),
(266, 'Teste\n', 55, 168, '', NULL, NULL, NULL, '{\"longitudeDelta\":0.008790604770183563,\"latitudeDelta\":0.006779738263428925,\"longitude\":-47.93024444952607,\"latitude\":-19.748497714920994}', 'R. P', 152, NULL, 0, '', 0, 3, '2018-06-27 18:15:00', NULL, NULL, '0000-00-00 00:00:00', NULL),
(267, 'Teste', 55, 168, '', NULL, NULL, NULL, '{\"longitudeDelta\":0.008790604770183563,\"latitudeDelta\":0.006779738263428925,\"longitude\":-47.93024444952607,\"latitude\":-19.748497714920994}', 'R. P', 152, NULL, 0, '', 0, 4, '2018-06-28 09:59:00', NULL, NULL, '0000-00-00 00:00:00', NULL),
(268, 'Notificar companhia de celular', 50, 168, '311', NULL, NULL, NULL, '', '', NULL, NULL, 0, '', 0, 0, '2018-06-29 15:00:00', NULL, NULL, '0000-00-00 00:00:00', NULL),
(269, 'Notificar companhia de celular', 50, 168, '311', NULL, NULL, NULL, '{\"longitudeDelta\":0.007552094757556915,\"latitudeDelta\":0.006779894925124097,\"longitude\":-43.982460256665945,\"latitude\":-19.878001302986338}', 'R. J', NULL, NULL, 0, '', 0, 0, '2018-06-29 15:00:00', NULL, NULL, '0000-00-00 00:00:00', NULL),
(270, 'Agua', 156, 316, '', NULL, NULL, NULL, '{\"longitudeDelta\":0.016556270420558405,\"latitudeDelta\":0.015814293411771985,\"longitude\":-48.54902671650052,\"latitude\":-27.59226824111937}', 'Av. Rio Branco, 936 - Centro, Florian', 152, NULL, 0, '', 0, 4, '2018-06-29 16:03:00', NULL, NULL, '0000-00-00 00:00:00', NULL),
(271, 'Teste', 55, 316, '', NULL, NULL, NULL, '{\"longitudeDelta\":0.008790604770183563,\"latitudeDelta\":0.006779738263428925,\"longitude\":-47.93024444952607,\"latitude\":-19.748497714920994}', 'R. P', 152, NULL, 0, '', 0, 3, '2018-06-29 08:11:00', NULL, NULL, '0000-00-00 00:00:00', NULL),
(272, 'C', 76, 168, '', NULL, NULL, NULL, '{\"longitude\":-43.94522429014374,\"latitudeDelta\":0.00677977581037581,\"latitude\":-19.920667450072926,\"longitudeDelta\":0.006898526271697847}', 'R. Rio Grande do Sul, 481 - Centro, Belo Horizonte - MG, 30180-110, Brasil', 50, NULL, 0, '', 0, 3, '2018-07-30 12:04:00', NULL, NULL, '0000-00-00 00:00:00', NULL),
(273, 'Impress', 50, 271, '401,400', NULL, NULL, NULL, '', '', NULL, NULL, 0, '', 0, 0, '2018-06-30 14:00:00', NULL, NULL, '0000-00-00 00:00:00', NULL),
(274, 'Ok', 50, 271, '', NULL, NULL, NULL, '{\"longitudeDelta\":0.008120723068714142,\"latitudeDelta\":0.006779332253373127,\"longitude\":-43.9455627836287,\"latitude\":-19.920579359205263}', 'R. Rio Grande do Sul, 499 - Centro, Belo Horizonte - MG, 30170-110, Brazil', 76, NULL, 0, '', 0, 0, '2018-06-30 14:00:00', NULL, NULL, '0000-00-00 00:00:00', NULL),
(275, 'Passear com o cachorro', 50, 200, '', NULL, NULL, NULL, '{\"longitudeDelta\":0.007553435862057256,\"latitudeDelta\":0.006780108692456821,\"longitude\":-43.97025754675269,\"latitude\":-19.902464167913045}', 'R. Gua', NULL, NULL, 0, '', 0, 0, '2018-07-03 18:00:00', NULL, NULL, '0000-00-00 00:00:00', NULL),
(276, 'Projeto de casa', 50, 96, '', NULL, NULL, NULL, '{\"longitudeDelta\":0.007553435862071467,\"latitudeDelta\":0.006780028976049124,\"longitude\":-43.97039735689759,\"latitude\":-19.90432476986694}', 'R. Gua', 65, NULL, 0, '', 0, 0, '2018-07-03 20:00:00', NULL, NULL, '0000-00-00 00:00:00', NULL),
(277, 'Notificar', 65, 168, '311', NULL, NULL, NULL, '{\"longitudeDelta\":0.01074325293302536,\"latitudeDelta\":0.00677992367707958,\"longitude\":-43.98166196420789,\"latitude\":-19.818264363425325}', 'Rua Newton da Costa Silveira, 440 - Rio Branco, Belo Horizonte - MG, 31535-030, Brazil', 50, NULL, 0, '', 0, 0, '2018-07-03 20:27:00', NULL, NULL, '0000-00-00 00:00:00', NULL),
(278, 'Hwjsbjsjaababbwwhjw', 132, 200, '', NULL, NULL, NULL, '', '', NULL, NULL, 0, '', 0, 4, '2018-07-28 09:00:00', NULL, NULL, '0000-00-00 00:00:00', NULL),
(279, 'Tesgdhd', 156, 233, '', NULL, NULL, NULL, '{\"longitudeDelta\":0.021620281040675593,\"latitudeDelta\":0.0067798407589307885,\"longitude\":-48.49840136244893,\"latitude\":-27.55526068951876}', 'Rod. Virg', NULL, NULL, 0, '', 0, 0, '2018-07-05 03:41:00', NULL, NULL, '0000-00-00 00:00:00', NULL),
(280, 'Gfg', 156, 233, '', NULL, NULL, NULL, '', '', NULL, NULL, 0, '', 0, 0, '2018-07-17 19:42:00', NULL, NULL, '0000-00-00 00:00:00', NULL),
(281, 'Notificar companhia X', 50, 168, '311', NULL, NULL, NULL, '{\"longitudeDelta\":0.008750371634960175,\"latitudeDelta\":0.006780032007739578,\"longitude\":-46.64555383846164,\"latitude\":-23.570648512919952}', 'Condom', 55, NULL, 0, '', 0, 0, '2018-07-03 10:00:00', NULL, NULL, '0000-00-00 00:00:00', NULL),
(282, 'Consertar tablet Samsung', 50, 327, '', NULL, NULL, NULL, '{\"longitudeDelta\":0.008120723068721247,\"latitudeDelta\":0.00678018367589317,\"longitude\":-43.970678988844156,\"latitude\":-19.900713883281124}', 'R. Todos Os Santos, 17 - Alto Cai', 159, NULL, 0, '', 0, 0, '2018-07-04 14:00:00', NULL, NULL, '0000-00-00 00:00:00', NULL),
(283, 'Cível ', 76, 168, '311', NULL, NULL, NULL, '{\"longitude\":-43.982338255220476,\"latitudeDelta\":0.006779775810130673,\"latitude\":-19.877890216794775,\"longitudeDelta\":0.006896662154531441}', 'R. Júlio Soares Santana, 369 - Ouro Preto, Belo Horizonte - MG, 31320-010, Brasil', 50, NULL, 0, '', 0, 3, '2018-07-07 22:33:00', NULL, NULL, '0000-00-00 00:00:00', NULL),
(284, 'Cível ', 76, 168, '311', NULL, NULL, NULL, '{\"longitude\":-43.98236691085677,\"latitudeDelta\":0.006779775810080935,\"latitude\":-19.87796382910203,\"longitudeDelta\":0.006896665358141263}', 'R. Júlio Soares Santana, 369 - Ouro Preto, Belo Horizonte - MG, 31320-010, Brasil', 50, NULL, 0, '', 0, 3, '2018-07-07 22:33:00', NULL, NULL, '0000-00-00 00:00:00', NULL),
(309, 'Testando APP', 50, 257, '388', NULL, NULL, NULL, '{\"longitudeDelta\":0.008120723068707036,\"latitudeDelta\":0.006780108800519713,\"longitude\":-43.97025955840945,\"latitude\":-19.902461645903013}', 'R. Guaíra, 416 - Alto Caiçaras, Belo Horizonte - MG, 30770-480, Brazil', 179, NULL, 0, '', 0, 0, '2018-07-24 09:00:00', NULL, NULL, '0000-00-00 00:00:00', NULL),
(310, 'Treinar cao', 180, 200, '', NULL, NULL, NULL, '{\"longitude\":-43.970052977642425,\"latitudeDelta\":0.006779775810208832,\"latitude\":-19.90241857286599,\"longitudeDelta\":0.006897730440982741}', 'R. Alexandre Siqueira, 272 - Caiçaras, Belo Horizonte - MG, 30775-540, Brasil', 50, NULL, 0, '', 0, 3, '2018-07-24 22:47:00', NULL, NULL, '0000-00-00 00:00:00', NULL),
(311, 'Jsjhahahba', 76, 156, '279', NULL, NULL, NULL, '{\"longitude\":-43.945527246837926,\"latitudeDelta\":0.006779775810084487,\"latitude\":-19.920772537616404,\"longitudeDelta\":0.006898530856801699}', 'R. Rio Grande do Sul, 499 - Centro, Belo Horizonte - MG, 30170-110, Brasil', NULL, NULL, 0, '', 0, 0, '2018-07-27 18:05:00', NULL, NULL, '0000-00-00 00:00:00', NULL),
(312, 'Jantar romantico', 181, 45, '', NULL, NULL, NULL, '{\"longitudeDelta\":0.008139498531811284,\"latitudeDelta\":0.006779764503591412,\"longitude\":-38.65554856136441,\"latitude\":-3.7575910569440074}', 'R. Ribeiro Bezerra, 153 - Gov Ciro Gomes, Caucaia - CE, 61604-420, Brazil', NULL, NULL, 0, '', 0, 4, '2018-07-28 19:00:00', NULL, NULL, '0000-00-00 00:00:00', NULL),
(313, 'Faxina na casa', 181, 282, '', NULL, NULL, NULL, '{\"longitudeDelta\":0.00813949853181839,\"latitudeDelta\":0.006779764555599588,\"longitude\":-38.65554453805089,\"latitude\":-3.7575843658366646}', 'R. Ribeiro Bezerra, 153 - Gov Ciro Gomes, Caucaia - CE, 61604-420, Brazil', 91, NULL, 0, '', 0, 0, '2018-07-28 09:01:00', NULL, NULL, '0000-00-00 00:00:00', NULL),
(314, 'Faxina na casa', 181, 282, '', NULL, NULL, NULL, '{\"longitudeDelta\":0.00813949853181839,\"latitudeDelta\":0.006779764555599588,\"longitude\":-38.65554453805089,\"latitude\":-3.7575843658366646}', 'R. Ribeiro Bezerra, 153 - Gov Ciro Gomes, Caucaia - CE, 61604-420, Brazil', NULL, NULL, 0, '', 0, 0, '2018-07-28 09:01:00', NULL, NULL, '0000-00-00 00:00:00', NULL),
(315, 'Adestrador de  cães ', 183, 200, '', NULL, NULL, NULL, '{\"longitudeDelta\":0.007545389235012578,\"latitudeDelta\":0.006779636995243976,\"longitude\":-43.914404567331076,\"latitude\":-19.898756769769037}', 'R. Eng. Odilon Fernandes, 55 - Horto Florestal, Belo Horizonte - MG, 31035-260, Brazil', 50, NULL, 0, '', 0, 3, '2018-07-27 18:50:00', NULL, NULL, '0000-00-00 00:00:00', NULL),
(316, '5000 salgados e doces', 50, 50, '', NULL, NULL, NULL, '', '', NULL, NULL, 0, '', 0, 0, '2018-07-28 13:00:00', NULL, NULL, '0000-00-00 00:00:00', NULL),
(317, '5000 salgados fritos', 50, 50, '', NULL, NULL, NULL, '', '', NULL, NULL, 0, '', 0, 0, '2018-07-28 13:00:00', NULL, NULL, '0000-00-00 00:00:00', NULL),
(318, 'Atendimento para 200 pessoas', 50, 44, '', NULL, NULL, NULL, '{\"longitudeDelta\":0.007553435862064362,\"latitudeDelta\":0.006780110407742512,\"longitude\":-43.970334995537996,\"latitude\":-19.902424130998924}', 'R. Guaíra, 416 - Alto Caiçaras, Belo Horizonte - MG, 30770-480, Brazil', 171, NULL, 0, '', 0, 0, '2018-07-30 17:00:00', NULL, NULL, '0000-00-00 00:00:00', NULL),
(319, 'Teste', 55, 168, '', NULL, NULL, NULL, '{\"longitudeDelta\":0.006882883608341217,\"latitudeDelta\":0.006779389379239831,\"longitude\":-47.91185522451997,\"latitude\":-19.712098821546938}', 'Rua 15 Residencial Maria Alice - Eldorado, Uberaba - MG, Brazil', NULL, NULL, 0, '', 0, 0, '2018-08-15 07:12:00', NULL, NULL, '0000-00-00 00:00:00', NULL),
(320, 'Cuidar de duas meninas ', 133, 211, '', NULL, NULL, NULL, '', '', NULL, NULL, 0, '', 0, 0, '2018-08-23 09:00:00', NULL, NULL, '0000-00-00 00:00:00', NULL),
(321, 'Casa', 76, 120, '', NULL, NULL, NULL, '{\"longitude\":-43.89391253294643,\"latitudeDelta\":0.006779777236257445,\"latitude\":-19.89255373182565,\"longitudeDelta\":0.007209979748580508}', 'R. Rosa Cruz, 39 - Boa Vista, Belo Horizonte - MG, 31070-430, Brasil', NULL, NULL, 0, '', 0, 0, '2018-08-30 23:46:00', NULL, NULL, '0000-00-00 00:00:00', NULL),
(322, 'Ajuda para aposentar.', 186, 168, '315', NULL, NULL, NULL, '', '', NULL, NULL, 0, '', 0, 4, '2018-09-06 17:34:00', NULL, NULL, '0000-00-00 00:00:00', NULL),
(323, 'Parede ', 76, 120, '194', NULL, NULL, NULL, '{\"longitude\":-43.97041898781234,\"latitudeDelta\":0.006779775810233701,\"latitude\":-19.902465182977807,\"longitudeDelta\":0.006897732472566531}', 'R. Guaíra, 416 - Alto Caiçaras, Belo Horizonte - MG, 30770-480, Brasil', NULL, NULL, 0, '', 0, 0, '2018-09-06 20:06:00', NULL, NULL, '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_proposta_log`
--

CREATE TABLE `tb_proposta_log` (
  `id` int(11) NOT NULL,
  `id_proposta` int(11) NOT NULL,
  `id_status` int(11) NOT NULL,
  `id_user_change` int(11) NOT NULL,
  `data_cad` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `tb_proposta_log`
--

INSERT INTO `tb_proposta_log` (`id`, `id_proposta`, `id_status`, `id_user_change`, `data_cad`) VALUES
(204, 60, 1, 45, '2017-12-06 09:56:31'),
(205, 60, 1, 45, '2017-12-06 09:59:25'),
(206, 60, 1, 45, '2017-12-06 10:05:22'),
(207, 60, 2, 46, '2017-12-06 10:09:02'),
(208, 60, 1, 45, '2017-12-06 10:11:31'),
(209, 60, 3, 46, '2017-12-06 10:12:02'),
(210, 60, 3, 46, '2017-12-06 10:13:11'),
(211, 60, 3, 46, '2017-12-06 10:14:11'),
(212, 60, 1, 45, '2017-12-06 14:27:00'),
(213, 60, 1, 45, '2017-12-06 14:27:52'),
(214, 60, 1, 45, '2017-12-06 14:28:41'),
(215, 60, 1, 45, '2017-12-06 14:30:33'),
(216, 60, 1, 45, '2017-12-06 14:31:26'),
(217, 60, 1, 45, '2017-12-06 14:32:31'),
(218, 60, 1, 45, '2017-12-06 14:37:17'),
(219, 60, 1, 45, '2017-12-06 14:39:00'),
(220, 60, 2, 46, '2017-12-06 14:44:35'),
(221, 60, 1, 45, '2017-12-06 14:45:00'),
(222, 61, 1, 47, '2017-12-06 16:23:20'),
(223, 61, 2, 46, '2017-12-06 16:24:37'),
(224, 61, 1, 47, '2017-12-06 16:25:04'),
(225, 60, 3, 46, '2017-12-06 16:29:56'),
(226, 60, 3, 46, '2017-12-06 16:31:00'),
(227, 61, 3, 46, '2017-12-06 16:31:56'),
(228, 61, 3, 46, '2017-12-06 16:32:11'),
(229, 61, 3, 46, '2017-12-06 16:32:42'),
(230, 62, 1, 48, '2017-12-06 16:57:19'),
(231, 62, 3, 46, '2017-12-06 17:02:02'),
(232, 62, 3, 46, '2017-12-06 17:02:41'),
(233, 62, 3, 46, '2017-12-06 17:03:00'),
(234, 65, 1, 50, '2017-12-07 17:19:21'),
(235, 65, 3, 46, '2017-12-07 17:29:17'),
(236, 65, 3, 46, '2017-12-07 17:29:45'),
(237, 65, 3, 46, '2017-12-07 17:32:30'),
(238, 67, 4, 50, '2017-12-07 22:00:33'),
(239, 68, 4, 50, '2017-12-08 10:14:09'),
(240, 69, 1, 51, '2017-12-08 13:45:25'),
(241, 63, 4, 45, '2017-12-08 16:34:21'),
(242, 64, 4, 45, '2017-12-08 16:34:43'),
(243, 69, 4, 51, '2017-12-08 17:24:19'),
(244, 72, 4, 50, '2017-12-12 22:19:38'),
(245, 73, 4, 50, '2017-12-13 13:18:25'),
(246, 70, 4, 45, '2017-12-13 13:57:34'),
(247, 71, 4, 45, '2017-12-13 13:57:42'),
(248, 74, 0, 45, '2017-12-13 14:18:30'),
(249, 75, 4, 50, '2017-12-13 17:11:47'),
(250, 76, 4, 50, '2017-12-13 17:31:57'),
(251, 77, 4, 46, '2017-12-15 13:49:56'),
(252, 78, 4, 50, '2017-12-15 20:50:35'),
(253, 79, 4, 50, '2017-12-17 09:48:08'),
(254, 80, 4, 50, '2017-12-18 13:04:15'),
(255, 81, 4, 50, '2017-12-18 13:24:25'),
(256, 82, 4, 50, '2017-12-18 13:49:03'),
(257, 83, 4, 50, '2017-12-19 15:24:44'),
(258, 84, 4, 48, '2017-12-20 17:45:30'),
(259, 86, 4, 50, '2017-12-22 17:37:04'),
(260, 88, 4, 50, '2017-12-26 20:35:09'),
(261, 87, 4, 50, '2017-12-26 20:35:26'),
(262, 91, 4, 54, '2018-02-06 13:58:06'),
(263, 92, 1, 62, '2018-02-07 18:06:21'),
(264, 90, 1, 62, '2018-02-07 18:07:40'),
(265, 85, 1, 48, '2018-02-08 06:39:03'),
(266, 90, 4, 62, '2018-02-08 06:43:19'),
(267, 85, 3, 62, '2018-02-08 06:45:00'),
(268, 85, 3, 62, '2018-02-08 06:47:59'),
(269, 85, 3, 62, '2018-02-08 06:48:35'),
(270, 93, 1, 65, '2018-02-13 09:58:33'),
(271, 93, 3, 50, '2018-02-13 10:04:46'),
(272, 89, 4, 50, '2018-02-13 10:57:26'),
(273, 94, 1, 64, '2018-02-15 20:38:44'),
(274, 94, 3, 50, '2018-02-15 20:45:25'),
(275, 95, 4, 50, '2018-02-16 18:03:00'),
(276, 96, 1, 64, '2018-02-17 11:57:43'),
(277, 96, 4, 64, '2018-02-17 11:58:26'),
(278, 98, 1, 69, '2018-02-20 17:14:39'),
(279, 98, 3, 48, '2018-02-20 17:17:16'),
(280, 99, 1, 55, '2018-02-21 19:54:04'),
(281, 92, 3, 46, '2018-02-28 08:55:52'),
(282, 92, 3, 46, '2018-02-28 08:56:00'),
(283, 92, 3, 46, '2018-02-28 09:06:11'),
(284, 60, 3, 46, '2018-02-28 09:06:28'),
(285, 60, 3, 46, '2018-02-28 09:06:35'),
(286, 60, 3, 46, '2018-02-28 09:06:48'),
(287, 104, 4, 50, '2018-03-12 15:05:53'),
(288, 97, 4, 50, '2018-03-13 08:32:00'),
(289, 102, 1, 55, '2018-03-13 15:37:57'),
(290, 110, 1, 46, '2018-03-13 17:51:38'),
(291, 111, 1, 55, '2018-03-13 17:55:57'),
(292, 113, 1, 104, '2018-03-15 10:32:06'),
(293, 115, 4, 112, '2018-03-24 06:43:47'),
(294, 118, 4, 50, '2018-05-08 20:40:30'),
(295, 121, 4, 50, '2018-05-09 14:46:59'),
(296, 119, 4, 50, '2018-05-09 14:47:13'),
(297, 125, 1, 55, '2018-05-10 15:47:05'),
(298, 126, 1, 55, '2018-05-10 15:54:22'),
(299, 127, 1, 55, '2018-05-10 15:59:32'),
(300, 124, 4, 50, '2018-05-10 19:21:08'),
(301, 123, 4, 50, '2018-05-10 19:21:18'),
(302, 126, 3, 50, '2018-05-10 19:22:18'),
(303, 133, 1, 55, '2018-05-14 14:20:20'),
(304, 135, 1, 55, '2018-05-14 17:07:46'),
(305, 135, 3, 46, '2018-05-14 17:09:33'),
(306, 136, 4, 50, '2018-05-14 22:05:20'),
(307, 138, 4, 50, '2018-05-15 15:12:11'),
(308, 137, 4, 50, '2018-05-15 15:12:34'),
(309, 139, 4, 50, '2018-05-15 15:25:56'),
(310, 133, 3, 50, '2018-05-15 15:26:15'),
(311, 141, 4, 133, '2018-05-16 14:30:59'),
(312, 142, 1, 50, '2018-05-16 15:13:03'),
(313, 143, 1, 50, '2018-05-16 15:16:15'),
(314, 144, 1, 50, '2018-05-16 15:17:29'),
(315, 128, 1, 55, '2018-05-17 10:08:53'),
(316, 140, 1, 50, '2018-05-17 10:10:47'),
(317, 150, 1, 50, '2018-05-17 14:33:33'),
(318, 142, 4, 133, '2018-05-17 17:19:48'),
(319, 148, 4, 50, '2018-05-17 17:19:48'),
(320, 117, 4, 133, '2018-05-17 17:19:55'),
(321, 147, 4, 50, '2018-05-17 17:19:58'),
(322, 144, 4, 133, '2018-05-17 17:20:06'),
(323, 146, 4, 50, '2018-05-17 17:20:06'),
(324, 143, 4, 133, '2018-05-17 17:20:12'),
(325, 145, 4, 50, '2018-05-17 17:20:41'),
(326, 150, 4, 50, '2018-05-17 17:21:01'),
(327, 140, 4, 50, '2018-05-17 17:21:16'),
(328, 133, 4, 50, '2018-05-17 17:21:24'),
(329, 151, 4, 50, '2018-05-17 17:29:04'),
(330, 153, 1, 50, '2018-05-17 17:37:54'),
(331, 152, 4, 50, '2018-05-17 17:43:54'),
(332, 149, 1, 55, '2018-05-17 21:05:57'),
(333, 134, 1, 55, '2018-05-17 21:06:20');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_proposta_status`
--

CREATE TABLE `tb_proposta_status` (
  `id` int(10) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `obs` varchar(120) NOT NULL,
  `id_user` int(11) NOT NULL,
  `data_cad` datetime NOT NULL,
  `data_del` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `tb_proposta_status`
--

INSERT INTO `tb_proposta_status` (`id`, `nome`, `obs`, `id_user`, `data_cad`, `data_del`) VALUES
(5, 'Rascunho', '', 0, '2017-09-27 00:00:00', NULL),
(1, 'Aguardando Resposta', '', 0, '2017-09-27 00:00:00', NULL),
(2, 'Recusado', '', 0, '2017-09-27 00:00:00', NULL),
(3, 'Aceito', '', 0, '2017-10-09 00:00:00', NULL),
(4, 'Cancelado', 'Cancelamento de proposta, necessita regras implicadas', 0, '2017-10-16 15:19:27', NULL),
(0, 'Novo', '', 0, '2017-09-27 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_reclamacoes`
--

CREATE TABLE `tb_reclamacoes` (
  `id` int(10) NOT NULL,
  `obs` varchar(255) CHARACTER SET utf8 NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_proposta` int(11) NOT NULL,
  `id_avaliacao` int(11) NOT NULL,
  `data_cad` datetime NOT NULL,
  `visto` tinyint(1) NOT NULL,
  `data_del` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `tb_reclamacoes`
--

INSERT INTO `tb_reclamacoes` (`id`, `obs`, `id_user`, `id_proposta`, `id_avaliacao`, `data_cad`, `visto`, `data_del`) VALUES
(94, 'Ok', 50, 65, 0, '2017-12-07 17:36:56', 1, NULL),
(96, 'Bom dia!', 50, 65, 0, '2017-12-08 09:43:08', 1, NULL),
(99, 'Tranquilo, estou explorando o app e o admin, e criando um check list. Abs!', 50, 65, 0, '2017-12-08 09:58:38', 1, NULL),
(110, 'Muito bom, melhorando', 50, 65, 0, '2017-12-08 12:48:14', 1, NULL),
(112, 'Cada vez melhor! Estou tentando avaliar, mas Clico OK e não registra.', 50, 65, 0, '2017-12-08 18:03:16', 1, NULL),
(114, 'Agora a avaliação foi registrada. Ótimo!', 50, 65, 0, '2017-12-08 18:05:09', 1, NULL),
(115, 'Em \"Minha Conta\" a data no cabeçalho está na versão inglesa (mês/dia/ano)', 50, 65, 0, '2017-12-08 18:07:10', 1, NULL),
(117, 'Amanhã envio pra você o Check list atualizado, já debitando as revisões de hoje.', 50, 65, 0, '2017-12-08 18:08:17', 1, NULL),
(118, 'Mas no geral está ficando top.', 50, 65, 0, '2017-12-08 18:09:11', 1, NULL),
(121, 'Certo.', 50, 65, 0, '2017-12-08 18:11:34', 1, NULL),
(122, 'Boa tarde, Murilo! Melhorou bastante. Estou concluindo o novo check list e já lhe envio. Abs!', 50, 65, 0, '2017-12-13 15:06:26', 1, NULL),
(125, 'Bom dia! ????', 65, 93, 0, '2018-02-13 10:08:35', 1, NULL),
(126, 'Bom dia, Vanessa! Certo, confirmado.', 50, 93, 0, '2018-02-13 10:09:19', 1, NULL),
(127, 'Boa noite, Alzira! Confirmado. Obrigado pela preferência!', 50, 94, 0, '2018-02-15 20:49:03', 1, NULL),
(128, 'Boa noite.  Aguardo conforme combinado.', 64, 94, 0, '2018-02-15 20:51:29', 1, NULL),
(132, 'Teste', 55, 99, 0, '2018-03-08 10:01:06', 0, NULL),
(133, 'Go to go', 55, 99, 0, '2018-03-08 10:01:45', 0, NULL),
(134, 'Dhhdhd', 55, 99, 0, '2018-03-08 10:02:16', 0, NULL),
(138, 'Bom dia tudo bem?', 55, 111, 0, '2018-03-14 08:09:41', 1, NULL),
(139, 'OpA', 55, 133, 0, '2018-05-14 17:10:44', 1, NULL),
(140, 'Boa tarde, Talita! Confirmado?', 50, 153, 0, '2018-05-17 17:40:08', 1, NULL),
(141, 'Olá Gerald como vai ?! ', 133, 153, 0, '2018-05-17 17:41:27', 1, NULL),
(142, 'Então, o valor está correto?', 50, 153, 0, '2018-05-17 17:50:02', 0, NULL),
(189, 'Olá, Isnair, boa noite!', 50, 315, 0, '2018-07-26 22:21:43', 1, NULL),
(155, 'Olá tudo bem', 55, 181, 0, '2018-06-13 13:35:50', 1, NULL),
(157, 'Poderia já vir focus o campo para escrever a mensagem ', 55, 181, 0, '2018-06-13 13:36:29', 1, NULL),
(188, 'Boa noite', 183, 315, 0, '2018-07-26 22:20:53', 1, NULL),
(159, 'Oi', 55, 180, 0, '2018-06-13 17:52:02', 1, NULL),
(161, 'E eu ', 55, 180, 0, '2018-06-13 17:54:13', 1, NULL),
(187, 'Bom dia!', 65, 277, 0, '2018-07-08 12:15:20', 1, NULL),
(163, 'Eu não bebo cerveja e nem pessoas sem conteúdo nem nada I am not sure if you are aware of this but I am not sure if you are aware of this but I am not sure if you are aware of this but I am not sure if you are aware of this but I am not sure if you a', 55, 180, 0, '2018-06-13 17:55:16', 1, NULL),
(164, 'Ok', 55, 180, 0, '2018-06-13 17:56:31', 1, NULL),
(166, 'Teste ', 55, 180, 0, '2018-06-19 20:31:56', 1, NULL),
(167, 'Teste chat ', 55, 227, 0, '2018-06-19 20:32:28', 0, NULL),
(186, 'Olá Eloprint , tudo bem ? Quanto tempo de show vc deseja ? \n\n', 133, 292, 0, '2018-07-06 00:08:42', 0, NULL),
(170, 'Recebeu ', 55, 180, 0, '2018-06-19 20:58:41', 1, NULL),
(172, 'Fiquei triste o emogi não foi', 55, 180, 0, '2018-06-19 20:59:52', 1, NULL),
(185, 'Oi Fabiana tudo bem ? \nQual tipo de show vc deseja ?\n', 133, 290, 0, '2018-07-06 00:07:44', 0, NULL),
(175, 'Vhgbbh', 55, 238, 0, '2018-06-21 21:08:17', 1, NULL),
(177, 'Opa', 55, 263, 0, '2018-06-27 15:02:48', 0, NULL),
(184, 'Olá ', 163, 287, 0, '2018-07-05 17:36:08', 1, NULL),
(183, 'Boa tarde, Sr. Eduardo! Te aguardo no evento', 50, 287, 0, '2018-07-05 17:35:23', 1, NULL),
(180, 'Phcccgg ', 55, 266, 0, '2018-06-27 21:18:06', 1, NULL),
(181, 'Bnoa tarde', 159, 282, 0, '2018-07-03 17:15:41', 0, NULL),
(182, 'Bom dia, Eloprint!\nEm que podemos ajudar?', 50, 284, 0, '2018-07-04 10:56:36', 0, NULL),
(190, 'Boa noite, Sr. Eduardo! Tudo bem contigo?', 50, 287, 0, '2018-09-13 00:07:21', 1, NULL),
(191, 'a mensagem não dar pra ler chegou outra ', 166, 300, 0, '2018-09-13 02:06:29', 0, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_report`
--

CREATE TABLE `tb_report` (
  `id` int(10) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `obs` varchar(120) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_user_f` int(11) NOT NULL,
  `id_reclamacao` int(11) NOT NULL,
  `data_cad` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_report_msg`
--

CREATE TABLE `tb_report_msg` (
  `id` int(11) NOT NULL,
  `obs` varchar(255) CHARACTER SET utf8 NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_admin` int(11) DEFAULT NULL,
  `id_proposta` int(11) NOT NULL,
  `data_cad` datetime NOT NULL,
  `visto` tinyint(1) NOT NULL,
  `data_del` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `tb_report_msg`
--

INSERT INTO `tb_report_msg` (`id`, `obs`, `id_user`, `id_admin`, `id_proposta`, `data_cad`, `visto`, `data_del`) VALUES
(39, 'Teste', 55, NULL, 195, '2018-06-14 13:25:57', 0, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_type_orcam`
--

CREATE TABLE `tb_type_orcam` (
  `id` int(10) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `obs` varchar(120) NOT NULL,
  `id_user` int(11) NOT NULL,
  `data_cad` datetime NOT NULL,
  `data_del` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `tb_type_orcam`
--

INSERT INTO `tb_type_orcam` (`id`, `nome`, `obs`, `id_user`, `data_cad`, `data_del`) VALUES
(32, 'Por Hora', 'A Cada 60 min', 70, '2017-12-05 16:50:43', NULL),
(33, 'Por Dia', '24 horas', 70, '2017-12-12 09:15:27', NULL),
(34, 'Por ServiÃ§o', 'Ao Concluir', 70, '2017-12-12 09:15:41', NULL),
(35, 'A Combinar', 'Entre em Contato', 70, '2017-12-12 09:15:51', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_users`
--

CREATE TABLE `tb_users` (
  `id` int(10) NOT NULL,
  `nome` varchar(255) CHARACTER SET utf8 NOT NULL,
  `id_onsignal` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `telefone` varchar(50) DEFAULT NULL,
  `area` varchar(2) NOT NULL,
  `token_forguetpassword` varchar(11) DEFAULT NULL,
  `cpf_cnpj` varchar(20) NOT NULL,
  `senha` varchar(150) NOT NULL,
  `obs` varchar(250) CHARACTER SET utf8 NOT NULL,
  `perfil` varchar(1) NOT NULL,
  `img_url` varchar(255) DEFAULT NULL,
  `id_grupo` varchar(255) DEFAULT NULL,
  `id_genero` int(11) DEFAULT NULL,
  `mei` varchar(120) NOT NULL,
  `id_type_orcam` int(11) DEFAULT NULL,
  `perfVisi` tinyint(1) NOT NULL,
  `fisica_juridica` tinyint(1) NOT NULL,
  `lat` varchar(50) NOT NULL,
  `lng` varchar(50) NOT NULL,
  `endereco` varchar(250) CHARACTER SET utf8 NOT NULL,
  `marketplace` tinyint(1) NOT NULL,
  `cobra_visita` int(11) NOT NULL,
  `valor` float NOT NULL,
  `aceita_cartao` int(11) NOT NULL,
  `id_cartoes` varchar(250) NOT NULL,
  `dt_exped` date NOT NULL,
  `local_exped` varchar(10) NOT NULL,
  `rg` int(11) NOT NULL,
  `grupo_categorias` varchar(250) NOT NULL,
  `data_position` datetime NOT NULL,
  `data_cad` datetime NOT NULL,
  `data_del` datetime DEFAULT NULL,
  `arquivo` varchar(255) DEFAULT NULL,
  `arquivo2` varchar(255) DEFAULT NULL,
  `arquivo3` varchar(255) DEFAULT NULL,
  `contato_resp` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `tb_users`
--

INSERT INTO `tb_users` (`id`, `nome`, `id_onsignal`, `email`, `telefone`, `area`, `token_forguetpassword`, `cpf_cnpj`, `senha`, `obs`, `perfil`, `img_url`, `id_grupo`, `id_genero`, `mei`, `id_type_orcam`, `perfVisi`, `fisica_juridica`, `lat`, `lng`, `endereco`, `marketplace`, `cobra_visita`, `valor`, `aceita_cartao`, `id_cartoes`, `dt_exped`, `local_exped`, `rg`, `grupo_categorias`, `data_position`, `data_cad`, `data_del`, `arquivo`, `arquivo2`, `arquivo3`, `contato_resp`) VALUES
(63, 'Sérgio Luiz', '8682d8d6-2440-4f68-a6f2-f83038642100', 'sergio.lcastrojr@gmail.com', '992805465', '31', '', '', '455894a5c18090e39868baf022173443', '', 'c', NULL, NULL, NULL, '0', NULL, 0, 0, '-19.92064603243843', '-43.945275656211706', '', 0, 0, 0, 0, '', '0000-00-00', '', 0, '', '0000-00-00 00:00:00', '2018-02-10 10:21:44', NULL, NULL, NULL, NULL, NULL),
(50, 'Gerald Nunes', 'efd374a1-9883-49a3-8234-8ab2c8347540', 'gerald@jobex.org', '992497942', '31', '', '73951773634', '829da0b3fe8ea6ab5ee59b46184169c7', 'Equipe experiente e focada na solução. Melhor custo benefício do mercado!', 'c', '3089961530942707-61660764366.jpg', '114,120,200', 1, '1', 35, 1, 0, '-19.902455025626463', '-43.97026827558875', 'R. Guaíra, 416 - Alto Caiçaras, Belo Horizonte - MG, 30770-480, Brazil', 0, 0, 0, 1, '1,2,3,4', '1996-07-26', 'SSP MG', 5022351, '', '2018-03-06 18:39:25', '2017-12-07 16:57:36', NULL, 'bbbfa22ed7830d10385677c58068dbc9.jpg', '', '7f0a4837b5aac33d7d66ff66e3675d85.jpg', NULL),
(52, 'xinxila', '', 'mail@xion.com.br', '2256565', '34', '', '', '202cb962ac59075b964b07152d234b70', '', 'c', NULL, NULL, NULL, '0', NULL, 0, 0, '-19.92064603243843', '-43.945275656211706', '', 0, 0, 0, 0, '', '0000-00-00', '', 0, '', '0000-00-00 00:00:00', '2017-12-12 16:33:48', '2017-12-12 17:28:03', NULL, NULL, NULL, NULL),
(53, 'Alzira Montes ', '6a4ba5b2-8ecc-42a0-a01e-0bbe63c4d848', 'admeventoempresarial@gmail.com', '994752539', '31', '', '', 'f619bc23fdcac2bc5f8e63a3cf129950', '', 'c', NULL, NULL, NULL, '0', NULL, 0, 0, '-19.92064603243843', '-43.945275656211706', '', 0, 0, 0, 0, '', '0000-00-00', '', 0, '', '0000-00-00 00:00:00', '2017-12-13 17:50:54', '2018-02-10 11:01:48', NULL, NULL, NULL, NULL),
(54, 'Gerald Profissional', 'efd374a1-9883-49a3-8234-8ab2c8347540', 'gerald@sandbox.pagseguro.com.br', '992497942', '31', '73951773634', '', '202cb962ac59075b964b07152d234b70', 'Mais de 10 anos de experiência profissional, atendimento VIP e dedicação total ao cliente.', 'c', 'http://mundoinova.com.br/muriloSolucoes/jobEx/api/uploads/2017-12-17--09-12-45-1693259969', '36', 2, '0', 32, 1, 0, '-19.92064603243843', '-43.945275656211706', '', 0, 0, 0, 1, '1,2', '1996-07-12', 'SSPMG', 5022351, '', '2018-02-06 15:53:57', '2017-12-15 14:38:48', '2018-02-10 10:58:54', NULL, NULL, NULL, NULL),
(57, 'Boris Henrique', 'b56103a3-ac0e-4355-be2f-77d5dc1e81b3', 'borishcs@gmail.com', '999221688', '34', '', '', 'e10adc3949ba59abbe56e057f20f883e', '', 'c', NULL, NULL, NULL, '0', NULL, 0, 0, '-19.92064603243843', '-43.945275656211706', '', 0, 0, 0, 0, '', '0000-00-00', '', 0, '', '0000-00-00 00:00:00', '2017-12-29 10:57:33', NULL, NULL, NULL, NULL, NULL),
(55, 'Suporte Munduu', '83623df6-8b2c-4510-99d4-d225d2acef95', 'suporte@munduu.com', '33150180', '34', '', '', 'e10adc3949ba59abbe56e057f20f883e', 'Teste user', 'c', '115711534330278-20389769971.jpg', '168,220,271', 1, '1', 35, 1, 0, '-19.746595585513', '-48.002469968051', 'Rua Paulo Ant', 0, 1, 0, 0, '', '2018-03-12', 'SSPMG', 123456, '', '0000-00-00 00:00:00', '2017-12-20 17:30:37', NULL, NULL, NULL, NULL, NULL),
(56, 'Samuel Delfino', '8900800a-ecf0-4095-9028-39ccd172c01a', 'samuelmdelfino@gmail.com', '996878618', '31', '', '', 'd70983f36d5f40daede1333e6640a2ec', 'Desenvolvimento de identidade visual (logo) e desenvolvimento de sites.', 'c', NULL, '65,169,67', NULL, '1', NULL, 0, 0, '-19.92064603243843', '-43.945275656211706', '', 0, 0, 0, 0, '', '0000-00-00', '', 0, '319', '0000-00-00 00:00:00', '2017-12-26 10:23:53', NULL, NULL, NULL, NULL, NULL),
(164, 'Diana de Oliveira Faria', 'dff91b22-f6b2-4073-ad2e-1f90c0b7e3b9', 'dofdiana@gmail.com', '986572361', '31', NULL, '', '2de212333bea6ed63c4706981622d327', 'Arte final para papelaria empresarial, festas (lembrancinhas e painéis), cardápios e outros. Também executo impressão.', '', '7486241530886483-11342536658.jpg', '65,338', NULL, '0', NULL, 0, 0, '-19.920580930277612', '-43.945275116711855', 'Av. Olegário Maciel, 742 - Centro, Belo Horizonte - MG, 30180-110, Brazil', 0, 1, 0, 1, '1,2', '0000-00-00', '', 0, '', '0000-00-00 00:00:00', '2018-07-05 22:10:08', NULL, NULL, NULL, NULL, NULL),
(59, 'Jr', '', 'alfjuniorbh.web@gmail.v', '98095410', '31', '', '', '9af1b63534609a9c0068fef43dfb87e9', '', 'c', NULL, NULL, NULL, '0', NULL, 0, 0, '-19.92064603243843', '-43.945275656211706', '', 0, 0, 0, 0, '', '0000-00-00', '', 0, '', '0000-00-00 00:00:00', '2018-01-12 11:23:15', '2018-02-10 11:55:31', NULL, NULL, NULL, NULL),
(60, 'Victor Melo', '87a7cd31-47e6-49ef-82f1-0ace4481fee6', 'vm.martinsmelo@gmail.com', '995945278', '31', '', '', '775eed9c278fb7ee09d3d42de368a526', '', 'c', NULL, NULL, NULL, '0', NULL, 0, 0, '-19.92064603243843', '-43.945275656211706', '', 0, 0, 0, 0, '', '0000-00-00', '', 0, '', '0000-00-00 00:00:00', '2018-01-16 21:40:59', NULL, NULL, NULL, NULL, NULL),
(166, 'Eduardo de Jesus ', '093b08bd-9743-4f6c-a318-d998068f5c8d', 'pitdu1234@gmail.com', '991550004', '31', NULL, '', '232be43f743612405e4e1a50d8d8d296', 'Excelência  em tufivque faço!', '', NULL, '181,195,140', NULL, '1', NULL, 0, 0, 'undefined', 'undefined', '', 0, 0, 0, 0, '', '0000-00-00', '', 0, '', '0000-00-00 00:00:00', '2018-07-08 21:56:36', NULL, NULL, NULL, NULL, NULL),
(64, 'Alzira Dutra Montes ', 'efd374a1-9883-49a3-8234-8ab2c8347540', 'alziradmontes@gmail.com', '994752539', '31', '', '', '202cb962ac59075b964b07152d234b70', '', 'c', 'http://soujobex.com.br/api/uploads/2018-02-15--11-02-01-120310532', NULL, 1, '0', 32, 1, 0, '-19.92064603243843', '-43.945275656211706', '', 0, 0, 0, 0, '', '0000-00-00', '', 0, '', '2018-02-21 16:17:56', '2018-02-10 10:23:58', NULL, NULL, NULL, NULL, NULL),
(65, 'Vanessa Nunes', 'b096c955-49e6-45e4-b1cc-b7826532a538', 'nunesvanessa710@gmail.com', '988942066', '31', '', '', '4659f3407d0a0b893b624fbc082e8048', 'Projetos em geral', 'c', '1984061530400476-14010247588.jpg', '221,282,211', NULL, '0', NULL, 0, 0, '-19.818336577950852', '-43.98164318874478', 'Rua Newton da Costa Silveira, 440 - Rio Branco, Belo Horizonte - MG, 31535-030, Brazil', 0, 1, 0, 1, '5,4,3', '0000-00-00', '', 0, '', '0000-00-00 00:00:00', '2018-02-13 09:53:04', NULL, NULL, NULL, NULL, NULL),
(67, 'Antônia', 'efd374a1-9883-49a3-8234-8ab2c8347540', 'antoniabhmg@gmail.com', '973377608', '31', '', '', '202cb962ac59075b964b07152d234b70', '', 'c', NULL, NULL, 0, '0', 0, 0, 0, '-19.92064603243843', '-43.945275656211706', '', 0, 0, 0, 0, '', '0000-00-00', '', 0, '', '0000-00-00 00:00:00', '2018-02-17 07:51:58', '2018-03-08 11:11:57', NULL, NULL, NULL, NULL),
(66, 'Fernanda', '', 'Barbosa', '987993722', '31', '', '', 'a2484076fa3a79534132d057a9346b48', '', 'c', NULL, NULL, NULL, '0', NULL, 0, 0, '-19.92064603243843', '-43.945275656211706', '', 0, 0, 0, 0, '', '0000-00-00', '', 0, '', '0000-00-00 00:00:00', '2018-02-15 18:11:17', '2018-02-23 18:57:13', NULL, NULL, NULL, NULL),
(68, 'Eduardo J Santos', 'efd374a1-9883-49a3-8234-8ab2c8347540', 'dudu2005@gmail.com', '991550004', '31', '82035202604', '', '202cb962ac59075b964b07152d234b70', 'Experiência comprovada em diversos eventos, por mais de 20 anos', 'c', 'http://soujobex.com.br/api/uploads/2018-02-21--14-02-24-1756914349', '196', 1, '0', 35, 1, 0, '-19.92064603243843', '-43.945275656211706', '', 0, 0, 0, 0, '', '0000-00-00', 'SSPMG', 6215355, '', '2018-02-21 17:58:56', '2018-02-20 11:25:15', NULL, NULL, NULL, NULL, NULL),
(70, 'Otávio go', '80fbc0b4-bd9d-4868-9abc-a8a06514b157', 'otaviollneto@hotmail.com', '33112233', '34', '', '07458522623', 'facb4be5385617bf11e6d67f0aa0203b', '', 'c', NULL, NULL, NULL, '0', NULL, 0, 0, '-19.92064603243843', '-43.945275656211706', '', 0, 0, 0, 0, '', '0000-00-00', 'SSPMG', 123456, '', '0000-00-00 00:00:00', '2018-02-22 09:22:59', NULL, '4d51c304fca303b450611cda54ba99af.png', '8869665509ad7688958a733d4da1deaf.png', '4bf352661e67b7d3bedbf1ba0e668d1c.png', NULL),
(71, 'Michelle', '337cdf58-042e-40c4-aefd-827c571a737b', 'almeida.depadua@hotmail.com', '3171724288', '31', '', '', '79cfeb94595de33b3326c06ab1c7dbda', '', 'c', NULL, NULL, NULL, '0', NULL, 0, 0, '-19.92064603243843', '-43.945275656211706', '', 0, 0, 0, 0, '', '0000-00-00', '', 0, '', '0000-00-00 00:00:00', '2018-02-22 09:50:59', NULL, NULL, NULL, NULL, NULL),
(72, 'Luiz Fellipe Sertanejo', '985b2398-438d-4c6a-a77c-7d24fc98b9a4', 'fabioeduardoshow@hotmail.com', '992614895', '31', '', '', 'b606e12da37d204054716ca66834878c', '', 'c', NULL, NULL, NULL, '0', NULL, 0, 0, '-19.92064603243843', '-43.945275656211706', '', 0, 0, 0, 0, '', '0000-00-00', '', 0, '', '0000-00-00 00:00:00', '2018-02-22 10:08:35', NULL, NULL, NULL, NULL, NULL),
(73, 'Nathan Fabricio Araujo Saraiva Souza', '4f952e64-0279-48c9-bed0-fa2751dfa38d', 'nathanfbrc@gmail.com', '993595452', '31', '', '', '53cf243701b47ad9235cb9ed9c8e9800', '', 'c', NULL, NULL, NULL, '0', NULL, 0, 0, '-19.92064603243843', '-43.945275656211706', '', 0, 0, 0, 0, '', '0000-00-00', '', 0, '', '0000-00-00 00:00:00', '2018-02-22 10:10:45', NULL, NULL, NULL, NULL, NULL),
(74, 'Luiza tavares', 'f9efbfcc-e35a-4db7-95d0-fb9a74c7780f', 'luizatavares24@gmail.com', '000000000', '31', '', '', '811668027fee615e998ca01415c90857', '', 'c', NULL, NULL, NULL, '0', NULL, 0, 0, '-19.92064603243843', '-43.945275656211706', '', 0, 0, 0, 0, '', '0000-00-00', '', 0, '', '0000-00-00 00:00:00', '2018-02-22 13:22:06', '2018-04-12 11:26:18', NULL, NULL, NULL, NULL),
(75, 'Josiane ', '88155250-28e0-4251-9014-dc3791aa271d', 'martinsjosiane205@gmail.com', '986440802', '31', '', '', '63cce882dd00fe2a2103fc1bbdec1ad6', '', 'c', NULL, NULL, NULL, '0', NULL, 0, 0, '-19.92064603243843', '-43.945275656211706', '', 0, 0, 0, 0, '', '0000-00-00', '', 0, '', '0000-00-00 00:00:00', '2018-02-22 14:31:00', NULL, NULL, NULL, NULL, NULL),
(76, 'EloPrint', 'd11f2b51-4ae2-4ef4-984c-2d385ef0f105', 'gustavo@eloprint.com.br', '973034541', '31', '', '', '827ccb0eea8a706c4c34a16891f84e7b', '12 anos de atuação no mercado com total satisfação dos clientes, pontulidade, rapidez e qualidade!', 'c', '2583321530282448-68292900665.jpg', '271,306,338', 2, '1', 35, 1, 0, '-19.92064603243843', '-43.945275656211706', '', 0, 0, 0, 1, '5,2,1', '0000-00-00', '', 0, '', '0000-00-00 00:00:00', '2018-02-23 17:00:45', NULL, NULL, NULL, NULL, NULL),
(77, 'Ligia', 'b3739124-126c-426a-ac40-51946a227237', 'ligiaaos@gmail.com', '992947690', '31', '', '', '827ccb0eea8a706c4c34a16891f84e7b', '', 'c', NULL, NULL, NULL, '0', NULL, 0, 0, '-19.92064603243843', '-43.945275656211706', '', 0, 0, 0, 0, '', '0000-00-00', '', 0, '', '0000-00-00 00:00:00', '2018-02-23 17:08:08', NULL, NULL, NULL, NULL, NULL),
(78, 'Dayanne França', 'c5418826-d7fc-473e-b1f6-dd724e0fdc8c', 'nanyfoliveira@gmail.com', '993088663', '31', '', '', '4badaee57fed5610012a296273158f5f', '', 'c', NULL, '', 1, '0', 32, 0, 0, '-19.92064603243843', '-43.945275656211706', '', 0, 0, 0, 0, '', '0000-00-00', '', 0, '', '0000-00-00 00:00:00', '2018-02-23 17:50:31', NULL, NULL, NULL, NULL, NULL),
(79, 'Lucineia', 'efd374a1-9883-49a3-8234-8ab2c8347540', 'lucineiadmais46@gmail.com', '975671801', '31', '', '', '81dc9bdb52d04dc20036dbd8313ed055', '', 'c', NULL, NULL, NULL, '0', NULL, 0, 0, '-19.92064603243843', '-43.945275656211706', '', 0, 0, 0, 0, '', '0000-00-00', '', 0, '', '0000-00-00 00:00:00', '2018-02-24 11:56:56', NULL, NULL, NULL, NULL, NULL),
(80, 'Paula', 'fe4ac52b-9e34-41ca-ae4e-d20128ada5c6', 'paulasantosdecarvalho@gmail.com', '992861532', '31', '', '', '95cf78c6ddaaf6b7b33c732aa0dfb787', '', 'c', 'http://soujobex.com.br/api/uploads/2018-02-24--12-02-38-387413018', NULL, 0, '0', 0, 0, 0, '-19.92064603243843', '-43.945275656211706', '', 0, 0, 0, 0, '', '0000-00-00', '', 0, '', '0000-00-00 00:00:00', '2018-02-24 12:31:21', NULL, NULL, NULL, NULL, NULL),
(81, 'Alessander', 'c5a2688d-217a-49db-b544-5e2b7dc4a1f5', 'alessandersouza36@gmail.com', '94595622', '31', '', '', '321cafdcfae2fc0ae9fd04db4667ac6b', '', 'c', NULL, '', 1, '0', 32, 0, 0, '-19.92064603243843', '-43.945275656211706', '', 0, 0, 0, 0, '', '0000-00-00', '', 0, '', '0000-00-00 00:00:00', '2018-02-25 13:47:03', NULL, NULL, NULL, NULL, NULL),
(82, 'Cristiane Almeida ', '441e7f71-6313-4457-9833-2cb1cfe9524e', 'revendedoracristianealmeida@hotmail.com', '999429272', '31', '', '', '4793d122c512347c0a7a0188c52aacaa', '', 'c', NULL, NULL, NULL, '0', NULL, 0, 0, '-19.92064603243843', '-43.945275656211706', '', 0, 0, 0, 0, '', '0000-00-00', '', 0, '', '0000-00-00 00:00:00', '2018-02-25 14:24:12', NULL, NULL, NULL, NULL, NULL),
(83, 'José Bruno', 'cc246bd5-c1bd-419a-9862-4500818ea576', 'jbrunoviana@hotmail.com', '988959192', '31', '06232602633', '', '571c01fbc5da7e1824156d7b2604df77', 'Serviço especializado de chaveiro\nInstalações e manutenções em fechaduras comuns e tetra chave\nAbertura de portas', 'c', 'http://soujobex.com.br/api/uploads/2018-02-26--15-02-37-2003612528', '146', 1, '0', 35, 1, 0, '-19.92064603243843', '-43.945275656211706', '', 0, 0, 0, 1, '5,2,1', '0000-00-00', '', 0, '', '0000-00-00 00:00:00', '2018-02-26 14:11:38', NULL, NULL, NULL, NULL, NULL),
(84, 'Joel Araujo', '657f7a42-4404-42cb-82aa-e2dc0e7fd88a', 'joelcarlos.sa@gmail.com', '996652626', '31', '', '', '47e0ee77e6d3281fad6ddd3fd5ba4caf', '', 'c', NULL, NULL, NULL, '0', NULL, 0, 0, '-19.92064603243843', '-43.945275656211706', '', 0, 0, 0, 0, '', '0000-00-00', '', 0, '', '0000-00-00 00:00:00', '2018-03-01 19:23:28', NULL, NULL, NULL, NULL, NULL),
(85, 'Junio cezar', '689571e8-fe47-47c7-a8c9-d3228d4eee5d', 'juniocezar31@yahoo.com.br', '989608666', '31', '', '', '5a0841e97934c5cfb61f9b1dd4cdc45d', '', 'c', NULL, NULL, NULL, '0', NULL, 0, 0, '-19.92064603243843', '-43.945275656211706', '', 0, 0, 0, 0, '', '0000-00-00', '', 0, '', '0000-00-00 00:00:00', '2018-03-02 00:38:01', NULL, NULL, NULL, NULL, NULL),
(86, 'Gabriel Filho', '879c70b7-ce59-4b0c-a4e9-0977ca43db8b', 'agcastro@hotmail.com', '984373077', '31', '', '', '29925193ea268938f5cdcca7fe0fbb0c', '', 'c', NULL, NULL, NULL, '0', NULL, 0, 0, '-19.92064603243843', '-43.945275656211706', '', 0, 0, 0, 0, '', '0000-00-00', '', 0, '', '0000-00-00 00:00:00', '2018-03-06 15:35:11', NULL, NULL, NULL, NULL, NULL),
(87, 'Patrícia Nestor', 'd641bb3e-63ca-4834-80a7-a60adabae134', 'volverize@gmail.com', '987153080', '31', '', '', '31c2d8efe46a7d68f4802addf090868c', '', 'c', NULL, NULL, NULL, '0', NULL, 0, 0, '-19.92064603243843', '-43.945275656211706', '', 0, 0, 0, 0, '', '0000-00-00', '', 0, '', '0000-00-00 00:00:00', '2018-03-06 17:48:04', NULL, NULL, NULL, NULL, NULL),
(88, 'Thiago Miranda', 'fd068971-ae8f-4f6e-b668-03b1b63d8e19', 'thiagodeaguiarmiranda@gmail.com', '985092556', '31', '', '', '3198bc62d7c2405a99cd300d9b753529', '', 'c', NULL, NULL, NULL, '0', NULL, 0, 0, '-19.92064603243843', '-43.945275656211706', '', 0, 0, 0, 0, '', '0000-00-00', '', 0, '', '0000-00-00 00:00:00', '2018-03-06 20:31:34', NULL, NULL, NULL, NULL, NULL),
(89, 'Jhenifer', 'da98803b-ab06-463a-8c71-df29ad6da3f1', 'jhenifer.castelo@investbrothers.com.br', '997112928', '31', '', '', '4d861011768866dfed05d36e7316ff7d', '', 'c', NULL, '', 1, '0', 32, 0, 0, '-19.92064603243843', '-43.945275656211706', '', 0, 0, 0, 0, '', '0000-00-00', '', 0, '', '0000-00-00 00:00:00', '2018-03-08 10:14:22', NULL, NULL, NULL, NULL, NULL),
(90, 'Gabriel Loreto', 'fa330cbc-756e-4910-bd8b-32c5650550b6', 'gabriel.lima280@hotmail.com', '991038277', '38', '3192122', '', '202cb962ac59075b964b07152d234b70', 'Shows ao vivo, festas e comemorações', 'c', NULL, '57', 1, '0', 35, 1, 0, '-19.92064603243843', '-43.945275656211706', '', 0, 0, 0, 1, '2,1', '0000-00-00', 'SSPMG', 16827564, '', '0000-00-00 00:00:00', '2018-03-08 10:19:16', NULL, NULL, NULL, NULL, NULL),
(91, 'Rafael Victor', 'efd374a1-9883-49a3-8234-8ab2c8347540', 'rafaelv787@gmail.com', '997348168', '31', '70176683674', '', '202cb962ac59075b964b07152d234b70', 'Disponível para trabalhar como auxiliar de serviços diversos', 'c', NULL, '282', 1, '0', 35, 1, 0, '-19.92064603243843', '-43.945275656211706', '', 0, 0, 0, 0, '', '0000-00-00', 'SSPMG', 20116738, '', '0000-00-00 00:00:00', '2018-03-08 19:34:41', NULL, NULL, NULL, NULL, NULL),
(92, 'R L Assistência Técnica', 'f5657362-5f9c-4b16-a2c8-8470d9acb9b6', 'rlassistenciatecnica@hotmail.com', '991228188', '31', '', '', '37243d3a7332688c3a06f758fb93d425', 'Assistência técnica em aparelhos de iluminação', 'c', '7264031530039285-180124_190253748.jpg', '317', 2, '0', 35, 1, 0, '-19.92064603243843', '-43.945275656211706', '', 0, 0, 0, 1, '3,5,4,2,1', '0000-00-00', 'SSPRO', 436803, '', '0000-00-00 00:00:00', '2018-03-12 10:51:38', NULL, NULL, NULL, NULL, NULL),
(93, 'Mauricio ', 'ff5e4b43-cf43-40ba-8bef-9132405f6f62', 'mauriciogv81@gmail.com', '983727269', '21', '', '', '110eff7d40a3779f4513c1be6f8fffcf', '', 'c', NULL, '', 1, '0', 32, 0, 0, '-19.92064603243843', '-43.945275656211706', '', 0, 0, 0, 0, '', '0000-00-00', '', 0, '', '0000-00-00 00:00:00', '2018-03-12 20:34:35', NULL, NULL, NULL, NULL, NULL),
(94, 'TM Serralheria', 'efd374a1-9883-49a3-8234-8ab2c8347540', 'tiagodemoraes992936002@gmail.com', '992936002', '31', '08633955628', '', '202cb962ac59075b964b07152d234b70', 'Serralheria em geral e artística', 'c', NULL, '128', 2, '0', 35, 1, 0, '-19.92064603243843', '-43.945275656211706', '', 0, 0, 0, 0, '', '0000-00-00', 'SSPMG', 14806890, '', '0000-00-00 00:00:00', '2018-03-13 10:02:18', NULL, NULL, NULL, NULL, NULL),
(95, 'ADS Camisetas Promocionais', '2b69e4b2-00e3-41a5-b217-d58a6f83eb8d', 'ads.silk@gmail.com', '996495483', '31', '', '', '3f67fd97162d20e6fe27748b5b372509', 'Mais de 20 anos se experiência, com excelência em atendimento e qualidade', 'c', NULL, '303', 2, '0', 35, 1, 1, '-19.92064603243843', '-43.945275656211706', '', 0, 0, 0, 0, '', '0000-00-00', '', 0, '', '0000-00-00 00:00:00', '2018-03-13 10:20:41', NULL, NULL, NULL, NULL, NULL),
(96, 'RS Distribuidora', '59565273-16e4-4de5-ba55-d4c5fdc8d600', 'r.s.expresso@hotmail.com', '997150736', '31', '', '', '202cb962ac59075b964b07152d234b70', 'Qualidade total, entrega rápida, não cobramos taxa de entrega. Somente Região Central de BH', 'c', NULL, '316', 2, '0', 35, 1, 1, '-19.92064603243843', '-43.945275656211706', '', 0, 0, 0, 1, '3,5,4,2,1', '0000-00-00', '', 0, '', '0000-00-00 00:00:00', '2018-03-13 11:09:39', NULL, NULL, NULL, NULL, NULL),
(97, 'Cleiton Silva', '7c028c6f-97aa-4175-ac96-9010933a5a71', 'cleiton_analuiza@gmail.com', '987080875', '31', '07360685621', '', '202cb962ac59075b964b07152d234b70', 'Há mais de 5 anos prestando serviços de alta qualidade', 'c', 'http://soujobex.com.br/api/uploads/2018-03-14--23-03-37-1042040628', '128', 1, '0', 35, 1, 0, '-19.92064603243843', '-43.945275656211706', '', 0, 0, 0, 1, '2,1', '0000-00-00', 'SSPMG', 13225447, '', '0000-00-00 00:00:00', '2018-03-13 12:31:46', NULL, NULL, NULL, NULL, NULL),
(98, 'HM Segurança', 'efd374a1-9883-49a3-8234-8ab2c8347540', 'hmsegurancabh@gmail.com', '984060673', '31', '', '', '202cb962ac59075b964b07152d234b70', '', 'c', NULL, NULL, 0, '0', 0, 0, 0, '-19.92064603243843', '-43.945275656211706', '', 0, 0, 0, 0, '', '0000-00-00', '', 0, '', '0000-00-00 00:00:00', '2018-03-13 17:51:37', NULL, NULL, NULL, NULL, NULL),
(99, 'Chaveiro Aymores', 'efd374a1-9883-49a3-8234-8ab2c8347540', 'chaveiroaymores24h@gmail.com', '999731155', '31', '', '', 'a5e0ff62be0b08456fc7f1e88812af3d', 'Desde 1986 prestando serviços de qualidade e confiança. Atendimento 24H.', 'c', 'http://soujobex.com.br/api/uploads/2018-03-14--11-03-50-1672034999', '146', 2, '0', 35, 1, 1, '-19.92064603243843', '-43.945275656211706', '', 0, 0, 0, 1, '3,5,4,2,1', '0000-00-00', '', 0, '', '0000-00-00 00:00:00', '2018-03-14 11:24:26', NULL, NULL, NULL, NULL, NULL),
(100, 'Gilmar de Andrade Ribeiro', '', 'gilmarribeiroandrade@hotmal.com', '973409398', '31', '', '', '670afb1a8cb572eae5e2139f8f59ea3c', '', 'c', NULL, NULL, NULL, '0', NULL, 0, 0, '-19.92064603243843', '-43.945275656211706', '', 0, 0, 0, 0, '', '0000-00-00', '', 0, '', '0000-00-00 00:00:00', '2018-03-14 14:30:09', '2018-03-14 16:18:09', NULL, NULL, NULL, NULL),
(101, 'Gilmar de Andrade Ribeiro ', '945922c7-151e-4c8c-aefa-b7059a4c4f0d', 'gilmarribeiroandrade@hotmail.com', '973409398', '31', '07128083618', '', '670afb1a8cb572eae5e2139f8f59ea3c', 'Há mais de 20 no mercado de trabalho prestando serviços de qualidade, agilidade e confiança . Com um preço que cabe ', 'c', 'http://soujobex.com.br/api/uploads/2018-03-15--07-03-35-824637600', '255', 1, '0', 35, 1, 1, '-19.92064603243843', '-43.945275656211706', '', 0, 0, 0, 0, '', '0000-00-00', '', 0, '', '0000-00-00 00:00:00', '2018-03-14 14:31:01', NULL, NULL, NULL, NULL, NULL),
(106, 'WESLEY', '7b027471-4be1-4cb9-a159-e4dcbcbe3fa2', 'madecaus1047@gmail.com', '997515807', '31', '', '', 'f58c5c835f7b3ca64378be5898cc1cc7', '', 'c', 'http://soujobex.com.br/api/uploads/2018-03-15--15-03-59-1777497779', NULL, NULL, '0', NULL, 0, 0, '-19.92064603243843', '-43.945275656211706', '', 0, 0, 0, 0, '', '0000-00-00', '', 0, '', '0000-00-00 00:00:00', '2018-03-15 15:44:35', NULL, NULL, NULL, NULL, NULL),
(165, 'Fabiana Souza', '966ed217-18e4-4d50-98b7-7d6cc7d97d37', 'Fabianaamr@hotmail.com', '991556144', '35', NULL, '', 'e10adc3949ba59abbe56e057f20f883e', '', '', NULL, NULL, NULL, '', NULL, 0, 0, '', '', '', 0, 0, 0, 0, '', '0000-00-00', '', 0, '', '0000-00-00 00:00:00', '2018-07-05 23:59:38', NULL, NULL, NULL, NULL, NULL),
(105, 'Paulo Roberto', '2ff06142-1238-428d-940b-7437e620af47', 'pauloroberto3418@hotmail.com', '994488362', '31', '03214158686', '', '202cb962ac59075b964b07152d234b70', 'Qualidade e Pontualidade', 'c', 'http://soujobex.com.br/api/uploads/2018-03-15--12-03-06-1207513908', '255', 1, '0', 35, 1, 0, '-19.92064603243843', '-43.945275656211706', '', 0, 0, 0, 0, '', '2005-12-09', 'SSPMG', 8836253, '', '0000-00-00 00:00:00', '2018-03-15 12:13:09', NULL, NULL, NULL, NULL, NULL),
(107, 'Líder celulares', 'ae3197f3-7c94-419b-b6d3-09640edab7c1', 'abreuemadureira1@hotmail.com', '991892540', '31', '', '', 'eda8f54c69567ba89a56a00b45f799b7', 'Há mais de 15 anos no mercado de compra venda e assistência técnica de celulares e eletronicos', 'c', 'http://soujobex.com.br/api/uploads/2018-03-15--22-03-30-2081678636', '327', 2, '0', 35, 1, 1, '-19.92064603243843', '-43.945275656211706', '', 0, 0, 0, 1, '3,5,4,2,1', '0000-00-00', '', 0, '', '0000-00-00 00:00:00', '2018-03-15 16:59:46', NULL, NULL, NULL, NULL, NULL),
(108, 'Maria', 'd16106ad-72fa-4249-8632-291a35ecf991', 'fbv.maria@gmail.com', '987993722', '31', '', '', 'de179d94def9562b450011b1a3f22c66', '', 'c', NULL, NULL, NULL, '0', NULL, 0, 0, '-19.92064603243843', '-43.945275656211706', '', 0, 0, 0, 0, '', '0000-00-00', '', 0, '', '0000-00-00 00:00:00', '2018-03-16 08:05:09', NULL, NULL, NULL, NULL, NULL),
(109, 'Elizamara', '3b4b1319-17df-490c-af77-9326850f4cc3', 'elizamaraserra@hotmail.com', '987554029', '31', '', '', '2466cc1f4e5446effb7a9250de957141', '', 'c', NULL, NULL, NULL, '0', NULL, 0, 0, '-19.92064603243843', '-43.945275656211706', '', 0, 0, 0, 0, '', '0000-00-00', '', 0, '', '0000-00-00 00:00:00', '2018-03-16 15:36:48', NULL, NULL, NULL, NULL, NULL),
(110, 'Clayton serafim de oliveira', 'cea808bd-3a55-4b44-b9b7-5e583ced2d33', 'ck47380@gmail.com', '991347180', '31', '07729265656', '', '95242a7a98a979781c075529eb26c9db', 'Trabalho no ramo de moto frete há 6 anos fazendo coleta e entrega de documentos, objetos e afins.', 'c', 'http://soujobex.com.br/api/uploads/2018-03-22--15-03-49-952460391', '256', 1, '0', 35, 1, 0, '-19.92064603243843', '-43.945275656211706', '', 0, 0, 0, 0, '', '2003-10-19', 'SSPMG', 11957254, '', '0000-00-00 00:00:00', '2018-03-20 11:06:43', NULL, NULL, NULL, NULL, NULL),
(111, 'Diana de Oliveira Faria', 'dff91b22-f6b2-4073-ad2e-1f90c0b7e3b9', 'dofdiana@hotmail.com', '986572361', '31', '08203378625', '', '22f90d3e1a7d7aeab5fbcb603ad54243', '', 'c', NULL, '65', 2, '0', 34, 1, 0, '-19.92064603243843', '-43.945275656211706', '', 0, 0, 0, 0, '', '0000-00-00', '', 15168468, '', '0000-00-00 00:00:00', '2018-03-21 10:50:52', NULL, NULL, NULL, NULL, NULL),
(112, 'Klecios Vicente', 'aed88843-fadc-4d0a-bc29-db8718d1f2e9', 'kleciosvs@gmail.com', '992745060', '31', '', '', 'a3970c3e417a2a1f1971cb5d4da63cba', '', 'c', NULL, '', 1, '0', 32, 0, 0, '-19.92064603243843', '-43.945275656211706', '', 0, 0, 0, 0, '', '0000-00-00', '', 0, '', '0000-00-00 00:00:00', '2018-03-22 15:23:01', NULL, NULL, NULL, NULL, NULL),
(113, 'Heber Oliveira', 'f12b4b20-04ed-4199-aec5-a5562611b50b', 'hebercaires@gmail.com', '982236093', '31', '', '', '79f03af4258afedab8bd1c18a342e755', '', 'c', 'http://soujobex.com.br/api/uploads/2018-03-22--15-03-57-143410603', NULL, 0, '0', 0, 0, 0, '-19.92064603243843', '-43.945275656211706', '', 0, 0, 0, 0, '', '0000-00-00', '', 0, '', '0000-00-00 00:00:00', '2018-03-22 15:53:29', NULL, NULL, NULL, NULL, NULL),
(114, 'Cíntia Rodrigues Furtado', '16c2bf41-d20f-4d9d-a605-c31f9f9c1c9c', 'cissapoa@gmail.com', '984974508', '51', '', '', 'e2d937972b928e247a6e63230d681cdd', '', 'c', NULL, NULL, NULL, '0', NULL, 0, 0, '-19.92064603243843', '-43.945275656211706', '', 0, 0, 0, 0, '', '0000-00-00', '', 0, '', '0000-00-00 00:00:00', '2018-03-29 12:16:10', NULL, NULL, NULL, NULL, NULL),
(115, 'Daniel Braganca Lobo dos Santos', '8ccc32d4-0689-4481-a9b7-2b4feb26d26d', 'danielf5@yahoo.com.br', '993819234', '31', '', '', '0b6236085b1b0066cdd28936f1b5eb81', 'Entregas e servicos com rapidez e eficiencia \nFaco carhavde bateria e auxilio combustivel', 'c', 'http://soujobex.com.br/api/uploads/2018-03-29--13-03-32-538879624', '334', 1, '0', 34, 0, 1, '-19.92064603243843', '-43.945275656211706', '', 0, 0, 0, 1, '2,1', '0000-00-00', '', 0, '', '0000-00-00 00:00:00', '2018-03-29 13:26:08', NULL, NULL, NULL, NULL, NULL),
(116, 'Tayslaine', '4be713be-7279-4f56-8860-37dc914ec279', 'tayslaine100@gmail.com', '988215294', '31', '14234197661', '', '50ebab1e5e21ad08f51ff7a89b2ebb4f', '', 'c', NULL, '211', 3, '0', 35, 1, 0, '-19.92064603243843', '-43.945275656211706', '', 0, 0, 0, 0, '', '0000-00-00', '', 0, '', '0000-00-00 00:00:00', '2018-03-29 17:01:28', NULL, NULL, NULL, NULL, NULL),
(117, 'Adriana Moreira ', '3f0e7a74-cfb0-488f-be82-a9958a1ac853', 'adriana_massoterapeuta@yahoo.com.br', '997242778', '88', '', '', 'aa61526aaf7e31a29c556d0386b86d01', '', 'c', NULL, NULL, NULL, '0', NULL, 0, 0, '-19.92064603243843', '-43.945275656211706', '', 0, 0, 0, 0, '', '0000-00-00', '', 0, '', '0000-00-00 00:00:00', '2018-03-31 11:54:54', NULL, NULL, NULL, NULL, NULL),
(118, 'Luciana Alvarez', '0e9bab65-ddba-4ae9-903c-104f5e26a66d', 'lucianaalvarez@icloud.com', '996781983', '11', '', '', '9098100c33c68bef8091009f4a85df0d', '', 'c', NULL, NULL, NULL, '0', NULL, 0, 0, '-19.92064603243843', '-43.945275656211706', '', 0, 0, 0, 0, '', '0000-00-00', '', 0, '', '0000-00-00 00:00:00', '2018-04-01 01:41:21', NULL, NULL, NULL, NULL, NULL),
(119, 'Michel Teixeira', '02f06ceb-a062-4225-932e-4f1c5fe47356', 'teixeira.michel0@gmail.com', '976499064', '11', '', '', '3d193b5cf02429233cb82721f0e9f566', '', 'c', NULL, NULL, NULL, '0', NULL, 0, 0, '-19.92064603243843', '-43.945275656211706', '', 0, 0, 0, 0, '', '0000-00-00', '', 0, '', '0000-00-00 00:00:00', '2018-04-01 08:59:51', NULL, NULL, NULL, NULL, NULL),
(120, 'Vinicius fogo', '9630a736-bb5b-4bcd-b5e9-e00827a2a0f3', 'viniciusfogo@icloud.com', '947631774', '11', '', '', '8d01ade51ba29769e5544da26707d436', '', 'c', NULL, NULL, NULL, '0', NULL, 0, 0, '-19.92064603243843', '-43.945275656211706', '', 0, 0, 0, 0, '', '0000-00-00', '', 0, '', '0000-00-00 00:00:00', '2018-04-02 07:03:53', NULL, NULL, NULL, NULL, NULL),
(121, 'Talita Melo', '39d70dcc-79a3-4e8a-8872-c88b2879570d', 'talitanetlive7@hotmail.com', '997467203', '31', '', '', '65da3129d9d71cc4ae2dc09b9b3a43ea', '', 'c', NULL, NULL, NULL, '0', NULL, 0, 0, '-19.92064603243843', '-43.945275656211706', '', 0, 0, 0, 0, '', '0000-00-00', '', 0, '', '0000-00-00 00:00:00', '2018-04-02 23:53:24', '2018-04-30 11:26:33', NULL, NULL, NULL, NULL),
(122, 'Jusselito lopes', '48e8bf62-3a99-42a6-a6b5-1c3c7bfb92ae', 'lopesrgs@gmail.com', '982812895', '51', '', '', 'b2adecbf801299865ed7e077f7087b05', '', 'c', NULL, '', 1, '0', 32, 0, 0, '-19.92064603243843', '-43.945275656211706', '', 0, 0, 0, 0, '', '0000-00-00', '', 0, '', '0000-00-00 00:00:00', '2018-04-11 15:20:13', NULL, NULL, NULL, NULL, NULL),
(123, 'Loanda', 'e01d5be5-e6fe-47b8-a009-7e181d7eda9b', 'euloanda@gmail.com', '998147297', '84', '', '', '5d7783a7b4b8091a076ac197842fd554', '', 'c', NULL, NULL, NULL, '0', NULL, 0, 0, '-19.92064603243843', '-43.945275656211706', '', 0, 0, 0, 0, '', '0000-00-00', '', 0, '', '0000-00-00 00:00:00', '2018-04-12 01:38:58', NULL, NULL, NULL, NULL, NULL),
(124, 'Guilherme Henrique Rodrigues ', '79d172ba-5059-4591-95fd-983dce650823', 'guilherm109.gr@gmail.com', '955302028', '11', '46966967823', '', '3aeec3a04fc7ed005e9aac23eb6ac910', 'Instalações elétricas e manutenção elétrica residencial e predial', 'c', NULL, '106', 1, '0', 35, 1, 0, '-19.92064603243843', '-43.945275656211706', '', 0, 0, 0, 0, '', '0000-00-00', 'SSP', 576611414, '', '0000-00-00 00:00:00', '2018-04-12 09:49:37', NULL, NULL, NULL, NULL, NULL),
(125, 'DICAM Engenharia', 'd404c871-ba67-4faf-be86-1b31a2fbfbb2', 'contato@dicamengenharia.com.br', '983644193', '11', '', '', '26cac717deaa5188a5dc13c472741c5b', '', 'c', NULL, NULL, NULL, '0', NULL, 0, 0, '-19.92064603243843', '-43.945275656211706', '', 0, 0, 0, 0, '', '0000-00-00', '', 0, '', '0000-00-00 00:00:00', '2018-04-13 10:20:01', NULL, NULL, NULL, NULL, NULL),
(126, 'Fabio', 'd65f909d-bdb0-4700-88e6-a00b27d28143', 'fabiosouza1979jp@gmail.com', '987304734', '83', '', '', '22b206baac632e3de9f641be65c8a47d', '', 'c', NULL, '', 1, '0', 32, 0, 0, '-19.92064603243843', '-43.945275656211706', '', 0, 0, 0, 0, '', '0000-00-00', '', 0, '', '0000-00-00 00:00:00', '2018-04-17 14:57:04', NULL, NULL, NULL, NULL, NULL),
(127, 'Kelvin', 'f8a6c0a7-1170-469e-8b56-c79d278a960a', 'kelvincapri@gmail.com', '982417460', '11', '', '', '6fe14859564c97cbc158bb7d942af078', '', 'c', NULL, '', 1, '0', 32, 0, 0, '-19.92064603243843', '-43.945275656211706', '', 0, 0, 0, 0, '', '0000-00-00', '', 0, '', '0000-00-00 00:00:00', '2018-04-21 07:54:43', NULL, NULL, NULL, NULL, NULL),
(128, 'Rafael', '', 'rafa_proschsch@hotmail.com', '992134613', '51', '', '', '025bea18d95439a3c98f11cd7c1b36e3', '', 'c', NULL, NULL, NULL, '0', NULL, 0, 0, '-19.92064603243843', '-43.945275656211706', '', 0, 0, 0, 0, '', '0000-00-00', '', 0, '', '0000-00-00 00:00:00', '2018-04-22 14:10:13', NULL, NULL, NULL, NULL, NULL),
(129, 'Aparecida Flávia Soares dos Reis ', '', 'flaviaalisson.adv@hotmail.com', '983993006', '31', '', '', 'c701e2ffa089913b8abb89fa3c43f8c4', '', 'c', NULL, '', 1, '0', 32, 0, 0, '-19.92064603243843', '-43.945275656211706', '', 0, 0, 0, 0, '', '0000-00-00', '', 0, '', '0000-00-00 00:00:00', '2018-04-24 19:05:56', NULL, NULL, NULL, NULL, NULL),
(130, 'Flávia Soares', 'd315f6b5-f060-4129-8ac3-034a1cf2f1a6', 'flaviasoares.adv@hotmail.com', '983993006', '31', '', '', 'c701e2ffa089913b8abb89fa3c43f8c4', '', 'c', NULL, NULL, NULL, '0', NULL, 0, 0, '-19.92064603243843', '-43.945275656211706', '', 0, 0, 0, 0, '', '0000-00-00', '', 0, '', '0000-00-00 00:00:00', '2018-04-24 19:08:35', NULL, NULL, NULL, NULL, NULL),
(131, 'Rafael', '', 'rafa_proscksch@hotmail.com', '992134713', '51', '', '', '025bea18d95439a3c98f11cd7c1b36e3', '', 'c', NULL, NULL, NULL, '0', NULL, 0, 0, '-19.92064603243843', '-43.945275656211706', '', 0, 0, 0, 0, '', '0000-00-00', '', 0, '', '0000-00-00 00:00:00', '2018-04-25 21:04:07', NULL, NULL, NULL, NULL, NULL),
(132, 'Guilherme Araújo', '27341f11-5e92-4a48-9f97-a3b8b7147bfb', 'g.araujo.silveira@gmail.com', '996671775', '34', '', '', '2691675c9564a2ca3f2905d59c92cc10', '', 'c', NULL, NULL, NULL, '0', NULL, 0, 0, '-19.92064603243843', '-43.945275656211706', '', 0, 0, 0, 0, '', '0000-00-00', '', 0, '', '0000-00-00 00:00:00', '2018-04-27 13:34:11', NULL, NULL, NULL, NULL, NULL),
(133, 'Talita Melo ', '070fd634-356b-40fa-9e32-239079d61ca4', 'semijoiastalita@gmail.com', '997467203', '31', '07515897643', '', '202cb962ac59075b964b07152d234b70', 'Excelência e qualidade há mais de 15 anos', 'c', '3329341530835813-83012761157.jpg', '36,57,315', 3, '0', 35, 1, 0, '-19.87816444056098', '-43.982335198670626', 'R. Júlio Soares Santana, 369 - Ouro Preto, Belo Horizonte - MG, 31320-010, Brazil', 0, 0, 0, 1, '3,5,4,2,1', '2017-03-31', 'Sspmg', 0, '', '0000-00-00 00:00:00', '2018-04-30 11:33:42', NULL, NULL, NULL, NULL, NULL),
(134, 'Nilson Abreu', 'e05d1f0f-0904-4eca-9062-783214972436', 'nilson.alisson@hotmail.com', '993271308', '31', '', '', 'cf37b57c86e2c550a0c632a2b2025438', '', 'c', NULL, NULL, NULL, '0', NULL, 0, 0, '-19.92064603243843', '-43.945275656211706', '', 0, 0, 0, 0, '', '0000-00-00', '', 0, '', '0000-00-00 00:00:00', '2018-05-01 12:30:26', NULL, NULL, NULL, NULL, NULL),
(135, 'Taiane', '7ad72dcb-8c5d-4e02-b065-4057c96c2599', 'taiane.arruda25@hotmail.com', '984474197', '54', '', '', '3890da2042df4b61a1354d862aedfeed', '', 'c', NULL, NULL, NULL, '0', NULL, 0, 0, '-19.92064603243843', '-43.945275656211706', '', 0, 0, 0, 0, '', '0000-00-00', '', 0, '', '0000-00-00 00:00:00', '2018-05-01 17:02:18', NULL, NULL, NULL, NULL, NULL),
(136, 'Elaine Andrade Da Fonseca', 'f325087d-c611-4e12-a7c5-1e419bc42c44', 'elaaineaandrade44@gmail.com', '36453854', '84', '', '', '1b8dab3a92339acb8a87a51b4a956830', '', 'c', NULL, NULL, NULL, '0', NULL, 0, 0, '-19.92064603243843', '-43.945275656211706', '', 0, 0, 0, 0, '', '0000-00-00', '', 0, '', '0000-00-00 00:00:00', '2018-05-01 23:31:45', NULL, NULL, NULL, NULL, NULL),
(137, 'Estilo em Equilíbrio ', 'cf9d5900-b3c6-43a9-9e77-fda55db63a88', 'estiloemequilibrio@gmail.com', '999691115', '31', '', '', '54dc14d165fb996d1831043b718fe09d', '', 'c', NULL, NULL, NULL, '0', NULL, 0, 0, '-19.92064603243843', '-43.945275656211706', '', 0, 0, 0, 0, '', '0000-00-00', '', 0, '', '0000-00-00 00:00:00', '2018-05-02 08:34:53', NULL, NULL, NULL, NULL, NULL),
(138, 'Jéssica Almeida', 'eb008a04-f602-4da9-8de4-c3b834974076', 'oliveiira7@gmail.com', '37377351', '84', '', '', '1f96c5bc8438a76f3a0c4043ec46291a', '', 'c', NULL, NULL, NULL, '0', NULL, 0, 0, '-19.92064603243843', '-43.945275656211706', '', 0, 0, 0, 0, '', '0000-00-00', '', 0, '', '0000-00-00 00:00:00', '2018-05-02 23:18:10', NULL, NULL, NULL, NULL, NULL),
(139, 'Cristiane', 'b44c046b-de58-48b0-8e54-90131d773fc1', 'crismoncores@yahoo.com.br', '999280590', '84', '', '', 'efc30272c5a6d664f34bced64f05697b', '', 'c', NULL, NULL, NULL, '0', NULL, 0, 0, '-19.92064603243843', '-43.945275656211706', '', 0, 0, 0, 0, '', '0000-00-00', '', 0, '', '0000-00-00 00:00:00', '2018-05-04 14:33:35', NULL, NULL, NULL, NULL, NULL),
(140, 'Alessandra', 'a350ead3-b21b-429c-a03c-d69d974568fa', 'aleamorim.1990@hotmail.com', '987537743', '84', '', '', '5c5aad629a6c9b5ccec8451c22c1c420', '', 'c', NULL, NULL, NULL, '0', NULL, 0, 0, '-19.92064603243843', '-43.945275656211706', '', 0, 0, 0, 0, '', '0000-00-00', '', 0, '', '0000-00-00 00:00:00', '2018-05-05 14:50:30', NULL, NULL, NULL, NULL, NULL),
(141, 'Brendo ', '', 'brendobarbosa96@gmail.com', '997737460', '85', '', '', '43b0383f0191f33c116faeddf9f36ee9', '', 'c', NULL, NULL, NULL, '0', NULL, 0, 0, '-19.92064603243843', '-43.945275656211706', '', 0, 0, 0, 0, '', '0000-00-00', '', 0, '', '0000-00-00 00:00:00', '2018-05-06 17:20:45', NULL, NULL, NULL, NULL, NULL),
(142, 'CIDA FRANÇA', '23904b29-0458-43a8-9864-7cf12f9c9749', 'franca_cida@hotmail.com', '991914447', '31', '73073474668', '', 'b4ee5aa1bc072eb2b9875a825e7f5a56', 'Atuo com planejamento financeiro , seguros de vida , planos de saude . Corretor autorizado SUSEP 20.2016777-6 . Trabalho', 'c', NULL, '179', 2, '0', 35, 1, 0, '-19.92064603243843', '-43.945275656211706', '', 0, 0, 0, 0, '', '2007-12-27', 'Sspmg', 4905727, '', '0000-00-00 00:00:00', '2018-05-08 18:05:52', NULL, NULL, NULL, NULL, NULL),
(143, 'LiGiA', '', 'ligiaaos@gmail.com', '992947690', '31', '', '', 'ee5a288334e43a0aa12630cbc6aa9970', '', 'c', NULL, '', 1, '0', 32, 0, 0, '-19.92064603243843', '-43.945275656211706', '', 0, 0, 0, 0, '', '0000-00-00', '', 0, '', '0000-00-00 00:00:00', '2018-05-09 18:42:39', NULL, NULL, NULL, NULL, NULL),
(144, 'Givaldo Santos ', '4b72024c-2a0c-42fd-ae38-f17ecbc89ec2', 'givaldo.gsantos@gmail.com', '945958645', '11', '', '', '081ae609150970fdd2d1fa6bc920f1ac', '', 'c', NULL, NULL, NULL, '0', NULL, 0, 0, '', '', '', 0, 0, 0, 0, '', '0000-00-00', '', 0, '', '0000-00-00 00:00:00', '2018-05-15 14:37:35', NULL, NULL, NULL, NULL, NULL),
(145, 'Alan Paz', '231ac1c1-587a-43d2-845a-e734f14b87f2', 'alanjpaz@hotmail.com', '999598826', '43', '', '', '82ee206b2ad6bd2fe12b5d785e96953c', '', 'c', NULL, NULL, NULL, '0', NULL, 0, 0, '', '', '', 0, 0, 0, 0, '', '0000-00-00', '', 0, '', '0000-00-00 00:00:00', '2018-05-16 19:18:00', NULL, NULL, NULL, NULL, NULL),
(146, 'Fábio Luiz Chico', 'a3bb4af8-58f8-4c66-a7af-e7f88ab82a00', 'fabiolchico@gmail.com', '981212393', '63', '', '', 'a475edbe911d935d0db977fa755563b5', '', 'c', NULL, NULL, NULL, '0', NULL, 0, 0, '', '', '', 0, 0, 0, 0, '', '0000-00-00', '', 0, '', '0000-00-00 00:00:00', '2018-05-16 22:16:12', NULL, NULL, NULL, NULL, NULL),
(147, 'Mariângela abiarraje', '80775713-785c-4470-b221-d6e9650915cb', 'm.abiarraje@gmail.com', '981185111', '84', '', '', 'c4dd5c1ad1008d503600cdf01370e281', '', 'c', NULL, NULL, NULL, '0', NULL, 0, 0, '', '', '', 0, 0, 0, 0, '', '0000-00-00', '', 0, '', '0000-00-00 00:00:00', '2018-05-17 07:58:07', NULL, NULL, NULL, NULL, NULL),
(148, 'Gilberto Luiz Neves', '958932de-d6df-498f-848d-8f8d79ce0640', 'dollycopiadora@gmail.com', '996567480', '31', '', '', 'dfb333992628d85844f48447bf303e6c', '', 'c', NULL, NULL, NULL, '0', NULL, 0, 0, '', '', '', 0, 0, 0, 0, '', '0000-00-00', '', 0, '', '0000-00-00 00:00:00', '2018-05-17 22:28:42', NULL, NULL, NULL, NULL, NULL),
(163, 'Eduardo de Jesus', '093b08bd-9743-4f6c-a318-d998068f5c8d', 'eduardojesus6013@gmail.com', '991550004', '31', NULL, '', '232be43f743612405e4e1a50d8d8d296', '20 anos de excelência  e ótimos relacionamentos  com os clientes', '', NULL, '195', NULL, '1', NULL, 0, 0, 'undefined', 'undefined', '', 0, 0, 0, 1, '2,1', '0000-00-00', '', 0, '', '0000-00-00 00:00:00', '2018-07-05 17:25:05', NULL, NULL, NULL, NULL, NULL),
(172, 'Fabiane Dias Machado', 'fbce6a83-3d12-4a56-b742-b200a754f543', 'Fabianedias_bia@yahoo.com.br', '980270711', '51', NULL, '', 'fc3e8489cde998242e7b3f936425945a', '', '', NULL, NULL, NULL, '', NULL, 0, 0, '', '', '', 0, 0, 0, 0, '', '0000-00-00', '', 0, '', '0000-00-00 00:00:00', '2018-07-14 00:26:32', NULL, NULL, NULL, NULL, NULL),
(173, 'Camila ', 'b324d8cf-8af0-45ef-a635-da16baa26ee4', 'camilapdccosta@gmail.com', '988329489', '84', NULL, '', 'dbdc244f49d26a180dd65fe35550e8d2', 'Dispomos de atendimento no nosso espaço e também home care. Trabalhamos somente com agendamento. Nossos serviços são personalizados de acordo com o perfil de cada cliente.', '', NULL, '36,80', NULL, '1', NULL, 0, 0, '-5.805130681214797', '-35.22917641326785', '', 0, 0, 0, 1, '4,2,1', '0000-00-00', '', 0, '', '0000-00-00 00:00:00', '2018-07-14 01:13:45', NULL, NULL, NULL, NULL, NULL),
(153, 'Antônia Nunes', '', 'geraldnunnes@gmail.com', '992497942', '31', NULL, '', '08cd706ca61375c02a47b6ea26c66aba', '', '', NULL, NULL, NULL, '0', NULL, 0, 0, '', '', '', 0, 0, 0, 0, '', '0000-00-00', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2018-07-04 10:51:56', NULL, NULL, NULL, NULL),
(161, 'Pedro Freitas', 'ca18a50a-6bea-47a8-a573-eeb67041079d', 'Contato@pedrofreitascoach.com.br', '984279161', '55', NULL, '', '84109e98c1294406c993c27af1eb4ba7', '', '', NULL, NULL, NULL, '', NULL, 0, 0, '', '', '', 0, 0, 0, 0, '', '0000-00-00', '', 0, '', '0000-00-00 00:00:00', '2018-07-04 14:22:02', NULL, NULL, NULL, NULL, NULL),
(155, 'Levi Müllar', '872ebdd7-9a57-4e88-b138-9e3003d6a70b', 'levi_mullar@yahoo.com.br', '964368590', '21', NULL, '', '43f8e9a422fdff347d7dd8f446393c8e', '', '', NULL, NULL, NULL, '', NULL, 0, 0, '', '', '', 0, 0, 0, 0, '', '0000-00-00', '', 0, '', '0000-00-00 00:00:00', '2018-06-26 01:47:12', NULL, NULL, NULL, NULL, NULL),
(156, 'Tom Araújo', '2d49461f-18b3-40ba-ac31-f8da56f28b74', 'Tom.araujo@resultadosdigitais.com.br', '999999999', '48', NULL, '', '22936ed56c07280e8a766653b3efa101', '', '', NULL, NULL, NULL, '', NULL, 0, 0, '', '', '', 0, 0, 0, 0, '', '0000-00-00', '', 0, '', '0000-00-00 00:00:00', '2018-06-27 17:04:59', NULL, NULL, NULL, NULL, NULL),
(157, 'Andreza Soares', '0788abf3-25b9-4dec-b850-e722fafab9a7', 'Andrezafernanda_soares@hotmail.com', '940329993', '11', NULL, '', '869cd4e5c9bdbfe1c89389805a213628', '', '', NULL, NULL, NULL, '', NULL, 0, 0, '', '', '', 0, 0, 0, 0, '', '0000-00-00', '', 0, '', '0000-00-00 00:00:00', '2018-07-03 00:23:26', NULL, NULL, NULL, NULL, NULL),
(158, 'Pablo Bandeira', '396617df-e70f-41cf-b037-fdc66836c45b', 'pablobandeira2605@gmail.com', '989407815', '51', NULL, '', '47ccf7260d60a048f6c3f7e7416205d9', '', '', NULL, NULL, NULL, '', NULL, 0, 0, '', '', '', 0, 0, 0, 0, '', '0000-00-00', '', 0, '', '0000-00-00 00:00:00', '2018-07-03 14:40:50', NULL, NULL, NULL, NULL, NULL),
(159, 'Smart Eletrônica e Papelaria ', '7b34eaed-06a8-4334-b1e4-01f3bb1341fc', 'smarteletronicabh@gmail.com', '25120932', '31', NULL, '', '645960dfbe61999875ab0aeb13ecebee', 'Venda de material escolar, xerox, impressão de 2 via de água, luz, telefone. Serviço  de lan house', '', '2503741530637930-314315900207.jpg', '357', NULL, '0', NULL, 0, 0, '-19.90080187457592', '-43.970542531460524', 'R. Todos Os Santos, 05 - Alto Cai', 0, 1, 0, 1, '5,2,1', '0000-00-00', '', 0, '', '0000-00-00 00:00:00', '2018-07-03 14:48:15', NULL, NULL, NULL, NULL, NULL),
(160, 'Ricardo ', '2254cf19-4395-44fb-a64f-e49240acabc6', 'Ricknoho@yahoo.com.br', '987866087', '31', NULL, '', '0b7e058719443a6bdf1d8de77397a094', '', '', NULL, NULL, NULL, '', NULL, 0, 0, '', '', '', 0, 0, 0, 0, '', '0000-00-00', '', 0, '', '0000-00-00 00:00:00', '2018-07-03 23:05:45', NULL, NULL, NULL, NULL, NULL),
(167, 'Fly ', 'f2e4b47e-15a3-44f1-80f6-0f725ba791f3', 'Flyflyerson@gmail.com', '423232323', '11', NULL, '', '75a593a34aa5ba8e5e5788b7c899802e', '', '', NULL, NULL, NULL, '', NULL, 0, 0, '', '', '', 0, 0, 0, 0, '', '0000-00-00', '', 0, '', '0000-00-00 00:00:00', '2018-07-09 23:44:24', NULL, NULL, NULL, NULL, NULL),
(168, 'Lucas Lael', '51f52968-b9a8-4094-b7d7-3df57f8ecc41', 'lucaslael@gmail.com', '991584429', '31', NULL, '', '060929fba300f8c403d1ef689b11e939', '', '', NULL, NULL, NULL, '', NULL, 0, 0, '', '', '', 0, 0, 0, 0, '', '0000-00-00', '', 0, '', '0000-00-00 00:00:00', '2018-07-11 18:29:31', NULL, NULL, NULL, NULL, NULL),
(169, 'Herbert Geraldo', '8cceac89-9f9e-4d67-a246-628162b56af7', 'hebertgonzaga1970@gmail.com', '998605044', '31', NULL, '', 'e10adc3949ba59abbe56e057f20f883e', '', '', NULL, NULL, NULL, '', NULL, 0, 0, '', '', '', 0, 0, 0, 0, '', '0000-00-00', '', 0, '', '0000-00-00 00:00:00', '2018-07-12 12:19:26', NULL, NULL, NULL, NULL, NULL),
(170, 'Anderson Henrique Sousa Rozario', '67dcaef7-688b-45b4-9105-521bbc249993', 'davihenrique.2016@gmail.com', '989766787', '31', NULL, '', 'cc5a86e944e472d12c52e7710aa86107', '', '', NULL, NULL, NULL, '', NULL, 0, 0, '', '', '', 0, 0, 0, 0, '', '0000-00-00', '', 0, '', '0000-00-00 00:00:00', '2018-07-12 23:30:05', NULL, NULL, NULL, NULL, NULL),
(171, 'Leonardo Luz', 'ec51d7ec-710e-4c3f-8ac3-c17d46bef1a3', 'leonardo.luz.filho.123@gmail.com', '985604805', '31', NULL, '', 'e10adc3949ba59abbe56e057f20f883e', '25 anos de Excelência em atendimento aos clientes de BH e região', '', NULL, '39,44,45', NULL, '1', NULL, 0, 0, '-19.901478058923313', '-43.97083858028054', 'R. Dr. Pedro Pinto, 77 - Alto Caiçaras, Belo Horizonte - MG, 30775-490, Brazil', 0, 0, 0, 1, '2,1', '0000-00-00', '', 0, '', '0000-00-00 00:00:00', '2018-07-13 21:36:55', NULL, NULL, NULL, NULL, NULL),
(174, 'Daniela Toledo', 'ad41dbc4-b006-464e-9d10-03c23888e6b5', 'Santos_toledo@hotmail.com', '984217932', '51', NULL, '', 'eb79967f315b1148b4dbcda69f23d778', '', '', NULL, NULL, NULL, '', NULL, 0, 0, '', '', '', 0, 0, 0, 0, '', '0000-00-00', '', 0, '', '0000-00-00 00:00:00', '2018-07-15 03:24:10', NULL, NULL, NULL, NULL, NULL),
(175, 'Clenio Lopes', 'e4606cbe-7f8f-48bd-b7fc-0462eb7da14b', 'lopeservicos@gmail.com', '971649535', '31', NULL, '', 'c14412c023c9b713bab3f7e436107b8d', 'Sou um profissional da área elétrica e segurança eletrônica', '', NULL, '106', NULL, '1', NULL, 0, 0, '-19.757027934396692', '-43.87865977361798', 'Av. Álvaro Sales, 51 - Frimisa, Santa Luzia - MG, 33045-160, Brazil', 0, 0, 0, 1, '1,2,5', '0000-00-00', '', 0, '169,168,167', '0000-00-00 00:00:00', '2018-07-18 00:29:08', NULL, NULL, NULL, NULL, NULL),
(176, 'Luiz felipe rocha', '4a2100b0-0dfa-43ba-ad04-70fe2becf5c0', 'luiz-felipefelipe@hotmail.com', '998998897', '31', NULL, '', 'af5251f95d0a0ee346f7f942eb9bb984', '', '', NULL, NULL, NULL, '', NULL, 0, 0, '', '', '', 0, 0, 0, 0, '', '0000-00-00', '', 0, '', '0000-00-00 00:00:00', '2018-07-18 02:03:37', NULL, NULL, NULL, NULL, NULL),
(177, 'Raphael Lamarc ', 'c67d2559-0043-410f-9e7a-ddc4370f9411', 'rvlamarc@gmail.com', '980381812', '11', NULL, '', 'bed24623edcfe284f33ed2f8c4e40fde', 'Avaliação Gratuita!\n\nTratamento de:\nCalos e calosidades, Unhas encravadas e infeccionadas, Fissuras, Aparelho corretivo para unhas, Reflexologia Podal, Auxílio no tratamento de micoses e outras patologias dos pés. \n\nSite www.mlamarc.com.br ', '', NULL, '89', NULL, '1', NULL, 0, 0, '-23.58813597721543', '-46.63573259487748', 'R. Domingos de Morais, 1334/1338 loja C9 - Vila Mariana, São Paulo - SP, 04010-000, Brazil', 0, 1, 0, 1, '1,2,3,4,5', '0000-00-00', '', 0, '', '0000-00-00 00:00:00', '2018-07-18 19:16:56', NULL, NULL, NULL, NULL, NULL),
(178, 'Chiclet batera', 'ccaea948-8745-4c51-8bfb-a9f8967eba51', 'Lucindodrums@hotmail.com', '994211301', '31', NULL, '', 'fc16f45ef5970c8fc6d18288e2756dcf', '', '', NULL, NULL, NULL, '', NULL, 0, 0, '', '', '', 0, 0, 0, 0, '', '0000-00-00', '', 0, '', '0000-00-00 00:00:00', '2018-07-19 08:05:06', NULL, NULL, NULL, NULL, NULL),
(179, 'Pollyanna oliveira', '4dcd08ed-e931-4372-a990-4fb05162e895', 'Pollyannakooliveira@hotmail.com', '994889061', '31', NULL, '', '5878ebec447deb8e7cf22dc7bdc04f66', 'Motorista atenciosa muito responsável mais de dez anos de carteira. Meu carro e um citroen c3 todo completo.sou muito proativa e dedicada.', '', NULL, '257', NULL, '0', NULL, 0, 0, '-19.9804064939431', '-44.01827177032829', 'Rua Jader Campos Guimarães, 101 - Barreiro, Belo Horizonte - MG, 30640-115, Brazil', 0, 0, 0, 0, '', '0000-00-00', '', 0, '388', '0000-00-00 00:00:00', '2018-07-20 21:19:59', NULL, NULL, NULL, NULL, NULL),
(180, 'Nilson Alisson', 'e05d1f0f-0904-4eca-9062-783214972436', 'nilson.abreu@evoluirortopedia.com.br', '993271308', '31', '2273940', '', 'cf37b57c86e2c550a0c632a2b2025438', '', '', NULL, NULL, NULL, '', NULL, 0, 0, '', '', '', 0, 0, 0, 0, '', '0000-00-00', '', 0, '', '0000-00-00 00:00:00', '2018-07-22 18:20:47', NULL, NULL, NULL, NULL, NULL),
(181, 'Francineide Rodrigues', '5fe861aa-7782-40c3-988b-dd8231097e53', 'Frann49o@gmail.com', '985211242', '85', NULL, '', '0be9920d8bc4b5fdb9403cc8f2d7580e', '', '', NULL, NULL, NULL, '', NULL, 0, 0, '', '', '', 0, 0, 0, 0, '', '0000-00-00', '', 0, '', '0000-00-00 00:00:00', '2018-07-25 23:15:30', NULL, NULL, NULL, NULL, NULL),
(182, 'Pâmela Katriny', 'da4031a3-0854-41a5-9754-e5ab53b9520a', 'pamela@wsconsultoriaseguros.com.br', '989557566', '31', NULL, '08795837620', '63376d365d6ccac73bac234517e0bb42', '', '', NULL, NULL, NULL, '', NULL, 0, 0, '', '', '', 0, 0, 0, 0, '', '0000-00-00', 'SSP/MG', 0, '', '0000-00-00 00:00:00', '2018-07-26 11:16:56', NULL, 'b4b95bcf46f75ae7b5f4fb7cf69f2675.jpg', '', '5e9e4f3017f68877fe3533dd86435d5b.jpg', NULL),
(183, 'Isnair Gomes Alves ', '4d8ac801-ec06-4598-9905-e915deb15c24', 'Isnairgomes@hotmail.com', '995939275', '31', NULL, '56325223691', 'd753eea6752dfb04c4690a250680fa98', 'A mais de vinte anos atendendo  com qualidade e satisfação \n', '', '9441761532643178-61164672673.jpg', '50,40,46', NULL, '1', NULL, 0, 0, '-19.898761183389887', '-43.91441496089101', 'R. Eng. Odilon Fernandes, 55 - Horto Florestal, Belo Horizonte - MG, 31035-260, Brazil', 0, 1, 0, 1, '1,2', '0000-00-00', 'Sspmg', 3778479, '', '0000-00-00 00:00:00', '2018-07-26 21:45:33', NULL, 'e92554a6c391f525d1d0560f1aea5124.jpg', '98cd3d1041cca5309ab799f94811fc1f.jpg', '260fb978da91272b90808cc3fd68fe75.jpg', NULL),
(184, 'Aline Tatiane Adolphs', 'dbe77e34-1de9-45f7-9c48-6d47a88a51a2', 'alineadolphs@gmail.com', '992372207', '51', NULL, '', 'b8e5f7370b204c474ce4fc02db80ddf5', 'Jornalista formada há 16 anos. Experiência em redação para veículos impressos e online, blogs e marketing digital. Conhecimento em programas de design e fotografia. ', '', NULL, '193', NULL, '1', NULL, 0, 0, '-30.047080715166683', '-51.2046711333096', 'R. São Luís, 460 - Santana, Porto Alegre - RS, 90620-170, Brazil', 0, 0, 0, 1, '2,1,4,5', '0000-00-00', '', 0, '', '0000-00-00 00:00:00', '2018-08-22 14:31:56', NULL, NULL, NULL, NULL, NULL),
(185, 'WALTER MOTTA ', '76cdc46f-95a4-4717-8e05-ada12e2ca824', 'Waltinho-bh@Hotmail.com', '999821427', '31', NULL, '', '2359db7bc0ec571dac0905fbe2caac0d', '', '', NULL, NULL, NULL, '', NULL, 0, 0, '', '', '', 0, 0, 0, 0, '', '0000-00-00', '', 0, '', '0000-00-00 00:00:00', '2018-08-25 18:34:12', NULL, NULL, NULL, NULL, NULL),
(186, 'Zz zz', '6434cf4b-8da4-416b-a0ec-3f3016e74baa', 'zz@zz.com', '996343555', '64', NULL, '', 'b9fd2fbaa38357637ba44ee8bde30195', '', '', NULL, NULL, NULL, '', NULL, 0, 0, '', '', '', 0, 0, 0, 0, '', '0000-00-00', '', 0, '', '0000-00-00 00:00:00', '2018-09-05 20:32:10', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_users` (`id`, `nome`, `id_onsignal`, `email`, `telefone`, `area`, `token_forguetpassword`, `cpf_cnpj`, `senha`, `obs`, `perfil`, `img_url`, `id_grupo`, `id_genero`, `mei`, `id_type_orcam`, `perfVisi`, `fisica_juridica`, `lat`, `lng`, `endereco`, `marketplace`, `cobra_visita`, `valor`, `aceita_cartao`, `id_cartoes`, `dt_exped`, `local_exped`, `rg`, `grupo_categorias`, `data_position`, `data_cad`, `data_del`, `arquivo`, `arquivo2`, `arquivo3`, `contato_resp`) VALUES
(187, 'Jorge Machado', 'd81c61ae-10d0-4e78-aacf-5f2d94c88a7b', 'networkcomsucesso@hotmail.com', '991028533', '31', NULL, '', '927bb98a1363caf0a8b1f96e26ca27b6', '', '', '5624631537249223-72838830948.jpg', NULL, NULL, '', NULL, 0, 0, '', '', '', 0, 0, 0, 0, '', '0000-00-00', '', 0, '', '0000-00-00 00:00:00', '2018-09-17 07:46:47', NULL, NULL, NULL, NULL, NULL),
(188, 'Carla Lima', '847340ae-3f82-4755-8bab-dd2c47f9fd6b', 'Ilsa.carla.lima.123@gmail.com', '985204892', '31', NULL, '', '2c2775213f06237c627ff8b456e01eca', '', '', NULL, NULL, NULL, '', NULL, 0, 0, '', '', '', 0, 0, 0, 0, '', '0000-00-00', '', 0, '', '0000-00-00 00:00:00', '2018-09-19 11:24:14', NULL, NULL, NULL, NULL, NULL),
(189, 'Larissa Oliveira', 'd62e8894-3aad-48d8-9824-b7da00ec3ff5', 'larissa-sp2012@hotmail.com', '946814246', '11', NULL, '', '8c868138d4036868bd3dec2c260f451c', '', '', NULL, NULL, NULL, '', NULL, 0, 0, '', '', '', 0, 0, 0, 0, '', '0000-00-00', '', 0, '', '0000-00-00 00:00:00', '2018-09-27 10:12:21', NULL, NULL, NULL, NULL, NULL),
(190, 'Tttt ttt', '', 'Tt@tt.com', '231564896', '21', NULL, '', 'e10adc3949ba59abbe56e057f20f883e', '', '', NULL, NULL, NULL, '', NULL, 0, 0, '', '', '', 0, 0, 0, 0, '', '0000-00-00', '', 0, '', '0000-00-00 00:00:00', '2018-10-08 19:30:15', NULL, NULL, NULL, NULL, NULL),
(191, 'Alexandra Pollo', '', 'alexandrapollo@gmail.com', '999300877', '19', NULL, '', '91ea0357db95a46e251d78fb7d5247c1', '', '', NULL, NULL, NULL, '', NULL, 0, 0, '', '', '', 0, 0, 0, 0, '', '0000-00-00', '', 0, '', '0000-00-00 00:00:00', '2018-10-18 04:24:59', NULL, NULL, NULL, NULL, NULL);

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `tb_avaliacao`
--
ALTER TABLE `tb_avaliacao`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `tb_banco`
--
ALTER TABLE `tb_banco`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `tb_cartoes_credt`
--
ALTER TABLE `tb_cartoes_credt`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `tb_drawer_panel_reactnative`
--
ALTER TABLE `tb_drawer_panel_reactnative`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `tb_especialidades`
--
ALTER TABLE `tb_especialidades`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `tb_genero`
--
ALTER TABLE `tb_genero`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `tb_grupmodulo`
--
ALTER TABLE `tb_grupmodulo`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `tb_grupos_servicos`
--
ALTER TABLE `tb_grupos_servicos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `tb_ip_time`
--
ALTER TABLE `tb_ip_time`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `tb_login`
--
ALTER TABLE `tb_login`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `tb_menu`
--
ALTER TABLE `tb_menu`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `tb_modulo`
--
ALTER TABLE `tb_modulo`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `tb_msg_push`
--
ALTER TABLE `tb_msg_push`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `tb_multa`
--
ALTER TABLE `tb_multa`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `tb_pgseguro_notification`
--
ALTER TABLE `tb_pgseguro_notification`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `tb_pgseguro_transactions`
--
ALTER TABLE `tb_pgseguro_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `tb_plano`
--
ALTER TABLE `tb_plano`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `tb_prog`
--
ALTER TABLE `tb_prog`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `tb_proposta`
--
ALTER TABLE `tb_proposta`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `tb_proposta_log`
--
ALTER TABLE `tb_proposta_log`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `tb_proposta_status`
--
ALTER TABLE `tb_proposta_status`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `tb_reclamacoes`
--
ALTER TABLE `tb_reclamacoes`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `tb_report`
--
ALTER TABLE `tb_report`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `tb_report_msg`
--
ALTER TABLE `tb_report_msg`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `tb_type_orcam`
--
ALTER TABLE `tb_type_orcam`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `tb_users`
--
ALTER TABLE `tb_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `tb_avaliacao`
--
ALTER TABLE `tb_avaliacao`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT de tabela `tb_banco`
--
ALTER TABLE `tb_banco`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT de tabela `tb_cartoes_credt`
--
ALTER TABLE `tb_cartoes_credt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `tb_drawer_panel_reactnative`
--
ALTER TABLE `tb_drawer_panel_reactnative`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `tb_especialidades`
--
ALTER TABLE `tb_especialidades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=529;

--
-- AUTO_INCREMENT de tabela `tb_genero`
--
ALTER TABLE `tb_genero`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de tabela `tb_grupmodulo`
--
ALTER TABLE `tb_grupmodulo`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2627;

--
-- AUTO_INCREMENT de tabela `tb_grupos_servicos`
--
ALTER TABLE `tb_grupos_servicos`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=360;

--
-- AUTO_INCREMENT de tabela `tb_ip_time`
--
ALTER TABLE `tb_ip_time`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1144;

--
-- AUTO_INCREMENT de tabela `tb_login`
--
ALTER TABLE `tb_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT de tabela `tb_menu`
--
ALTER TABLE `tb_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=481;

--
-- AUTO_INCREMENT de tabela `tb_modulo`
--
ALTER TABLE `tb_modulo`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT de tabela `tb_msg_push`
--
ALTER TABLE `tb_msg_push`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT de tabela `tb_multa`
--
ALTER TABLE `tb_multa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `tb_pgseguro_notification`
--
ALTER TABLE `tb_pgseguro_notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=242;

--
-- AUTO_INCREMENT de tabela `tb_pgseguro_transactions`
--
ALTER TABLE `tb_pgseguro_transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=509;

--
-- AUTO_INCREMENT de tabela `tb_plano`
--
ALTER TABLE `tb_plano`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `tb_prog`
--
ALTER TABLE `tb_prog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `tb_proposta`
--
ALTER TABLE `tb_proposta`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=324;

--
-- AUTO_INCREMENT de tabela `tb_proposta_log`
--
ALTER TABLE `tb_proposta_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=334;

--
-- AUTO_INCREMENT de tabela `tb_proposta_status`
--
ALTER TABLE `tb_proposta_status`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT de tabela `tb_reclamacoes`
--
ALTER TABLE `tb_reclamacoes`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=192;

--
-- AUTO_INCREMENT de tabela `tb_report`
--
ALTER TABLE `tb_report`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de tabela `tb_report_msg`
--
ALTER TABLE `tb_report_msg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT de tabela `tb_type_orcam`
--
ALTER TABLE `tb_type_orcam`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de tabela `tb_users`
--
ALTER TABLE `tb_users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=192;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
