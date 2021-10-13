-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 11-Out-2021 às 18:31
-- Versão do servidor: 10.4.21-MariaDB
-- versão do PHP: 7.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `intranet_pherfil`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `answers`
--

CREATE TABLE `answers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `answer` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_posts` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `author` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `campaigns`
--

CREATE TABLE `campaigns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dtini` datetime NOT NULL,
  `dtfim` datetime NOT NULL,
  `cover` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `campaigns`
--

INSERT INTO `campaigns` (`id`, `title`, `dtini`, `dtfim`, `cover`, `description`, `category`, `created_at`, `updated_at`) VALUES
(1, 'Campanha argola de dupla', '2021-07-06 00:00:00', '2021-07-31 00:00:00', 'public/news/ODBr3tkrgp3YbMbB1hGWlnVSbEleqHhygXH35NAn.jpg', '', 'Interna', '2021-07-06 02:47:36', '2021-07-06 02:47:36'),
(2, 'Campanha Corrida Olimpica', '2021-07-06 00:00:00', '2021-07-31 00:00:00', 'public/news/TkaOLVjcuqDFnrtTnLdAdlmzUXxuvrMs0sKSgDyz.jpg', '<p><br></p>', 'Interna', '2021-07-06 03:20:41', '2021-07-06 03:20:41'),
(3, 'Destaques', '2021-07-06 00:00:00', '2021-07-31 00:00:00', 'public/news/TfF4XmDa5TU5kyqRZkFBlkKxNa6v52OgpzI7lVmH.jpg', '<p><br></p>', 'Interna', '2021-07-06 03:24:20', '2021-07-06 03:24:20'),
(4, 'Espelho, Espelho Meu', '2021-07-06 00:00:00', '2021-07-31 00:00:00', 'public/news/Pk97yKMaGPcNCgVxCjdrySKflR7Vxn7hnZxMn1ql.jpg', '<p><br></p>', 'Interna', '2021-07-06 03:25:29', '2021-07-06 03:25:29'),
(5, 'Espelho, Espelho Meu', '2021-07-06 00:00:00', '2021-07-31 00:00:00', 'public/news/qq7dP7cG6lFnO3LIU5Ge5Jd66vxCXVqxJ4X9kuzj.jpg', '<p><br></p>', 'Interna', '2021-07-06 03:31:39', '2021-07-06 03:31:39'),
(6, 'Equipes Olimpicas', '2021-07-06 00:00:00', '2021-07-31 00:00:00', 'public/news/EnTlXwCi9IfT7I0L7w6sHWZVicmXBu7rrb3bbbAC.png', '<p>Quais equipes subirão no pódio??</p>', 'Interna', '2021-07-06 03:42:53', '2021-07-06 03:42:53'),
(8, 'Olimpíadas Pherfil 12/07', '2021-07-13 00:00:00', '2021-07-20 00:00:00', 'public/news/O7yTJMsGi1YDzqoekluTjfbwyOLnD7RYMg81FTbR.png', '<div><br></div><p><ul></ul></p><p style=\"text-align: center;\"><span style=\"font-family: &quot;Comic Sans MS&quot;; font-size: 1.5rem;\"><font color=\"#000000\">As coisas estão mudando!!!</font></span></p><p><font color=\"#9c00ff\"><ul></ul></font></p><p style=\"text-align: center;\"><span style=\"font-family: &quot;Comic Sans MS&quot;; font-size: 1.5rem;\">Que equipes ocuparão o pódio??</span></p><p><font color=\"#9c00ff\"><ul></ul></font></p><p style=\"text-align: center;\"><span style=\"font-family: &quot;Comic Sans MS&quot;; font-size: 1.5rem;\">Estamos na torcida!!!!</span></p>', 'Interna', '2021-07-13 02:31:06', '2021-07-13 02:31:06'),
(9, 'Campanha externa JBcred', '2021-07-20 00:00:00', '2021-07-31 00:00:00', 'public/news/BL33j1lURLaoGH7pzyWCCJwHmlyY1YGDgzza3KZ5.jpg', '<p><br></p>', 'Credores', '2021-07-20 07:34:42', '2021-07-20 07:34:42'),
(14, 'CAMPANHA DIÁRIA', '2021-08-05 00:00:00', '2021-08-31 00:00:00', 'public/news/ajCorzrMun5Y4TYVuYVgmFPwJk8WZPcssLz6FXZ2.png', '<p>Conversão, evolução em caixa.&nbsp;</p>', 'Credores', '2021-08-05 04:15:20', '2021-08-05 04:16:24'),
(15, 'CAMPANHA MONITORIA', '2021-08-05 00:00:00', '2021-08-31 00:00:00', 'public/news/d758nNQbuNjNZYoNwIbc0vJ6SQrypd3wQl84cp8y.png', '<p>o BOTICÁRIO!!</p>', 'Credores', '2021-08-05 04:18:37', '2021-08-05 04:18:37'),
(16, 'VOUCHER', '2021-08-05 00:00:00', '2021-08-31 00:00:00', 'public/news/TtSx8njJqwyrh6wo5n94b7n9FdWrwaTjiUQJuatv.png', 'MELHOR DO MÊS!', 'Credores', '2021-08-05 04:20:13', '2021-08-05 04:20:13'),
(17, 'DUELO DO BREGA', '2021-08-05 00:00:00', '2021-08-31 00:00:00', 'public/news/lGObys0UDP7JNTKH1PEirrlKHmL5BJxs5PmyxOrd.png', '<p>Um novo desafio!</p>', 'Credores', '2021-08-05 06:10:33', '2021-08-05 06:10:33'),
(20, 'Campanha Maior Recebimento', '2021-09-02 00:00:00', '2021-09-30 00:00:00', 'public/news/ip40QQZsSk6NU2r5h8JOTgDcepYvzDKxhg2yZLMQ.png', '<p style=\"text-align: center; \"><b><font color=\"#9c00ff\">Não limite </font></b></p><p style=\"text-align: center; \"><b><font color=\"#9c00ff\">seus desafios!</font></b></p><p style=\"text-align: center; \"><b><font color=\"#9c00ff\">Desafie </font></b></p><p style=\"text-align: center; \"><b><font color=\"#9c00ff\">seus limites!</font></b></p><p><br></p>', 'Interna', '2021-09-02 04:04:05', '2021-09-02 04:07:02'),
(21, 'Campanha Melhor do mês', '2021-09-02 00:00:00', '2021-09-30 00:00:00', 'public/news/5yc56iqL745QBUyDnjUbskrefUOj34pDkabh0xpa.png', '<p style=\"text-align: center; \"><b><font color=\"#9c00ff\">O que não te Desafia,&nbsp;</font></b></p><p style=\"text-align: center; \"><b><font color=\"#9c00ff\">Não te Transforma!!</font></b></p>', 'Interna', '2021-09-02 04:05:57', '2021-09-02 04:06:41'),
(22, 'Finamax CP', '2021-09-09 00:00:00', '2021-09-30 00:00:00', 'public/news/jCc0b79oL7BDvGBbYG26yJZPQXPbFlGzl7oGPFe4.png', '<p style=\"text-align: center;\"><font color=\"#9c00ff\"><b>Finamax CP</b></font></p>', 'Credores', '2021-09-09 06:17:53', '2021-09-09 06:20:08'),
(23, 'RIACHUELO - ESMERALDA', '2021-09-22 00:00:00', '2021-09-30 00:00:00', 'public/news/8qxSS2JtAMG25m1165ph3rfRcWfbGAmIsrtwq0ut.png', '<p style=\"text-align: center; \"><span style=\"color: rgb(156, 0, 255); font-family: system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, &quot;Liberation Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-weight: 700;\">RIACHUELO - ESMERALDA</span><br></p>', 'Credores', '2021-09-22 04:00:19', '2021-09-22 04:06:57'),
(24, 'RIACHUELO - ATRASO LONGO', '2021-09-22 00:00:00', '2021-09-30 00:00:00', 'public/news/aaHK7rpw4R4CrD6qvhBMCnx1GVzA8gQkf3DED9HE.png', '<p style=\"text-align: center;\"><font color=\"#9c00ff\" style=\"\"><font color=\"#5a5a5a\" face=\"system-ui, -apple-system, Segoe UI, Roboto, Helvetica Neue, Arial, Noto Sans, Liberation Sans, sans-serif, Apple Color Emoji, Segoe UI Emoji, Segoe UI Symbol, Noto Color Emoji\"><span style=\"font-weight: bolder;\">&nbsp;</span></font><font face=\"system-ui, -apple-system, Segoe UI, Roboto, Helvetica Neue, Arial, Noto Sans, Liberation Sans, sans-serif, Apple Color Emoji, Segoe UI Emoji, Segoe UI Symbol, Noto Color Emoji\"><b>RIACHUELO - ATRASO LONGO</b></font></font></p>', 'Credores', '2021-09-22 04:00:31', '2021-09-22 04:04:02'),
(25, 'JB', '2021-09-22 00:00:00', '2021-12-31 00:00:00', 'public/news/YNRcTmpVS8ss2K9mczw7sf93ONybe1xDyMBTRrub.png', '<p style=\"text-align: center; \"><font color=\"#9c00ff\" face=\"system-ui, -apple-system, Segoe UI, Roboto, Helvetica Neue, Arial, Noto Sans, Liberation Sans, sans-serif, Apple Color Emoji, Segoe UI Emoji, Segoe UI Symbol, Noto Color Emoji\"><b>JB</b></font><br></p>', 'Credores', '2021-09-22 04:00:44', '2021-09-22 04:07:20');

-- --------------------------------------------------------

--
-- Estrutura da tabela `candidatos`
--

CREATE TABLE `candidatos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nome` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `equipe` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `turno` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `commissions`
--

