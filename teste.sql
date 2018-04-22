-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 22-Abr-2018 às 12:19
-- Versão do servidor: 10.1.31-MariaDB
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `teste`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `alugados`
--

CREATE TABLE `alugados` (
  `id` int(11) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `categoria` varchar(50) NOT NULL,
  `estado` varchar(50) NOT NULL,
  `preco` double NOT NULL,
  `quantidade` int(11) NOT NULL,
  `actorPrincipal` varchar(50) NOT NULL,
  `autor` varchar(50) NOT NULL,
  `sinopse` text NOT NULL,
  `cliente` varchar(50) NOT NULL,
  `hora_de_devolucao` varchar(50) NOT NULL,
  `data_de_devolucao` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `alugados`
--

INSERT INTO `alugados` (`id`, `titulo`, `categoria`, `estado`, `preco`, `quantidade`, `actorPrincipal`, `autor`, `sinopse`, `cliente`, `hora_de_devolucao`, `data_de_devolucao`) VALUES
(41, 'Divergent', 'Ficcao Cientifica', 'Razoavel', 89, 1, 'Shailene Woodley', 'Neil Burger', 'Tris Prior (Shailene Woodley) vive em um mundo futurista no qual a sociedade é dividida em cinco facções. Quando cada pessoa entra na idade adulta, ele ou ela deve escolher uma facção e se comprometer com ela por toda a vida. Tris escolhe Dauntless - aqueles que perseguem a bravura acima de tudo. No entanto, sua iniciação leva a A descoberta de que ela é Divergente e nunca será capaz de se encaixar em apenas uma facção. Avisado que ela deve esconder seu status, Tris descobre uma guerra iminente que ameaça a todos que ela ama.', 'milton', '222', '0000-00-00'),
(42, 'Divergent', 'Ficcao Cientifica', 'Razoavel', 89, 1, 'Shailene Woodley', 'Neil Burger', 'Tris Prior (Shailene Woodley) vive em um mundo futurista no qual a sociedade é dividida em cinco facções. Quando cada pessoa entra na idade adulta, ele ou ela deve escolher uma facção e se comprometer com ela por toda a vida. Tris escolhe Dauntless - aqueles que perseguem a bravura acima de tudo. No entanto, sua iniciação leva a A descoberta de que ela é Divergente e nunca será capaz de se encaixar em apenas uma facção. Avisado que ela deve esconder seu status, Tris descobre uma guerra iminente que ameaça a todos que ela ama.', 'milton', '222', '0000-00-00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `id` int(11) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `senha` varchar(30) NOT NULL,
  `idade` int(11) NOT NULL,
  `sexo` varchar(30) NOT NULL,
  `bairro` varchar(30) NOT NULL,
  `distrito` varchar(30) NOT NULL,
  `bi` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`id`, `nome`, `senha`, `idade`, `sexo`, `bairro`, `distrito`, `bi`) VALUES
(8, 'milton', '0000', 23, 'Masculino', 'hulene', 'Maputo', '100202220010N'),
(9, 'maria', '0000', 21, 'Femenino', 't3', 'Maputo', '12202202020220N'),
(10, 'laura', '0000', 21, 'Femenino', 't3', 'Maputo', '102200202202N'),
(11, 'lucas', '0000', 18, 'Masculino', 'Hulene', 'Maputo', '192922010100N');

-- --------------------------------------------------------

--
-- Estrutura da tabela `filmes`
--

CREATE TABLE `filmes` (
  `id` int(11) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `categoria` varchar(50) NOT NULL,
  `estado` varchar(50) NOT NULL,
  `preco` double NOT NULL,
  `quantidade` int(11) NOT NULL,
  `actorPrincipal` varchar(50) NOT NULL,
  `autor` varchar(50) NOT NULL,
  `sinopse` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `filmes`
--

INSERT INTO `filmes` (`id`, `titulo`, `categoria`, `estado`, `preco`, `quantidade`, `actorPrincipal`, `autor`, `sinopse`) VALUES
(1, 'Double Impact', 'Accao', 'Bom', 99, 10, 'Jean-Claude Vandamme', 'Sheldon Lettich', 'Quase 25 anos depois de ver seu pai morto pelo chefe do crime de Hong Kong, Raymond Zhang (Philip Chan Yan Kin), Chad Wagner (Jean-Claude Van Damme) está vivendo em Los Angeles como um treinador de artes marciais florescente e pacífico. Mas Chad tem um irmão gêmeo, Alex (também Van Damme), que de repente se reúne com seu irmão menos agressivo e quer vingar a morte do pai. Enquanto o par planeja seu retorno contra Zhang, eles também lutam para superar suas diferenças pessoais.'),
(2, 'Shaolin Soccer', 'Comedia', 'Bom', 99, 8, 'Stephen Chow', 'Stephen Chow', 'Durante toda a sua vida, um jovem comum (Stephen Chow) foi tratado como uma sujeira. Ainda assim, ele nunca desistiu de acreditar que todos os problemas do mundo poderiam ser resolvidos com um pouco de kung fu. Então ele está se unindo a um grupo de desajustados - seis amigos que eram mestres de kung fu na juventude - para formar um time de futebol equipe que só ele acredita ter a chance de ganhar um grande prêmio de US $ 1 milhão. Juntos, eles vão aplicar seus talentos ocultos a um jogo totalmente novo - e o futebol nunca mais será o mesmo.'),
(3, 'Born to Fight', 'Accao', 'Razoavel', 89, 18, ' Jay Baruchel', 'Panna Rittikrai', 'Um homem da lei (Dan Chupong) e um grupo de aldeões lutam contra o exército rebelde de um traficante capturado.'),
(4, 'Taken', 'Accao', 'Razoavel', 89, 12, 'Liam Neeson', 'Pierre Morel', 'Bryan Mills (Liam Neeson), um ex-agente do governo, está tentando se reconectar com sua filha, Kim (Maggie Grace). Então seus piores medos se tornam reais quando traficantes de sexo raptam Kim e sua amiga pouco depois de chegarem a Paris para as férias. Com apenas quatro dias até a Kim ser leiloada, Br yan deve recorrer a todas as habilidades que aprendeu em operações negras para resgatá-la.'),
(5, 'Fast and Furious 8', 'Accao', 'Bom', 99, 9, 'Van Diesel', 'F. Gary Gray', 'Com Dom e Letty casados, Brian e Mia se aposentaram e o resto da tripulação foi exonerado, a equipe itinerante encontrou alguma aparência de uma vida normal. Eles logo enfrentam um desafio inesperado quando uma mulher misteriosa chamada Cipher força Dom a trair todos eles. Agora, eles devem se unir para levar para casa o homem que fez deles uma família e impediu Cipher de libertar o caos.'),
(6, 'DeadPool', 'Accao', 'Bom', 99, 4, 'Ryan Reynolds', 'Whisper Careless', 'Wade Wilson (Ryan Reynolds) é um ex-agente das Forças Especiais que agora trabalha como mercenário. Seu mundo desaba quando o malvado cientista Ajax (Ed Skrein) o tortura, desfigura e o transforma em Deadpool. O experimento trapaceiro deixa Deadpool com poderes de cura acelerados e um torcido senso de humor. Com a ajuda dos aliados mutantes Colossus e Negasonic Teenage Warhead (Brianna Hildebrand), Deadpool usa suas novas habilidades para caçar o homem que quase destruiu sua vida.'),
(7, 'The 41 Year Old Virgin Who Knocked Up Sarah Marsha', 'Comedia', 'Razoavel', 89, 6, 'Bryan Callen', 'Craig Moss', 'Amigos loucos por sexo (Stephen Kramer Glickman, Austin Michael Scott) tentam ajudar um homem de meia-idade (Bryan Callen) a perder sua inocência.'),
(8, 'Star Wars: The Last Jedi', 'Ficcao Cientifica', 'Bom', 99, 2, 'John Boyega', 'Rian Johnson', 'A existência pacífica e solitária de Luke Skywalker fica suspensa quando ele encontra Rey, uma jovem que mostra fortes sinais da Força. Seu desejo de aprender os caminhos dos Jedi obriga Luke a tomar uma decisão que muda suas vidas para sempre. Enquanto isso, Kylo Ren e General Hux lideram a Primeira Ordem em um ataque total contra Leia e a Resistência pela supremacia da galáxia.'),
(9, 'Max Payne', 'Accao', 'Razoavel', 89, 1, 'Mark Wahlberg', 'John Moore', 'Depois dos assassinatos de sua família e de seu parceiro, o policial Max (Mark Wahlberg) se torna uma vingança. Juntamente com a bela e mortal mafiosa russa Mona Sax (Mila Kunis), Max viaja para um submundo escuro para encontrar a verdade, mas forças - tanto mundanas quanto sobrenaturais - se alinham contra ele, determinado a silenciar Max para sempre.'),
(10, 'Divergent', 'Ficcao Cientifica', 'Razoavel', 89, 13, 'Shailene Woodley', 'Neil Burger', 'Tris Prior (Shailene Woodley) vive em um mundo futurista no qual a sociedade é dividida em cinco facções. Quando cada pessoa entra na idade adulta, ele ou ela deve escolher uma facção e se comprometer com ela por toda a vida. Tris escolhe Dauntless - aqueles que perseguem a bravura acima de tudo. No entanto, sua iniciação leva a A descoberta de que ela é Divergente e nunca será capaz de se encaixar em apenas uma facção. Avisado que ela deve esconder seu status, Tris descobre uma guerra iminente que ameaça a todos que ela ama.'),
(11, 'Mortal Kombat Fates Beginning', 'Accao', 'Mau', 59, 20, ' Richard Lounello', 'Chris Barcia', 'O destino do reino é decidido aqui ..'),
(12, 'American Pie', 'Comedia', 'Bom', 99, 1, 'Jason Biggs', 'Paul Weitz, Chris Weitz', 'Uma exploração desenfreada e atrevida do rito mais ansiosamente aguardado - e mais humilhante - da idade adulta, conhecido como perder a virgindade. Nessa hilária lição de vida, amor e libido, um grupo de amigos, fartos de sua merecida reputação de não-sexuais, decidem agir íon.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alugados`
--
ALTER TABLE `alugados`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `filmes`
--
ALTER TABLE `filmes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alugados`
--
ALTER TABLE `alugados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `filmes`
--
ALTER TABLE `filmes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