CREATE TABLE `commissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cover` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_10_29_232127_create_candidatos', 1),
(5, '2020_11_18_153401_create_posts_table', 1),
(6, '2020_12_06_105442_alter_user_table_add_control_login', 1),
(7, '2020_12_11_153742_create_permission_tables', 1),
(8, '2020_12_17_125602_add_colunm_author_for_posts_table', 1),
(9, '2020_12_22_110459_create_table_slides', 1),
(10, '2020_12_26_172513_add_colun_text_for_slidestable', 1),
(11, '2021_01_14_174657_add_soft_deletes_posts', 1),
(12, '2021_01_23_085654_softdele_slides', 1),
(13, '2021_05_17_140602_create_controller_table', 1),
(14, '2021_05_19_103714_add_table_news', 1),
(15, '2021_06_04_103729_add_paybox', 1),
(16, '2021_06_17_145004_create_answers_table', 1),
(17, '2021_06_24_101841_adduserforanswers', 1),
(18, '2021_07_02_113320_add_table_campaings', 1),
(19, '2021_07_02_135310_add_table_commission', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `news`
--

CREATE TABLE `news` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dtini` datetime NOT NULL,
  `dtfim` datetime NOT NULL,
  `cover` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `payboxes`
--

CREATE TABLE `payboxes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cover` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `payboxes`
--

INSERT INTO `payboxes` (`id`, `cover`, `categories`, `created_at`, `updated_at`) VALUES
(173, 'public/paybox/iC4yRAMTc34LtN8RSKXdFChy39GmJXYEiw33gIz0.pdf', 'riachuelo - bronze', '2021-06-28 02:18:56', '2021-06-28 02:18:56'),
(174, 'public/paybox/IjdBIBVmKoczkpTOf6dc6YOm81no8tVmhk5Ygmfa.pdf', 'riachuelo - prata', '2021-06-28 02:19:31', '2021-06-28 02:19:31'),
(175, 'public/paybox/8ioDRhiZModznBhD4Vgu47tJpsL6QCSRzrki1DPb.pdf', 'riachuelo - ouro', '2021-06-28 02:20:07', '2021-06-28 02:20:07'),
(176, 'public/paybox/w0j5NZKYdNOTC6sOrkE5I7oMeLCw47GYDiA7H9IR.pdf', 'riachuelo - esmeralda', '2021-06-28 02:20:56', '2021-06-28 02:20:56'),
(177, 'public/paybox/P6lexDYjhagSx6Se9CSCQ7v5DDwLbsUq8Cck1GRC.pdf', 'avon', '2021-06-28 02:21:39', '2021-06-28 02:21:39'),
(178, 'public/paybox/OPnNn0aELMtgagohwacoK7qr8WkAmwBe7Mvrrm4K.pdf', 'multicarteiras', '2021-06-28 02:22:18', '2021-06-28 02:22:18'),
(179, 'public/paybox/pRf8rN3K8qQuhkUQhpthAtykm5dMzS1mcDQgLnmp.pdf', 'financeiras', '2021-06-28 02:23:17', '2021-06-28 02:23:17'),
(180, 'public/paybox/WGMLCQFvqfxb7FnOW0pcNocrR6ZcHNqJe2XNL6DW.pdf', 'digital', '2021-06-28 02:24:08', '2021-06-28 02:24:08'),
(181, 'public/paybox/WR5lajknhKsRM6UxhjFzaHN6rvlRPVwqDEEDMUKk.pdf', 'preventiva', '2021-06-28 02:25:12', '2021-06-28 02:25:12'),
(183, 'public/paybox/AcqcwxqJtEgdQv4fG9J01tat3wl0zX33645M7IIP.pdf', 'riachuelo - bronze', '2021-06-29 00:20:05', '2021-06-29 00:20:05'),
(184, 'public/paybox/vsCaUJbyWoUR2spnxZyPBZdEewMkt6Vc2UGfQtl4.pdf', 'riachuelo - prata', '2021-06-29 00:20:47', '2021-06-29 00:20:47'),
(185, 'public/paybox/qYnEYxu1UgRsQ9FTQKQaJvVqsB89fs5ETDvlvoL6.pdf', 'riachuelo - ouro', '2021-06-29 00:21:23', '2021-06-29 00:21:23'),
(186, 'public/paybox/YOhSBLwW1TSLuafusYhz6MUgmmYkdaLr9EeRAqyd.pdf', 'riachuelo - esmeralda', '2021-06-29 00:21:55', '2021-06-29 00:21:55'),
(187, 'public/paybox/ia9trrjufT9xfxyqRDSSc2oQqq8zdhkE1pT6wYUD.pdf', 'avon', '2021-06-29 00:27:35', '2021-06-29 00:27:35'),
(188, 'public/paybox/vGywB2R77OPy5nE8Q3gcNdTAxjw7KFVecrY0czeu.pdf', 'multicarteiras', '2021-06-29 00:28:17', '2021-06-29 00:28:17'),
(189, 'public/paybox/672OL3RCzIBowYDGKm2iTJ3TFFnYabLnQtNuSkz9.pdf', 'financeiras', '2021-06-29 00:28:54', '2021-06-29 00:28:54'),
(190, 'public/paybox/9WRTj735arHAFgyG9ZcTlEWBGewoH0dB38CM7HLi.pdf', 'digital', '2021-06-29 00:29:55', '2021-06-29 00:29:55'),
(191, 'public/paybox/BOBSzp0MpMM9xmkhcggRrCOvQfAQyzMqmmYA3OOU.pdf', 'preventiva', '2021-06-29 00:30:51', '2021-06-29 00:30:51'),
(192, 'public/paybox/DihighY4BNyAUPLWXpky5fVqmRZVlOODrMVuZrWI.pdf', 'riachuelo - bronze', '2021-06-29 09:09:46', '2021-06-29 09:09:46'),
(193, 'public/paybox/eCO3PkArfJh5I5ZBL84QJlVhORzUWZcxNwH3GN6h.pdf', 'riachuelo - prata', '2021-06-29 09:10:19', '2021-06-29 09:10:19'),
(194, 'public/paybox/9OWLlQtFk1Z7DKOxW2aa128XeON2Ii9QpAR7VsvT.pdf', 'riachuelo - ouro', '2021-06-29 09:10:56', '2021-06-29 09:10:56'),
(195, 'public/paybox/qTMBwQ4jweqCTCWcAm0cr8DnfFhhw6Ai1sDIM8Jl.pdf', 'riachuelo - esmeralda', '2021-06-29 09:11:36', '2021-06-29 09:11:36'),
(196, 'public/paybox/PlByxvO2hFKDGZYuC9RkfP8NBxdyknUsqNRbJeMW.pdf', 'avon', '2021-06-29 09:12:34', '2021-06-29 09:12:34'),
(197, 'public/paybox/yRYLkPgBSazZltVF7fdohRU86UlimTCmxlkvaSVs.pdf', 'multicarteiras', '2021-06-29 09:14:21', '2021-06-29 09:14:21'),
(198, 'public/paybox/GFQG4hA8RWBlSfER4oNXmHinCCKcprYenmNtYIAJ.pdf', 'financeiras', '2021-06-29 09:15:11', '2021-06-29 09:15:11'),
(199, 'public/paybox/uJ0z6B5SdsMG5NS7ddbpkKPQQWwXJ1UnByUMSJoF.pdf', 'digital', '2021-06-29 09:16:23', '2021-06-29 09:16:23'),
(200, 'public/paybox/05VxqVlayCQh3qhoJojyJDRE6UJOKyoizRxAmhnP.pdf', 'preventiva', '2021-06-29 09:17:26', '2021-06-29 09:17:26'),
(201, 'public/paybox/RBxtlnPjcpYLlNS5ttDEdwZHQwR3HJzUg7FZkEzc.pdf', 'preventiva', '2021-06-30 08:42:27', '2021-06-30 08:42:27'),
(202, 'public/paybox/Dn7iXJKx0OuVevuvNeE899FxwCkAsWQL5c69h7Pq.pdf', 'riachuelo - bronze', '2021-06-30 08:44:17', '2021-06-30 08:44:17'),
(203, 'public/paybox/MHuRnDlzS8rjY2cYuUB1jijd0DkTP0kYGdKHuBqA.pdf', 'riachuelo - prata', '2021-06-30 08:45:01', '2021-06-30 08:45:01'),
(204, 'public/paybox/cPfTou1uvdNrYVkrGBhf7y20ZaJkU3m0zS1lHMo1.pdf', 'riachuelo - ouro', '2021-06-30 08:45:39', '2021-06-30 08:45:39'),
(205, 'public/paybox/mr3tJuTU8QD6HApqcnPM15dNaQ8wCFNRRdtgcCp3.pdf', 'riachuelo - esmeralda', '2021-06-30 08:46:22', '2021-06-30 08:46:22'),
(206, 'public/paybox/z1Vlv4kbMQf3mxol2HSG7FmblqKayLdQW3uVoKvA.pdf', 'avon', '2021-06-30 08:50:10', '2021-06-30 08:50:10'),
(207, 'public/paybox/4jA5IqSxAiWhCh64shXDzO1TOuzcTq1ikee29wqw.pdf', 'financeiras', '2021-06-30 08:51:32', '2021-06-30 08:51:32'),
(208, 'public/paybox/X4gYkt3Lbzvx0UahXh3vODLFBkKnBUxIJG1MixC2.pdf', 'multicarteiras', '2021-06-30 08:52:09', '2021-06-30 08:52:09'),
(209, 'public/paybox/mJUZT1ZsZtKJNF7aVmLxFdAN3cYdkXfCVx8nkuyt.pdf', 'digital', '2021-06-30 08:52:56', '2021-06-30 08:52:56'),
(210, 'public/paybox/ThxfZyqGFmlc5hIni0smwO1zXDPWM1hFZVte7N8D.pdf', 'preventiva', '2021-07-01 09:54:18', '2021-07-01 09:54:18'),
(211, 'public/paybox/13NWICo2tJ3DtKAHi6Co2YZVOADzbIQi7rBiLCTo.pdf', 'riachuelo - bronze', '2021-07-01 09:55:45', '2021-07-01 09:55:45'),
(212, 'public/paybox/ZtTIUAEHnT5BOpWqRZZ5F9tlzrDcFdE2CYSmviTl.pdf', 'riachuelo - prata', '2021-07-01 09:56:14', '2021-07-01 09:56:14'),
(213, 'public/paybox/l7kKyDW6oZoAfoaV1f5sA2sxCSGObMKGS9ZHxPhk.pdf', 'riachuelo - ouro', '2021-07-01 09:56:57', '2021-07-01 09:56:57'),
(214, 'public/paybox/Wam5NDnQnAgl3Rh5LAuGMtHozwJ5u0K3iu3KRmGf.pdf', 'riachuelo - esmeralda', '2021-07-01 09:57:36', '2021-07-01 09:57:36'),
(215, 'public/paybox/nj2tjWZDpt2ScoRoMF2ydfFa0ojw9Y1RFyCoadds.pdf', 'avon', '2021-07-01 09:58:28', '2021-07-01 09:58:28'),
(216, 'public/paybox/2lkKyjGgEeceuCsIKXBd8oLmuJRfH4bLtxzprTEz.pdf', 'multicarteiras', '2021-07-01 09:59:00', '2021-07-01 09:59:00'),
(217, 'public/paybox/PHl3EFcgzjsFl9yo44rjNE22ysLY9pGTJzMatqvy.pdf', 'financeiras', '2021-07-01 09:59:37', '2021-07-01 09:59:37'),
(218, 'public/paybox/MbQOdWnClQj74PdilPma2OAGK6xuPOiRCBKQ5Iio.pdf', 'digital', '2021-07-01 10:00:16', '2021-07-01 10:00:16'),
(219, 'public/paybox/Dg2hQivX9JvvQNb399g9pUQLKnniMWoK7MyIcKWp.pdf', 'riachuelo - bronze', '2021-07-02 10:04:33', '2021-07-02 10:04:33'),
(220, 'public/paybox/uVnoBVHYTglJRnASVs6ydgctKXRMp4sjCfXo6Gyu.pdf', 'riachuelo - prata', '2021-07-02 10:05:05', '2021-07-02 10:05:05'),
(221, 'public/paybox/cRrs9xhOD8RbtYATnlXG0e37JYPxUp7XUodPiiP9.pdf', 'riachuelo - ouro', '2021-07-02 10:05:49', '2021-07-02 10:05:49'),
(222, 'public/paybox/bVJvhgr54nH9be4b9fVul2IlfFR8X9VaNqtePcia.pdf', 'riachuelo - esmeralda', '2021-07-02 10:06:16', '2021-07-02 10:06:16'),
(223, 'public/paybox/fcQefOZiSa0mbGwVJGFPXQIs710EgjJBgXZtYelK.pdf', 'avon', '2021-07-02 10:07:07', '2021-07-02 10:07:07'),
(224, 'public/paybox/sxixWLaqKbnw477S5dNRTUw9fwtxBHJPlthQtxAW.pdf', 'multicarteiras', '2021-07-02 10:07:44', '2021-07-02 10:07:44'),
(225, 'public/paybox/zHeSQ8poV2mOwmRTPHNAkAvpwTgQnYL8BQcR2E9E.pdf', 'financeiras', '2021-07-02 10:08:41', '2021-07-02 10:08:41'),
(226, 'public/paybox/oBf1Zg0vxw57ovQvyRhxrjgo96BDIrkliQHDPX7S.pdf', 'digital', '2021-07-02 10:09:41', '2021-07-02 10:09:41'),
(227, 'public/paybox/p1jtbRtoFGqhIlxCGtKQXOLUpZENQnFQeMBdxNfR.pdf', 'preventiva', '2021-07-02 10:12:13', '2021-07-02 10:12:13'),
(228, 'public/paybox/xiQxB8rDq4cRxwdUq8t6nxSPQj1T7QZ28k7H9EKe.pdf', 'riachuelo - bronze', '2021-07-05 09:26:19', '2021-07-05 09:26:19'),
(229, 'public/paybox/D3VoQE6YsLXy8phZWJAc10pUrON4HW2pM11IpwgM.pdf', 'riachuelo - prata', '2021-07-05 09:26:29', '2021-07-05 09:26:29'),
(230, 'public/paybox/3RW6pM8d3o1FSktxSt4GGe26lA8pyDHDBPwgprTl.pdf', 'riachuelo - ouro', '2021-07-05 09:28:30', '2021-07-05 09:28:30'),
(231, 'public/paybox/qfNDzK7KmYtnoo6paP6VqkbMTeK6wL0q4z4uV8s7.pdf', 'riachuelo - ouro', '2021-07-05 09:29:19', '2021-07-05 09:29:19'),
(232, 'public/paybox/VTxh5zlPPnhrLvjgLVlKkbKHxFKaTIP227NphbHJ.pdf', 'avon', '2021-07-05 09:30:23', '2021-07-05 09:30:23'),
(233, 'public/paybox/IWuPT3VEfSX2w7mXeHQEKPKdeahQB8tXcMoU5e8U.pdf', 'multicarteiras', '2021-07-05 09:31:14', '2021-07-05 09:31:14'),
(234, 'public/paybox/LCZlDsPbrll0hDI9zwRWB2cpklrelw1qsNv3760v.pdf', 'financeiras', '2021-07-05 09:32:50', '2021-07-05 09:32:50'),
(235, 'public/paybox/fcEGRKWeomhQzwtw26cKJLV5uwkBmuN6aR4HGLbd.pdf', 'digital', '2021-07-05 09:33:48', '2021-07-05 09:33:48'),
(236, 'public/paybox/JGcTW1Yr7jtFSPCVcZbw7C1cv6Vt1Bohl58eNwFA.pdf', 'riachuelo - esmeralda', '2021-07-05 09:34:28', '2021-07-05 09:34:28'),
(237, 'public/paybox/OUZDJ9ELNztyxrx3XRS9j3giFzzDQ3YFi2KcE3MR.pdf', 'riachuelo - bronze', '2021-07-06 09:54:33', '2021-07-06 09:54:33'),
(238, 'public/paybox/44Wcb1NdRjsE5Z9cbZXVCslBjTjxj7UvizD6PAzH.pdf', 'riachuelo - prata', '2021-07-06 09:54:47', '2021-07-06 09:54:47'),
(239, 'public/paybox/FCkAlWXL5OkVtNxpUlLP3gzbmrIMCkdVOIEzA9Rn.pdf', 'riachuelo - ouro', '2021-07-06 09:56:43', '2021-07-06 09:56:43'),
(240, 'public/paybox/x7Fn04yA1d3wfFThYPGGRyXFmK3C87yXvagKiOQU.pdf', 'riachuelo - esmeralda', '2021-07-06 09:57:17', '2021-07-06 09:57:17'),
(241, 'public/paybox/LB2EnkUpzxtJWEcxLfnmtr8BNiacSAhn61YXOSq7.pdf', 'avon', '2021-07-06 09:58:11', '2021-07-06 09:58:11'),
(242, 'public/paybox/063xejCxsw31ZZalUInYmSIIExRwLlpd6ObCMZIw.pdf', 'financeiras', '2021-07-06 09:59:20', '2021-07-06 09:59:20'),
(243, 'public/paybox/fOV4bPQgxIl7A7sO7CRUrx6LDx1W48TbycJ9SQwO.pdf', 'multicarteiras', '2021-07-06 10:00:02', '2021-07-06 10:00:02'),
(244, 'public/paybox/sbDyI8axzQduFFbPTZMBFHAyHFp6WiDP1nfCR17T.pdf', 'digital', '2021-07-06 10:00:51', '2021-07-06 10:00:51'),
(245, 'public/paybox/5O9oEdLtUdeMQphi1k0fjomBZ19knIVCxwcfxJfN.pdf', 'riachuelo - bronze', '2021-07-07 08:28:05', '2021-07-07 08:28:05'),
(246, 'public/paybox/Jgani6BBYdsEu9FBm6npoddeZbDIaVZY2qRNNtaT.pdf', 'riachuelo - prata', '2021-07-07 08:28:48', '2021-07-07 08:28:48'),
(247, 'public/paybox/DD8w903aSudYmRRGRLKcDjGbnQJ21ixy7DhoM54N.pdf', 'riachuelo - ouro', '2021-07-07 08:29:20', '2021-07-07 08:29:20'),
(248, 'public/paybox/qtvBEWm780W95P4zK9MHl6PXvfWigWmZTC8JBxE0.pdf', 'riachuelo - esmeralda', '2021-07-07 08:29:53', '2021-07-07 08:29:53'),
(249, 'public/paybox/XSbDm5AJmO3ZlLOlCtBGeDsrKmPcaBs10C8lRBme.pdf', 'avon', '2021-07-07 08:30:51', '2021-07-07 08:30:51'),
(250, 'public/paybox/KfIMVkLiboZH57EFwaJs2KXhZuT5oMTXostoBSJw.pdf', 'multicarteiras', '2021-07-07 08:31:27', '2021-07-07 08:31:27'),
(251, 'public/paybox/fH8U3XAoJt9MVtYf5nND4fRghCg0dTfFktfRcGoL.pdf', 'financeiras', '2021-07-07 08:32:00', '2021-07-07 08:32:00'),
(252, 'public/paybox/DuhLKUKrlp8knAQMjHyAkgL0yYotXf940N1N5jpq.pdf', 'digital', '2021-07-07 08:32:55', '2021-07-07 08:32:55'),
(253, 'public/paybox/882VSLzxPmhBHWMIENELh0JaqVflXQxPm1JOEeJq.pdf', 'riachuelo - bronze', '2021-07-08 09:13:24', '2021-07-08 09:13:24'),
(254, 'public/paybox/QQLmWHFzqvuUftcddXntbrtDYKXKaCar9R5Yt18A.pdf', 'riachuelo - prata', '2021-07-08 09:14:04', '2021-07-08 09:14:04'),
(255, 'public/paybox/wqJFi2N4bydp62hdpIzqPOrduS0NXqSlvgyN7uEw.pdf', 'riachuelo - ouro', '2021-07-08 09:16:31', '2021-07-08 09:16:31'),
(256, 'public/paybox/D5aYlxBh0RJMWkUveoS7XJGjqCMfKKvnkEXUPiTD.pdf', 'riachuelo - esmeralda', '2021-07-08 09:18:01', '2021-07-08 09:18:01'),
(257, 'public/paybox/0HAKLYkBfRgq1G3Vh1Ske2uvuRRKdks4qIuh1TKR.pdf', 'avon', '2021-07-08 09:18:57', '2021-07-08 09:18:57'),
(258, 'public/paybox/bU1Bs5fCXKgZjYGl9db2Pvly8sw1irZlKsBEIqke.pdf', 'financeiras', '2021-07-08 09:19:45', '2021-07-08 09:19:45'),
(259, 'public/paybox/g8bDkYioyljmy91KOEUCbrLtSlzOu7YGlLz8f10b.pdf', 'multicarteiras', '2021-07-08 09:20:22', '2021-07-08 09:20:22'),
(260, 'public/paybox/rG7o7vBfmGOu1oA5IOXn4Pb5KeBMC4uAuTDamdVn.pdf', 'digital', '2021-07-08 09:21:42', '2021-07-08 09:21:42'),
(261, 'public/paybox/Us5Iz1tTjsW6GjM9ALZtXn048HvnLS5TYrBYyQw0.pdf', 'riachuelo - bronze', '2021-07-12 00:30:24', '2021-07-12 00:30:24'),
(262, 'public/paybox/KXVnBrYrGjxaU48YYvjviZTsLjT635MGbaL0KFyQ.pdf', 'riachuelo - prata', '2021-07-12 00:31:11', '2021-07-12 00:31:11'),
(263, 'public/paybox/Ke90BBVxjToH8hZ5GjTlTjKX2EmOSDAcO02OOCv1.pdf', 'riachuelo - ouro', '2021-07-12 00:31:47', '2021-07-12 00:31:47'),
(264, 'public/paybox/aaxhKPXdG7ZTNashZbufO37LCcZzLu7Yzl15qFMW.pdf', 'riachuelo - esmeralda', '2021-07-12 00:32:23', '2021-07-12 00:32:23'),
(265, 'public/paybox/l4L44rCedNVixKfi2vE6Mi7tNdBJMOdsEPQdsMqM.pdf', 'multicarteiras', '2021-07-12 00:33:46', '2021-07-12 00:33:46'),
(266, 'public/paybox/aXVrl8Lodna12h40r3zAQTu3fIDixekV1wIiPdoh.pdf', 'financeiras', '2021-07-12 00:34:36', '2021-07-12 00:34:36'),
(267, 'public/paybox/xzT36qLIrxekj9ePXvzpnNWRr1XUcjtaxMAHr6qh.pdf', 'avon', '2021-07-12 00:35:26', '2021-07-12 00:35:26'),
(268, 'public/paybox/EvtmXZwRBpxBXcfY9DzeJRjbS0THX21SgLCY11Lo.pdf', 'digital', '2021-07-12 00:36:16', '2021-07-12 00:36:16'),
(269, 'public/paybox/f9b2mToyZHMQbatPhqths92X74n8uDSLVsI32Oif.pdf', 'riachuelo - bronze', '2021-07-12 09:05:56', '2021-07-12 09:05:56'),
(270, 'public/paybox/xbGBNyh0Po4ad3zKZnMdeKqj8xWm5i3fIbHEKtj6.pdf', 'riachuelo - prata', '2021-07-12 09:07:25', '2021-07-12 09:07:25'),
(271, 'public/paybox/VnmSVyn3e8NMjirfyyYTivkUFWWJIKTr0t0Hy8yi.pdf', 'riachuelo - ouro', '2021-07-12 09:07:57', '2021-07-12 09:07:57'),
(272, 'public/paybox/SYDlAw9p3wcuF7DVkVttO5XCmfp4zuYp4KQJpRPu.pdf', 'riachuelo - esmeralda', '2021-07-12 09:08:27', '2021-07-12 09:08:27'),
(273, 'public/paybox/5bI33EnUVJzDXFlulatHc1Urew3Yc8xU1amoXO4g.pdf', 'avon', '2021-07-12 09:09:17', '2021-07-12 09:09:17'),
(274, 'public/paybox/caTn0fGgKnmD1UgGCXMpm6tIZxkRrRq5091nhUb1.pdf', 'multicarteiras', '2021-07-12 09:10:05', '2021-07-12 09:10:05'),
(275, 'public/paybox/pZDOy5GfWsqqS2LChhRZG3un24Sd0SsCMAQY9G32.pdf', 'financeiras', '2021-07-12 09:10:45', '2021-07-12 09:10:45'),
(276, 'public/paybox/qSl6hXU7OsYWtbike8qgCRpaV7Oau0PN8Ull9WGM.pdf', 'digital', '2021-07-12 09:11:41', '2021-07-12 09:11:41'),
(277, 'public/paybox/TOcWp2ViEr0EeJ0CkGaQ3mvKQFhh7rvdQGUF7Dcj.pdf', 'riachuelo - bronze', '2021-07-13 09:19:14', '2021-07-13 09:19:14'),
(278, 'public/paybox/WwcZxVSXe5csaUBSzhOfPvKWGCTXTiZXt28UdhYc.pdf', 'riachuelo - prata', '2021-07-13 09:20:12', '2021-07-13 09:20:12'),
(279, 'public/paybox/tDch29lxCGrkbI3y9DINMOgucMvilaZepHQcbWAZ.pdf', 'riachuelo - ouro', '2021-07-13 09:20:47', '2021-07-13 09:20:47'),
(280, 'public/paybox/tyqxA0CDF8AW1mAoibBZ6CZ3IMz7VF2M4zEGRwEl.pdf', 'riachuelo - esmeralda', '2021-07-13 09:21:48', '2021-07-13 09:21:48'),
(281, 'public/paybox/6qzk1zn3JFoCYUeIkOB5f6FlCXHtZNpHN7trTCd8.pdf', 'avon', '2021-07-13 09:23:01', '2021-07-13 09:23:01'),
(282, 'public/paybox/UlS2M9Mvy089cyCPP6oV0Z26lwW7C5uPgwnpYKLB.pdf', 'financeiras', '2021-07-13 09:23:48', '2021-07-13 09:23:48'),
(283, 'public/paybox/03aU24cktNjrc3jyyWnXcS1vyzVz5eTSRQfCciT3.pdf', 'multicarteiras', '2021-07-13 09:24:25', '2021-07-13 09:24:25'),
(284, 'public/paybox/KWoRv63ApUpwMTHvyB2XbaKqcz3LMxFwCRnk1Urj.pdf', 'digital', '2021-07-13 09:25:14', '2021-07-13 09:25:14'),
(285, 'public/paybox/yGpnus5UsDezOxgm6rRpeXnJG4SpJ2jkQspBcUbE.pdf', 'riachuelo - bronze', '2021-07-14 09:08:27', '2021-07-14 09:08:27'),
(286, 'public/paybox/TINUdsIJdavaXcBeIhphgPrYJMHHvi6nngFZzUvy.pdf', 'riachuelo - prata', '2021-07-14 09:08:51', '2021-07-14 09:08:51'),
(287, 'public/paybox/WPNnmUvlpu7mM1zKHc60g3nX5ob3L2Uu7rK6COCz.pdf', 'riachuelo - ouro', '2021-07-14 09:09:26', '2021-07-14 09:09:26'),
(288, 'public/paybox/CLMGheUSxOEPkGIV6KTSN7BWnjKDwypzgqfQ3t7O.pdf', 'riachuelo - esmeralda', '2021-07-14 09:11:03', '2021-07-14 09:11:03'),
(289, 'public/paybox/f3aosleA9UGwAHaXsYP1tEylgV7G4uSF7yXvEtoN.pdf', 'avon', '2021-07-14 09:11:51', '2021-07-14 09:11:51'),
(290, 'public/paybox/cnY6DJzIrjk0kblbas6W5fCwan0X9rS90Kns8T6C.pdf', 'financeiras', '2021-07-14 09:12:26', '2021-07-14 09:12:26'),
(291, 'public/paybox/fFSxV9D9airyOBbHugAZZPp6qfwTPyeDk3xfpfML.pdf', 'multicarteiras', '2021-07-14 09:13:01', '2021-07-14 09:13:01'),
(292, 'public/paybox/sC7ySEOZBEOKEOJFF0s6mfpuCzWWJtXYZSrhenBx.pdf', 'digital', '2021-07-14 09:14:03', '2021-07-14 09:14:03'),
(293, 'public/paybox/rOYpP91TJx2UHruyEhidvQlrMaeauJFFKdVSYpKB.pdf', 'riachuelo - bronze', '2021-07-15 09:37:51', '2021-07-15 09:37:51'),
(294, 'public/paybox/bxuK0q28hKSen0vvtsEyL4esgU2ooOGgSewiP0bW.pdf', 'riachuelo - ouro', '2021-07-15 09:40:10', '2021-07-15 09:40:10'),
(295, 'public/paybox/PiY7MNN6XKPuRvxDiffc0f3eoDsnWzFYd36ueLIt.pdf', 'riachuelo - esmeralda', '2021-07-15 09:41:41', '2021-07-15 09:41:41'),
(296, 'public/paybox/8vnH8hvP4WFQjSsZuhS0HEuTh2YqaE3Urp2OSRO2.pdf', 'multicarteiras', '2021-07-15 09:49:33', '2021-07-15 09:49:33'),
(297, 'public/paybox/KsNL1TxAODyM8gkzNkM2ilKxlFu4ySbu5GWpLoNf.pdf', 'financeiras', '2021-07-15 09:50:31', '2021-07-15 09:50:31'),
(298, 'public/paybox/y8UIcUqMstZpHduV4KPECEbRK36F40s8mbAACvKl.pdf', 'digital', '2021-07-15 09:51:22', '2021-07-15 09:51:22'),
(299, 'public/paybox/SvUUg5eVaizWTTMau8T5PEpeV3M2gafEY5aQqOo6.pdf', 'avon', '2021-07-16 00:57:36', '2021-07-16 00:57:36'),
(300, 'public/paybox/QrcI2lkorBGPYsRySWxmdRvw2grXv7A2EMx2PWuI.pdf', 'riachuelo - prata', '2021-07-16 00:59:11', '2021-07-16 00:59:11'),
(301, 'public/paybox/w1BkEqryByPbkEPJgpXHnprtFCt27s2DaC5rlkSx.pdf', 'riachuelo - bronze', '2021-07-19 05:46:56', '2021-07-19 05:46:56'),
(302, 'public/paybox/sAB12wa0m9csbFzcWza470Ct9ffSvc3aS7hKZGLE.pdf', 'riachuelo - ouro', '2021-07-19 05:48:00', '2021-07-19 05:48:00'),
(303, 'public/paybox/svt1UIAlJVg7TkXY5VreZthc9lsYm6E37TyWeFjT.pdf', 'riachuelo - esmeralda', '2021-07-19 05:48:53', '2021-07-19 05:48:53'),
(304, 'public/paybox/ScUVS6WvniGiIUij90FNbKKnplGnO9vqHgs30LXj.pdf', 'avon', '2021-07-19 05:49:55', '2021-07-19 05:49:55'),
(305, 'public/paybox/uD2Td0gg8U9fbOikJ3o4rs5zvI48V1UlXmKU7a1z.pdf', 'multicarteiras', '2021-07-19 05:50:48', '2021-07-19 05:50:48'),
(306, 'public/paybox/5T5iNAMMsOeiUBdjqBwI8j9IqjViRj3wF37eS6Gy.pdf', 'digital', '2021-07-19 05:53:19', '2021-07-19 05:53:19'),
(307, 'public/paybox/1JYPpjGkxAA1urNrURUHWSzyhnPWngsWSstsFoiv.pdf', 'financeiras', '2021-07-19 05:53:42', '2021-07-19 05:53:42'),
(308, 'public/paybox/u3Wo5PUgTmVaUh8hOqnRDEJTzPgiyzSeSsJdioe9.pdf', 'riachuelo - prata', '2021-07-19 05:54:14', '2021-07-19 05:54:14'),
(309, 'public/paybox/bPOsxgDnbnass5WKLdS1zHojWiowSosArUncqBZY.pdf', 'riachuelo - bronze', '2021-07-20 08:42:38', '2021-07-20 08:42:38'),
(310, 'public/paybox/tXDd4kHwHu7HScxvbxLYmMpihPEHWN39WpL7Zk9L.pdf', 'riachuelo - prata', '2021-07-20 08:43:11', '2021-07-20 08:43:11'),
(311, 'public/paybox/tqu43YyHlF0ol42W9j2Q2HvhvAyBUrkGpU5aWmK2.pdf', 'riachuelo - ouro', '2021-07-20 08:44:00', '2021-07-20 08:44:00'),
(312, 'public/paybox/cR7fhKUdAH4eY42D1ilYq9NgX9xCatLxmhRvsiPj.pdf', 'riachuelo - esmeralda', '2021-07-20 08:45:00', '2021-07-20 08:45:00'),
(313, 'public/paybox/Gu07mwM49Tv92GK4JNLQzUawGMbzXQuoQQLhq6rm.pdf', 'avon', '2021-07-20 08:45:52', '2021-07-20 08:45:52'),
(314, 'public/paybox/9BFAKOMhJSDSWfngBCMZQ7PZFVUYDVZ0QL4MBF4v.pdf', 'multicarteiras', '2021-07-20 08:46:34', '2021-07-20 08:46:34'),
(315, 'public/paybox/qsQEQ5jo8tqryxp44O0QEGbC2npA1tFUIvtanlIw.pdf', 'financeiras', '2021-07-20 08:47:13', '2021-07-20 08:47:13'),
(316, 'public/paybox/iSLDuWQ9GIrUID5yMaz6RXyHe76Q7rXRCRKVHMiU.pdf', 'digital', '2021-07-20 08:47:58', '2021-07-20 08:47:58'),
(317, 'public/paybox/fJEVCnH2Cg0qyANbUvcgriw0X00ZiXEzM8NBH7TQ.pdf', 'riachuelo - bronze', '2021-07-21 09:15:40', '2021-07-21 09:15:40'),
(318, 'public/paybox/uXXl6FpEGBzdEu9SO01q76CZWJyXV73DxrF9tw4O.pdf', 'riachuelo - prata', '2021-07-21 09:16:20', '2021-07-21 09:16:20'),
(319, 'public/paybox/Lkyujo9R7Em8fCZvYSR1vxo4NoTFlgolm7hZASMq.pdf', 'riachuelo - ouro', '2021-07-21 09:18:02', '2021-07-21 09:18:02'),
(320, 'public/paybox/PczBNdIslZwibDefxBALkaUdLcPRMDrENvd0LBhL.pdf', 'riachuelo - esmeralda', '2021-07-21 09:20:01', '2021-07-21 09:20:01'),
(321, 'public/paybox/WZChfUkE2UuwI2bb8CJW0cQglogDjYyfeodCVpYO.pdf', 'avon', '2021-07-21 09:20:09', '2021-07-21 09:20:09'),
(322, 'public/paybox/gi8CuFSkOkPKzIISQMS8WEX1NAyVwGR6KatMvShD.pdf', 'multicarteiras', '2021-07-21 09:21:16', '2021-07-21 09:21:16'),
(323, 'public/paybox/TgkrwQndK1IHtyCjogtmo4pbv2p7rLPlGyEhcBoo.pdf', 'financeiras', '2021-07-21 09:21:54', '2021-07-21 09:21:54'),
(324, 'public/paybox/psKbZEngHuNctsR19zJ463epBXNQrrgzSbed7hYU.pdf', 'digital', '2021-07-21 09:22:40', '2021-07-21 09:22:40'),
(325, 'public/paybox/F51OVxWFyinlBTAyD5rcuyXTr0YlMaFvsSQZAmAV.pdf', 'riachuelo - bronze', '2021-07-22 08:18:33', '2021-07-22 08:18:33'),
(326, 'public/paybox/d7vIY2dRtvtFYpyK9Ja6FxnidTLu3ov4OBRUBe6V.pdf', 'riachuelo - prata', '2021-07-22 08:19:16', '2021-07-22 08:19:16'),
(327, 'public/paybox/N3LtSvjmW5n4FCQYI8J7b8fFWzzZjDM7uKFozeR4.pdf', 'riachuelo - ouro', '2021-07-22 08:19:50', '2021-07-22 08:19:50'),
(328, 'public/paybox/0PfFTnYVspDs4IlNtpIG67GDxiWzj2VkINci897r.pdf', 'riachuelo - esmeralda', '2021-07-22 08:20:36', '2021-07-22 08:20:36'),
(329, 'public/paybox/uj8CFJeWBSphgX8tof23Nuj9SjgzmlEDpUQuSilo.pdf', 'avon', '2021-07-22 08:21:20', '2021-07-22 08:21:20'),
(330, 'public/paybox/fH2K9XxiEJlQ4Cl06nPIoW4aksiJDWrvOzy0A2gH.pdf', 'financeiras', '2021-07-22 08:21:58', '2021-07-22 08:21:58'),
(331, 'public/paybox/AAmzy2cGHoWoR7FQQ8ga4bvb7uVP22cAXsPiHT4A.pdf', 'multicarteiras', '2021-07-22 08:22:35', '2021-07-22 08:22:35'),
(332, 'public/paybox/Ng4ndaYTzxB836L9nvgLLcogGf9vu24wAhpAmkrG.pdf', 'digital', '2021-07-22 08:23:32', '2021-07-22 08:23:32'),
(333, 'public/paybox/n4rnSirJcY0z1v7c2OGHTec3AOEbio7sPvQhheBw.pdf', 'riachuelo - bronze', '2021-07-23 08:18:21', '2021-07-23 08:18:21'),
(334, 'public/paybox/oWrhBpozM7OkQWP8FznqzX2ePT8X4CCoYkFGmyHN.pdf', 'riachuelo - prata', '2021-07-23 08:18:59', '2021-07-23 08:18:59'),
(335, 'public/paybox/G5yligMA60D5e0HkD0C6ksrL6AcKctN9A58Bi9QL.pdf', 'riachuelo - ouro', '2021-07-23 08:19:33', '2021-07-23 08:19:33'),
(336, 'public/paybox/6v4i46XuTVCkvz5dUIij4jA46oUAsqsOTHVvfAmX.pdf', 'riachuelo - esmeralda', '2021-07-23 08:20:03', '2021-07-23 08:20:03'),
(337, 'public/paybox/8prLi4YxLnylSfvaKeEozvKnzXRoLWlCP0dQRvaa.pdf', 'avon', '2021-07-23 08:20:51', '2021-07-23 08:20:51'),
(338, 'public/paybox/QTunTKYEZR0TGPQEBfCdQDtQpsTOw7141vySQtYY.pdf', 'financeiras', '2021-07-23 08:21:42', '2021-07-23 08:21:42'),
(339, 'public/paybox/mojbf6Wf7nu7bm3MlPYHw0TBbINOMiwJ90QFy80r.pdf', 'multicarteiras', '2021-07-23 08:23:33', '2021-07-23 08:23:33'),
(340, 'public/paybox/O9fYNNmPWzk3RWPsIjnsZ48wBwStW0IbXK6gyPRg.pdf', 'digital', '2021-07-23 08:24:24', '2021-07-23 08:24:24'),
(341, 'public/paybox/vlivWZSjbTpZPUVwj8s1DTU4Vjmql1IaQzN09Izz.pdf', 'riachuelo - bronze', '2021-07-26 08:27:13', '2021-07-26 08:27:13'),
(342, 'public/paybox/n5BKTtTvnT0kZpfOtFsXvPBi5blAmUYF9XfJrStp.pdf', 'riachuelo - prata', '2021-07-26 08:27:52', '2021-07-26 08:27:52'),
(343, 'public/paybox/EcyRH1ljN6HgYIBjjAiUWFRNtp1KCKXZov0XbzTZ.pdf', 'riachuelo - ouro', '2021-07-26 08:28:36', '2021-07-26 08:28:36'),
(344, 'public/paybox/lbEI4WEF0ofZpd9LvkogUoZ1Ql6wpKh4qjMpAzDO.pdf', 'riachuelo - esmeralda', '2021-07-26 08:30:59', '2021-07-26 08:30:59'),
(345, 'public/paybox/fRYi2Shm5SDALU9JcFaRUQBmbpteEDndW88GDkcd.pdf', 'avon', '2021-07-26 08:32:27', '2021-07-26 08:32:27'),
(346, 'public/paybox/KHY2bbyiiB7GQMA08SNVuVZeoz6sM7Pd3gHtNmEN.pdf', 'financeiras', '2021-07-26 08:33:09', '2021-07-26 08:33:09'),
(347, 'public/paybox/iwWdnirzpYXX9fttmUTFnPbrWfFUQJHcsgsurKGJ.pdf', 'multicarteiras', '2021-07-26 08:33:45', '2021-07-26 08:33:45'),
(348, 'public/paybox/QNeAjfVPKWlIMK01f29btUQ39ns059I3enidHCRi.pdf', 'digital', '2021-07-26 08:34:30', '2021-07-26 08:34:30'),
(349, 'public/paybox/h7jJWiJetzlnN0WyEXge6Z4REpWHLDPXOzT8NHo9.pdf', 'preventiva', '2021-07-21 04:14:25', '2021-07-27 04:14:25'),
(350, 'public/paybox/udDjipJ4jjSFXVrJfjJm15E3rnjEmNZI7sL8r9TN.pdf', 'riachuelo - bronze', '2021-07-27 08:02:23', '2021-07-27 08:02:23'),
(351, 'public/paybox/NSKU8zcEDjADa7zHiEMX4JSuaJIoEdjO8I8EFOKA.pdf', 'riachuelo - prata', '2021-07-27 08:03:00', '2021-07-27 08:03:00'),
(352, 'public/paybox/fgSohyVEiGPFAANiPmkjtUzJ5B4U1Zukr8iORbwG.pdf', 'riachuelo - ouro', '2021-07-27 08:03:32', '2021-07-27 08:03:32'),
(353, 'public/paybox/sxI8W8FrfGwirWEXyiq0p36Fr5p3PKtJ8OJx43Zr.pdf', 'riachuelo - esmeralda', '2021-07-27 08:04:32', '2021-07-27 08:04:32'),
(354, 'public/paybox/SYVXB993jEJHB0LeBciWBsYR5ND9EmCUlDdKjY9M.pdf', 'avon', '2021-07-27 08:05:23', '2021-07-27 08:05:23'),
(355, 'public/paybox/P4fLR9z8dZUspUADOT1H1uo6qh5kGkYiAgCAeGTw.pdf', 'multicarteiras', '2021-07-27 08:06:01', '2021-07-27 08:06:01'),
(356, 'public/paybox/7B13susFmP7FaGZhX5Ev10sE5O5O98PnZTfIUo5O.pdf', 'financeiras', '2021-07-27 08:06:37', '2021-07-27 08:06:37'),
(357, 'public/paybox/9Wm96DvhQ0m8407QE3mBxFyk3a1QsfrLY8LqtRP3.pdf', 'digital', '2021-07-27 08:07:21', '2021-07-27 08:07:21'),
(358, 'public/paybox/J2OV8msdSgNMP7FsNF9Wieyys3NYtFAIkTVs0fkH.pdf', 'avon', '2021-07-28 09:29:04', '2021-07-28 09:29:04'),
(359, 'public/paybox/HqKUry48KsYin1aBPpgQavh6bZsHEoSyDTiDcme5.pdf', 'riachuelo - bronze', '2021-07-28 09:29:18', '2021-07-28 09:29:18'),
(360, 'public/paybox/aiMMGPDPzqcoymzx9juFCTI5Sa3fm6GWWb6G0Org.pdf', 'riachuelo - prata', '2021-07-28 09:29:57', '2021-07-28 09:29:57'),
(361, 'public/paybox/zRkkjiyPSk3HfUHNSvhrO2IXu5NvmfAkPgKNE6qJ.pdf', 'riachuelo - ouro', '2021-07-28 09:30:32', '2021-07-28 09:30:32'),
(362, 'public/paybox/CsZyUyvWfQyA9l41DdInopTTwBzsERRAdQj0Bvab.pdf', 'riachuelo - esmeralda', '2021-07-28 09:32:00', '2021-07-28 09:32:00'),
(363, 'public/paybox/ThTzSnTCpWqX8tdJSW2LP73YA2R6bxt9zRF8rMs2.pdf', 'multicarteiras', '2021-07-28 09:32:59', '2021-07-28 09:32:59'),
(364, 'public/paybox/atc2Ssqc3bU5t0Yld2Hwo1WPTdXpv7YJ5Poatd4O.pdf', 'financeiras', '2021-07-28 09:33:38', '2021-07-28 09:33:38'),
(365, 'public/paybox/pNJeTTMovRshFQB5O82BsX5b8QTnt1TFWcfkPf9L.pdf', 'avon', '2021-07-28 09:34:05', '2021-07-28 09:34:05'),
(366, 'public/paybox/HrFiPEPvHbxn6OmMukDCnYv4aBffCPvUUzrTHgK9.pdf', 'digital', '2021-07-28 09:34:40', '2021-07-28 09:34:40'),
(367, 'public/paybox/xmc2XPDt0nYnEwiPL9XscnDq1YNnXec5R38qL9QI.pdf', 'riachuelo - bronze', '2021-07-29 07:09:49', '2021-07-29 07:09:49'),
(368, 'public/paybox/zhHV3r8vGcTi5bmQKGOc6QONxsXXCM44OfgqoVY3.pdf', 'riachuelo - prata', '2021-07-29 07:10:25', '2021-07-29 07:10:25'),
(369, 'public/paybox/sX3uNXknTTyf7lHBiVPJwjvCdP68IYZJ9AjluHhd.pdf', 'riachuelo - ouro', '2021-07-29 07:11:01', '2021-07-29 07:11:01'),
(370, 'public/paybox/Jqf8zQy4MoLpsBGlmpwPMkDwhP1RMdTAzj7ik8OF.pdf', 'riachuelo - esmeralda', '2021-07-29 07:12:14', '2021-07-29 07:12:14'),
(371, 'public/paybox/RMTHuyuWnsEuscv08imEcKQFSS0EkV51eg3QdvRs.pdf', 'avon', '2021-07-29 07:14:38', '2021-07-29 07:14:38'),
(372, 'public/paybox/oeaCFO2AKyxR7qgFdf6Hq6yjJij2ad1TutBHA6Zu.pdf', 'financeiras', '2021-07-29 07:15:23', '2021-07-29 07:15:23'),
(373, 'public/paybox/4TIVhW0RQrwnfNyGHq8glPNtdE2xPmbcSaavTwUe.pdf', 'multicarteiras', '2021-07-29 07:16:01', '2021-07-29 07:16:01'),
(374, 'public/paybox/0cyOnpVfxlLNKMUA8mOmKyqyl6NzQwcGCZGzzoAW.pdf', 'digital', '2021-07-29 07:16:41', '2021-07-29 07:16:41'),
(375, 'public/paybox/ggolB76VdKxnp1mN4HM9PYdwp3558FU9xWIdhMHz.pdf', 'riachuelo - bronze', '2021-07-30 08:27:39', '2021-07-30 08:27:39'),
(376, 'public/paybox/aHAcFZ8K4ocBIqj5JNXIp6jhxyffpCRFVcI2NeSJ.pdf', 'riachuelo - prata', '2021-07-30 08:28:11', '2021-07-30 08:28:11'),
(377, 'public/paybox/U8rcX2PbWNDjf8ha0Kor4qAjDMASeEBVk2WKNaed.pdf', 'riachuelo - ouro', '2021-07-30 08:28:42', '2021-07-30 08:28:42'),
(378, 'public/paybox/GDPhgA4ZYP1CApDInJkFoOfEwYwKKl0mZ8qkEqM6.pdf', 'riachuelo - esmeralda', '2021-07-30 08:29:17', '2021-07-30 08:29:17'),
(379, 'public/paybox/sJN0PlvceVVBrPZZNLf317UPTzyTaWVTEqmSiS7C.pdf', 'avon', '2021-07-30 08:30:57', '2021-07-30 08:30:57'),
(380, 'public/paybox/fw1hUAmX7mnmGbM65tkwASOrfUf3SZ7f1BjlHl6F.pdf', 'multicarteiras', '2021-07-30 08:31:36', '2021-07-30 08:31:36'),
(381, 'public/paybox/EopLH0iMMahgMyqSlL03tAMERTEp8qS0t8za52tp.pdf', 'financeiras', '2021-07-30 08:32:10', '2021-07-30 08:32:10'),
(382, 'public/paybox/QeDJl4kCgyYIYoq5Fa6RaHhnBSDMJM9XXBhp8oj3.pdf', 'digital', '2021-07-30 08:33:04', '2021-07-30 08:33:04'),
(383, 'public/paybox/OthpLYk32aeqp8f61UCtmtDWAERnkCXhpZqRJMEW.pdf', 'riachuelo - bronze', '2021-08-03 03:12:23', '2021-08-03 03:12:23'),
(384, 'public/paybox/IP5WaceIgOjGoo3KX909B1WqnDq0Jn2jdhfaJjQR.pdf', 'riachuelo - prata', '2021-08-03 03:12:57', '2021-08-03 03:12:57'),
(385, 'public/paybox/fYsiAwY5TgXZwOUlsggBzdDbc5FieiRDQ5W1YAvv.pdf', 'riachuelo - ouro', '2021-08-03 03:13:46', '2021-08-03 03:13:46'),
(386, 'public/paybox/S9ci7CZJPQnxxpou5OyG9EBa6FbuLkyKqdOLIqwE.pdf', 'riachuelo - esmeralda', '2021-08-03 03:14:22', '2021-08-03 03:14:22'),
(387, 'public/paybox/oNCkeExbiecPoHJQLaeFDbcblJ0xaUxj8C57N59o.pdf', 'avon', '2021-08-03 03:15:14', '2021-08-03 03:15:14'),
(388, 'public/paybox/1WzN0wfOfQ4sEhfyzE0kJZCUx5xAMW9k0aP3qkII.pdf', 'multicarteiras', '2021-08-03 03:15:53', '2021-08-03 03:15:53'),
(389, 'public/paybox/TtKBepK9dM8hDLfvFcQ1iK1WwXBQBQyn4Hao7hxm.pdf', 'financeiras', '2021-08-03 03:16:37', '2021-08-03 03:16:37'),
(390, 'public/paybox/7ZOBmFKPSxaMRebaMW9ycdrvKOAtWbMvlrP5wtji.pdf', 'digital', '2021-08-03 03:17:20', '2021-08-03 03:17:20'),
(391, 'public/paybox/Aqf1ZeuwgepxUtjoqM31uWdRQKoGR9ZuCXGP912h.pdf', 'riachuelo - bronze', '2021-08-03 09:44:40', '2021-08-03 09:44:40'),
(392, 'public/paybox/XTZBPIBnRxGosUyDonYFV1nCcyrWhuJeSTBXZBhM.pdf', 'riachuelo - prata', '2021-08-03 09:45:46', '2021-08-03 09:45:46'),
(393, 'public/paybox/B9nxdexyTleODvV8J2YwyQmOlYnAX9foEMUxiQ6E.pdf', 'riachuelo - ouro', '2021-08-03 09:46:32', '2021-08-03 09:46:32'),
(394, 'public/paybox/xMIUXf6ZAvKZ0QPeIkeZ0TsbTIWticrPSj9JcsHZ.pdf', 'riachuelo - esmeralda', '2021-08-03 09:47:33', '2021-08-03 09:47:33'),
(395, 'public/paybox/Fts7VcS5JcLxDrYlZP10RLzn54u9bYIYH35fDivS.pdf', 'avon', '2021-08-03 09:48:25', '2021-08-03 09:48:25'),
(396, 'public/paybox/hj8lviE8MmGZg0SvxfFMKEYThDwVVeb7CdZaxXZH.pdf', 'financeiras', '2021-08-03 09:49:10', '2021-08-03 09:49:10'),
(397, 'public/paybox/jvH3CvjQNsNXI65bpy3CzccAEfeYWywZCXR6IL80.pdf', 'digital', '2021-08-03 09:50:22', '2021-08-03 09:50:22'),
(398, 'public/paybox/SEN2kj4WDGpp3E6HUgQCtRQCp8aWXALiZcIFt99n.pdf', 'multicarteiras', '2021-08-03 09:51:02', '2021-08-03 09:51:02'),
(399, 'public/paybox/4BKGGNLd19g3nvwAD1c8YqyRPSOmJ1IlaKvseZLu.pdf', 'riachuelo - bronze', '2021-08-05 09:41:25', '2021-08-05 09:41:25'),
(400, 'public/paybox/amKCP1X3lwW1uF9qkJATTbRajZuLjUnDyfqXSjnE.pdf', 'riachuelo - prata', '2021-08-05 09:41:51', '2021-08-05 09:41:51'),
(401, 'public/paybox/kovUkTpi81AoNeVb3F9ksm2wSCVChk3qLkltqUU7.pdf', 'riachuelo - ouro', '2021-08-05 09:42:22', '2021-08-05 09:42:22'),
(402, 'public/paybox/CmamEYYwBVcFO942TfqyAsqd6nFIer0Wsekq6N8M.pdf', 'riachuelo - esmeralda', '2021-08-05 09:43:00', '2021-08-05 09:43:00'),
(403, 'public/paybox/dRmgWac1Lxak4wnjtE1XlLbG5xRw4ywPnyWcgKjL.pdf', 'avon', '2021-08-05 09:44:14', '2021-08-05 09:44:14'),
(404, 'public/paybox/dVPkm13xKpwhCRukOlGZmganzXPDAaun5wVmAgvD.pdf', 'multicarteiras', '2021-08-05 09:45:34', '2021-08-05 09:45:34'),
(405, 'public/paybox/WYC5o2zSLQnDkmuU6bO4OMTXeJfh062JyAW1Y3Rq.pdf', 'financeiras', '2021-08-05 09:48:33', '2021-08-05 09:48:33'),
(406, 'public/paybox/qJEsEJY6N71QLOQagyYUcw3W4OFxqZm0CMmNspwY.pdf', 'digital', '2021-08-05 09:50:11', '2021-08-05 09:50:11'),
(407, 'public/paybox/AxvjQN3QsNdvpREVQxn7gfkZtmc3IAPkoviWqzOS.pdf', 'riachuelo - bronze', '2021-08-06 09:12:14', '2021-08-06 09:12:14'),
(408, 'public/paybox/sp9UHl5oymdlKzHWfg5Prt6fAqnwtV1qmH4rmAWj.pdf', 'riachuelo - prata', '2021-08-06 09:15:45', '2021-08-06 09:15:45'),
(409, 'public/paybox/WAXfln0x6N0VyHtACVhU03P1HN4R0d9gwxC53sHy.pdf', 'riachuelo - ouro', '2021-08-06 09:16:11', '2021-08-06 09:16:11'),
(410, 'public/paybox/H9NzwBEsS8hINACGsYYfXXtHOYSnLHZMzDVsksXz.pdf', 'riachuelo - esmeralda', '2021-08-06 09:20:30', '2021-08-06 09:20:30'),
(411, 'public/paybox/vE8BDcM1m1yg2wwwulnUFEaxrm9PegRghnp3MeQk.pdf', 'avon', '2021-08-06 09:21:29', '2021-08-06 09:21:29'),
(412, 'public/paybox/bZHzmSWA7wgyGLgXvxq7anOUlBuKtm5XCNXqzIxg.pdf', 'financeiras', '2021-08-06 09:21:59', '2021-08-06 09:21:59'),
(413, 'public/paybox/b7zwh3WbyyitqdIPOfOxeHrx0MeDaHgo99bjqUdS.pdf', 'multicarteiras', '2021-08-06 09:22:34', '2021-08-06 09:22:34'),
(414, 'public/paybox/M0a4Jw7XQaPrMRyxOGntIrPz1intCkihefn2z2Km.pdf', 'digital', '2021-08-06 09:23:28', '2021-08-06 09:23:28'),
(415, 'public/paybox/6jInHvglR23EsscNgadPas9lykEkLPlHI9uKGhmI.pdf', 'riachuelo - bronze', '2021-08-09 09:23:25', '2021-08-09 09:23:25'),
(416, 'public/paybox/zvOWCnYbyhW8Js90Z5HH8vHk50TayDggQy5Ac23Y.pdf', 'riachuelo - prata', '2021-08-09 09:24:03', '2021-08-09 09:24:03'),
(417, 'public/paybox/Anv3dYpAl8djgPEv5DrdOJN6YDOxoJLb6wi2Kcs9.pdf', 'riachuelo - ouro', '2021-08-09 09:25:50', '2021-08-09 09:25:50'),
(418, 'public/paybox/0eHXOJR8WckWQOFKNqYkxt18JVr1kogeIduYvN0M.pdf', 'riachuelo - esmeralda', '2021-08-09 09:27:30', '2021-08-09 09:27:30'),
(419, 'public/paybox/7SrZyxHOmBtgIXd2YN93AQB06TX1uYaDmjmzmjj2.pdf', 'avon', '2021-08-09 09:28:14', '2021-08-09 09:28:14'),
(420, 'public/paybox/FdKZYAcsRoMeDRvw5AZ3NKSNQV9JMYQr5s4rhbef.pdf', 'multicarteiras', '2021-08-09 09:30:15', '2021-08-09 09:30:15'),
(421, 'public/paybox/GrNxGOsrUpDNfpLI23DCFkRFTnSOZucxYcVfzuxD.pdf', 'financeiras', '2021-08-09 09:31:10', '2021-08-09 09:31:10'),
(422, 'public/paybox/v2Hqe80gDdlg3RonBhnTOPaosVwP9uTVKoVCg3OY.pdf', 'digital', '2021-08-09 09:31:54', '2021-08-09 09:31:54'),
(423, 'public/paybox/hKZr67XuWwMqpAnBhI6oqVI8WMl9La4UlC9aqMdY.pdf', 'riachuelo - bronze', '2021-08-10 09:39:35', '2021-08-10 09:39:35'),
(424, 'public/paybox/5rcTTIwzwtUTVV8tkwBUW5FqNoewUSS0zSijwAnf.pdf', 'riachuelo - prata', '2021-08-10 09:40:14', '2021-08-10 09:40:14'),
(425, 'public/paybox/xRdwKjjqUS8tT171r7FYlh2AwYvfPFhwtxUlOBEW.pdf', 'riachuelo - ouro', '2021-08-10 09:40:45', '2021-08-10 09:40:45'),
(426, 'public/paybox/vW5Izay9fZMe9bC9P4GsA0EpPDbf70f9lz7ViCSc.pdf', 'riachuelo - esmeralda', '2021-08-10 09:41:39', '2021-08-10 09:41:39'),
(427, 'public/paybox/L5F8NcZJa34d5VP18L5zRe3dmSXC0RFcWucf0mkM.pdf', 'avon', '2021-08-10 09:43:32', '2021-08-10 09:43:32'),
(428, 'public/paybox/3Votmot6rTrzQwpqSA0RhE7yQe053PCfou0M30v6.pdf', 'financeiras', '2021-08-10 09:44:18', '2021-08-10 09:44:18'),
(429, 'public/paybox/8LLKOxqMvfCvt7bsONqCtEjsJGjaBb8sycuQ9O4t.pdf', 'multicarteiras', '2021-08-10 09:44:56', '2021-08-10 09:44:56'),
(430, 'public/paybox/DCKoSdDHZUj7V1jifxF8YElfcBYh2DtO1II2Cx4w.pdf', 'digital', '2021-08-10 09:45:48', '2021-08-10 09:45:48'),
(431, 'public/paybox/tXtT247oEYUJsn9hIkSVtqzKni2cBYlJNrZQM0Kr.pdf', 'riachuelo - bronze', '2021-08-11 08:42:25', '2021-08-11 08:42:25'),
(432, 'public/paybox/Q0CNhuW21rwJ3jPLRdrW59gSghE9jeJCPFKwrNuS.pdf', 'riachuelo - prata', '2021-08-11 08:42:53', '2021-08-11 08:42:53'),
(433, 'public/paybox/EGi54M7LYAg6pB2t1zUQWaLyS4bHqZcwpd1tsuhw.pdf', 'riachuelo - ouro', '2021-08-11 08:45:55', '2021-08-11 08:45:55'),
(434, 'public/paybox/b4QJNTwbscbmpizYLXaAZq5e721d0dH4B6PkcwqW.pdf', 'riachuelo - esmeralda', '2021-08-11 08:46:31', '2021-08-11 08:46:31'),
(435, 'public/paybox/MiOl6VGKNpjI6MAS62GphrKUyDUS3OassyonpLH0.pdf', 'avon', '2021-08-11 08:47:11', '2021-08-11 08:47:11'),
(436, 'public/paybox/tCMXWmZ5lPQPICggNZPNazna5DmoS6lxraQbVCgB.pdf', 'financeiras', '2021-08-11 08:47:47', '2021-08-11 08:47:47'),
(437, 'public/paybox/IjFX38ZjfBksfukrqg8zAbso63LGka16pCeLfCpl.pdf', 'multicarteiras', '2021-08-11 08:48:22', '2021-08-11 08:48:22'),
(438, 'public/paybox/tv6GNQo2ngh3l1OPUs00hfHJ2MwQLpAZ1BGBaYEs.pdf', 'digital', '2021-08-11 08:49:11', '2021-08-11 08:49:11'),
(439, 'public/paybox/rULhKfHTYXCzJiWSoVywgWzVyfnQRA6QH1AuN7S1.pdf', 'riachuelo - bronze', '2021-08-12 08:23:45', '2021-08-12 08:23:45'),
(440, 'public/paybox/tppEJpeDQ3rsBOIj1YkJ4NiRohVJTOSAG9sKXaVj.pdf', 'riachuelo - prata', '2021-08-12 08:24:25', '2021-08-12 08:24:25'),
(441, 'public/paybox/FTE5GnIdkfyxDBqDOAdik5Uy3Fcarz1LGon9nCKn.pdf', 'riachuelo - ouro', '2021-08-12 08:24:54', '2021-08-12 08:24:54'),
(442, 'public/paybox/RxMomKgJoj7Y7rj1XNjmcJd2Zn3dxBrG9RqELpLF.pdf', 'riachuelo - esmeralda', '2021-08-12 08:25:49', '2021-08-12 08:25:49'),
(443, 'public/paybox/o3LTr7TxqK5Jp25SIq2u4dJrE38FMhfpMO2W003C.pdf', 'avon', '2021-08-12 08:26:41', '2021-08-12 08:26:41'),
(444, 'public/paybox/lN2LsPwM7mUVgjuXFIYd6Cpa0jemeTZfDZKdGlvV.pdf', 'financeiras', '2021-08-12 08:27:38', '2021-08-12 08:27:38'),
(445, 'public/paybox/usdTzoECYpf4eBATRHzPGP0FTHsgoRRSKoCN8DID.pdf', 'multicarteiras', '2021-08-12 08:28:31', '2021-08-12 08:28:31'),
(446, 'public/paybox/dd4372us8lzJDoeHrMN4HIphqHC29kp74wrjbVdd.pdf', 'digital', '2021-08-12 08:29:18', '2021-08-12 08:29:18'),
(447, 'public/paybox/78Iu1gGe2EhT3bSqm7J9yHjCNaBg1x1WUFjVFFXS.pdf', 'riachuelo - bronze', '2021-08-13 09:07:14', '2021-08-13 09:07:14'),
(448, 'public/paybox/ylXCoG3a3k3LWSdLSSiK4Mvjfn1wmf3jZyW1zB8R.pdf', 'riachuelo - prata', '2021-08-13 09:07:47', '2021-08-13 09:07:47'),
(449, 'public/paybox/CFMozIQc6BVxCYq7E87aLBWWWNNrOyDxQzMM1Tfv.pdf', 'riachuelo - ouro', '2021-08-13 09:09:56', '2021-08-13 09:09:56'),
(450, 'public/paybox/5mo2fWg81fmSjowrn90fIqQTJEOE23QvoiYTYjpm.pdf', 'riachuelo - esmeralda', '2021-08-13 09:10:33', '2021-08-13 09:10:33'),
(451, 'public/paybox/gaDpSz1ETy2lTdVYZkfzXUIlxR9Tp3xTnKBUUskp.pdf', 'avon', '2021-08-13 09:11:21', '2021-08-13 09:11:21'),
(452, 'public/paybox/t7X4GreBSzGAOH7NYsz8eRcTnHrohfq8WTZ69Tjp.pdf', 'financeiras', '2021-08-13 09:12:38', '2021-08-13 09:12:38'),
(453, 'public/paybox/lptF0wHQfaz6dnpt0WwxRPBVl55Ldr9hOXzD7N47.pdf', 'multicarteiras', '2021-08-13 09:13:14', '2021-08-13 09:13:14'),
(454, 'public/paybox/cAB4Z0AEe1gNNpzOZSv1MErrlydxJnReBTHOyBBT.pdf', 'digital', '2021-08-13 09:14:00', '2021-08-13 09:14:00'),
(455, 'public/paybox/ZW89dW74h9ik0EplY9KFpa1hAjhmus0KtGg23ANR.pdf', 'riachuelo - bronze', '2021-08-18 08:43:44', '2021-08-18 08:43:44'),
(456, 'public/paybox/CMAMWq86txq0SK4vjHrhC6rq0cQJiaAznNXLOAv4.pdf', 'riachuelo - prata', '2021-08-18 08:44:16', '2021-08-18 08:44:16'),
(457, 'public/paybox/udHAtr4gdYyAeaDQSJUBxEDBEjjLnm984YE1kp3i.pdf', 'riachuelo - ouro', '2021-08-18 08:44:48', '2021-08-18 08:44:48'),
(458, 'public/paybox/h0LHfNny8nJwnld391Rx4csm09dI6Lim4zcyfvK2.pdf', 'riachuelo - esmeralda', '2021-08-18 08:45:20', '2021-08-18 08:45:20'),
(459, 'public/paybox/SUTam9s1ooF8L4PY22GlrMjVo5Y5ahcB4M3hdpZW.pdf', 'multicarteiras', '2021-08-18 08:46:04', '2021-08-18 08:46:04'),
(460, 'public/paybox/ubbqHuwg10P8lr6CaJsLkOe2UTjXcJvGyO9qictZ.pdf', 'avon', '2021-08-18 08:46:36', '2021-08-18 08:46:36'),
(461, 'public/paybox/WJsuzg7Gf02COsbxnsOm9oUJoW1aQdr4Y2qNFHfb.pdf', 'financeiras', '2021-08-18 08:47:12', '2021-08-18 08:47:12'),
(462, 'public/paybox/goaAGMZzT5mKKvLKPyiP4lSBo32SNgcJnkcqOKav.pdf', 'digital', '2021-08-18 08:47:48', '2021-08-18 08:47:48'),
(463, 'public/paybox/VExLld1OWyHX5sJAeld4at2OjKfE84eFMNzG314j.pdf', 'avon', '2021-08-19 01:19:15', '2021-08-19 01:19:15'),
(464, 'public/paybox/Hobt9xVo2QCTrXau8oxcxDAaKH1AHnSEkuv4N0Ze.pdf', 'financeiras', '2021-08-19 01:19:47', '2021-08-19 01:19:47'),
(465, 'public/paybox/jSL5qMxhYty2JGJXz7llO8Wbr2HFLsV7X38y4ApS.pdf', 'multicarteiras', '2021-08-19 01:20:33', '2021-08-19 01:20:33'),
(466, 'public/paybox/Pz3gaFOeRf5jHUitSuUvmlJvX4yNgKvFHm9ql3Hz.pdf', 'riachuelo - bronze', '2021-08-19 01:21:18', '2021-08-19 01:21:18'),
(467, 'public/paybox/xRqkTQtmTxsUQBcDk1UfP8rdFgUVBKgiO0mRXlxz.pdf', 'riachuelo - prata', '2021-08-19 01:21:49', '2021-08-19 01:21:49'),
(468, 'public/paybox/M4aqenmElRDZadhFkj183sz2STaOWsPm9NhnBXnu.pdf', 'riachuelo - ouro', '2021-08-19 01:22:23', '2021-08-19 01:22:23'),
(469, 'public/paybox/5RJiq4F1oEjgTj9K5mKK7L25r3PepnR8eUWGklqK.pdf', 'riachuelo - esmeralda', '2021-08-19 01:22:52', '2021-08-19 01:22:52'),
(470, 'public/paybox/mhuMedC9zfFJjpOjiNqVPzJJeywQfyKT2CkdZn4r.pdf', 'digital', '2021-08-19 01:24:04', '2021-08-19 01:24:04'),
(473, 'public/paybox/nx75FgUpmm5RKLlLENyYxaEGGAukpHNl8pvdBvBs.pdf', 'financeiras', '2021-08-19 08:28:43', '2021-08-19 08:28:43'),
(474, 'public/paybox/BxfA58NtpZdbo4L3K3e2Nk8dMe7JRAutmbmwUZDz.pdf', 'avon', '2021-08-19 08:28:59', '2021-08-19 08:28:59'),
(475, 'public/paybox/LDJAfc7XmRKKMi5MZR7zZIyT847C9SHCHstu1Tmh.pdf', 'multicarteiras', '2021-08-19 08:29:39', '2021-08-19 08:29:39'),
(476, 'public/paybox/VpKnLQXc0Rk5mAoXxJwPGWfZf68lwFu1mUflHaBg.pdf', 'riachuelo - prata', '2021-08-19 08:30:12', '2021-08-19 08:30:12'),
(477, 'public/paybox/IFReU49G2dgJH2ZueRqqoseaD0myeILTzGhw9I4k.pdf', 'riachuelo - bronze', '2021-08-19 08:30:49', '2021-08-19 08:30:49'),
(478, 'public/paybox/A1YZpX6tViZIt2jI3YSKTWc2PZ1F9LqUqantqOet.pdf', 'riachuelo - ouro', '2021-08-19 08:31:15', '2021-08-19 08:31:15'),
(479, 'public/paybox/ItgzMFd73BfLlUUuVI5z14neSZU1pFCiWrRGT0sE.pdf', 'riachuelo - esmeralda', '2021-08-19 08:31:50', '2021-08-19 08:31:50'),
(480, 'public/paybox/fGRYWTwTVffBl3Huv71UqSwPtc74RzqcRzy0huya.pdf', 'digital', '2021-08-19 08:32:27', '2021-08-19 08:32:27'),
(481, 'public/paybox/1IFslCRr5WU2pSs4Jtd2WwJTADWyjqo1OIokpl3I.pdf', 'avon', '2021-08-25 08:47:35', '2021-08-25 08:47:35'),
(482, 'public/paybox/GQosCIdiMEeoBUopIO7EJJ2NGAQbIU5Wo6X9psVV.pdf', 'financeiras', '2021-08-25 08:48:13', '2021-08-25 08:48:13'),
(483, 'public/paybox/Gdxk5KIiFfmtIaH76Eg7LYM8SQOhuLtCORZmUG41.pdf', 'multicarteiras', '2021-08-25 08:50:20', '2021-08-25 08:50:20'),
(484, 'public/paybox/hXgvXyKAN01iThOpsUr6fHAaWg4ulAbNBZulSjTA.pdf', 'riachuelo - bronze', '2021-08-25 08:50:49', '2021-08-25 08:50:49'),
(485, 'public/paybox/RC8m99j7dwmjFDjrQh3cnXb107P9cnSJUFvahED8.pdf', 'riachuelo - prata', '2021-08-25 08:51:27', '2021-08-25 08:51:27'),
(486, 'public/paybox/nYUfjDSxNyVlV5a0NaLlYgtXIs5x7EUabZKmFSJb.pdf', 'riachuelo - ouro', '2021-08-25 08:52:44', '2021-08-25 08:52:44'),
(487, 'public/paybox/aYudQfChvLoH0qX0MTPjOreNYSBNp5Y25iVZPeBU.pdf', 'riachuelo - esmeralda', '2021-08-25 08:53:30', '2021-08-25 08:53:30'),
(488, 'public/paybox/QMMUdJnpiwABibW6a22go6klDGWbCNHNwuVhFoMy.pdf', 'digital', '2021-08-25 08:54:34', '2021-08-25 08:54:34'),
(489, 'public/paybox/YuvUKpDaUjVjockoFE06AXNYqSaTLTr5hnKk0kfx.pdf', 'avon', '2021-08-26 09:01:32', '2021-08-26 09:01:32'),
(490, 'public/paybox/piPRgNcAxu1nlIFqIWHvACIJZTqAoZ7qiM9pZeIO.pdf', 'financeiras', '2021-08-26 09:02:16', '2021-08-26 09:02:16'),
(491, 'public/paybox/lEc4Dc36iO21jFi5wTV028xJg2vSoYcOmFq5hkKG.pdf', 'multicarteiras', '2021-08-26 09:03:42', '2021-08-26 09:03:42'),
(492, 'public/paybox/ctPX73QK9Ia01farjIv6PiuLDE0MMNKDkdbbMNvL.pdf', 'riachuelo - bronze', '2021-08-26 09:04:14', '2021-08-26 09:04:14'),
(493, 'public/paybox/xoxVGiFZ4BO4WyY1yMiiYVMNq7uzqsAAZrdVIXF5.pdf', 'riachuelo - esmeralda', '2021-08-26 09:05:21', '2021-08-26 09:05:21'),
(494, 'public/paybox/tuBcHbblaVNggrY7MIxx7k9fE3Dvq3EXHUqqqAS6.pdf', 'riachuelo - ouro', '2021-08-26 09:05:49', '2021-08-26 09:05:49'),
(495, 'public/paybox/MOtx20qhza2UJfEzdHDzTNP0qEaijiYTIdbk4ZzB.pdf', 'riachuelo - prata', '2021-08-26 09:06:22', '2021-08-26 09:06:22'),
(496, 'public/paybox/Ipj2ng02aMPPgljqrrx6N3e7pxCgqAAw3GhPtxT5.pdf', 'digital', '2021-08-26 09:06:55', '2021-08-26 09:06:55'),
(497, 'public/paybox/9cy5Cs4lKhKeIPWTqpIWFmWlrGMuMlLDF3Lno8N7.pdf', 'avon', '2021-08-28 01:43:44', '2021-08-28 01:43:44'),
(498, 'public/paybox/Zu10KJdW0r3yU0QXSnuGDWx2DM5y8ufu2Mu9d3LC.pdf', 'multicarteiras', '2021-08-28 01:44:25', '2021-08-28 01:44:25'),
(499, 'public/paybox/kwHkT8JQ1opMS2ArSQyGKV5SuRM27pTLYk9mXG71.pdf', 'financeiras', '2021-08-28 01:45:39', '2021-08-28 01:45:39'),
(500, 'public/paybox/OYYqwKxjqyuIkuPOQI46epYeN2XA9ColdVgp2tW7.pdf', 'riachuelo - bronze', '2021-08-28 01:46:15', '2021-08-28 01:46:15'),
(501, 'public/paybox/Tuho5cHelmPOCQk69fompC87CTAS8o1ZGyNmoToL.pdf', 'riachuelo - esmeralda', '2021-08-28 01:46:45', '2021-08-28 01:46:45'),
(502, 'public/paybox/MZju6ADGHzbW6tvnqJyrUvS74kxmyAkBBwOeOFX6.pdf', 'riachuelo - ouro', '2021-08-28 01:47:16', '2021-08-28 01:47:16'),
(503, 'public/paybox/AJmrrvSL4ljMM13rPOA6mYOnR7KX3Ukk469MCScL.pdf', 'riachuelo - prata', '2021-08-28 01:47:43', '2021-08-28 01:47:43'),
(504, 'public/paybox/h5PfPhwumf3aTOmPUz2NfzwRPZ3WbGMSZNn0OZz3.pdf', 'digital', '2021-08-28 01:48:24', '2021-08-28 01:48:24'),
(505, 'public/paybox/wHrpSziGzDOpnC1l8LpfISXbhrHWc9KS82f2OSNi.pdf', 'avon', '2021-08-30 09:47:16', '2021-08-30 09:47:16'),
(506, 'public/paybox/KFNX3i2EgHUmlzYxIJquh8YVYq83Unr8MaWxEH8c.pdf', 'financeiras', '2021-08-30 09:49:15', '2021-08-30 09:49:15'),
(507, 'public/paybox/XLdbLTL61jhYy5920Z3tk0Pv8C5DngxHRJcewi2H.pdf', 'multicarteiras', '2021-08-30 09:50:01', '2021-08-30 09:50:01'),
(508, 'public/paybox/fQcoCcJUr9kQgOFOaQy0NBax5rqVIaiKXLz1sKqy.pdf', 'riachuelo - bronze', '2021-08-30 09:50:33', '2021-08-30 09:50:33'),
(509, 'public/paybox/06b5k9F5J7FbHqItT83JsKzaLavfN9ZBRf44iJ9s.pdf', 'riachuelo - prata', '2021-08-30 09:51:06', '2021-08-30 09:51:06'),
(510, 'public/paybox/btNGMqfcoCzsJIu2f3dR4sD1jFqQuI43MHoXd54Z.pdf', 'riachuelo - ouro', '2021-08-30 09:51:31', '2021-08-30 09:51:31'),
(511, 'public/paybox/hKYSwsRTjqu6kmGOgQNobGqQURZtSrgoLaBEpHoB.pdf', 'riachuelo - esmeralda', '2021-08-30 09:52:06', '2021-08-30 09:52:06'),
(512, 'public/paybox/QtA0P6iiHAFkOUr65rQHzSR9zzAVA6c608BSCVmv.pdf', 'digital', '2021-08-30 09:52:36', '2021-08-30 09:52:36'),
(513, 'public/paybox/kzHM9D8XF6Q586VFTKyqaclXYxtgnZLL3zgPY7mx.pdf', 'avon', '2021-08-31 08:48:00', '2021-08-31 08:48:00'),
(514, 'public/paybox/hOFVzWckQIzwUI2LrxU1FvD1pwFUYGUlHBr7WuFV.pdf', 'financeiras', '2021-08-31 08:48:31', '2021-08-31 08:48:31'),
(515, 'public/paybox/jX9tRgR4Fvp3GqzJX7kyFjcxK3hd37GrbY3X0QPB.pdf', 'multicarteiras', '2021-08-31 08:49:19', '2021-08-31 08:49:19'),
(516, 'public/paybox/utrQCjk0YdoupNTsgl7T9b1vqvPr9W9cIpxxOiyC.pdf', 'riachuelo - bronze', '2021-08-31 08:49:54', '2021-08-31 08:49:54'),
(517, 'public/paybox/mG4WIuQnHIPJM1QepBCQyg7qTcbttFge89ZIFZRb.pdf', 'riachuelo - prata', '2021-08-31 08:50:22', '2021-08-31 08:50:22'),
(518, 'public/paybox/6VDCZ6YY9OUJQqYmtQq5pFd6bvHfYOhtaeDhwvIe.pdf', 'riachuelo - ouro', '2021-08-31 08:50:47', '2021-08-31 08:50:47'),
(519, 'public/paybox/aTZ7xAD55xLb0cZG75unpb6kEsmmgPA3P4NSxzPx.pdf', 'riachuelo - esmeralda', '2021-08-31 08:51:16', '2021-08-31 08:51:16'),
(520, 'public/paybox/z4dE09rDxjLAjvJxhduXLVoxtrUmnXrKUWgfxJRj.pdf', 'digital', '2021-08-31 08:51:48', '2021-08-31 08:51:48'),
(521, 'public/paybox/kyvXcUwiZXLe0WsWSSbIMOVzTwYjWyIqzO8DUxmB.pdf', 'avon', '2021-09-01 09:59:28', '2021-09-01 09:59:28'),
(522, 'public/paybox/wXMYxpneEPy4mx9WoTK2AB5VefNcbS7uhz79RX1I.pdf', 'financeiras', '2021-09-01 10:00:18', '2021-09-01 10:00:18'),
(523, 'public/paybox/5la4Cp0kaRZFhXwQWuQ1fKSMXo4Z2zXdODoQlKJP.pdf', 'multicarteiras', '2021-09-01 10:00:54', '2021-09-01 10:00:54'),
(524, 'public/paybox/xgQywgbYZVOpdOasfhc8CqAAq9x55gNIMwax7Y4f.pdf', 'riachuelo - bronze', '2021-09-01 10:01:27', '2021-09-01 10:01:27'),
(525, 'public/paybox/p8j55wbbcExKRvCpiRi9hqRWFcCaXB83XNnwGGlG.pdf', 'riachuelo - prata', '2021-09-01 10:05:11', '2021-09-01 10:05:11'),
(526, 'public/paybox/SQFq7I867fhoeVDN1oUMXDWBi4emQS2jDr0EDEbn.pdf', 'riachuelo - ouro', '2021-09-01 10:14:34', '2021-09-01 10:14:34'),
(527, 'public/paybox/gjnFEhg8qCbW9HXLHnjVwCNIY9exmHqgjgon5y8y.pdf', 'riachuelo - esmeralda', '2021-09-01 10:16:58', '2021-09-01 10:16:58'),
(528, 'public/paybox/36wK8UzZ8iD15XrMX1dTawYJiAJttgRV7OQV4c7m.pdf', 'digital', '2021-09-01 10:18:31', '2021-09-01 10:18:31'),
(529, 'public/paybox/Dq4RA6yeOsbWXwfvOCafd0QYHd3pp9bZ9NYYxiUj.pdf', 'avon', '2021-09-03 08:41:19', '2021-09-03 08:41:19'),
(530, 'public/paybox/rkld91Jhmb7G3uQjAo2BuHFBmEeSWCeEec6GKXon.pdf', 'financeiras', '2021-09-03 08:41:54', '2021-09-03 08:41:54'),
(531, 'public/paybox/Y7knSiPxn5ZL7pR2m3uncNWZbAfsQMAkpXYed4xm.pdf', 'multicarteiras', '2021-09-03 08:42:30', '2021-09-03 08:42:30'),
(532, 'public/paybox/UkbimTfb9Uv2TiJuNO84EDcGqwmid9894PZ2DWHv.pdf', 'riachuelo - bronze', '2021-09-03 08:43:22', '2021-09-03 08:43:22'),
(533, 'public/paybox/TEsAGIVmMBPTRJuCXnFKouigqVrdqzgP0EY0M8WV.pdf', 'riachuelo - prata', '2021-09-03 08:43:58', '2021-09-03 08:43:58'),
(534, 'public/paybox/DIuLiTi23CEY08kJfJG4A2qGi3RKFAJhRwRA1UsY.pdf', 'riachuelo - ouro', '2021-09-03 08:44:32', '2021-09-03 08:44:32'),
(535, 'public/paybox/WBreoqOnPp5gOs043tSDOE53YfoVF83OsLHkKqHJ.pdf', 'riachuelo - esmeralda', '2021-09-03 08:44:55', '2021-09-03 08:44:55'),
(536, 'public/paybox/YtKw0SXvWI2F9l6r45b59K0faYg3g4RaSUwuHv2x.pdf', 'digital', '2021-09-03 08:46:01', '2021-09-03 08:46:01'),
(537, 'public/paybox/VZ9croSChwX9cAJ8VMpDXoRCIB46rL1KKz7QPZGT.pdf', 'avon', '2021-09-08 04:34:47', '2021-09-08 04:34:47'),
(538, 'public/paybox/Kc5o7pr4rEyauPaHTW0xCCznPGavO2WSrFSwpxNN.pdf', 'financeiras', '2021-09-08 04:35:47', '2021-09-08 04:35:47'),
(539, 'public/paybox/Kia2TRdrJHwEnlWjwoiBYAz03GtC1ZM2eXEIoSdo.pdf', 'multicarteiras', '2021-09-08 04:36:41', '2021-09-08 04:36:41'),
(540, 'public/paybox/uDcFyEk4qm2Qkf9V83wkdU03V3GQ8MHvSqM0Qptd.pdf', 'riachuelo - bronze', '2021-09-08 04:37:24', '2021-09-08 04:37:24'),
(541, 'public/paybox/ezO02uFlvZ7pmk22ODcqRA0Ouu9E2BFBaOBWrNMq.pdf', 'riachuelo - esmeralda', '2021-09-08 04:38:13', '2021-09-08 04:38:13'),
(542, 'public/paybox/ztbgivLxjzexbUyo85hsbES7rD4KnpHV8zUBYpmq.pdf', 'riachuelo - ouro', '2021-09-08 04:38:47', '2021-09-08 04:38:47'),
(543, 'public/paybox/txPmdWs8wxHDiGwi3l5ulKxKAQUW6YAF7FzTSNFY.pdf', 'riachuelo - prata', '2021-09-08 04:39:20', '2021-09-08 04:39:20'),
(544, 'public/paybox/pzU2qXsYwDOO7hEodd4f6quP4OkpbnUxvD0QHqet.pdf', 'avon', '2021-09-08 08:26:17', '2021-09-08 08:26:17'),
(545, 'public/paybox/IVF4TkMwKX7y066ZvlEqlxxr8AyZHp4WM6mYIr3Q.pdf', 'financeiras', '2021-09-08 08:28:54', '2021-09-08 08:28:54'),
(546, 'public/paybox/pv0Vdsp6R4eN2PjX3YfhQWJ9rkc9qBd1HGiVmCWb.pdf', 'multicarteiras', '2021-09-08 08:30:13', '2021-09-08 08:30:13'),
(547, 'public/paybox/vj8wiT0qKBlPsCWsEPQCVlJPOJniikduRx37sFiA.pdf', 'riachuelo - esmeralda', '2021-09-08 08:33:47', '2021-09-08 08:33:47'),
(548, 'public/paybox/GGAOaS5eYEmmWytaTAPaLbNNFKG1v9WhnwtUL64n.pdf', 'riachuelo - ouro', '2021-09-08 08:34:46', '2021-09-08 08:34:46'),
(549, 'public/paybox/nng3oIkt27UleXNglrS8rri6StfYWmTRg3Ciou2S.pdf', 'riachuelo - prata', '2021-09-08 08:35:35', '2021-09-08 08:35:35'),
(550, 'public/paybox/E6DSaCqzDDuUtSWQKvvaIAkBVwa881Jb3hbu9ojC.pdf', 'riachuelo - bronze', '2021-09-08 08:37:19', '2021-09-08 08:37:19'),
(551, 'public/paybox/xc93EldEGv3tSn1ufpUYl4gz09oRj6U8qTZCNEfE.pdf', 'avon', '2021-09-09 08:41:01', '2021-09-09 08:41:01'),
(552, 'public/paybox/5PLSfBmIAap8HPE0sDCCtl6OeAkgKhwzubXxsejg.pdf', 'financeiras', '2021-09-09 08:42:27', '2021-09-09 08:42:27'),
(553, 'public/paybox/dyF8nhVxFEz8voPdpW6QvRKGyNspIJ1EwrzDUs4c.pdf', 'multicarteiras', '2021-09-09 08:44:08', '2021-09-09 08:44:08'),
(554, 'public/paybox/MMUWkQPCGUD0dO5grsBSr9iuyHLGzAjAdBFRz4u2.pdf', 'riachuelo - esmeralda', '2021-09-09 08:45:24', '2021-09-09 08:45:24'),
(555, 'public/paybox/m6UQEZ8gbX0trcGtqbt5tFqqV3xZBmQbdlmBbFpn.pdf', 'riachuelo - ouro', '2021-09-09 08:47:58', '2021-09-09 08:47:58'),
(556, 'public/paybox/HHi3ATwn0LTtV8WS8M4IY4Gd16lMmfV7TjY5INCs.pdf', 'riachuelo - prata', '2021-09-09 08:49:16', '2021-09-09 08:49:16'),
(557, 'public/paybox/ZVvwACZPTOSAqZ3VPTdeSgs0HlRJpRlau8Cfzvvi.pdf', 'riachuelo - bronze', '2021-09-09 08:50:40', '2021-09-09 08:50:40');
INSERT INTO `payboxes` (`id`, `cover`, `categories`, `created_at`, `updated_at`) VALUES
(558, 'public/paybox/kfdFK09dbOVaSScLn7CaDegYL0HMeBUW0WE2yLY0.pdf', 'avon', '2021-09-10 08:10:31', '2021-09-10 08:10:31'),
(559, 'public/paybox/uZJe2ieyxVFQ0Qr3lusqrzMOG5BJytBULBcI1yZs.pdf', 'financeiras', '2021-09-10 08:10:39', '2021-09-10 08:10:39'),
(560, 'public/paybox/ciR6pskTLuijP0gcQ4AByehTSM01g0zQXHVBGICZ.pdf', 'multicarteiras', '2021-09-10 08:10:51', '2021-09-10 08:10:51'),
(561, 'public/paybox/iVGnVIh3o2pSEDm0HCzfYSHHkzb929YE48F5M7YU.pdf', 'riachuelo - esmeralda', '2021-09-10 08:11:03', '2021-09-10 08:11:03'),
(562, 'public/paybox/SlBsrXKXTx5jTZDek1aK58O9mageNOhteMaeyn3d.pdf', 'riachuelo - ouro', '2021-09-10 08:11:13', '2021-09-10 08:11:13'),
(563, 'public/paybox/wovfDg6LzkiBkJzzeui5Jr2CrFoWuuhv875zC7MX.pdf', 'riachuelo - prata', '2021-09-10 08:11:27', '2021-09-10 08:11:27'),
(564, 'public/paybox/g5IPrflFeouItjyEWaL5dXeFMQnPc80trgOMFQ3X.pdf', 'riachuelo - bronze', '2021-09-10 08:11:35', '2021-09-10 08:11:35'),
(565, 'public/paybox/gZI1gJu8zMRXhV35evtD5DAq4DygvoOCwjqQ3SiF.pdf', 'avon', '2021-09-13 09:26:17', '2021-09-13 09:26:17'),
(566, 'public/paybox/3PRHUagx9XLH7a7NSosctoScr6Z80vEKDqBp8VbH.pdf', 'financeiras', '2021-09-13 09:26:35', '2021-09-13 09:26:35'),
(567, 'public/paybox/fXLBrnbuPzmZDgj0EgtBxXhNWbcqT5tOfYEnFlT1.pdf', 'financeiras', '2021-09-13 09:26:43', '2021-09-13 09:26:43'),
(568, 'public/paybox/JGeZQ68ZRPTc1UlAx4KIqyJSW6q6FjfMj9GYKIvP.pdf', 'multicarteiras', '2021-09-13 09:26:56', '2021-09-13 09:26:56'),
(569, 'public/paybox/SdFpnYgfOaDclbnQm2fNRLR4ZGc3Gff9CMzEKiSb.pdf', 'riachuelo - bronze', '2021-09-13 09:27:06', '2021-09-13 09:27:06'),
(570, 'public/paybox/EknEH9EEFVxnn61n5jvYI14ISHFwDIo44Q9fRjmH.pdf', 'riachuelo - esmeralda', '2021-09-13 09:27:16', '2021-09-13 09:27:16'),
(571, 'public/paybox/8HQ001RrVe8yAxTHLB2zBdKZR2VnVQQukIvjQNaN.pdf', 'riachuelo - ouro', '2021-09-13 09:27:25', '2021-09-13 09:27:25'),
(572, 'public/paybox/Q2BrHOQI1NkprzTXOFeaQFN3IQ0liqBWEAV39Qh2.pdf', 'riachuelo - prata', '2021-09-13 09:27:34', '2021-09-13 09:27:34'),
(573, 'public/paybox/aVcRZKhpMmLEzj33gvt0vVTXuydHh9O36c01PCV8.pdf', 'avon', '2021-09-14 08:36:53', '2021-09-14 08:36:53'),
(574, 'public/paybox/krds6WwUtl0rylpRoZP8CmV0NS7XUUtJJWyFmJlV.pdf', 'riachuelo - bronze', '2021-09-14 08:37:03', '2021-09-14 08:37:03'),
(575, 'public/paybox/h4NVsYjaMdkuiGKh0gvNGCzBZNljhn2lqNRPaZVS.pdf', 'riachuelo - esmeralda', '2021-09-14 08:37:14', '2021-09-14 08:37:14'),
(576, 'public/paybox/R7ZDWCxfsytxMZXgDjCxtuYAOW3bhSKnQMCAMBLi.pdf', 'financeiras', '2021-09-14 08:37:23', '2021-09-14 08:37:23'),
(577, 'public/paybox/1HcRm9Q7Ys15spkcMLynhXS49bwQGSizYiin9If0.pdf', 'multicarteiras', '2021-09-14 08:37:31', '2021-09-14 08:37:31'),
(578, 'public/paybox/3jjQTJOSJkChL8iZO7gHRZ8MZUE6Sh6CtvyIDQ0H.pdf', 'riachuelo - ouro', '2021-09-14 08:37:40', '2021-09-14 08:37:40'),
(579, 'public/paybox/wG9DDoUFSyKzME7mQhLyHPlVIop3zSQzeHCIimy5.pdf', 'riachuelo - prata', '2021-09-14 08:37:46', '2021-09-14 08:37:46'),
(580, 'public/paybox/AHH6oKEPh3S0cTInWGlkBfaaxGx4LbJvqix6c40G.pdf', 'avon', '2021-09-15 09:14:50', '2021-09-15 09:14:50'),
(581, 'public/paybox/JRseVYu664rjBUuBdlsgLgW1Tu9UTzNtFkyWu2di.pdf', 'financeiras', '2021-09-15 09:15:28', '2021-09-15 09:15:28'),
(582, 'public/paybox/W9GbqPdoLu2nZezQzHPiG4qgBZpr95VJV1hsmg04.pdf', 'multicarteiras', '2021-09-15 09:16:11', '2021-09-15 09:16:11'),
(583, 'public/paybox/jGPp9xAIT24L6uelAqefeiUBxG784GxEWOc1GPc8.pdf', 'riachuelo - bronze', '2021-09-15 09:17:36', '2021-09-15 09:17:36'),
(584, 'public/paybox/PRsL2AyvqX0WudhHfN5rf8R5DzvFrCFWuybjLEkS.pdf', 'riachuelo - prata', '2021-09-15 09:18:11', '2021-09-15 09:18:11'),
(585, 'public/paybox/u3RuP4kz1CLwqYhuRwiaT2E3nCZ0HyHT7DIXzatv.pdf', 'riachuelo - ouro', '2021-09-15 09:18:41', '2021-09-15 09:18:41'),
(586, 'public/paybox/a529JplAyqAsLNEqJRXMrMEApqaHwSo6otT4WnmA.pdf', 'riachuelo - esmeralda', '2021-09-15 09:19:15', '2021-09-15 09:19:15'),
(587, 'public/paybox/FQYqmBD15wu59nVxRW4frkDTr8iHkYL1NfF8x6xU.pdf', 'avon', '2021-09-16 08:24:22', '2021-09-16 08:24:22'),
(588, 'public/paybox/b6fv6yfayyv1DnQ62diFqMsoFDBmF4r9TJBUGV1j.pdf', 'financeiras', '2021-09-16 08:24:54', '2021-09-16 08:24:54'),
(589, 'public/paybox/V5KWJeMxVuVLKZ1U9oxtZksL9t35Wgyo6G37Xj5V.pdf', 'multicarteiras', '2021-09-16 08:25:47', '2021-09-16 08:25:47'),
(590, 'public/paybox/ZcKw2IOGMNHceRNmA9pQSZhQu8S7YdJSWCaAgVkx.pdf', 'riachuelo - bronze', '2021-09-16 08:27:25', '2021-09-16 08:27:25'),
(591, 'public/paybox/u0eWn1PC0fjX8I4riotafye17MBYzeFh8sgF2ba4.pdf', 'riachuelo - prata', '2021-09-16 08:27:55', '2021-09-16 08:27:55'),
(592, 'public/paybox/XSquGCKcvIFGd4VvhQ5Cczj36qOQb4fKco7DwiYd.pdf', 'riachuelo - ouro', '2021-09-16 08:28:45', '2021-09-16 08:28:45'),
(593, 'public/paybox/q3pRfTo8ZsavjeEr8jKALCRkA6uxRbNoRIA4NwBI.pdf', 'riachuelo - esmeralda', '2021-09-16 08:29:41', '2021-09-16 08:29:41'),
(594, 'public/paybox/onqc3uSHyyrQRVXjrTxsk588AKNofmd6R7nr8Rip.pdf', 'avon', '2021-09-17 08:52:29', '2021-09-17 08:52:29'),
(595, 'public/paybox/CEIVXYhLXz7kSxEperZTEDO2r43IsAOiSkjuhiOt.pdf', 'financeiras', '2021-09-17 08:53:13', '2021-09-17 08:53:13'),
(596, 'public/paybox/Pp6Hd3E3CAL2BYk6Gw7XdIzlXtsaT93V1Yh6zB5b.pdf', 'multicarteiras', '2021-09-17 08:53:55', '2021-09-17 08:53:55'),
(597, 'public/paybox/gFj5lmy4FFUDS5ujIRihADpuiYj2GESYkpbnnk2k.pdf', 'riachuelo - bronze', '2021-09-17 08:54:39', '2021-09-17 08:54:39'),
(598, 'public/paybox/DvfDuvE1QSm57OTN63xJDDr0q7zvcgy6LGjMzTX3.pdf', 'riachuelo - prata', '2021-09-17 08:55:11', '2021-09-17 08:55:11'),
(599, 'public/paybox/eBTsc1dHp4QlvGhsDEYoiw91FXngEQMqp2IHYC8K.pdf', 'riachuelo - ouro', '2021-09-17 08:55:40', '2021-09-17 08:55:40'),
(600, 'public/paybox/Z4I9xv57GcPqOUipH99wdshwomISau06K2Qwezvf.pdf', 'riachuelo - esmeralda', '2021-09-17 08:56:41', '2021-09-17 08:56:41'),
(601, 'public/paybox/DQqlFkEBcVSZAZ76SW2ni34gt5bZFFyMj448Neo9.pdf', 'avon', '2021-09-20 08:15:50', '2021-09-20 08:15:50'),
(602, 'public/paybox/2CZBEsB3G5qb550OwzIGGzi8LlibfsPYM4wU9qSO.pdf', 'financeiras', '2021-09-20 08:16:29', '2021-09-20 08:16:29'),
(603, 'public/paybox/rUV0t0k6puhZgShqnDU7tgsbmy6nm0uC5Z7OhlPl.pdf', 'multicarteiras', '2021-09-20 08:17:13', '2021-09-20 08:17:13'),
(604, 'public/paybox/ui7wNYQfgFEDzle9U9ErglTHV9IJCqFe8ukZ2uIL.pdf', 'riachuelo - bronze', '2021-09-20 08:17:52', '2021-09-20 08:17:52'),
(605, 'public/paybox/9z1h818GSnnELKShgCtnlDW7dQSYVBqGwj4Ads0j.pdf', 'riachuelo - prata', '2021-09-20 08:18:22', '2021-09-20 08:18:22'),
(606, 'public/paybox/6SptFmNPtZQHLvJYtMhl3zGe4R9KazeaqYYFTga6.pdf', 'riachuelo - ouro', '2021-09-20 08:18:49', '2021-09-20 08:18:49'),
(607, 'public/paybox/alOTMoYnlNPpI8OTLwoRzcDSeOOE2fQs3w40BxMr.pdf', 'riachuelo - esmeralda', '2021-09-20 08:20:07', '2021-09-20 08:20:07'),
(608, 'public/paybox/4IsSl6K4Qch67f4exg3mqktUyu7YsFGNxUk6C3FS.pdf', 'avon', '2021-09-21 08:12:46', '2021-09-21 08:12:46'),
(609, 'public/paybox/iXCWYqZ795fpNfcoEf9peMkuFQC9EA8dH8w9tmju.pdf', 'financeiras', '2021-09-21 08:13:16', '2021-09-21 08:13:16'),
(610, 'public/paybox/jaZvpTUg1Ub0WenJymf265pFmCTQjNzy8JJlxYI3.pdf', 'multicarteiras', '2021-09-21 08:14:04', '2021-09-21 08:14:04'),
(611, 'public/paybox/ULMrzljr8y1xLtJkJMXCizf5ZXLNgb82xNPUcTcf.pdf', 'riachuelo - bronze', '2021-09-21 08:14:44', '2021-09-21 08:14:44'),
(612, 'public/paybox/USnjmcyrB14tnfgpNt7p69DLYk9XxDjFekypbnJa.pdf', 'riachuelo - ouro', '2021-09-21 08:16:11', '2021-09-21 08:16:11'),
(613, 'public/paybox/tlRafssmH6mSPsX5pDEprXRcFR0EZkmrs8I3EEvU.pdf', 'riachuelo - esmeralda', '2021-09-21 08:16:44', '2021-09-21 08:16:44'),
(614, 'public/paybox/FtlUhbA2iYAOrF6ZqORH7mbWQ2esckKSuiCCmeO2.pdf', 'riachuelo - prata', '2021-09-22 00:25:21', '2021-09-22 00:25:21'),
(615, 'public/paybox/EFrARdZdt4HfiUbHTDYmP3APY55jXCfGDcxTysrf.pdf', 'avon', '2021-09-22 08:07:48', '2021-09-22 08:07:48'),
(616, 'public/paybox/OeegGSapWkbPp3g4mk4xRkl1Rv5Oo1FI372JNVNI.pdf', 'financeiras', '2021-09-22 08:14:04', '2021-09-22 08:14:04'),
(617, 'public/paybox/OfsmojbABGB6WVDDU77pMb8BSh5yDR4z0heGvkLA.pdf', 'multicarteiras', '2021-09-22 08:16:26', '2021-09-22 08:16:26'),
(618, 'public/paybox/NcG0prczvr9Ot1kLUt7TWEAki8SBYiZDRzHOemRD.pdf', 'riachuelo - bronze', '2021-09-22 08:16:56', '2021-09-22 08:16:56'),
(619, 'public/paybox/foGDAt2TzWHq4DS83LM0mWNi95C6TXeKrMpxhw9c.pdf', 'riachuelo - prata', '2021-09-22 08:17:33', '2021-09-22 08:17:33'),
(620, 'public/paybox/DHzaeNbhPhdYZ8EredsGHgT9Af1AFGuU0SimyXut.pdf', 'riachuelo - ouro', '2021-09-22 08:18:04', '2021-09-22 08:18:04'),
(621, 'public/paybox/wAYAgMzMzD57gQU1lfxuRl6BT11yRC0x6X2kT59c.pdf', 'riachuelo - esmeralda', '2021-09-22 08:19:06', '2021-09-22 08:19:06'),
(622, 'public/paybox/FjAnQdRuZg4ZdlxRiS4063fAO9GLIp9qk5cSO4Zn.pdf', 'financeiras', '2021-09-23 06:59:26', '2021-09-23 06:59:26'),
(623, 'public/paybox/QJuR8ore7SiCY2UnLBRWgBe7Rr2B05DLaaqpjGZL.pdf', 'multicarteiras', '2021-09-23 07:00:27', '2021-09-23 07:00:27'),
(624, 'public/paybox/aBnBIJAVmmI5kyakdvQVTb13w2fgxcRcLlp223Ca.pdf', 'riachuelo - bronze', '2021-09-23 07:01:34', '2021-09-23 07:01:34'),
(625, 'public/paybox/vUrM5HCCnYjSF1TKro6vxzGg1nwJz7NIXIE38yfF.pdf', 'riachuelo - prata', '2021-09-23 07:02:07', '2021-09-23 07:02:07'),
(626, 'public/paybox/agF0QTGJOrtKtS6CzcW5fxcCj36WC9P70twZDmFz.pdf', 'riachuelo - ouro', '2021-09-23 07:03:47', '2021-09-23 07:03:47'),
(627, 'public/paybox/d2F2pJNRlnuwgpjSpm5rvoMt9EMRVxIK5JUmsjRf.pdf', 'riachuelo - esmeralda', '2021-09-23 07:04:43', '2021-09-23 07:04:43'),
(628, 'public/paybox/6H0pbm8zEtgbLM7K1OdgamSRqUspiWsimz4tRF7w.pdf', 'avon', '2021-09-23 07:08:07', '2021-09-23 07:08:07'),
(629, 'public/paybox/EG0u49Mx5rRs6ICguOASRawfUUoz3bKq60QuVe8P.pdf', 'avon', '2021-09-24 07:48:27', '2021-09-24 07:48:27'),
(630, 'public/paybox/hpQs4IlAH1SONw9dpTk3zZVOWS3On932W9gdF2VB.pdf', 'financeiras', '2021-09-24 07:49:02', '2021-09-24 07:49:02'),
(631, 'public/paybox/6a28txHZVHAKi4rKxDgcBKtxo7fwtvGXxnHAfPzo.pdf', 'multicarteiras', '2021-09-24 07:49:50', '2021-09-24 07:49:50'),
(632, 'public/paybox/plhKIouFY1PdStWfwBdnLRw8HtKN4qqPtsVxZ9BH.pdf', 'riachuelo - bronze', '2021-09-24 07:50:47', '2021-09-24 07:50:47'),
(633, 'public/paybox/7G2BEL0SYi1v7aAtEtUbLp37h9bUrxuNgXFqEE04.pdf', 'riachuelo - prata', '2021-09-24 07:52:10', '2021-09-24 07:52:10'),
(634, 'public/paybox/iV9JRIwA1YooOiJpntTIEnFTVQQJ30xtgZOXcwbv.pdf', 'riachuelo - ouro', '2021-09-24 07:52:42', '2021-09-24 07:52:42'),
(635, 'public/paybox/5IbtzQAlndTcY2vKsNqWrTG7rs6m3gEMoSkygRfX.pdf', 'riachuelo - esmeralda', '2021-09-24 07:53:16', '2021-09-24 07:53:16');

-- --------------------------------------------------------

--
-- Estrutura da tabela `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'cadastrar usuario', 'web', '2021-09-22 13:45:10', '2021-09-22 13:45:10'),
(2, 'subir arquivos', 'web', '2021-09-22 13:45:10', '2021-09-22 13:45:10'),
(3, 'listar usuarios', 'web', '2021-09-22 13:45:10', '2021-09-22 13:45:10'),
(4, 'listar comite', 'web', '2021-09-22 13:45:10', '2021-09-22 13:45:10'),
(5, 'cadastrar comite', 'web', '2021-09-22 13:45:10', '2021-09-22 13:45:10'),
(6, 'read', 'web', '2021-09-22 13:45:10', '2021-09-22 13:45:10'),
(7, 'write', 'web', '2021-09-22 13:45:10', '2021-09-22 13:45:10'),
(8, 'edit', 'web', '2021-09-22 13:45:10', '2021-09-22 13:45:10'),
(9, 'delete', 'web', '2021-09-22 13:45:11', '2021-09-22 13:45:11');

-- --------------------------------------------------------

--
-- Estrutura da tabela `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `situation` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sugestion` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `author` bigint(20) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Administrador', 'web', '2021-09-22 13:45:11', '2021-09-22 13:45:11'),
(2, 'Usuario', 'web', '2021-09-22 13:45:11', '2021-09-22 13:45:11');

-- --------------------------------------------------------

--
-- Estrutura da tabela `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(4, 2),
(5, 1),
(5, 2),
(6, 1),
(7, 1),
(7, 2),
(8, 1),
(9, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `slides`
--

CREATE TABLE `slides` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dtini` datetime NOT NULL,
  `dtfim` datetime NOT NULL,
  `cover` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `slides`
--

INSERT INTO `slides` (`id`, `title`, `dtini`, `dtfim`, `cover`, `created_at`, `updated_at`, `message`, `author`) VALUES
(54, 'Campanha do agasalho', '2021-05-24 00:00:00', '2021-06-10 00:00:00', 'public/slides/UIYGUW17DH0vWRm09Wc5glaYVQwF1clK5s1DDho6.jpg', '2021-05-24 06:19:02', '2021-05-24 06:19:02', 'ok', 5),
(56, 'aniversarios junho', '2021-06-01 00:00:00', '2021-06-30 00:00:00', 'public/slides/HtGgvwSmzeYzFGx2wIYTNfRHkHCm7FVX1yOvmCuh.jpg', '2021-05-31 01:46:12', '2021-05-31 01:46:12', 'ok', 5),
(64, 'campanha 1', '2021-06-01 00:00:00', '2021-06-30 00:00:00', 'public/slides/R6ndRordwSankSb8yCTZRo1uwno0tYkzXCA2Ai5D.jpg', '2021-06-01 02:30:59', '2021-06-01 02:30:59', 'ok', 5),
(65, 'campanha 2', '2021-06-01 00:00:00', '2021-06-30 00:00:00', 'public/slides/729Chk79uiaqPJ4dvGPPYl7P1sZvdF0kYqKj0jtz.jpg', '2021-06-01 02:31:30', '2021-06-01 02:31:30', 'ok', 5),
(68, 'campanha 5', '2021-06-01 00:00:00', '2021-06-30 00:00:00', 'public/slides/rqxui0se9vNgT6MnfeuVqUI25ZcNOcBkqZ8anRxA.jpg', '2021-06-01 03:22:01', '2021-06-01 03:22:01', 'ok', 5),
(69, 'campanha 4', '2021-06-01 00:00:00', '2021-06-30 00:00:00', 'public/slides/JCxw2BjNdBNJ01OUPidj4tjoJrk6zUyHe2VqYbIS.jpg', '2021-06-01 03:55:06', '2021-06-01 03:55:06', 'ok', 5),
(70, 'campanha 5', '2021-06-01 00:00:00', '2021-06-30 00:00:00', 'public/slides/ufn3hWe5UCSZOFWTBBQoMaAEFduhvWJ5ShgpI8Jv.jpg', '2021-06-01 03:55:29', '2021-06-01 03:55:29', 'ok', 5),
(71, 'CAMPANHA', '2021-06-01 00:00:00', '2021-06-30 00:00:00', 'public/slides/QNx0O6LB3ME3muBPuu4sSsxiSPaTAZpOuFdbMQFW.jpg', '2021-06-01 06:55:21', '2021-06-01 06:55:21', 'OK', 5),
(72, 'corrida 04062021', '2021-06-04 00:00:00', '2021-06-04 00:00:00', 'public/slides/I2uFvZgP9iYhejSSx7aV9UxGjkQHCcLtHiRCbOa9.png', '2021-06-04 05:57:41', '2021-06-04 05:57:41', 'corrida 04062021', 8),
(75, 'campanha JB', '2021-06-21 00:00:00', '2021-06-30 00:00:00', 'public/slides/a5jMbP9zEF0EoAwgGzhsGZZLEolFPu7o8t4d2gRd.jpg', '2021-06-21 03:58:27', '2021-06-21 03:58:27', 'jb', 5),
(76, 'Campanha Finamax', '2021-06-21 00:00:00', '2021-06-30 00:00:00', 'public/slides/VKBDFF52nenJLQeIInmnAreqK0flfBfNWCAfmutN.jpg', '2021-06-21 03:58:55', '2021-06-21 03:58:55', 'finamax', 5),
(77, 'campanha riachuelo', '2021-06-21 00:00:00', '2021-06-30 00:00:00', 'public/slides/vyQgVZReOp4NDUkMnjU2o9hVU9AwzLZfu9tqnLmg.jpg', '2021-06-21 03:59:19', '2021-06-21 03:59:19', 'riachuelo', 5),
(80, 'riachuelo', '2021-06-22 00:00:00', '2021-06-30 00:00:00', 'public/slides/GBQv5AYNGzjtrhGHfzodReIZEKccFs0dw6paSNaM.jpg', '2021-06-22 02:25:50', '2021-06-22 02:25:50', '2', 5),
(81, 'riachuelo', '2021-06-22 00:00:00', '2021-06-30 00:00:00', 'public/slides/1iGEFSGf72Rxyn242hnkbdgT4kuUO7FStmnP1rL5.jpg', '2021-06-22 02:26:14', '2021-06-22 02:26:14', '3', 5),
(82, 'arraia', '2021-06-22 00:00:00', '2021-06-25 00:00:00', 'public/slides/zkNVpnQMUjs6bQ65NSWNpoNtUba0zKckUexdAaSU.jpg', '2021-06-22 02:26:40', '2021-06-22 02:26:40', 'ok', 5),
(85, 'roupas', '2021-06-24 00:00:00', '2021-09-30 00:00:00', 'public/slides/pJcxTG4VsdQB3rKFaT0xHOYuov4S6ApFKKdoxbNv.jpg', '2021-06-24 06:55:36', '2021-08-12 05:57:13', 'ok', 5),
(86, 'roupas', '2021-06-24 00:00:00', '2021-09-30 00:00:00', 'public/slides/yMzvbhjk1VLF9GA1O88grSGoBoZpdEqrNAgFzYPx.png', '2021-06-24 06:56:01', '2021-08-12 05:57:31', 'ok', 5),
(87, 'premiados', '2021-06-29 00:00:00', '2021-06-30 00:00:00', 'public/slides/LMho3OiyHVzRnvixbizixwd2z3t1Ggt0XV6yDIqa.jpg', '2021-06-29 06:59:20', '2021-06-29 06:59:20', 'premiados', 5),
(89, 'aniversários julho', '2021-07-01 00:00:00', '2021-07-31 00:00:00', 'public/slides/RpM4JWYk0C5DqP3YD5fpb2ZJNQDe9O6Oe0h8qG1H.png', '2021-07-01 08:28:49', '2021-07-01 08:28:49', 'ok', 5),
(90, 'Holerite', '2021-07-05 00:00:00', '2021-07-10 00:00:00', 'public/slides/o3aUf9n3UnQ7zvF0pBcjOGOJCwr7R86QU6bqxIhw.jpg', '2021-07-05 04:04:08', '2021-07-05 04:04:08', 'ok', 5),
(91, 'holerite', '2021-07-07 00:00:00', '2021-07-31 00:00:00', 'public/slides/YuhiUJSSgopg8Tv2zq9TwVNNTeJtA9VSFNu7x7jy.jpg', '2021-07-07 04:26:15', '2021-07-22 03:37:33', 'ok', 5),
(92, 'tabulações', '2021-07-14 00:00:00', '2021-08-14 00:00:00', 'public/slides/caLCDyVNw5hiwi45yULsvG6hZ7diHBUeup97EKXq.jpg', '2021-07-14 04:23:01', '2021-07-14 04:23:01', 'ok', 5),
(97, 'ponto eletronico', '2021-07-27 00:00:00', '2021-08-03 00:00:00', 'public/slides/FQ0ZIncOVdNUMv8M6YdpQEkvcLyRneqTtrfbU24R.jpg', '2021-07-27 03:34:30', '2021-07-27 03:34:30', 'ok', 5),
(98, 'HEADSET', '2021-07-27 00:00:00', '2021-12-31 00:00:00', 'public/slides/8Fo9twvsEWwGq1lzCRrlWOzFVVFTrAeYlJg1T5nh.png', '2021-07-27 11:37:15', '2021-07-27 11:37:15', 'HEAD', 26),
(99, 'aniversarios', '2021-08-02 00:00:00', '2021-08-31 00:00:00', 'public/slides/rvOyCljKINFI7qp5RNzuaWxS6NIBlNbhprStYTsU.jpg', '2021-08-02 02:54:39', '2021-08-02 02:54:39', 'ok', 5),
(100, 'dia dos pais', '2021-08-02 00:00:00', '2021-08-08 00:00:00', 'public/slides/J5BHXuYgJOBoUmJqYP36lqlgQaBJTEmuqK58mopg.png', '2021-08-02 07:34:03', '2021-08-02 07:34:03', 'ok', 5),
(101, 'Programa de estagio', '2021-08-09 00:00:00', '2021-08-25 00:00:00', 'public/slides/jKH40eeB8Qzq7I06YiTP4bnaQNj8p5nzaW3b7J3w.jpg', '2021-08-09 06:19:36', '2021-08-09 06:19:36', 'ok', 5),
(102, 'Rotatividade', '2021-08-09 00:00:00', '2021-08-30 00:00:00', 'public/slides/pjsSi4PIHzKVMJWCAjdVsPWkVQuVca8B2P9M2tjy.png', '2021-08-09 07:29:38', '2021-08-09 07:29:38', 'ok', 5),
(103, 'Cozinha', '2021-08-09 00:00:00', '2021-09-30 00:00:00', 'public/slides/qrfeAYrkL5m0VECXc5NbIepHwYKP6tZElz29bFh0.png', '2021-08-09 08:59:18', '2021-08-09 08:59:18', 'ok', 5),
(104, 'indicações', '2021-08-11 00:00:00', '2021-09-10 00:00:00', 'public/slides/TbzSkG07wzTqzbbYNYUSvFdby3r1t3GDsqf3Ul4H.png', '2021-08-11 03:20:02', '2021-08-11 03:20:02', 'ok', 5),
(105, 'covid', '2021-08-24 00:00:00', '2021-08-31 00:00:00', 'public/slides/7dLoiscx5J6eoEzNTsGO3rA1bEMk45EgBVrpuZtA.png', '2021-08-23 08:16:33', '2021-08-23 08:16:33', 'ok', 5),
(106, 'DIA DO BREGA', '2021-08-24 00:00:00', '2021-08-27 00:00:00', 'public/slides/5PNO6YlwPXBRsXcGEMNWm8oEpJhRTtZByhlvGc3O.png', '2021-08-24 11:29:35', '2021-08-24 11:29:35', 'COMES E BEBES', 26),
(107, 'aniversarios', '2021-09-02 00:00:00', '2021-09-30 00:00:00', 'public/slides/9DKkJOrloPhPUYl5ay9Pfcy94FCNBmAPdTYtMXIw.png', '2021-09-02 02:30:07', '2021-09-02 02:30:07', 'ok', 5),
(110, 'vacinação', '2021-09-08 00:00:00', '2021-09-30 00:00:00', 'public/slides/NG91bv5a4HjTsohmgJXcZ22oKVgLwqTjvvn6FSVP.png', '2021-09-08 07:28:09', '2021-09-08 07:28:09', 'ok', 5),
(113, 'setembro amarelo', '2021-09-13 00:00:00', '2021-09-30 00:00:00', 'public/slides/z0jW39emU5ZKFFrMSnVyP7NRXWhdUNLXAdmFiXuE.png', '2021-09-13 02:04:34', '2021-09-13 02:04:34', 'ok', 5),
(114, 'atitude', '2021-09-21 00:00:00', '2021-09-30 00:00:00', 'public/slides/CSih0hkgByiq5ShgOdc72hDNAihNaNGX212R4uud.jpg', '2021-09-20 08:53:36', '2021-09-20 08:53:36', 'ok', 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `cover` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_login_at` datetime DEFAULT NULL,
  `last_login_ip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `name`, `lastname`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `cover`, `last_login_at`, `last_login_ip`) VALUES
(1, 'ADMINISTRADOR', 'ADMIN', 'admin@admin.com.br', '2021-09-22 13:45:11', '$2y$10$53N8/jWN1UeqicmUrWUIueQtNuof1xuMJj/7PFb.xT8sAqGW/XoAO', 'f2WEHMSNda', '2021-09-22 13:45:11', '2021-10-11 13:47:04', '', '2021-10-11 10:47:04', '127.0.0.1');

-- --------------------------------------------------------

--
-- Estrutura da tabela `workershighlights`
--

CREATE TABLE `workershighlights` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dtini` datetime NOT NULL,
  `dtfim` datetime NOT NULL,
  `cover` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comments` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `workershighlights`
--

INSERT INTO `workershighlights` (`id`, `name`, `dtini`, `dtfim`, `cover`, `comments`, `meta`, `created_at`, `updated_at`) VALUES
(5, 'KARINA BARRETO DA SILVA', '2021-08-26 00:00:00', '2021-08-31 00:00:00', 'public/workers/8v06qEENRlZheF1GCWpJBjDnTuwEpowcYSCJTYKO.jpg', '<p>Realizou 121%!!! </p><p>\r\nParabéns por seu empenho e dedicação!!!</p><p><b style=\"background-color: rgb(156, 0, 255);\"><font color=\"#000000\" style=\"\">3º mês</font><font color=\"#000000\" style=\"\"> consecutivo entre os destaques!!!</font></b></p><p>Continue assim!!!</p>', 134, '2021-06-02 03:15:35', '2021-08-26 08:15:29'),
(6, 'RAISSA NAZARÉ DE QUEIROZ OLIVEIRA', '2021-07-05 00:00:00', '2021-07-31 00:00:00', 'public/workers/ookwAJZcZg5faRv7ZPnoYHO9xa4k0pvtrRUuoTyP.jpg', '<p>Realizou 137%!!! \r\nParabéns por seu empenho e dedicação...</p><p>E por se manter pelo segundo mês consecutivo entre os destaques!!</p>', 137, '2021-06-02 03:16:44', '2021-07-05 03:09:33'),
(12, 'JÓCI APARECIDA DOS SANTOS', '2021-06-14 00:00:00', '2021-06-30 00:00:00', 'public/workers/7gd5oipDXH3uLR5EbCvKUas25EQdqiOpK1awCGxy.jpg', 'Realizou 120%!!! Parabéns pelo seu empenho e dedicação e por se manter entre os destaques!!', 0, '2021-06-14 02:30:00', '2021-06-14 02:30:46'),
(13, 'JOYCI FERNANDA RODRIGUES ALVES', '2021-07-05 00:00:00', '2021-07-31 00:00:00', 'public/workers/FrNIjBWRxhllQenJVCOEs59ax9XzDKVuu2UGuHun.jpg', '<p>Realizou 105%!!! Parabéns por seu empenho e dedicação!!!</p><p>E por se manter pelo terceiro mês consecutivo entre os destaques!!</p>', 105, '2021-06-14 02:41:46', '2021-07-05 03:09:42'),
(14, 'FERNANDA GABRIELA TOLEDO OLIVEIRA', '2021-06-14 00:00:00', '2021-06-30 00:00:00', 'public/workers/qEaWbDNQyDoEC9A6rw5gkdwAMNaPAiT0A963w0Qf.jpg', 'Realizou 101%!!! Parabéns por seu empenho e dedicação...', 0, '2021-06-14 02:42:51', '2021-06-14 02:42:51'),
(15, 'LENARA DA SILVA DIAS', '2021-07-05 00:00:00', '2021-07-31 00:00:00', 'public/workers/LQHIcZD8pbNpJ11u7Fo9jDXLD0zO3st6uJebM8Re.jpg', '<p>Realizou 119%!!! Parabéns por seu empenho e dedicação!!!</p><p>E por se manter pelo segundo mês consecutivo entre os destaques!!!</p>', 119, '2021-06-14 02:43:50', '2021-07-05 02:52:39'),
(16, 'TAYSSA GEMI', '2021-06-14 00:00:00', '2021-06-30 00:00:00', 'public/workers/04MxGkF2u2OoKJ1JUv4CVKahNI1PZWPnpGTM9uhc.jpg', 'Realizou 101%!!! Parabéns por seu empenho e dedicação...', 0, '2021-06-14 02:46:03', '2021-06-14 02:46:03'),
(17, 'DANIELE GOMES SANTOS', '2021-08-26 00:00:00', '2021-08-31 00:00:00', 'public/workers/hpbfIuT6zYbBSA9qkLtrkqP9PQ3B8trffIVROYjP.jpg', '<p>Realizou 125%!!! </p><p>Parabéns por seu empenho e dedicação!!!</p><p><span style=\"background-color: rgb(255, 0, 255);\"><b><font color=\"#000000\">2º mês consecutivo nos destaques!!!</font></b></span></p><p>Continue assim!!!</p>', 135, '2021-07-05 02:59:56', '2021-08-26 08:12:59'),
(18, 'EMILLY RAQUEL B DA MOTA', '2021-07-05 00:00:00', '2021-07-31 00:00:00', 'public/workers/UuMnIxreeKGUaMhE3cH9ioB71RLNfHFksvyjkhD4.jpg', '<p>Realizou 108%!!! Parabéns por seu empenho e dedicação!!!</p>', 108, '2021-07-05 03:01:26', '2021-07-05 03:01:26'),
(19, 'BARBARA KETLYN DE OLIVEIRA', '2021-07-05 00:00:00', '2021-07-31 00:00:00', 'public/workers/1nD87zkGNjor7SCWTKxkh4RxX4fJyL1elaj32RCW.jpg', 'Realizou 105%!!! Parabéns por seu empenho e dedicação!!!', 105, '2021-07-05 03:09:18', '2021-07-05 03:09:18'),
(20, 'Aline Cristina Gomes', '2021-08-26 00:00:00', '2021-08-31 00:00:00', 'public/workers/nRLqFgS6UJLHe11g8sucISNV5nvJqnYcMyHMmkf7.jpg', '<p>Realizou 137%!!! </p><p>Parabéns por seu empenho e dedicação!!!&nbsp;</p><p><font color=\"#000000\" style=\"background-color: rgb(255, 0, 255);\"><b>2º mês consecutivo nos destaques!!!</b></font></p><p> Continue assim!!</p>', 137, '2021-07-05 03:11:37', '2021-08-26 08:11:15'),
(21, 'Tamires Pessati da Silva', '2021-07-05 00:00:00', '2021-07-31 00:00:00', 'public/workers/xF7LorTEXYlWCApTV66OnQwAkMw1eyraLEoEfjm6.jpg', '<p><span style=\"color: rgb(90, 90, 90); font-family: system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, &quot;Liberation Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; text-align: center;\">Realizou 120%!!! </span></p><p><span style=\"color: rgb(90, 90, 90); font-family: system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, &quot;Liberation Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; text-align: center;\">Parabéns por seu empenho e dedicação!!!</span></p><p><span style=\"color: rgb(90, 90, 90); font-family: system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, &quot;Liberation Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; text-align: center;\">2º mês consecutivo nos destaques!!!</span></p><p><span style=\"color: rgb(90, 90, 90); font-family: system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, &quot;Liberation Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; text-align: center;\">Continue assim!!!!<br></span><br></p>', 120, '2021-07-05 03:12:48', '2021-08-26 07:58:42'),
(22, 'DENISE AP BATISTA TONET', '2021-08-26 00:00:00', '2021-08-31 00:00:00', 'public/workers/jzPbz2Wbm11sSXbY7oN3S229vDWNOC06kaZvvwQB.png', '<p><span style=\"color: rgb(90, 90, 90); font-family: system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, &quot;Liberation Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; text-align: center;\">Realizou 109%!!! </span></p><p><span style=\"color: rgb(90, 90, 90); font-family: system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, &quot;Liberation Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; text-align: center;\">Parabéns por seu empenho e dedicação!!!</span></p><p><span style=\"font-family: system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, &quot;Liberation Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; text-align: center; background-color: rgb(255, 0, 255);\"><b style=\"\"><font color=\"#000000\" style=\"\">2º mês consecutivo nos destaques!!!</font></b></span></p><p><span style=\"color: rgb(90, 90, 90); font-family: system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, &quot;Liberation Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; text-align: center;\">Continue assim!!!<br></span><br></p>', 134, '2021-07-05 03:13:44', '2021-08-30 02:28:06'),
(23, 'VIVIANE ARAUJO DE LIMA', '2021-07-05 00:00:00', '2021-07-31 00:00:00', 'public/workers/GYTBfhFfRy6ASnx3QOESaFM6geEmJmXPaGCqpnGG.png', '<p><span style=\"color: rgb(90, 90, 90); font-family: system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, &quot;Liberation Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; text-align: center;\">Realizou 111%!!! Parabéns por seu empenho e dedicação!!!</span><br></p>', 111, '2021-07-05 03:14:47', '2021-07-05 03:14:47'),
(24, 'DRIELLE CAROLINE MEIRELES', '2021-07-05 00:00:00', '2021-07-31 00:00:00', 'public/workers/YbcoxtLD8MXJXCE1OxKNIUB7BGgnSUlSFl0aZjPx.jpg', '<p><span style=\"color: rgb(90, 90, 90); font-family: system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, &quot;Liberation Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; text-align: center;\">Realizou 108%!!! Parabéns por seu empenho e dedicação!!!</span><br></p>', 108, '2021-07-05 03:15:26', '2021-07-05 03:15:26'),
(25, 'GIOVANNA FERNANDA DE GODOY', '2021-07-05 00:00:00', '2021-07-31 00:00:00', 'public/workers/bzcmmGHpCbUFnFZiBEoKTEKJv5imVCpmFxIKEC21.jpg', '<p><span style=\"color: rgb(90, 90, 90); font-family: system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, &quot;Liberation Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; text-align: center;\">Realizou 107%!!! Parabéns por seu empenho e dedicação!!!</span><br></p>', 107, '2021-07-05 03:16:02', '2021-07-05 03:16:02'),
(26, 'LUANA ROCHA DA S CARRILHO', '2021-08-30 00:00:00', '2021-08-31 00:00:00', 'public/workers/GVaGVfPCs1wuJnYXOi06IK9JsFhLLxcRbUNx8tvE.jpg', '<p><span style=\"color: rgb(90, 90, 90); font-family: system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, &quot;Liberation Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; text-align: center;\">Realizou 140%!!! </span></p><p><span style=\"color: rgb(90, 90, 90); font-family: system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, &quot;Liberation Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; text-align: center;\">Parabéns por seu empenho e dedicação!!!</span></p><p style=\"font-style: italic; font-size: 14px; padding-top: 15px; line-height: 26px; font-family: &quot;Open Sans&quot;, sans-serif; text-align: center;\"><font color=\"#000000\" style=\"\"><span style=\"font-weight: bolder; background-color: rgb(255, 0, 255);\">2º mês consecutivo nos destaques!!!</span></font></p><p style=\"font-style: italic; font-size: 14px; padding-top: 15px; line-height: 26px; color: rgb(94, 94, 94); font-family: &quot;Open Sans&quot;, sans-serif; text-align: center;\">Continue assim!!</p>', 140, '2021-07-05 03:16:38', '2021-08-30 02:26:14'),
(27, 'Ana Paula Melo', '2021-08-26 00:00:00', '2021-08-31 00:00:00', 'public/workers/y4KuzLQPDp0Nvcm5Gi5eLRJraxLmzz7hLMJ50L2r.jpg', '<p>Realizou 132%!!!</p><p>Parabéns por seu empenho e dedicação!!!</p>', 132, '2021-08-26 07:47:24', '2021-08-26 07:47:24'),
(28, 'Nádia Moura de Abreu', '2021-08-26 00:00:00', '2021-08-31 00:00:00', 'public/workers/PWgWW8aLatdvAl0o8OIwp0TDkysXHIvC5bK2pkPb.jpg', '<p>Realizou 130%</p><p>Parabéns por seu empenho e dedicação!!!</p>', 130, '2021-08-26 07:48:51', '2021-08-26 07:48:51'),
(29, 'Vinicius Zampieri', '2021-08-26 00:00:00', '2021-08-31 00:00:00', 'public/workers/yhRQoy3vrZ3AooydUmxgbx7NczzoKfagihcmlT14.jpg', '<p>Realizou 126%!!!</p><p>Parabéns por seu empenho e dedicação!!!</p>', 126, '2021-08-26 07:50:36', '2021-08-26 07:50:36'),
(30, 'Bianca Caroline da Silva', '2021-08-26 00:00:00', '2021-08-31 00:00:00', 'public/workers/egRK1785M9pAwU7aqFVi3WrqVBTqe518vSaYawMs.png', '<p>Realizou 123%!!!</p><p>Parabéns por seu empenho e dedicação!!!</p>', 123, '2021-08-26 07:55:44', '2021-08-26 07:55:44'),
(31, 'Mikaely de Souza Santos', '2021-08-26 00:00:00', '2021-08-31 00:00:00', 'public/workers/UOWZJyXsBxGWof2RfrTmfvmUW75r8ue76rXTtarC.jpg', '<p>Realizou 120%!!!</p><p>Parabéns por seu empenho e dedicação!!!</p>', 120, '2021-08-26 07:57:38', '2021-08-26 07:57:38'),
(32, 'Emily Camily dos Santos Moraes', '2021-08-26 00:00:00', '2021-08-31 00:00:00', 'public/workers/0dtObM0GOCD68iZsVNwGysBZ5ZU0X1IhZ4WHy5Vi.png', '<p>Realizou 118%!!!</p><p>Parabéns por seu empenho e dedicação!!!</p>', 118, '2021-08-26 08:00:57', '2021-08-26 08:00:57'),
(33, 'Daniel Felipe Barros da Silva', '2021-08-26 00:00:00', '2021-08-31 00:00:00', 'public/workers/5TeZTS0BJO9eo69LmVQIdzh0BQJNsnkHlY7KO5xV.jpg', '<p>Realizou 112%!!!</p><p>Parabéns por seu empenho e dedicação!!!</p>', 112, '2021-08-26 08:01:44', '2021-08-26 08:01:44'),
(34, 'Stephani Cristal de Paula', '2021-08-26 00:00:00', '2021-08-31 00:00:00', 'public/workers/XSv2vTKeIcjntsqc2YbuMYWzGNvcTdEVZ3bc86Pd.jpg', '<p>Realizou 108%!!!</p><p>Parabéns por seu empenho e dedicação!!!</p>', 108, '2021-08-26 08:03:57', '2021-08-26 08:03:57'),
(35, 'Stefany Silva Ribeiro', '2021-08-26 00:00:00', '2021-08-31 00:00:00', 'public/workers/W6IogRsjjwZ9TT8aRfaWMS9AQGs2Db2LKZJ31ZC1.jpg', '<p>Realizou 107%!!!</p><p>Parabéns por seu empenho e dedicação!!!</p>', 107, '2021-08-26 08:04:40', '2021-08-26 08:04:40'),
(36, 'Andreia de Paula', '2021-08-26 00:00:00', '2021-08-31 00:00:00', 'public/workers/0ygsob7afXVN3H3zPKDHNTUpTyHKNfEpcvaTKMF8.png', '<p>Realizou 105%!!!</p><p>Parabéns por seu empenho e dedicação!!!</p>', 105, '2021-08-26 08:05:15', '2021-08-26 08:05:15'),
(37, 'Gabriel Matheus Gomes Lopes', '0221-08-26 00:00:00', '2021-01-31 00:00:00', 'public/workers/HTze71khUaBRfnIvMQFXB9LR2wuXkJSgIbuZ1HUp.png', '<p>Realizou 104%!!!</p><p>Parabéns por seu empenho e dedicação!!!</p>', 104, '2021-08-26 08:06:00', '2021-08-26 08:06:00'),
(38, 'Rafael de Almeida', '2021-08-30 00:00:00', '2021-08-31 00:00:00', 'public/workers/HYQmT1TwYwZ6O6T9HISqXcgPwhanAoppXK6JsLUS.jpg', '<p style=\"font-style: italic; font-size: 14px; padding-top: 15px; line-height: 26px; color: rgb(94, 94, 94); font-family: &quot;Open Sans&quot;, sans-serif; text-align: center;\">Realizou 134%!!!</p><p style=\"font-style: italic; font-size: 14px; padding-top: 15px; line-height: 26px; color: rgb(94, 94, 94); font-family: &quot;Open Sans&quot;, sans-serif; text-align: center;\">Parabéns por seu empenho e dedicação!!!</p>', 133, '2021-08-30 02:27:33', '2021-08-30 02:28:17'),
(39, 'BARBARA KETLYN DE OLIVEIRA', '2021-09-09 00:00:00', '2021-09-30 00:00:00', 'public/workers/sqtL23qaDlmkkG0WYwPUWIcdByjBN5JVN628UxQD.jpg', '<p>Realizou 102,35%!!!</p><p>Parabéns por seu empenho e dedicação!!!</p>', 10235, '2021-09-09 00:45:08', '2021-09-09 00:45:08'),
(40, 'EDUARDA GABRIELLE VEIGA', '2021-09-09 00:00:00', '2021-09-30 00:00:00', 'public/workers/aIFE5TUGjxiNhha3ZMMm3wSYFMXpfjybCdlIn6j7.png', '<p>Realizou 101,99%!!!&nbsp; </p><p>Parabéns por seu empenho e dedicação!!!<br></p>', 10199, '2021-09-09 00:45:50', '2021-09-09 00:45:50'),
(41, 'LETÍCIA ARCANJO RIBEIRO', '2021-09-09 00:00:00', '2021-09-30 00:00:00', 'public/workers/5isCBX80hTG2CqrAexfjZXs075WsQRW5BU9brfrV.png', '<p>Realizou 101,53%!!!&nbsp;</p><p>Parabéns por seu empenho e dedicação!!!</p>', 10153, '2021-09-09 00:46:27', '2021-09-14 07:56:04'),
(42, 'JÓCI APARECIDA DOS SANTOS', '2021-09-09 00:00:00', '2021-09-30 00:00:00', 'public/workers/FRqWNzP1QevZcB08IpZ5CK93vMBSfn0xgXFUpGyf.png', '<p>Realizou 109,7%!!!</p><p>Parabéns pelo seu empenho e dedicação!!<br></p>', 10970, '2021-09-09 00:48:20', '2021-09-09 00:48:20'),
(43, 'LUANA ROCHA DA SILVA CARRILHO', '2021-09-09 00:00:00', '2021-09-30 00:00:00', 'public/workers/3kIrLgY2y7fhCbd3Hp08ZvTIEpPjOjWmtXcl6yoP.jpg', '<p>Realizou 104,74%!!!</p><p>Parabéns pelo seu empenho e dedicação!!</p>', 10474, '2021-09-09 00:48:50', '2021-09-09 00:48:50'),
(44, 'KARINA BARRETO DA SILVA', '2021-09-09 00:00:00', '2021-09-30 00:00:00', 'public/workers/FQ5FIzEQFm9RNHSUazvsf5s5NYSy69n31QkhrmIk.png', '<p>Realizou 105,07%!!!</p><p>Parabéns pelo seu empenho e dedicação!!</p>', 10507, '2021-09-09 00:49:18', '2021-09-09 00:49:18'),
(45, 'NÁDIA MOURA DE ABREU', '2021-09-09 00:00:00', '2021-09-30 00:00:00', 'public/workers/5bcaIy2hcTy4Dr801gbrHEvJ7s8JLzvALbQHEVWF.png', '<p>Realizou 107,64%!!!</p><p>Parabéns pelo seu empenho e dedicação!!</p>', 10764, '2021-09-09 00:50:19', '2021-09-09 00:50:19'),
(47, 'ANDREIA DE PAULA', '2021-09-09 00:00:00', '2021-09-30 00:00:00', 'public/workers/qcNeBITL6qMPmc5g8zIIFjdlexwLAniGRDmBhwUH.png', '<p>Realizou 114,59%!!!</p><p>Parabéns pelo seu empenho e dedicação!!</p>', 11459, '2021-09-09 00:51:09', '2021-09-09 00:51:09'),
(48, 'GABRIEL MATHEUS GOMES LOPES', '2021-09-09 00:00:00', '2021-09-30 00:00:00', 'public/workers/I7XMkaHVfbqEv7qhqq3IEOfMLw1mM8WmOyMCx3Kt.png', '<p>Realizou 115,74%!!!</p><p>Parabéns pelo seu empenho e dedicação!!</p>', 11574, '2021-09-09 00:51:38', '2021-09-09 00:51:38'),
(49, 'MIKAELY DE SOUZA SANTOS', '2021-09-09 00:00:00', '2021-09-30 00:00:00', 'public/workers/oSIlLX3tzmoD6GiaY94FoJzKPf7353FU4caSVfC8.jpg', '<p>Realizou 117,12%!!!</p><p>Parabéns pelo seu empenho e dedicação!!<br></p>', 11712, '2021-09-09 00:52:25', '2021-09-09 00:52:25'),
(50, 'EDISON FELIPE MARCELINO DE OLIVEIRA', '2021-09-09 00:00:00', '2021-09-30 00:00:00', 'public/workers/f0MsSzsmub9HZhNJIQZT5vtcY1yHSCa4AdtxBYaS.jpg', '<p>Realizou 121,65%!!!</p><p>Parabéns pelo seu empenho e dedicação!!<br></p>', 12165, '2021-09-09 00:53:19', '2021-09-09 00:53:19'),
(51, 'RAFAEL DE ALMEIDA', '2021-09-09 00:00:00', '2021-09-30 00:00:00', 'public/workers/8t2RgTQkevmoDKNaszCEdhBFycVvmMb25ZxvldnQ.png', '<p>Realizou 120,48%!!!</p><p>Parabéns pelo seu empenho e dedicação!!</p>', 12048, '2021-09-09 00:53:48', '2021-09-09 00:53:48'),
(53, 'DANIELE GOMES SANTOS', '2021-09-09 00:00:00', '2021-09-30 00:00:00', 'public/workers/5fqs6qj1WevNxWAZsJwTLtwqp0vomB1xaudvnFo7.jpg', '<p>Realizou 130,78%!!!</p><p>Parabéns pelo seu empenho e dedicação!!</p>', 13078, '2021-09-09 00:54:36', '2021-09-14 07:42:57'),
(54, 'VINICIUS ZAMPIERI', '2021-09-09 00:00:00', '2021-09-30 00:00:00', 'public/workers/jXgBREKsCHf4OXaUL2LoO5n6eFeVYujSrQlJB7Kb.jpg', '<p>Realizou 147,49%!!!</p><p>Parabéns pelo seu empenho e dedicação!!</p>', 14749, '2021-09-09 00:55:26', '2021-09-14 07:42:35'),
(55, 'DENISE APARECIDA BATISTA TONET', '2021-09-09 00:00:00', '2021-09-30 00:00:00', 'public/workers/ConGHpDj5y1OVwoPSDmB5jHOwlnhhDFsxEL4iEym.png', '<p>Realizou 102%!!!</p><p><br></p><p>Parabéns pelo seu empenho e dedicação!!</p>', 10200, '2021-09-14 08:20:54', '2021-09-14 08:20:54'),
(56, 'DANIEL FELIPE BARROS DA SILVA', '2021-09-13 00:00:00', '2021-09-30 00:00:00', 'public/workers/wQyYpuAAcxduUaRygcs77E5uym5WXW8XQpvry9dq.png', '<p>Realizou 101,01%!!!</p><p><br></p><p>Parabéns pelo seu empenho e dedicação!!</p>', 10001, '2021-09-14 08:22:55', '2021-09-14 08:22:55');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `answers_id_posts_foreign` (`id_posts`),
  ADD KEY `answers_author_foreign` (`author`);

--
-- Índices para tabela `campaigns`
--
ALTER TABLE `campaigns`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `candidatos`
--
ALTER TABLE `candidatos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `commissions`
--
ALTER TABLE `commissions`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Índices para tabela `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Índices para tabela `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Índices para tabela `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Índices para tabela `payboxes`
--
ALTER TABLE `payboxes`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_author_foreign` (`author`);

--
-- Índices para tabela `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Índices para tabela `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slides_author_foreign` (`author`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Índices para tabela `workershighlights`
--
ALTER TABLE `workershighlights`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `answers`
--
ALTER TABLE `answers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `campaigns`
--
ALTER TABLE `campaigns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de tabela `candidatos`
--
ALTER TABLE `candidatos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `commissions`
--
ALTER TABLE `commissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de tabela `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `payboxes`
--
ALTER TABLE `payboxes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=636;

--
-- AUTO_INCREMENT de tabela `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `slides`
--
ALTER TABLE `slides`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `workershighlights`
--
ALTER TABLE `workershighlights`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `answers`
--
ALTER TABLE `answers`
  ADD CONSTRAINT `answers_author_foreign` FOREIGN KEY (`author`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `answers_id_posts_foreign` FOREIGN KEY (`id_posts`) REFERENCES `posts` (`id`);

--
-- Limitadores para a tabela `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_author_foreign` FOREIGN KEY (`author`) REFERENCES `users` (`id`);

--
-- Limitadores para a tabela `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
