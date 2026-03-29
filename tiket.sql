-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 05 Mar 2026 pada 15.32
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tiket`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `announcements`
--

CREATE TABLE `announcements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `notice` longtext NOT NULL,
  `startdate` date DEFAULT NULL,
  `enddate` date DEFAULT NULL,
  `primary_color` varchar(255) DEFAULT NULL,
  `secondary_color` varchar(255) DEFAULT NULL,
  `announcementday` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `apptitles`
--

CREATE TABLE `apptitles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `searchtitle` varchar(255) NOT NULL,
  `searchsub` varchar(255) DEFAULT NULL,
  `featurecheck` varchar(255) NOT NULL,
  `featuretitle` varchar(255) NOT NULL,
  `featuresub` varchar(255) DEFAULT NULL,
  `testimonialcheck` varchar(255) NOT NULL,
  `testimonialtitle` varchar(255) NOT NULL,
  `testimonialsub` varchar(255) DEFAULT NULL,
  `faqcheck` varchar(255) NOT NULL,
  `faqtitle` varchar(255) NOT NULL,
  `faqsub` varchar(255) DEFAULT NULL,
  `articlecheck` varchar(255) NOT NULL,
  `articletitle` varchar(255) NOT NULL,
  `articlesub` varchar(255) DEFAULT NULL,
  `checkbox` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `image1` varchar(255) DEFAULT NULL,
  `image2` varchar(255) DEFAULT NULL,
  `image3` varchar(255) DEFAULT NULL,
  `image4` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `apptitles`
--

INSERT INTO `apptitles` (`id`, `searchtitle`, `searchsub`, `featurecheck`, `featuretitle`, `featuresub`, `testimonialcheck`, `testimonialtitle`, `testimonialsub`, `faqcheck`, `faqtitle`, `faqsub`, `articlecheck`, `articletitle`, `articlesub`, `checkbox`, `image`, `title`, `image1`, `image2`, `image3`, `image4`, `created_at`, `updated_at`) VALUES
(1, 'Looking For help?', 'Type your query or submit your ticket', 'on', 'Why Choose US?', 'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua', 'on', 'Check Out Client Says', 'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua', 'on', 'Check Out FAQ’s', 'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua', 'on', 'Check Out Recent Articles', 'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua', NULL, NULL, 'tiket', NULL, NULL, NULL, NULL, '2026-03-05 05:23:54', '2026-03-05 05:23:54');

-- --------------------------------------------------------

--
-- Struktur dari tabel `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `message` longtext NOT NULL,
  `tags` longtext NOT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `articleslug` longtext DEFAULT NULL,
  `subcategory` longtext DEFAULT NULL,
  `featureimage` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `privatemode` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `articles`
--

INSERT INTO `articles` (`id`, `title`, `category_id`, `message`, `tags`, `views`, `articleslug`, `subcategory`, `featureimage`, `status`, `privatemode`, `created_at`, `updated_at`) VALUES
(1, 'Maecenas mauris lectus, lobortis et purus mattis, blandit dictum tellus.', 1, '<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p>', 'php,phpbasic', 50, NULL, NULL, NULL, 'Published', NULL, '2022-01-06 23:13:30', '2022-01-06 23:13:30'),
(2, 'In eleifend velit vitae libero sollicitudin euismod.', 1, '<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p>', 'php,phpbasic', 50, NULL, NULL, NULL, 'Published', NULL, '2022-01-06 23:13:30', '2022-01-06 23:13:30'),
(3, 'Maecenas mauris lectus, lobortis et purus mattis, blandit dictum tellus.', 1, '<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p>', 'php,phpbasic', 50, NULL, NULL, NULL, 'Published', NULL, '2022-01-06 23:13:30', '2022-01-06 23:13:30'),
(4, 'Cras fringilla ipsum magna, in fringilla dui commodo a.', 1, '<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p>', 'php,phpbasic', 50, NULL, NULL, NULL, 'Published', NULL, '2022-01-06 23:13:30', '2022-01-06 23:13:30'),
(5, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc ac faucibus odio.', 1, '<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p>', 'php,phpbasic', 50, NULL, NULL, NULL, 'Published', NULL, '2022-01-06 23:13:30', '2022-01-06 23:13:30'),
(6, 'Maecenas non lorem quis tellus placerat varius.', 1, '<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p>', 'php,phpbasic', 50, NULL, NULL, NULL, 'Published', NULL, '2022-01-06 23:13:30', '2022-01-06 23:13:30'),
(7, 'Morbi velit neque, semper quis lorem quis, efficitur dignissim ipsum ?', 1, '<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p>', 'php,phpbasic', 50, NULL, NULL, NULL, 'Published', NULL, '2022-01-06 23:13:30', '2022-01-06 23:13:30'),
(8, 'Etiam vehicula luctus fermentum. In vel metus congue, pulvinar lectus vel, fermentum dui.', 2, '<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p>', 'php,phpbasic', 50, NULL, NULL, NULL, 'Published', NULL, '2022-01-06 23:13:30', '2022-01-06 23:13:30'),
(9, 'Maecenas ante orci, egestas ut aliquet sit amet, sagittis a magna.', 2, '<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p>', 'php,phpbasic', 50, NULL, NULL, NULL, 'Published', NULL, '2022-01-06 23:13:30', '2022-01-06 23:13:30'),
(10, 'Ut ullamcorperjusto sapien, in cursus libero viverra eget. Vivamus auctor imperdiet urna, at pulvinar leoposuere laoreet.', 2, '<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p>', 'php,phpbasic', 50, NULL, NULL, NULL, 'Published', NULL, '2022-01-06 23:13:30', '2022-01-06 23:13:30'),
(11, 'Suspendisse neque nisl, fringilla at iaculis scelerisque, ornare vel dolor. Utet   pulvinar   nunc.', 2, '<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p>', 'php,phpbasic', 50, NULL, NULL, NULL, 'Published', NULL, '2022-01-06 23:13:30', '2022-01-06 23:13:30'),
(12, 'Pellentesque fringilla mollis efficitur.', 2, '<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p>', 'php,phpbasic', 50, NULL, NULL, NULL, 'Published', NULL, '2022-01-06 23:13:30', '2022-01-06 23:13:30'),
(13, 'Morbi velit neque, semper quis lorem quis, efficitur dignissim ipsum.', 2, '<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p>', 'php,phpbasic', 50, NULL, NULL, NULL, 'Published', NULL, '2022-01-06 23:13:30', '2022-01-06 23:13:30'),
(14, 'Ut ac loremsed turpis imperdiet eleifend sit amet id sapien.', 2, '<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p>', 'php,phpbasic', 50, NULL, NULL, NULL, 'Published', NULL, '2022-01-06 23:13:30', '2022-01-06 23:13:30'),
(15, 'Nulla facilisi. Aenean congue fringilla justout aliquam.', 3, '<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p>', 'php,phpbasic', 50, NULL, NULL, NULL, 'Published', NULL, '2022-01-06 23:13:30', '2022-01-06 23:13:30'),
(16, 'Nunc vulputate neque vitae justo facilisis, non condimentumante sagittis.', 3, '<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p>', 'php,phpbasic', 50, NULL, NULL, NULL, 'Published', NULL, '2022-01-06 23:13:30', '2022-01-06 23:13:30');
INSERT INTO `articles` (`id`, `title`, `category_id`, `message`, `tags`, `views`, `articleslug`, `subcategory`, `featureimage`, `status`, `privatemode`, `created_at`, `updated_at`) VALUES
(17, 'Maecenas tincidunt est efficiturligula euismod, sit amet ornare est vulputate.', 3, '<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p>', 'php,phpbasic', 50, NULL, NULL, NULL, 'Published', NULL, '2022-01-06 23:13:30', '2022-01-06 23:13:30'),
(18, 'Duis vehicula mi vel mi pretium, a viverra erat efficitur.', 3, '<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p>', 'php,phpbasic', 50, NULL, NULL, NULL, 'Published', NULL, '2022-01-06 23:13:30', '2022-01-06 23:13:30'),
(19, 'Cras aliquamest ac eros varius, id iaculis dui auctor.', 3, '<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p>', 'php,phpbasic', 50, NULL, NULL, NULL, 'Published', NULL, '2022-01-06 23:13:30', '2022-01-06 23:13:30'),
(20, 'Duis pretium neque ligula, et pulvinar mi placeratet. Nulla nec nunc sit amet nunc posuere vestibulum.', 3, '<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p>', 'php,phpbasic', 50, NULL, NULL, NULL, 'Published', NULL, '2022-01-06 23:13:30', '2022-01-06 23:13:30'),
(21, 'ellentesquescelerisque fermentum erat, id posuere justo pulvinar ut.', 3, '<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p>', 'php,phpbasic', 50, NULL, NULL, NULL, 'Published', NULL, '2022-01-06 23:13:30', '2022-01-06 23:13:30');

-- --------------------------------------------------------

--
-- Struktur dari tabel `articles_likes`
--

CREATE TABLE `articles_likes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `article_id` bigint(20) UNSIGNED NOT NULL,
  `rating` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `articles_likes`
--

INSERT INTO `articles_likes` (`id`, `user_id`, `article_id`, `rating`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, '2022-01-06 23:13:30', '2022-01-06 23:13:30'),
(2, 1, 1, 1, '2022-01-06 23:13:30', '2022-01-06 23:13:30'),
(3, 1, 1, 1, '2022-01-06 23:13:30', '2022-01-06 23:13:30'),
(4, 1, 1, 1, '2022-01-06 23:13:30', '2022-01-06 23:13:30'),
(5, 1, 1, -1, '2022-01-06 23:13:30', '2022-01-06 23:13:30'),
(6, 1, 1, -1, '2022-01-06 23:13:30', '2022-01-06 23:13:30'),
(7, 1, 1, -1, '2022-01-06 23:13:30', '2022-01-06 23:13:30'),
(8, 1, 1, -1, '2022-01-06 23:13:30', '2022-01-06 23:13:30'),
(9, 1, 1, -1, '2022-01-06 23:13:30', '2022-01-06 23:13:30'),
(10, 1, 2, 1, '2022-01-06 23:13:30', '2022-01-06 23:13:30'),
(11, 1, 2, 1, '2022-01-06 23:13:30', '2022-01-06 23:13:30'),
(12, 1, 2, 1, '2022-01-06 23:13:30', '2022-01-06 23:13:30'),
(13, 1, 2, 1, '2022-01-06 23:13:30', '2022-01-06 23:13:30'),
(14, 1, 8, 1, '2022-01-06 23:13:30', '2022-01-06 23:13:30'),
(15, 1, 8, 1, '2022-01-06 23:13:30', '2022-01-06 23:13:30'),
(16, 1, 8, 1, '2022-01-06 23:13:30', '2022-01-06 23:13:30'),
(17, 1, 8, 1, '2022-01-06 23:13:30', '2022-01-06 23:13:30'),
(18, 1, 8, -1, '2022-01-06 23:13:30', '2022-01-06 23:13:30'),
(19, 1, 8, -1, '2022-01-06 23:13:30', '2022-01-06 23:13:30'),
(20, 1, 8, -1, '2022-01-06 23:13:30', '2022-01-06 23:13:30'),
(21, 1, 8, -1, '2022-01-06 23:13:30', '2022-01-06 23:13:30'),
(22, 1, 8, -1, '2022-01-06 23:13:30', '2022-01-06 23:13:30'),
(23, 1, 9, 1, '2022-01-06 23:13:30', '2022-01-06 23:13:30'),
(24, 1, 9, 1, '2022-01-06 23:13:30', '2022-01-06 23:13:30'),
(25, 1, 9, 1, '2022-01-06 23:13:30', '2022-01-06 23:13:30'),
(26, 1, 9, 1, '2022-01-06 23:13:30', '2022-01-06 23:13:30'),
(27, 1, 15, 1, '2022-01-06 23:13:30', '2022-01-06 23:13:30'),
(28, 1, 15, 1, '2022-01-06 23:13:30', '2022-01-06 23:13:30'),
(29, 1, 15, 1, '2022-01-06 23:13:30', '2022-01-06 23:13:30'),
(30, 1, 15, 1, '2022-01-06 23:13:30', '2022-01-06 23:13:30'),
(31, 1, 15, -1, '2022-01-06 23:13:30', '2022-01-06 23:13:30'),
(32, 1, 15, -1, '2022-01-06 23:13:30', '2022-01-06 23:13:30'),
(33, 1, 15, -1, '2022-01-06 23:13:30', '2022-01-06 23:13:30'),
(34, 1, 15, -1, '2022-01-06 23:13:30', '2022-01-06 23:13:30'),
(35, 1, 15, -1, '2022-01-06 23:13:30', '2022-01-06 23:13:30'),
(36, 1, 16, 1, '2022-01-06 23:13:30', '2022-01-06 23:13:30'),
(37, 1, 16, 1, '2022-01-06 23:13:30', '2022-01-06 23:13:30'),
(38, 1, 16, 1, '2022-01-06 23:13:30', '2022-01-06 23:13:30'),
(39, 1, 16, 1, '2022-01-06 23:13:30', '2022-01-06 23:13:30');

-- --------------------------------------------------------

--
-- Struktur dari tabel `article_comments`
--

CREATE TABLE `article_comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `article_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `comment` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `article_replies`
--

CREATE TABLE `article_replies` (
  `id` int(10) UNSIGNED NOT NULL,
  `article_comment_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `bussinesshours`
--

CREATE TABLE `bussinesshours` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `no_id` varchar(255) DEFAULT NULL,
  `weeks` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `starttime` varchar(255) DEFAULT NULL,
  `endtime` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `callactions`
--

CREATE TABLE `callactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `callcheck` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  `buttonname` varchar(255) NOT NULL,
  `buttonurl` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `callactions`
--

INSERT INTO `callactions` (`id`, `callcheck`, `title`, `subtitle`, `buttonname`, `buttonurl`, `image`, `created_at`, `updated_at`) VALUES
(1, 'on', 'Need Support & Response within 24 hours?', 'Excepteur sint occaecat cupidatat non proident mollit anim id est laborum', 'Open Ticket', '#', NULL, '2026-03-05 05:23:54', '2026-03-05 05:23:54');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cannedmessages`
--

CREATE TABLE `cannedmessages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `messages` longtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `display` varchar(255) DEFAULT NULL,
  `categoryslug` longtext DEFAULT NULL,
  `priority` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `name`, `display`, `categoryslug`, `priority`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Ticket Support', 'both', NULL, NULL, '1', '2022-01-06 23:13:30', '2022-01-06 23:13:30'),
(2, 'Securities', 'knowledge', NULL, NULL, '1', '2022-01-06 23:13:30', '2022-01-06 23:13:30'),
(3, 'Sales & Services', 'both', NULL, NULL, '1', '2022-01-06 23:13:30', '2022-01-06 23:13:30');

-- --------------------------------------------------------

--
-- Struktur dari tabel `category_category_user`
--

CREATE TABLE `category_category_user` (
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `category_user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ticket_id` bigint(20) UNSIGNED NOT NULL,
  `cust_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `comment` longtext NOT NULL,
  `display` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `contactforms`
--

CREATE TABLE `contactforms` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `countries`
--

INSERT INTO `countries` (`id`, `name`, `code`, `created_at`, `updated_at`) VALUES
(1, 'Afghanistan', 'AF', NULL, NULL),
(2, 'Åland Islands', 'AX', NULL, NULL),
(3, 'Albania', 'AL', NULL, NULL),
(4, 'Algeria', 'DZ', NULL, NULL),
(5, 'American Samoa', 'AS', NULL, NULL),
(6, 'Andorra', 'AD', NULL, NULL),
(7, 'Angola', 'AO', NULL, NULL),
(8, 'Anguilla', 'AI', NULL, NULL),
(9, 'Antarctica', 'AQ', NULL, NULL),
(10, 'Antigua and Barbuda', 'AG', NULL, NULL),
(11, 'Argentina', 'AR', NULL, NULL),
(12, 'Armenia', 'AM', NULL, NULL),
(13, 'Aruba', 'AW', NULL, NULL),
(14, 'Australia', 'AU', NULL, NULL),
(15, 'Austria', 'AT', NULL, NULL),
(16, 'Azerbaijan', 'AZ', NULL, NULL),
(17, 'Bahamas', 'BS', NULL, NULL),
(18, 'Bahrain', 'BH', NULL, NULL),
(19, 'Bangladesh', 'BD', NULL, NULL),
(20, 'Barbados', 'BB', NULL, NULL),
(21, 'Belarus', 'BY', NULL, NULL),
(22, 'Belgium', 'BE', NULL, NULL),
(23, 'Belize', 'BZ', NULL, NULL),
(24, 'Benin', 'BJ', NULL, NULL),
(25, 'Bermuda', 'BM', NULL, NULL),
(26, 'Bhutan', 'BT', NULL, NULL),
(27, 'Bolivia, Plurinational State of', 'BO', NULL, NULL),
(28, 'Bonaire, Sint Eustatius and Saba', 'BQ', NULL, NULL),
(29, 'Bosnia and Herzegovina', 'BA', NULL, NULL),
(30, 'Botswana', 'BW', NULL, NULL),
(31, 'Bouvet Island', 'BV', NULL, NULL),
(32, 'Brazil', 'BR', NULL, NULL),
(33, 'British Indian Ocean Territory', 'IO', NULL, NULL),
(34, 'Brunei Darussalam', 'BN', NULL, NULL),
(35, 'Bulgaria', 'BG', NULL, NULL),
(36, 'Burkina Faso', 'BF', NULL, NULL),
(37, 'Burundi', 'BI', NULL, NULL),
(38, 'Cambodia', 'KH', NULL, NULL),
(39, 'Cameroon', 'CM', NULL, NULL),
(40, 'Canada', 'CA', NULL, NULL),
(41, 'Cape Verde', 'CV', NULL, NULL),
(42, 'Cayman Islands', 'KY', NULL, NULL),
(43, 'Central African Republic', 'CF', NULL, NULL),
(44, 'Chad', 'TD', NULL, NULL),
(45, 'Chile', 'CL', NULL, NULL),
(46, 'China', 'CN', NULL, NULL),
(47, 'Christmas Island', 'CX', NULL, NULL),
(48, 'Cocos (Keeling) Islands', 'CC', NULL, NULL),
(49, 'Colombia', 'CO', NULL, NULL),
(50, 'Comoros', 'KM', NULL, NULL),
(51, 'Congo', 'CG', NULL, NULL),
(52, 'Congo, the Democratic Republic of the', 'CD', NULL, NULL),
(53, 'Cook Islands', 'CK', NULL, NULL),
(54, 'Costa Rica', 'CR', NULL, NULL),
(55, 'Côte d\'Ivoire', 'CI', NULL, NULL),
(56, 'Croatia', 'HR', NULL, NULL),
(57, 'Cuba', 'CU', NULL, NULL),
(58, 'Curaçao', 'CW', NULL, NULL),
(59, 'Cyprus', 'CY', NULL, NULL),
(60, 'Czech Republic', 'CZ', NULL, NULL),
(61, 'Denmark', 'DK', NULL, NULL),
(62, 'Djibouti', 'DJ', NULL, NULL),
(63, 'Dominica', 'DM', NULL, NULL),
(64, 'Dominican Republic', 'DO', NULL, NULL),
(65, 'Ecuador', 'EC', NULL, NULL),
(66, 'Egypt', 'EG', NULL, NULL),
(67, 'El Salvador', 'SV', NULL, NULL),
(68, 'Equatorial Guinea', 'GQ', NULL, NULL),
(69, 'Eritrea', 'ER', NULL, NULL),
(70, 'Estonia', 'EE', NULL, NULL),
(71, 'Ethiopia', 'ET', NULL, NULL),
(72, 'Falkland Islands (Malvinas)', 'FK', NULL, NULL),
(73, 'Faroe Islands', 'FO', NULL, NULL),
(74, 'Fiji', 'FJ', NULL, NULL),
(75, 'Finland', 'FI', NULL, NULL),
(76, 'France', 'FR', NULL, NULL),
(77, 'French Guiana', 'GF', NULL, NULL),
(78, 'French Polynesia', 'PF', NULL, NULL),
(79, 'French Southern Territories', 'TF', NULL, NULL),
(80, 'Gabon', 'GA', NULL, NULL),
(81, 'Gambia', 'GM', NULL, NULL),
(82, 'Georgia', 'GE', NULL, NULL),
(83, 'Germany', 'DE', NULL, NULL),
(84, 'Ghana', 'GH', NULL, NULL),
(85, 'Gibraltar', 'GI', NULL, NULL),
(86, 'Greece', 'GR', NULL, NULL),
(87, 'Greenland', 'GL', NULL, NULL),
(88, 'Grenada', 'GD', NULL, NULL),
(89, 'Guadeloupe', 'GP', NULL, NULL),
(90, 'Guam', 'GU', NULL, NULL),
(91, 'Guatemala', 'GT', NULL, NULL),
(92, 'Guernsey', 'GG', NULL, NULL),
(93, 'Guinea', 'GN', NULL, NULL),
(94, 'Guinea-Bissau', 'GW', NULL, NULL),
(95, 'Guyana', 'GY', NULL, NULL),
(96, 'Haiti', 'HT', NULL, NULL),
(97, 'Heard Island and McDonald Mcdonald Islands', 'HM', NULL, NULL),
(98, 'Holy See (Vatican City State)', 'VA', NULL, NULL),
(99, 'Honduras', 'HN', NULL, NULL),
(100, 'Hong Kong', 'HK', NULL, NULL),
(101, 'Hungary', 'HU', NULL, NULL),
(102, 'Iceland', 'IS', NULL, NULL),
(103, 'India', 'IN', NULL, NULL),
(104, 'Indonesia', 'ID', NULL, NULL),
(105, 'Iran, Islamic Republic of', 'IR', NULL, NULL),
(106, 'Iraq', 'IQ', NULL, NULL),
(107, 'Ireland', 'IE', NULL, NULL),
(108, 'Isle of Man', 'IM', NULL, NULL),
(109, 'Israel', 'IL', NULL, NULL),
(110, 'Italy', 'IT', NULL, NULL),
(111, 'Jamaica', 'JM', NULL, NULL),
(112, 'Japan', 'JP', NULL, NULL),
(113, 'Jersey', 'JE', NULL, NULL),
(114, 'Jordan', 'JO', NULL, NULL),
(115, 'Kazakhstan', 'KZ', NULL, NULL),
(116, 'Kenya', 'KE', NULL, NULL),
(117, 'Kiribati', 'KI', NULL, NULL),
(118, 'Korea, Democratic People\'s Republic of', 'KP', NULL, NULL),
(119, 'Korea, Republic of', 'KR', NULL, NULL),
(120, 'Kuwait', 'KW', NULL, NULL),
(121, 'Kyrgyzstan', 'KG', NULL, NULL),
(122, 'Lao People\'s Democratic Republic', 'LA', NULL, NULL),
(123, 'Latvia', 'LV', NULL, NULL),
(124, 'Lebanon', 'LB', NULL, NULL),
(125, 'Lesotho', 'LS', NULL, NULL),
(126, 'Liberia', 'LR', NULL, NULL),
(127, 'Libya', 'LY', NULL, NULL),
(128, 'Liechtenstein', 'LI', NULL, NULL),
(129, 'Lithuania', 'LT', NULL, NULL),
(130, 'Luxembourg', 'LU', NULL, NULL),
(131, 'Macao', 'MO', NULL, NULL),
(132, 'Macedonia, the Former Yugoslav Republic of', 'MK', NULL, NULL),
(133, 'Madagascar', 'MG', NULL, NULL),
(134, 'Malawi', 'MW', NULL, NULL),
(135, 'Malaysia', 'MY', NULL, NULL),
(136, 'Maldives', 'MV', NULL, NULL),
(137, 'Mali', 'ML', NULL, NULL),
(138, 'Malta', 'MT', NULL, NULL),
(139, 'Marshall Islands', 'MH', NULL, NULL),
(140, 'Martinique', 'MQ', NULL, NULL),
(141, 'Mauritania', 'MR', NULL, NULL),
(142, 'Mauritius', 'MU', NULL, NULL),
(143, 'Mayotte', 'YT', NULL, NULL),
(144, 'Mexico', 'MX', NULL, NULL),
(145, 'Micronesia, Federated States of', 'FM', NULL, NULL),
(146, 'Moldova, Republic of', 'MD', NULL, NULL),
(147, 'Monaco', 'MC', NULL, NULL),
(148, 'Mongolia', 'MN', NULL, NULL),
(149, 'Montenegro', 'ME', NULL, NULL),
(150, 'Montserrat', 'MS', NULL, NULL),
(151, 'Morocco', 'MA', NULL, NULL),
(152, 'Mozambique', 'MZ', NULL, NULL),
(153, 'Myanmar', 'MM', NULL, NULL),
(154, 'Namibia', 'NA', NULL, NULL),
(155, 'Nauru', 'NR', NULL, NULL),
(156, 'Nepal', 'NP', NULL, NULL),
(157, 'Netherlands', 'NL', NULL, NULL),
(158, 'New Caledonia', 'NC', NULL, NULL),
(159, 'New Zealand', 'NZ', NULL, NULL),
(160, 'Nicaragua', 'NI', NULL, NULL),
(161, 'Niger', 'NE', NULL, NULL),
(162, 'Nigeria', 'NG', NULL, NULL),
(163, 'Niue', 'NU', NULL, NULL),
(164, 'Norfolk Island', 'NF', NULL, NULL),
(165, 'Northern Mariana Islands', 'MP', NULL, NULL),
(166, 'Norway', 'NO', NULL, NULL),
(167, 'Oman', 'OM', NULL, NULL),
(168, 'Pakistan', 'PK', NULL, NULL),
(169, 'Palau', 'PW', NULL, NULL),
(170, 'Palestine, State of', 'PS', NULL, NULL),
(171, 'Panama', 'PA', NULL, NULL),
(172, 'Papua New Guinea', 'PG', NULL, NULL),
(173, 'Paraguay', 'PY', NULL, NULL),
(174, 'Peru', 'PE', NULL, NULL),
(175, 'Philippines', 'PH', NULL, NULL),
(176, 'Pitcairn', 'PN', NULL, NULL),
(177, 'Poland', 'PL', NULL, NULL),
(178, 'Portugal', 'PT', NULL, NULL),
(179, 'Puerto Rico', 'PR', NULL, NULL),
(180, 'Qatar', 'QA', NULL, NULL),
(181, 'Réunion', 'RE', NULL, NULL),
(182, 'Romania', 'RO', NULL, NULL),
(183, 'Russian Federation', 'RU', NULL, NULL),
(184, 'Rwanda', 'RW', NULL, NULL),
(185, 'Saint Barthélemy', 'BL', NULL, NULL),
(186, 'Saint Helena, Ascension and Tristan da Cunha', 'SH', NULL, NULL),
(187, 'Saint Kitts and Nevis', 'KN', NULL, NULL),
(188, 'Saint Lucia', 'LC', NULL, NULL),
(189, 'Saint Martin (French part)', 'MF', NULL, NULL),
(190, 'Saint Pierre and Miquelon', 'PM', NULL, NULL),
(191, 'Saint Vincent and the Grenadines', 'VC', NULL, NULL),
(192, 'Samoa', 'WS', NULL, NULL),
(193, 'San Marino', 'SM', NULL, NULL),
(194, 'Sao Tome and Principe', 'ST', NULL, NULL),
(195, 'Saudi Arabia', 'SA', NULL, NULL),
(196, 'Senegal', 'SN', NULL, NULL),
(197, 'Serbia', 'RS', NULL, NULL),
(198, 'Seychelles', 'SC', NULL, NULL),
(199, 'Sierra Leone', 'SL', NULL, NULL),
(200, 'Singapore', 'SG', NULL, NULL),
(201, 'Sint Maarten (Dutch part)', 'SX', NULL, NULL),
(202, 'Slovakia', 'SK', NULL, NULL),
(203, 'Slovenia', 'SI', NULL, NULL),
(204, 'Solomon Islands', 'SB', NULL, NULL),
(205, 'Somalia', 'SO', NULL, NULL),
(206, 'South Africa', 'ZA', NULL, NULL),
(207, 'South Georgia and the South Sandwich Islands', 'GS', NULL, NULL),
(208, 'South Sudan', 'SS', NULL, NULL),
(209, 'Spain', 'ES', NULL, NULL),
(210, 'Sri Lanka', 'LK', NULL, NULL),
(211, 'Sudan', 'SD', NULL, NULL),
(212, 'Suriname', 'SR', NULL, NULL),
(213, 'Svalbard and Jan Mayen', 'SJ', NULL, NULL),
(214, 'Swaziland', 'SZ', NULL, NULL),
(215, 'Sweden', 'SE', NULL, NULL),
(216, 'Switzerland', 'CH', NULL, NULL),
(217, 'Syrian Arab Republic', 'SY', NULL, NULL),
(218, 'Taiwan', 'TW', NULL, NULL),
(219, 'Tajikistan', 'TJ', NULL, NULL),
(220, 'Tanzania, United Republic of', 'TZ', NULL, NULL),
(221, 'Thailand', 'TH', NULL, NULL),
(222, 'Timor-Leste', 'TL', NULL, NULL),
(223, 'Togo', 'TG', NULL, NULL),
(224, 'Tokelau', 'TK', NULL, NULL),
(225, 'Tonga', 'TO', NULL, NULL),
(226, 'Trinidad and Tobago', 'TT', NULL, NULL),
(227, 'Tunisia', 'TN', NULL, NULL),
(228, 'Turkey', 'TR', NULL, NULL),
(229, 'Turkmenistan', 'TM', NULL, NULL),
(230, 'Turks and Caicos Islands', 'TC', NULL, NULL),
(231, 'Tuvalu', 'TV', NULL, NULL),
(232, 'Uganda', 'UG', NULL, NULL),
(233, 'Ukraine', 'UA', NULL, NULL),
(234, 'United Arab Emirates', 'AE', NULL, NULL),
(235, 'United Kingdom', 'GB', NULL, NULL),
(236, 'United States', 'US', NULL, NULL),
(237, 'United States Minor Outlying Islands', 'UM', NULL, NULL),
(238, 'Uruguay', 'UY', NULL, NULL),
(239, 'Uzbekistan', 'UZ', NULL, NULL),
(240, 'Vanuatu', 'VU', NULL, NULL),
(241, 'Venezuela, Bolivarian Republic of', 'VE', NULL, NULL),
(242, 'Viet Nam', 'VN', NULL, NULL),
(243, 'Virgin Islands, British', 'VG', NULL, NULL),
(244, 'Virgin Islands, U.S.', 'VI', NULL, NULL),
(245, 'Wallis and Futuna', 'WF', NULL, NULL),
(246, 'Western Sahara', 'EH', NULL, NULL),
(247, 'Yemen', 'YE', NULL, NULL),
(248, 'Zambia', 'ZM', NULL, NULL),
(249, 'Zimbabwe', 'ZW', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `customcssjs`
--

CREATE TABLE `customcssjs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `customcssjs`
--

INSERT INTO `customcssjs` (`id`, `name`, `value`, `created_at`, `updated_at`) VALUES
(1, 'CUSTOMCHATENABLE', 'disable', '2026-03-05 05:23:54', '2026-03-05 05:23:54'),
(2, 'CUSTOMCHATUSER', 'public', '2026-03-05 05:23:54', '2026-03-05 05:23:54'),
(3, 'CUSTOMCHAT', NULL, '2026-03-05 05:23:54', '2026-03-05 05:23:54'),
(4, 'CUSTOMJS', '(function(){\r\n\r\nfunction addExportButton(){\r\n\r\nif(document.getElementById(\"globalExportBtn\")) return;\r\n\r\nlet btn = document.createElement(\"button\");\r\nbtn.id = \"globalExportBtn\";\r\nbtn.innerText = \"Export Excel\";\r\n\r\nbtn.style.marginLeft = \"10px\";\r\nbtn.style.padding = \"6px 10px\";\r\nbtn.style.cursor = \"pointer\";\r\n\r\nlet toolbar = document.querySelector(\".table-actions\") \r\n           || document.querySelector(\".page-actions\")\r\n           || document.querySelector(\".header-actions\");\r\n\r\nif(toolbar) toolbar.appendChild(btn);\r\n\r\nbtn.onclick = exportTable;\r\n\r\n}\r\n\r\nfunction exportTable(){\r\n\r\nlet table = document.querySelector(\"table\");\r\n\r\nif(!table){\r\n alert(\"Table tidak ditemukan\");\r\n return;\r\n}\r\n\r\nlet rows = table.querySelectorAll(\"tr\");\r\nlet csv = [];\r\n\r\nrows.forEach(function(row){\r\n\r\n let cols = row.querySelectorAll(\"th,td\");\r\n let rowData = [];\r\n\r\n cols.forEach(function(col){\r\n   rowData.push(col.innerText.replace(/,/g,\" \"));\r\n });\r\n\r\n csv.push(rowData.join(\",\"));\r\n\r\n});\r\n\r\nlet blob = new Blob([csv.join(\"\\n\")],{type:\"text/csv\"});\r\nlet link = document.createElement(\"a\");\r\n\r\nlink.href = URL.createObjectURL(blob);\r\nlink.download = \"uhelp_export.csv\";\r\nlink.click();\r\n\r\n}\r\n\r\nsetInterval(addExportButton,2000);\r\n\r\n})();', '2026-03-05 05:23:54', '2026-03-05 06:09:57'),
(5, 'CUSTOMCSS', NULL, '2026-03-05 05:23:54', '2026-03-05 05:23:54');

-- --------------------------------------------------------

--
-- Struktur dari tabel `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `username` longtext DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `provider_id` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `logintype` varchar(255) DEFAULT NULL,
  `userType` varchar(255) NOT NULL,
  `voilated` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `verified` tinyint(1) NOT NULL DEFAULT 0,
  `password` varchar(255) DEFAULT NULL,
  `last_login_at` datetime DEFAULT NULL,
  `inactive_date` datetime DEFAULT NULL,
  `last_logins_at` datetime DEFAULT NULL,
  `last_login_ip` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `timezone` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `customers`
--

INSERT INTO `customers` (`id`, `firstname`, `lastname`, `username`, `gender`, `provider_id`, `email`, `logintype`, `userType`, `voilated`, `status`, `phone`, `image`, `verified`, `password`, `last_login_at`, `inactive_date`, `last_logins_at`, `last_login_ip`, `country`, `timezone`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, '', '', 'GUEST', NULL, NULL, 'tes@gmail.com', NULL, 'Guest', NULL, '1', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '', 'UTC', NULL, '2026-03-05 06:09:19', '2026-03-05 06:09:19');

-- --------------------------------------------------------

--
-- Struktur dari tabel `customer_settings`
--

CREATE TABLE `customer_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `custs_id` bigint(20) UNSIGNED NOT NULL,
  `darkmode` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `customer_settings`
--

INSERT INTO `customer_settings` (`id`, `custs_id`, `darkmode`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, '2026-03-05 06:09:19', '2026-03-05 06:09:19');

-- --------------------------------------------------------

--
-- Struktur dari tabel `customfields`
--

CREATE TABLE `customfields` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fieldnames` varchar(255) NOT NULL,
  `fieldtypes` varchar(255) NOT NULL,
  `fieldoptions` varchar(255) DEFAULT NULL,
  `displaytypes` varchar(255) DEFAULT NULL,
  `fieldrequired` tinyint(1) NOT NULL DEFAULT 0,
  `fieldprivacy` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `customizeerrors`
--

CREATE TABLE `customizeerrors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `errorname` varchar(255) NOT NULL,
  `errorvalue` varchar(10000) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `customizeerrors`
--

INSERT INTO `customizeerrors` (`id`, `errorname`, `errorvalue`, `created_at`, `updated_at`) VALUES
(1, '404title', 'Page Not Found', '2026-03-05 05:23:54', '2026-03-05 05:23:54'),
(2, '404subtitle', 'Request Page Does Not Exists', '2026-03-05 05:23:54', '2026-03-05 05:23:54'),
(3, '503title', 'Maintenance Mode', '2026-03-05 05:23:54', '2026-03-05 05:23:54'),
(4, '503subtitle', 'We will be back soon', '2026-03-05 05:23:54', '2026-03-05 05:23:54'),
(5, '503description', 'Please wait this site is undermaintenance', '2026-03-05 05:23:54', '2026-03-05 05:23:54');

-- --------------------------------------------------------

--
-- Struktur dari tabel `departments`
--

CREATE TABLE `departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `departmentname` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `email_templates`
--

CREATE TABLE `email_templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `body` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `email_templates`
--

INSERT INTO `email_templates` (`id`, `code`, `title`, `subject`, `body`, `created_at`, `updated_at`) VALUES
(1, 'customer_sendmail_contactus', 'Users receive e-mail from Admin for submitting contact_us form.', 'Thank you for contacting us.', '<p class=\"root-block-node\" data-paragraphid=\"16\" data-from-init=\"true\" data-changed=\"false\">Dear {{Contact_name}},</p>\n                <p class=\"root-block-node\" data-paragraphid=\"17\" data-from-init=\"true\" data-changed=\"false\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;This to inform you that we have recieved your details successfully. Our team will respond shortly.</p><p class=\"root-block-node\" data-paragraphid=\"17\" data-from-init=\"true\" data-changed=\"false\"><br></p>\n                <p class=\"root-block-node\" data-paragraphid=\"19\" data-from-init=\"true\" data-changed=\"false\">Sincerely,</p>\n                <p class=\"root-block-node\" data-paragraphid=\"20\" data-from-init=\"true\" data-changed=\"false\">Support Team</p>', '2026-03-05 05:23:54', '2026-03-05 05:23:54'),
(2, 'admin_sendmail_contactus', 'Admin receives e-mails from customers through contact_us form', 'Received contact details from a new user.', '<p class=\"root-block-node\" data-paragraphid=\"16\" data-from-init=\"true\" data-changed=\"false\">Dear Admin,</p>\n                <p class=\"root-block-node\" data-paragraphid=\"16\" data-from-init=\"true\" data-changed=\"false\">&nbsp; &nbsp;Received contact information from new customer.</p>\n                <p>&nbsp; &nbsp;Name: {{Contact_name}}</p>\n                <p>&nbsp; &nbsp;Email: {{Contact_email}}</p><p>&nbsp; &nbsp;Phone Number: {{Contact_phone}}</p>\n                <p>&nbsp; &nbsp;Subject: {{Contact_subject}}</p><p>&nbsp; &nbsp;Message:{{Contact_message}}</p>\n                <p><br></p>\n                <p class=\"root-block-node\" data-paragraphid=\"19\" data-from-init=\"true\" data-changed=\"false\">Sincerely,</p>\n                <p class=\"root-block-node\" data-paragraphid=\"20\" data-from-init=\"true\" data-changed=\"false\">Support Team</p>', '2026-03-05 05:23:54', '2026-03-05 05:23:54'),
(3, 'customer_sendmail_verification', 'Customers receive e-mail, when they get registered with the application.', 'Thanks you for registering. Please verify your email.', '<p class=\"root-block-node\" data-paragraphid=\"16\" data-from-init=\"true\" data-changed=\"false\">Dear {{username}},</p><p>\n                </p><p class=\"root-block-node\" data-paragraphid=\"23\" data-from-init=\"true\" data-changed=\"false\"><span class=\"red-underline\" data-startindex=\"0\" data-endindex=\"2\" data-paragraphid=\"23\">&nbsp; &nbsp;</span>Thank you for registering as our customer. Be a part of our family. Before you log in to your portal, please verify your email by clicking this&nbsp;link:-&nbsp;<a href=\"{{email_verify_url}}\" style=\"color: var(--primary); outline: 0px;\">VerifyLink</a>.</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p><p class=\"root-block-node\" data-paragraphid=\"19\" data-from-init=\"true\" data-changed=\"false\">Sincerely,</p><p class=\"root-block-node\" data-paragraphid=\"20\" data-from-init=\"true\" data-changed=\"false\">Support Team</p>', '2026-03-05 05:23:54', '2026-03-05 05:23:54'),
(4, 'customer_send_ticket_created', 'Send email to customer, when a ticket is created.', 'We received your ticket successfully.', '<p>Dear {{ticket_username}},</p><p><br></p><p>We would like to acknowledge that we have received your request and a ticket has been created.</p><p>A support representative will be reviewing your request and will send you a personal response.(usually within 24 hours).</p><p><br></p><p>To view the status of the ticket or add comments, please visit</p><p><a href=\"{{ticket_customer_url}}\" target=\"_blank\">{{ticket_customer_url}}</a></p><p><br></p><p class=\"root-block-node\" data-paragraphid=\"19\" data-from-init=\"true\" data-changed=\"false\">Sincerely,</p><p class=\"root-block-node\" data-paragraphid=\"20\" data-from-init=\"true\" data-changed=\"false\">Support Team</p><p>Thank you for your patience.</p><p><br></p><p>Sincerely,</p><p>Support Team</p>', '2026-03-05 05:23:54', '2026-03-05 05:23:54'),
(5, 'admin_send_email_ticket_created', 'Send email to admin when ticket is created', 'New ticket has been created.', '<p>Dear Admin,</p><p>A ticket has been created with Ticket ID {{ticket_id}}.&nbsp;<br></p><p>Assign the ticket to support representatives who will be reviewing the request.</p><p>To view the status of the ticket or add comments, please visit,</p><p><a href=\"{{ticket_admin_url}}\" target=\"_blank\">{{ticket_admin_url}}</a></p><p><br></p><p class=\"root-block-node\" data-paragraphid=\"19\" data-from-init=\"true\" data-changed=\"false\">Sincerely,</p><p class=\"root-block-node\" data-paragraphid=\"20\" data-from-init=\"true\" data-changed=\"false\">Support Team</p>', '2026-03-05 05:23:54', '2026-03-05 05:23:54'),
(6, 'customer_send_ticket_reply', 'Send email to customers, when they get reply to ticket.', 'You got reply for the ticket', '<p>Our support representatives have started reviewing your request.</p><p>Please visit the application to&nbsp;<a href=\"{{ticket_customer_url}}\" style=\"\">ViewTicket</a></p><p>Thank you for reaching us</p><p>Your Ticket Title: {{ticket_title}}<br></p><p>Your Ticket ID: {{ticket_id}}</p><p>Recent Reply: {{comment}}</p><p><br></p><p class=\"root-block-node\" data-paragraphid=\"19\" data-from-init=\"true\" data-changed=\"false\">Sincerely,</p><p class=\"root-block-node\" data-paragraphid=\"20\" data-from-init=\"true\" data-changed=\"false\">Support Team</p>', '2026-03-05 05:23:54', '2026-03-05 05:23:54'),
(7, 'customer_rating', 'Customer rating for agents.', 'Your ticket {{ticket_id}} has been closed succesfully.', '<p class=\"root-block-node\" data-paragraphid=\"33\" data-from-init=\"true\" data-changed=\"false\">Dear {{ticket_username}},</p><p class=\"root-block-node\" data-paragraphid=\"34\" data-from-init=\"true\" data-changed=\"false\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Your ticket {{ticket_id}} has been closed by our support team. We’re always looking for ways to improve and would love to know how we did recently.</p><p class=\"root-block-node\" data-paragraphid=\"34\" data-from-init=\"true\" data-changed=\"false\">How would you rate the support you received?</p><p>Please click on the link to rate us:&nbsp;<a href=\"{{ratinglink}}\">Click here</a></p><p class=\"root-block-node\" data-changed=\"false\" data-paragraphid=\"45\"><br></p><p class=\"root-block-node\" data-changed=\"false\" data-paragraphid=\"45\">Sincerely,<br></p><p class=\"root-block-node\" data-changed=\"false\" data-paragraphid=\"45\">Support Team</p>', '2026-03-05 05:23:54', '2026-03-05 05:23:54'),
(8, 'customer_send_ticket_reopen', 'Send email to customer, when ticket is re-opened!', 'Your ticket has been reopened succesfully', '<p>Thank you for reaching us again&nbsp;</p><p>Our support representatives will be reviewing your request again and will send you a personal response within 1-2 business working days.<br></p><p><br> Title : {{ticket_title}}<br>Ticket URL : <a href=\"{{ticket_customer_url}}\">VIEW Ticket</a></p><p><br></p><p class=\"root-block-node\" data-paragraphid=\"19\" data-from-init=\"true\" data-changed=\"false\">Sincerely,</p><p class=\"root-block-node\" data-paragraphid=\"20\" data-from-init=\"true\" data-changed=\"false\">Support Team</p>', '2026-03-05 05:23:54', '2026-03-05 05:23:54'),
(9, 'forget_password', 'When customer/admin or any user forgets password', 'Password Reset Email Link', '<p class=\"root-block-node\" data-paragraphid=\"51\" data-from-init=\"true\" data-changed=\"false\">Hi there,</p><p class=\"root-block-node\" data-paragraphid=\"53\" data-from-init=\"true\" data-changed=\"false\">Looks like you lost your password.</p><p class=\"root-block-node\" data-paragraphid=\"52\" data-from-init=\"true\" data-changed=\"false\">To regain access to your account</p><p>Please click the link below to reset your account password.</p><p><a href=\"{{reset_password_url}}\">Reset Password</a>&nbsp;</p><p><br></p><p class=\"root-block-node\" data-paragraphid=\"20\" data-from-init=\"true\" data-changed=\"false\">Support Team</p>\n                ', '2026-03-05 05:23:54', '2026-03-05 05:23:54'),
(10, 'customer_send_registration_details', 'Send email to customer, when customer is created by admin', 'Your account has been successfully created by our support team. ', '<p>Dear {{username}},</p><p>Your account has been successfully created by our support team.</p><p>Please visit the URL {{url}} and use the below credentials to access your account.</p><p> Email : {{useremail}}<br>Name : {{username}}<br>Password : {{userpassword}}</p><p><br></p><p class=\"root-block-node\" data-paragraphid=\"19\" data-from-init=\"true\" data-changed=\"false\">Sincerely,</p><p class=\"root-block-node\" data-paragraphid=\"20\" data-from-init=\"true\" data-changed=\"false\">Support Team</p>', '2026-03-05 05:23:54', '2026-03-05 05:23:54'),
(11, 'employee_send_registration_details', 'Send email to employee, when employee is created by admin', 'Your account has been successfully created by our support team. ', '<p>Dear {{username}},</p><p>Your account has been successfully created by our support team.</p><p>Please visit the URL {{url}} and use the below credentials to access your account.</p><p> Email : {{useremail}}<br>Name : {{username}}<br>Password : {{userpassword}}</p><p><br></p><p class=\"root-block-node\" data-paragraphid=\"19\" data-from-init=\"true\" data-changed=\"false\">Sincerely,</p><p class=\"root-block-node\" data-paragraphid=\"20\" data-from-init=\"true\" data-changed=\"false\">Support Team</p>', '2026-03-05 05:23:54', '2026-03-05 05:23:54'),
(12, 'customer_send_guestticket_created', 'Send email to guest, when guest-ticket is created.', 'We received your guest ticket successfully.', '<p>Dear {{ticket_username}},</p><p><br></p><p>We would like to acknowledge that we have received your request and a gust ticket has been created.</p><p>A support representative will be reviewing your request and will send you a personal response 1-2 bussiness days.</p><p><br></p><p>To view the status of the ticket or add comments, please visit</p><p><a href=\"{{ticket_customer_url}}\" target=\"_blank\">{{ticket_customer_url}}</a></p><p>Note:- Without logging into the above link, you cannot access your ticket.</p><p><br></p><p>We appreciate your patience.</p><p><br></p><p>Sincerely,</p><p>Support Team</p>', '2026-03-05 05:23:54', '2026-03-05 05:23:54'),
(13, 'customer_send_ticket_overdue', 'Send email to employees, when Ticket is Overdue.', 'Your ticket status has been overdue.', '<p class=\"root-block-node\" data-paragraphid=\"2\" data-from-init=\"true\" data-changed=\"false\">Dear Admin Panel Users,</p><p>\n                </p><p class=\"root-block-node\" data-paragraphid=\"10\" data-from-init=\"true\" data-changed=\"false\">This ticket status has been overdue for {{ticket_overduetime}} days. </p><p class=\"root-block-node\" data-paragraphid=\"10\" data-from-init=\"true\" data-changed=\"false\">Please give attention to the ticket. The customer is waiting for your response.</p><p class=\"root-block-node\" data-paragraphid=\"10\" data-from-init=\"true\" data-changed=\"false\"><br></p><p> Title : {{ticket_title}}<br>Ticket URL : <a href=\"{{ticket_admin_url}}\">VIEW Ticket</a></p><p><br></p><p class=\"root-block-node\" data-paragraphid=\"19\" data-from-init=\"true\" data-changed=\"false\">Sincerely,</p><p class=\"root-block-node\" data-paragraphid=\"20\" data-from-init=\"true\" data-changed=\"false\">Support Team</p>', '2026-03-05 05:23:54', '2026-03-05 05:23:54'),
(14, 'customer_send_ticket_response', 'When the customer does not respond to the ticket, an email is sent to the customer.', 'Waiting for your response to the ticket.', '<p>Dear {{ticket_username}},<br></p><p class=\"root-block-node\" data-paragraphid=\"6\" data-from-init=\"true\" data-changed=\"false\">Your ticket is in an idle state. Our team is waiting for your response.</p><p class=\"root-block-node\" data-paragraphid=\"6\" data-from-init=\"true\" data-changed=\"false\">If you do not respond to this ticket {{ticket_id}}, it will be automatically closed after {{ticket_closingtime}} days.</p><p class=\"root-block-node\" data-paragraphid=\"2\" data-from-init=\"true\" data-changed=\"false\">\n                </p><p class=\"root-block-node\" data-paragraphid=\"8\" data-from-init=\"true\" data-changed=\"true\"><br></p><p> Title : {{ticket_title}}<br>Ticket URL : <a href=\"{{ticket_customer_url}}\">View Ticket</a></p><p><br></p><p class=\"root-block-node\" data-paragraphid=\"19\" data-from-init=\"true\" data-changed=\"false\">Sincerely,</p><p class=\"root-block-node\" data-paragraphid=\"20\" data-from-init=\"true\" data-changed=\"false\">Support Team</p>', '2026-03-05 05:23:54', '2026-03-05 05:23:54'),
(15, 'customer_send_ticket_autoclose', 'Send email to customer, when a ticket is autoclosed.', 'Your Ticket has been Closed Succesfully', '<p class=\"root-block-node\" data-paragraphid=\"2\" data-from-init=\"true\" data-changed=\"false\">Dear {{ticket_username}},</p><p class=\"root-block-node\" data-paragraphid=\"11\" data-from-init=\"true\" data-changed=\"false\">Your ticket has been closed successfully because there was no response from your end, so the ticket was closed automatically&nbsp;{{ticket_id}}.&nbsp;</p><p class=\"root-block-node\" data-paragraphid=\"12\" data-from-init=\"true\" data-changed=\"false\">If you want to reopen this ticket, please log in to your portal.</p><p> Title : {{ticket_title}}<br>Ticket URL : <a href=\"{{ticket_customer_url}}\">VIEW Ticket</a></p><p><br></p><p class=\"root-block-node\" data-paragraphid=\"19\" data-from-init=\"true\" data-changed=\"false\">Sincerely,</p><p class=\"root-block-node\" data-paragraphid=\"20\" data-from-init=\"true\" data-changed=\"false\">Support Team</p>', '2026-03-05 05:23:54', '2026-03-05 05:23:54'),
(16, 'admin_send_email_ticket_reply', 'Send email to admin, when customer replies to ticket', 'You got reply from the customer', '<p>Hey Admin, </p><p>You have got a reply from customer. Please respond to the ticket.</p><p>Please visit the application to&nbsp;<a href=\"{{ticket_admin_url}}\" style=\"\">ViewTicket</a></p><p>Ticket Title: {{ticket_title}}<br></p><p>Ticket ID: {{ticket_id}}</p><p>Client Last Reply: {{comment}}</p><p><br></p><p class=\"root-block-node\" data-paragraphid=\"19\" data-from-init=\"true\" data-changed=\"false\">Sincerely,</p><p class=\"root-block-node\" data-paragraphid=\"20\" data-from-init=\"true\" data-changed=\"false\">Support Team</p>', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(17, 'when_ticket_assign_to_other_employee', 'Send email to employee, when a ticket is assigned.', 'You have been assigned a ticket.', '<p>Dear User,<br></p>\n                    <p>You have been assigned a ticket.</p>\n                    <p>Please visit the application and respond accordingly. <br></p>\n                    <p><a href=\"{{ticket_admin_url}}\" style=\"\">Click-here </a>to view ticket.<br></p>\n                    <p>User Name: {{ticket_username}}<br></p>\n                    <p>Ticket Title: {{ticket_title}}<br></p>\n                    <p>Ticket ID: {{ticket_id}}</p>\n                    <p><br></p>\n                    <p class=\"root-block-node\" data-paragraphid=\"19\" data-from-init=\"true\" data-changed=\"false\">Sincerely,</p><p class=\"root-block-node\" data-paragraphid=\"20\" data-from-init=\"true\" data-changed=\"false\">Support Team</p>', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(18, 'when_send_customnotify_email_to_selected_member', 'Send email to employee/customer, when a custom notification is sent to them.', 'You got a new notificatin.', '<p>Hey user, </p><p>You got a new notification. Please login to your account to see the notification in detail.</p><p class=\"root-block-node\" data-paragraphid=\"19\" data-from-init=\"true\" data-changed=\"false\">Sincerely,</p><p class=\"root-block-node\" data-paragraphid=\"20\" data-from-init=\"true\" data-changed=\"false\">Support Team</p>', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(19, 'when_send_customnotify_email_todelete_member', 'Send an email alert to the customers when they are not using the application.', 'Your account is unused and will soon be deleted.', '<p>Attention {{customer_username}}</p><p>Your {{customer_email}} personal account has been unused for {{customer_months}}.</p><p>It would be helpful if you could confirm that your account is still active by verifying it now.</p><p>Click here to <a href=\"{{ticket_customer_url}}\" target=\"_blank\">login</a></p><p>Note:  If you fail to login, your unused account with the associated data will be deleted in {{customer_time}}.</p><p><br></p><p class=\"root-block-node\" data-paragraphid=\"19\" data-from-init=\"true\" data-changed=\"false\">Sincerely,</p><p class=\"root-block-node\" data-paragraphid=\"20\" data-from-init=\"true\" data-changed=\"false\">Support Team</p>', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(20, 'admin_sendemail_whenticketclosed', 'Send an email to admin panel users when ticket is closed.', 'The ticket {{ticket_id}} has been closed.', '<p class=\"root-block-node\" data-paragraphid=\"16\" data-from-init=\"true\" data-changed=\"false\">Dear User,</p> <p class=\"root-block-node\" data-paragraphid=\"17\" data-from-init=\"true\" data-changed=\"false\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; This email is to inform you that the ticket {{ticket_id}} has been closed.</p> <p class=\"root-block-node\" data-paragraphid=\"19\" data-from-init=\"true\" data-changed=\"false\">Sincerely,</p> <p class=\"root-block-node\" data-paragraphid=\"20\" data-from-init=\"true\" data-changed=\"false\">Support Team</p>', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(21, 'customer_sendemail_whenticketclosed', 'Send an email to customer, when a ticket is closed.', 'The ticket {{ticket_id}} has been closed', '<p class=\"root-block-node\" data-paragraphid=\"16\" data-from-init=\"true\" data-changed=\"false\">Dear {{ticket_username}},</p> <p class=\"root-block-node\" data-paragraphid=\"17\" data-from-init=\"true\" data-changed=\"false\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;We hope that the ticket {{ticket_id}} was resolved to your satisfaction. If you feel that the ticket should not be closed or if the ticket has not been resolved, please go ahead and reopen it.</p> <p class=\"root-block-node\" data-paragraphid=\"19\" data-from-init=\"true\" data-changed=\"false\">Sincerely,</p> <p class=\"root-block-node\" data-paragraphid=\"20\" data-from-init=\"true\" data-changed=\"false\">Support Team</p>', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(22, 'CCmail_sendemail_whenticketclosed', 'Send an email to CC when the ticket is closed.', 'Your ticket {{ticket_id}} has been closed.', '<p class=\"root-block-node\" data-paragraphid=\"16\" data-from-init=\"true\" data-changed=\"false\">Dear {{ticket_username}},</p> <p class=\"root-block-node\" data-paragraphid=\"17\" data-from-init=\"true\" data-changed=\"false\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;We hope that the ticket {{ticket_id}} was resolved to your satisfaction. If you feel that the ticket should not be closed or if the ticket has not been resolved, please go ahead and reopen it.</p> <p class=\"root-block-node\" data-paragraphid=\"19\" data-from-init=\"true\" data-changed=\"false\">Sincerely,</p> <p class=\"root-block-node\" data-paragraphid=\"20\" data-from-init=\"true\" data-changed=\"false\">Support Team</p>', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(23, 'admin_sendemail_whenticketreopen', 'Send an email to admin panel users when ticket is reopened.', 'The ticket has been reopened.', '<p class=\"root-block-node\" data-paragraphid=\"16\" data-from-init=\"true\" data-changed=\"false\">Dear User,</p> <p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;The ticket {{ticket_id}}&nbsp;has been reopened by the {{ticket_username}}. Please review the ticket again.</p> <p class=\"root-block-node\" data-paragraphid=\"19\" data-from-init=\"true\" data-changed=\"false\">Sincerely,</p> <p class=\"root-block-node\" data-paragraphid=\"20\" data-from-init=\"true\" data-changed=\"false\">Support Team</p>', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(24, 'guestticket_email_verification_view', 'Guest email verification to view ticket.', 'Guest-Ticket Email Verification', '<p class=\"root-block-node\" data-paragraphid=\"16\" data-from-init=\"true\" data-changed=\"false\">Dear {{guestname}},</p><p class=\"root-block-node\" data-paragraphid=\"17\" data-from-init=\"true\" data-changed=\"false\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; {{guestotp}} is your one time password (otp) to view your ticket.</p><p class=\"root-block-node\" data-paragraphid=\"17\" data-from-init=\"true\" data-changed=\"false\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; {{guestemail}}</p><p class=\"root-block-node\" data-paragraphid=\"17\" data-from-init=\"true\" data-changed=\"false\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Please do not share your otp’s with anyone.</p>\n                <p class=\"root-block-node\" data-paragraphid=\"19\" data-from-init=\"true\" data-changed=\"false\">Sincerely,</p>\n                <p class=\"root-block-node\" data-paragraphid=\"20\" data-from-init=\"true\" data-changed=\"false\">Support Team</p>', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(25, 'send_mail_to_customer_when_ticket_closed_by_admin', 'Send mail to customer when ticket closed by admin', 'Your ticket {{ticket_id}} has been closed succesfully.', '<p class=\"root-block-node\" data-paragraphid=\"33\" data-from-init=\"true\" data-changed=\"false\">Dear {{ticket_username}},</p><p class=\"root-block-node\" data-paragraphid=\"34\" data-from-init=\"true\" data-changed=\"false\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Your ticket {{ticket_id}} has been closed by our team support.</p>\n                <p class=\"root-block-node\" data-changed=\"false\" data-paragraphid=\"45\">Sincerely,<br></p><p class=\"root-block-node\" data-changed=\"false\" data-paragraphid=\"45\">Support Team</p>', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(26, 'send_mail_to_agent_when_ticket_closed_by_admin_or_agent', 'Send mail to agent and admin when ticket closed by admin or agent', 'The ticket has been closed.', '<p class=\"root-block-node\" data-paragraphid=\"33\" data-from-init=\"true\" data-changed=\"false\">Dear Admin panel user,</p><p class=\"root-block-node\" data-paragraphid=\"34\" data-from-init=\"true\" data-changed=\"false\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; The ticket {{ticket_id}} has been closed by our support team {{closed_agent_role}} {{closed_agent_name}}.</p>\n                <p class=\"root-block-node\" data-changed=\"false\" data-paragraphid=\"45\">Sincerely,<br></p><p class=\"root-block-node\" data-changed=\"false\" data-paragraphid=\"45\">Support Team</p>', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(27, 'send_mail_admin_panel_users_when_category_changed', 'Send mail to admin panel users when ticket category changed', 'The ticket category has been changed.', '<p class=\"root-block-node\" data-paragraphid=\"33\" data-from-init=\"true\" data-changed=\"false\">Dear Admin panel user,</p>\n                        <p class=\"root-block-node\" data-paragraphid=\"34\" data-from-init=\"true\" data-changed=\"false\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; The ticket {{ticket_id}}  category has been changed.</p>\n                        <p class=\"root-block-node\" data-changed=\"false\" data-paragraphid=\"45\">Sincerely,<br></p><p class=\"root-block-node\" data-changed=\"false\" data-paragraphid=\"45\">Support Team</p>', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(28, 'send_mail_customer_when_category_changed', 'Send mail to customers when ticket category is changed', 'The category has been changed.', '<p class=\"root-block-node\" data-paragraphid=\"16\" data-from-init=\"true\" data-changed=\"false\">Dear {{ticket_username}},</p><p class=\"root-block-node\" data-paragraphid=\"16\" data-from-init=\"true\" data-changed=\"false\">This email is to let you know that you have selected the wrong category {{ticket_oldcategory}} for this project. Our support team has changed it to the right category, {{ticket_changedcategory}}.</p>\n                <p class=\"root-block-node\" data-paragraphid=\"19\" data-from-init=\"true\" data-changed=\"false\">Sincerely,</p>\n                <p class=\"root-block-node\" data-paragraphid=\"20\" data-from-init=\"true\" data-changed=\"false\">Support Team</p>', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(29, 'send_mail_to_admin_when_ticket_note_created', 'Send mail to admin when ticket note is created.', 'A ticket note for {{ticket_id}} is created.', '<p class=\"root-block-node\" data-paragraphid=\"16\" data-from-init=\"true\" data-changed=\"false\">Dear Admin,</p><p class=\"root-block-node\" data-paragraphid=\"16\" data-from-init=\"true\" data-changed=\"false\">This email is to let you know that {{note_username}} has added a new note for a ticket {{ticket_id}}.</p>\n                <p></p><p class=\"root-block-node\" data-paragraphid=\"16\" data-from-init=\"true\" data-changed=\"false\"><b>Note by employee&nbsp;</b>: </p><p class=\"root-block-node\" data-paragraphid=\"16\" data-from-init=\"true\" data-changed=\"false\">{{ticket_note}}</p><p class=\"root-block-node\" data-paragraphid=\"16\" data-from-init=\"true\" data-changed=\"false\"><b>Ticket URL</b> :</p><p class=\"root-block-node\" data-paragraphid=\"16\" data-from-init=\"true\" data-changed=\"false\">{{ticket_admin_url}}&nbsp;</p>\n                <p class=\"root-block-node\" data-paragraphid=\"19\" data-from-init=\"true\" data-changed=\"false\">Sincerely,</p>\n                <p class=\"root-block-node\" data-paragraphid=\"20\" data-from-init=\"true\" data-changed=\"false\">Support Team</p>', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(30, 'guestticket_email_verification', 'Guest email verification to create ticket.', 'Guest Ticket Verification', '<p class=\"root-block-node\" data-paragraphid=\"16\" data-from-init=\"true\" data-changed=\"false\">Dear {{guestname}},</p>\n                <p class=\"root-block-node\" data-paragraphid=\"17\" data-from-init=\"true\" data-changed=\"false\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Please verify your email address to create your guest ticket.</p><p class=\"root-block-node\" data-paragraphid=\"17\" data-from-init=\"true\" data-changed=\"false\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Your OTP:- {{guestotp}}</p><p class=\"root-block-node\" data-paragraphid=\"17\" data-from-init=\"true\" data-changed=\"false\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;{{guestemail}}</p>\n                <p class=\"root-block-node\" data-paragraphid=\"19\" data-from-init=\"true\" data-changed=\"false\">Sincerely,</p>\n                <p class=\"root-block-node\" data-paragraphid=\"20\" data-from-init=\"true\" data-changed=\"false\">Support Team</p>', '2026-03-05 05:24:00', '2026-03-05 05:24:00'),
(31, 'customer_send_guestticket_created_with_attachment_failed', 'Send email to guest, when file attachment is failed. Guest-ticket is created.', 'We received your guest ticket successfully. But upload attachment was failed.', '<p>Dear {{ticket_username}},</p><p><br></p><p>We would like to acknowledge that we have received your request and a gust ticket has been created.</p><p>A support representative will be reviewing your request and will send you a personal response 1-2 bussiness days.</p><p><br></p><p>To view the status of the ticket or add comments, please visit</p><p><a href=\"{{ticket_customer_url}}\" target=\"_blank\">{{ticket_customer_url}}</a></p><p>Note:- Without logging into the above link, you cannot access your ticket.</p><p>File upload failed, Please make sure that the file size is within the allowed limits and that the file format is supported.</p><p>Allowed Limits of Files&nbsp; :&nbsp;</p><p>File Formats : {{ticket_file_format}}</p><p>File Size : {{ticket_file_size}} MB</p><p>Max Files that can be uploaded : {{ticket_file_count}}</p><p>We appreciate your patience.</p><p><br></p><p>Sincerely,</p><p>Support Team</p>', '2026-03-05 05:24:19', '2026-03-05 05:24:19');

-- --------------------------------------------------------

--
-- Struktur dari tabel `employeeratings`
--

CREATE TABLE `employeeratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `urating_id` bigint(20) UNSIGNED DEFAULT NULL,
  `rating` bigint(20) NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `envatoapitoken`
--

CREATE TABLE `envatoapitoken` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `envatoapitoken` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `envatocategoryassign`
--

CREATE TABLE `envatocategoryassign` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `envato_enable` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `faq_categories`
--

CREATE TABLE `faq_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `faqcategoryname` varchar(255) NOT NULL,
  `slug` longtext DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `faq_list`
--

CREATE TABLE `faq_list` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` varchar(255) NOT NULL,
  `answer` longtext NOT NULL,
  `faqcat_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `privatemode` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `faq_list`
--

INSERT INTO `faq_list` (`id`, `question`, `answer`, `faqcat_id`, `status`, `privatemode`, `created_at`, `updated_at`) VALUES
(1, 'Nemo enim ipsam voluptatem quia voluptas sit aspernatur ?', '<p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven`t heard of them accusamus labore sustainable VHS.</p> <p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven`t heard of them accusamus labore sustainable VHS.</p>', NULL, 1, NULL, '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(2, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry?', '<p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven`t heard of them accusamus labore sustainable VHS.</p> <p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven`t heard of them accusamus labore sustainable VHS.</p>', NULL, 1, NULL, '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(3, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry?', '<p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven`t heard of them accusamus labore sustainable VHS.</p> <p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven`t heard of them accusamus labore sustainable VHS.</p>', NULL, 1, NULL, '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(4, 'Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet ?', '<p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven`t heard of them accusamus labore sustainable VHS.</p> <p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven`t heard of them accusamus labore sustainable VHS.</p>', NULL, 1, NULL, '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(5, 'Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil?', '<p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven`t heard of them accusamus labore sustainable VHS.</p> <p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven`t heard of them accusamus labore sustainable VHS.</p>', NULL, 1, NULL, '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(6, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry?', '<p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven`t heard of them accusamus labore sustainable VHS.</p> <p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven`t heard of them accusamus labore sustainable VHS.</p>', NULL, 1, NULL, '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(7, 'Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet ?', '<p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven`t heard of them accusamus labore sustainable VHS.</p> <p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven`t heard of them accusamus labore sustainable VHS.</p>', NULL, 1, NULL, '2026-03-05 05:23:55', '2026-03-05 05:23:55');

-- --------------------------------------------------------

--
-- Struktur dari tabel `feature_boxes`
--

CREATE TABLE `feature_boxes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  `featureboxurl` longtext DEFAULT NULL,
  `url_checkbox` longtext DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `feature_boxes`
--

INSERT INTO `feature_boxes` (`id`, `title`, `subtitle`, `featureboxurl`, `url_checkbox`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Secure Payment', 'Nam libero tempore, cum soluta nobis est eligendi cumque facere possimus', NULL, NULL, NULL, '2026-03-05 05:23:54', '2026-03-05 05:23:54'),
(2, 'Quality Templates', 'Nam libero tempore, cum soluta nobis est eligendi cumque facere possimus', NULL, NULL, NULL, '2026-03-05 05:23:54', '2026-03-05 05:23:54'),
(3, '24/7 Support', 'Nam libero tempore, cum soluta nobis est eligendi cumque facere possimus', NULL, NULL, NULL, '2026-03-05 05:23:54', '2026-03-05 05:23:54');

-- --------------------------------------------------------

--
-- Struktur dari tabel `footertexts`
--

CREATE TABLE `footertexts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `copyright` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `footertexts`
--

INSERT INTO `footertexts` (`id`, `copyright`, `created_at`, `updated_at`) VALUES
(1, '<p class=\"mb-0\">Copyright © 2023 <a href=\"https://uhelp.spruko.com/\"> Uhelp </a>. Developed by <a href=\"https://spruko.com/\">Spruko Technologies</a></p>', '2026-03-05 05:23:54', '2026-03-05 05:23:54');

-- --------------------------------------------------------

--
-- Struktur dari tabel `groups`
--

CREATE TABLE `groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `groupname` varchar(255) NOT NULL,
  `groupstatus` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `groups_categories`
--

CREATE TABLE `groups_categories` (
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `groups_users`
--

CREATE TABLE `groups_users` (
  `groups_id` bigint(20) UNSIGNED NOT NULL,
  `users_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `i_p_l_i_s_t_s`
--

CREATE TABLE `i_p_l_i_s_t_s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ip` varchar(255) NOT NULL,
  `country` varchar(255) DEFAULT NULL,
  `entrytype` varchar(255) DEFAULT NULL,
  `types` varchar(255) DEFAULT NULL,
  `start` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `languagename` varchar(250) NOT NULL,
  `languagenativename` varchar(150) NOT NULL,
  `is_rtl` tinyint(1) DEFAULT NULL,
  `languagecode` varchar(3) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `languages`
--

INSERT INTO `languages` (`id`, `languagename`, `languagenativename`, `is_rtl`, `languagecode`, `created_at`, `updated_at`) VALUES
(1, 'English', 'English', 0, 'en', '2026-03-05 05:24:05', '2026-03-05 05:24:05');

-- --------------------------------------------------------

--
-- Struktur dari tabel `media`
--

CREATE TABLE `media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) DEFAULT NULL,
  `collection_name` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `mime_type` varchar(255) DEFAULT NULL,
  `disk` varchar(255) NOT NULL,
  `conversions_disk` varchar(255) DEFAULT NULL,
  `size` bigint(20) UNSIGNED NOT NULL,
  `manipulations` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`manipulations`)),
  `custom_properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`custom_properties`)),
  `generated_conversions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`generated_conversions`)),
  `responsive_images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`responsive_images`)),
  `order_column` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2021_04_22_040708_contactform', 1),
(4, '2021_04_22_091416_countries', 1),
(5, '2021_04_27_060126_timezones', 1),
(6, '2021_04_27_102115_tickets', 1),
(7, '2021_04_28_042408_create_roles_table', 1),
(8, '2021_05_03_035012_create_categories_table', 1),
(9, '2021_05_03_094047_create_comments_table', 1),
(10, '2021_06_19_050240_create_table_articles', 1),
(11, '2021_06_28_083257_create_article_comments_table', 1),
(12, '2021_06_30_083642_create_article_replies_table', 1),
(13, '2021_07_06_100416_article_likes', 1),
(14, '2021_07_15_035926_create_media_table', 1),
(15, '2021_07_26_115944_create_permission_tables', 1),
(16, '2021_08_03_050245_create_faq_list', 1),
(17, '2021_08_03_111412_create_testimonials_table', 1),
(18, '2021_08_04_104125_create_callactions_table', 1),
(19, '2021_08_05_040909_create_feature_boxes_table', 1),
(20, '2021_08_05_051851_create_apptitles_table', 1),
(21, '2021_08_05_121507_create_footertexts_table', 1),
(22, '2021_08_16_050727_create_seosettings_table', 1),
(23, '2021_08_16_071125_create_addcoloumn_apptitles', 1),
(24, '2021_08_20_063925_create_verify_users_table', 1),
(25, '2021_08_26_043304_create_table_pages', 1),
(26, '2021_08_26_111852_create_announcements_table', 1),
(27, '2021_08_27_083617_create_settings_table', 1),
(28, '2021_08_27_101912_create_email_templates_table', 1),
(29, '2021_08_30_062024_create_social_auth_settings_table', 1),
(30, '2021_09_17_051723_create_add_coloumn_category', 1),
(31, '2021_09_21_082936_create_customizeerrors_table', 1),
(32, '2021_09_22_052400_create_table_categoryuser', 1),
(33, '2021_09_27_050656_create_customcssjs_table', 1),
(34, '2021_09_27_120834_create_add_column_tickets', 1),
(35, '2021_10_08_113339_create_table_groups', 1),
(36, '2021_10_08_113458_create_table_groups_users', 1),
(37, '2021_10_08_120528_create_table_groups_categories', 1),
(38, '2021_10_14_051452_create_notifications_table', 1),
(39, '2021_10_22_091731_create_ticketnotes_table', 1),
(40, '2021_10_28_041824_create_projects_categories_table', 1),
(41, '2021_10_30_061123_create_usersettings_table', 1),
(42, '2021_11_11_062738_create_sendmails_table', 1),
(43, '2021_11_12_035635_create_senduserlists_table', 1),
(44, '2021_11_15_044456_add_login_fields_to_customers_table', 1),
(45, '2021_11_18_111347_create_customer_settings_table', 1),
(46, '2021_12_08_103116_create_i_p_l_i_s_t_s_table', 1),
(47, '2022_03_10_094231_create_envatoapitoken', 1),
(48, '2022_03_10_094658_create_envatocategoryassign', 1),
(49, '2022_03_10_095956_create_add_column_ticket_table', 1),
(50, '2022_03_11_035359_create_add_column_cannedmessages_table', 1),
(51, '2022_03_16_152830_create_add_column_articles_table', 1),
(52, '2022_03_16_152938_create_add_column_faq_table', 1),
(53, '2022_03_28_060354_create_add_column_Category_article_table', 1),
(54, '2022_04_11_041716_create_subcategorysd_table', 1),
(55, '2022_04_21_053048_create_verify_otps_table', 1),
(56, '2022_04_30_042009_create_add_column_featurebox_url', 1),
(57, '2022_05_16_050959_create_timezone', 1),
(58, '2022_05_23_050956_create_bussinesshours', 1),
(59, '2022_06_09_033735_create_faq_categories_table', 1),
(60, '2022_06_13_110345_create_userratings_table', 1),
(61, '2022_06_13_111713_create_employeeratings_table', 1),
(62, '2022_06_13_111729_create_ratingtokens_table', 1),
(63, '2022_07_18_074123_create_customfields', 1),
(64, '2022_07_18_074245_create_ticket_customfields_table', 1),
(65, '2022_07_18_074733_create_languages', 1),
(66, '2022_07_18_074757_create_translates_table', 1),
(67, '2022_08_26_061128_create_ticketsccemails', 1),
(68, '2022_09_08_045457_create_addcolumn_extra', 1),
(69, '2022_09_22_102122_create_departments_table', 1),
(70, '2022_09_23_102604_create_ticketassignchildren_table', 1),
(71, '2022_09_29_035250_create_tickethistories_table', 1),
(72, '2022_12_23_113549_announcement_startdate_nullable', 1),
(73, '2023_02_15_044824_add_extra_column_to_tickets_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) NOT NULL,
  `type` varchar(255) NOT NULL,
  `notifiable_type` varchar(255) NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `notifiable` tinyint(1) NOT NULL DEFAULT 0,
  `data` text NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `notifiable`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('17547726-5362-438e-9621-1bc3733c4d61', 'App\\Notifications\\TicketCreateNotifications', 'App\\Models\\User', 1, 1, '{\"ticket_id\":\"SPG-1\",\"title\":\"tiketmati\",\"category\":\"Ticket Support\",\"status\":\"New\",\"overduestatus\":null,\"link\":\"http:\\/\\/localhost\\/uhelp\\/admin\\/ticket-view\\/SPG-1\",\"clink\":\"http:\\/\\/localhost\\/uhelp\\/customer\\/ticket\\/view\\/SPG-1\"}', NULL, '2026-03-05 06:09:22', '2026-03-05 06:09:25'),
('95d12716-cbba-4c0a-af7d-037059f28cb9', 'App\\Notifications\\TicketCreateNotifications', 'App\\Models\\Customer', 1, 0, '{\"ticket_id\":\"SPG-1\",\"title\":\"tiketmati\",\"category\":\"Ticket Support\",\"status\":\"New\",\"overduestatus\":null,\"link\":\"http:\\/\\/localhost\\/uhelp\\/admin\\/ticket-view\\/SPG-1\",\"clink\":\"http:\\/\\/localhost\\/uhelp\\/customer\\/ticket\\/view\\/SPG-1\"}', NULL, '2026-03-05 06:09:22', '2026-03-05 06:09:22');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pagename` varchar(255) NOT NULL,
  `pagedescription` longtext NOT NULL,
  `pageslug` longtext DEFAULT NULL,
  `viewonpages` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `permissionsgroupname` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `permissionsgroupname`, `created_at`, `updated_at`) VALUES
(1, 'Profile Edit', 'web', 'Profile Edit', '2026-03-05 05:23:50', '2026-03-05 05:24:02'),
(3, 'Ticket Create', 'web', 'Tickets', '2026-03-05 05:23:50', '2026-03-05 05:24:02'),
(4, 'Ticket Edit', 'web', 'Tickets', '2026-03-05 05:23:50', '2026-03-05 05:24:02'),
(5, 'Ticket Delete', 'web', 'Tickets', '2026-03-05 05:23:50', '2026-03-05 05:24:02'),
(6, 'Ticket Assign', 'web', 'Tickets', '2026-03-05 05:23:50', '2026-03-05 05:24:02'),
(15, 'Project Access', 'web', 'Project', '2026-03-05 05:23:51', '2026-03-05 05:24:00'),
(16, 'Project Create', 'web', 'Project', '2026-03-05 05:23:51', '2026-03-05 05:24:00'),
(17, 'Project Edit', 'web', 'Project', '2026-03-05 05:23:51', '2026-03-05 05:24:00'),
(18, 'Project Delete', 'web', 'Project', '2026-03-05 05:23:51', '2026-03-05 05:24:00'),
(19, 'Project Assign', 'web', 'Project', '2026-03-05 05:23:51', '2026-03-05 05:24:00'),
(20, 'Project Importlist', 'web', 'Project', '2026-03-05 05:23:51', '2026-03-05 05:24:00'),
(21, 'Knowledge Access', 'web', 'Knowledge', '2026-03-05 05:23:51', '2026-03-05 05:24:00'),
(22, 'Article Access', 'web', 'Knowledge', '2026-03-05 05:23:51', '2026-03-05 05:24:00'),
(23, 'Article Create', 'web', 'Knowledge', '2026-03-05 05:23:51', '2026-03-05 05:24:00'),
(24, 'Article View', 'web', 'Knowledge', '2026-03-05 05:23:51', '2026-03-05 05:24:00'),
(25, 'Article Edit', 'web', 'Knowledge', '2026-03-05 05:23:51', '2026-03-05 05:24:00'),
(26, 'Article Delete', 'web', 'Knowledge', '2026-03-05 05:23:51', '2026-03-05 05:24:00'),
(27, 'Category Access', 'web', 'Category', '2026-03-05 05:23:51', '2026-03-05 05:24:00'),
(28, 'Category Create', 'web', 'Category', '2026-03-05 05:23:51', '2026-03-05 05:24:00'),
(29, 'Category Edit', 'web', 'Category', '2026-03-05 05:23:51', '2026-03-05 05:24:00'),
(30, 'Category Assign To Groups', 'web', 'Category', '2026-03-05 05:23:51', '2026-03-05 05:24:00'),
(31, 'Managerole Access', 'web', 'Roles & Permission', '2026-03-05 05:23:51', '2026-03-05 05:24:00'),
(32, 'Roles & Permission Access', 'web', 'Roles & Permission', '2026-03-05 05:23:51', '2026-03-05 05:24:00'),
(33, 'Roles & Permission Create', 'web', 'Roles & Permission', '2026-03-05 05:23:51', '2026-03-05 05:24:00'),
(34, 'Roles & Permission Edit', 'web', 'Roles & Permission', '2026-03-05 05:23:51', '2026-03-05 05:24:00'),
(35, 'Employee Access', 'web', 'Employee', '2026-03-05 05:23:51', '2026-03-05 05:24:00'),
(36, 'Employee Create', 'web', 'Employee', '2026-03-05 05:23:51', '2026-03-05 05:24:00'),
(37, 'Employee Edit', 'web', 'Employee', '2026-03-05 05:23:51', '2026-03-05 05:24:00'),
(38, 'Employee Delete', 'web', 'Employee', '2026-03-05 05:23:51', '2026-03-05 05:24:00'),
(39, 'Employee Importlist', 'web', 'Employee', '2026-03-05 05:23:51', '2026-03-05 05:24:00'),
(40, 'Landing Page Access', 'web', 'Landing Page Setting', '2026-03-05 05:23:51', '2026-03-05 05:24:02'),
(41, 'Banner Access', 'web', 'Landing Page Setting', '2026-03-05 05:23:51', '2026-03-05 05:24:02'),
(42, 'Feature Box Access', 'web', 'Feature Box', '2026-03-05 05:23:51', '2026-03-05 05:24:00'),
(43, 'Feature Box Create', 'web', 'Feature Box', '2026-03-05 05:23:51', '2026-03-05 05:24:00'),
(44, 'Feature Box Edit', 'web', 'Feature Box', '2026-03-05 05:23:51', '2026-03-05 05:24:00'),
(45, 'Feature Box Delete', 'web', 'Feature Box', '2026-03-05 05:23:51', '2026-03-05 05:24:00'),
(46, 'Call To Action Access', 'web', 'Landing Page Setting', '2026-03-05 05:23:51', '2026-03-05 05:24:02'),
(47, 'Testimonial Access', 'web', 'Testimonial', '2026-03-05 05:23:51', '2026-03-05 05:24:01'),
(48, 'Testimonial Create', 'web', 'Testimonial', '2026-03-05 05:23:51', '2026-03-05 05:24:01'),
(49, 'Testimonial Edit', 'web', 'Testimonial', '2026-03-05 05:23:51', '2026-03-05 05:24:01'),
(50, 'Testimonial Delete', 'web', 'Testimonial', '2026-03-05 05:23:51', '2026-03-05 05:24:01'),
(51, 'FAQs Access', 'web', 'FAQ`s', '2026-03-05 05:23:51', '2026-03-05 05:24:00'),
(52, 'FAQs Create', 'web', 'FAQ`s', '2026-03-05 05:23:51', '2026-03-05 05:24:00'),
(53, 'FAQs Edit', 'web', 'FAQ`s', '2026-03-05 05:23:51', '2026-03-05 05:24:00'),
(54, 'FAQs Delete', 'web', 'FAQ`s', '2026-03-05 05:23:51', '2026-03-05 05:24:00'),
(55, 'Customers Access', 'web', 'Customer', '2026-03-05 05:23:51', '2026-03-05 05:24:01'),
(56, 'Customers Create', 'web', 'Customer', '2026-03-05 05:23:51', '2026-03-05 05:24:01'),
(57, 'Customers Edit', 'web', 'Customer', '2026-03-05 05:23:51', '2026-03-05 05:24:01'),
(58, 'Customers Delete', 'web', 'Customer', '2026-03-05 05:23:51', '2026-03-05 05:24:01'),
(59, 'Customers Importlist', 'web', 'Customer', '2026-03-05 05:23:51', '2026-03-05 05:24:01'),
(60, 'Customers Login', 'web', 'Customer', '2026-03-05 05:23:51', '2026-03-05 05:24:01'),
(61, 'Groups Access', 'web', 'Groups', '2026-03-05 05:23:52', '2026-03-05 05:24:01'),
(62, 'Groups List Access', 'web', 'Groups', '2026-03-05 05:23:52', '2026-03-05 05:24:01'),
(63, 'Groups Create', 'web', 'Groups', '2026-03-05 05:23:52', '2026-03-05 05:24:01'),
(64, 'Groups Edit', 'web', 'Groups', '2026-03-05 05:23:52', '2026-03-05 05:24:01'),
(65, 'Custom Notifications Access', 'web', 'Custom Notifications', '2026-03-05 05:23:52', '2026-03-05 05:24:01'),
(66, 'Custom Notifications View', 'web', 'Custom Notifications', '2026-03-05 05:23:52', '2026-03-05 05:24:01'),
(67, 'Custom Notifications Delete', 'web', 'Custom Notifications', '2026-03-05 05:23:52', '2026-03-05 05:24:01'),
(68, 'Custom Notifications Employee', 'web', 'Custom Notifications', '2026-03-05 05:23:52', '2026-03-05 05:24:01'),
(69, 'Custom Notifications Customer', 'web', 'Custom Notifications', '2026-03-05 05:23:52', '2026-03-05 05:24:01'),
(70, 'Custom Pages Access', 'web', 'Custom pages', '2026-03-05 05:23:52', '2026-03-05 05:24:01'),
(71, 'Pages Access', 'web', 'Custom pages', '2026-03-05 05:23:52', '2026-03-05 05:24:01'),
(72, 'Pages Edit', 'web', 'Custom pages', '2026-03-05 05:23:52', '2026-03-05 05:24:01'),
(73, 'Pages View', 'web', 'Custom pages', '2026-03-05 05:23:52', '2026-03-05 05:24:01'),
(74, '404 Error Page Access', 'web', 'Custom pages', '2026-03-05 05:23:52', '2026-03-05 05:24:01'),
(75, 'Under Maintanance Page Access', 'web', 'Custom pages', '2026-03-05 05:23:52', '2026-03-05 05:24:01'),
(76, 'App Setting Access', 'web', 'App Setting', '2026-03-05 05:23:52', '2026-03-05 05:24:01'),
(77, 'General Setting Access', 'web', 'App Setting', '2026-03-05 05:23:52', '2026-03-05 05:24:01'),
(78, 'Ticket Setting Access', 'web', 'App Setting', '2026-03-05 05:23:52', '2026-03-05 05:24:01'),
(79, 'SEO Access', 'web', 'App Setting', '2026-03-05 05:23:52', '2026-03-05 05:24:01'),
(80, 'Google Analytics Access', 'web', 'App Setting', '2026-03-05 05:23:52', '2026-03-05 05:24:01'),
(81, 'Custom JS & CSS Access', 'web', 'App Setting', '2026-03-05 05:23:52', '2026-03-05 05:24:02'),
(82, 'Captcha Setting Access', 'web', 'App Setting', '2026-03-05 05:23:52', '2026-03-05 05:24:02'),
(83, 'Social Logins Access', 'web', 'App Setting', '2026-03-05 05:23:52', '2026-03-05 05:24:02'),
(84, 'Email Setting Access', 'web', 'App Setting', '2026-03-05 05:23:52', '2026-03-05 05:24:02'),
(85, 'Custom Chat Access', 'web', 'App Setting', '2026-03-05 05:23:52', '2026-03-05 05:24:02'),
(86, 'Maintenance Mode Access', 'web', 'App Setting', '2026-03-05 05:23:52', '2026-03-05 05:24:02'),
(87, 'SecruitySetting Access', 'web', 'App Setting', '2026-03-05 05:23:52', '2026-03-05 05:24:02'),
(88, 'Emailtoticket Access', 'web', 'App Setting', '2026-03-05 05:23:52', '2026-03-05 05:24:02'),
(89, 'IpBlock Access', 'web', 'IP Block', '2026-03-05 05:23:52', '2026-03-05 05:24:01'),
(90, 'IpBlock Add', 'web', 'IP Block', '2026-03-05 05:23:52', '2026-03-05 05:24:01'),
(91, 'IpBlock Edit', 'web', 'IP Block', '2026-03-05 05:23:52', '2026-03-05 05:24:01'),
(92, 'IpBlock Delete', 'web', 'IP Block', '2026-03-05 05:23:52', '2026-03-05 05:24:01'),
(93, 'Announcements Access', 'web', 'Annoucements', '2026-03-05 05:23:52', '2026-03-05 05:24:01'),
(94, 'Announcements Create', 'web', 'Annoucements', '2026-03-05 05:23:52', '2026-03-05 05:24:01'),
(95, 'Announcements Edit', 'web', 'Annoucements', '2026-03-05 05:23:52', '2026-03-05 05:24:01'),
(96, 'Announcements Delete', 'web', 'Annoucements', '2026-03-05 05:23:52', '2026-03-05 05:24:01'),
(97, 'Email Template Access', 'web', 'Email Template', '2026-03-05 05:23:53', '2026-03-05 05:24:01'),
(98, 'Email Template Edit', 'web', 'Email Template', '2026-03-05 05:23:53', '2026-03-05 05:24:01'),
(99, 'Reports Access', 'web', 'Reports', '2026-03-05 05:23:53', '2026-03-05 05:24:02'),
(100, 'Canned Response Access', 'web', 'Canned Response', '2026-03-05 05:23:55', '2026-03-05 05:24:00'),
(101, 'Canned Response Create', 'web', 'Canned Response', '2026-03-05 05:23:55', '2026-03-05 05:24:00'),
(102, 'Canned Response Edit', 'web', 'Canned Response', '2026-03-05 05:23:55', '2026-03-05 05:24:00'),
(103, 'Canned Response Delete', 'web', 'Canned Response', '2026-03-05 05:23:55', '2026-03-05 05:24:00'),
(104, 'Envato Access', 'web', 'Envato', '2026-03-05 05:23:55', '2026-03-05 05:24:01'),
(105, 'Envato API Token Access', 'web', 'Envato', '2026-03-05 05:23:55', '2026-03-05 05:24:01'),
(106, 'Envato License Details Access', 'web', 'Envato', '2026-03-05 05:23:56', '2026-03-05 05:24:01'),
(107, 'App Info Access', 'web', 'App Info', '2026-03-05 05:23:56', '2026-03-05 05:24:01'),
(108, 'App Purchase Code Access', 'web', 'App Info', '2026-03-05 05:23:56', '2026-03-05 05:24:01'),
(109, 'Pages Create', 'web', 'Custom pages', '2026-03-05 05:23:57', '2026-03-05 05:24:01'),
(110, 'Pages Delete', 'web', 'Custom pages', '2026-03-05 05:23:57', '2026-03-05 05:24:01'),
(111, 'Categories Access', 'web', 'Category', '2026-03-05 05:23:58', '2026-03-05 05:24:00'),
(112, 'Subcategory Access', 'web', 'Category', '2026-03-05 05:23:58', '2026-03-05 05:24:00'),
(113, 'Subcategory Create', 'web', 'Category', '2026-03-05 05:23:58', '2026-03-05 05:24:00'),
(114, 'Subcategory Edit', 'web', 'Category', '2026-03-05 05:23:58', '2026-03-05 05:24:00'),
(115, 'Subcategory Delete', 'web', 'Category', '2026-03-05 05:23:58', '2026-03-05 05:24:00'),
(116, 'Department Access', 'web', 'Department', '2026-03-05 05:24:02', '2026-03-05 05:24:02'),
(117, 'Department Create', 'web', 'Department', '2026-03-05 05:24:02', '2026-03-05 05:24:02'),
(118, 'Department Edit', 'web', 'Department', '2026-03-05 05:24:02', '2026-03-05 05:24:02'),
(119, 'Department Delete', 'web', 'Department', '2026-03-05 05:24:02', '2026-03-05 05:24:02'),
(120, 'CustomField Access', 'web', 'CustomField', '2026-03-05 05:24:02', '2026-03-05 05:24:02'),
(121, 'CustomField Create', 'web', 'CustomField', '2026-03-05 05:24:02', '2026-03-05 05:24:02'),
(122, 'CustomField Edit', 'web', 'CustomField', '2026-03-05 05:24:02', '2026-03-05 05:24:02'),
(123, 'CustomField Delete', 'web', 'CustomField', '2026-03-05 05:24:02', '2026-03-05 05:24:02'),
(124, 'Languages Access', 'web', 'Languages', '2026-03-05 05:24:03', '2026-03-05 05:24:03'),
(125, 'Languages Create', 'web', 'Languages', '2026-03-05 05:24:03', '2026-03-05 05:24:03'),
(126, 'Languages Edit', 'web', 'Languages', '2026-03-05 05:24:03', '2026-03-05 05:24:03'),
(127, 'Languages Delete', 'web', 'Languages', '2026-03-05 05:24:03', '2026-03-05 05:24:03'),
(128, 'Languages Translate', 'web', 'Languages', '2026-03-05 05:24:03', '2026-03-05 05:24:03'),
(129, 'Main FAQ Access', 'web', 'FAQ`s', '2026-03-05 05:24:03', '2026-03-05 05:24:03'),
(130, 'FAQ Category Access', 'web', 'FAQ`s', '2026-03-05 05:24:03', '2026-03-05 05:24:03'),
(131, 'FAQ Category Create', 'web', 'FAQ`s', '2026-03-05 05:24:03', '2026-03-05 05:24:03'),
(132, 'FAQ Category Edit', 'web', 'FAQ`s', '2026-03-05 05:24:03', '2026-03-05 05:24:03'),
(133, 'FAQ Category Delete', 'web', 'FAQ`s', '2026-03-05 05:24:03', '2026-03-05 05:24:03'),
(134, 'Bussiness Hours Access', 'web', 'Bussiness Hours', '2026-03-05 05:24:03', '2026-03-05 05:24:03'),
(135, 'Category Delete', 'web', 'Category', '2026-03-05 05:24:03', '2026-03-05 05:24:03'),
(136, 'Groups Delete', 'web', 'Groups', '2026-03-05 05:24:03', '2026-03-05 05:24:03'),
(137, 'Reset Password', 'web', 'Employee', '2026-03-05 05:24:03', '2026-03-05 05:24:03'),
(138, 'Employee Status', 'web', 'Employee', '2026-03-05 05:24:03', '2026-03-05 05:24:03');

-- --------------------------------------------------------

--
-- Struktur dari tabel `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `projects_categories`
--

CREATE TABLE `projects_categories` (
  `projects_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `ratingtokens`
--

CREATE TABLE `ratingtokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `ticket_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'superadmin', 'web', '2026-03-05 05:23:53', '2026-03-05 05:23:53');

-- --------------------------------------------------------

--
-- Struktur dari tabel `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(91, 1),
(92, 1),
(93, 1),
(94, 1),
(95, 1),
(96, 1),
(97, 1),
(98, 1),
(99, 1),
(100, 1),
(101, 1),
(102, 1),
(103, 1),
(104, 1),
(105, 1),
(106, 1),
(107, 1),
(108, 1),
(109, 1),
(110, 1),
(111, 1),
(112, 1),
(113, 1),
(114, 1),
(115, 1),
(116, 1),
(117, 1),
(118, 1),
(119, 1),
(120, 1),
(121, 1),
(122, 1),
(123, 1),
(124, 1),
(125, 1),
(126, 1),
(127, 1),
(128, 1),
(129, 1),
(130, 1),
(131, 1),
(132, 1),
(133, 1),
(134, 1),
(135, 1),
(136, 1),
(137, 1),
(138, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sendmails`
--

CREATE TABLE `sendmails` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `mailsubject` varchar(255) NOT NULL,
  `mailtext` longtext NOT NULL,
  `tag` varchar(255) DEFAULT NULL,
  `selecttagcolor` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `senduserlists`
--

CREATE TABLE `senduserlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mail_id` bigint(20) UNSIGNED NOT NULL,
  `touser_id` bigint(20) UNSIGNED DEFAULT NULL,
  `tocust_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `seosettings`
--

CREATE TABLE `seosettings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `author` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `keywords` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `seosettings`
--

INSERT INTO `seosettings` (`id`, `author`, `description`, `keywords`, `created_at`, `updated_at`) VALUES
(1, 'My Desk', 'Looking For help?', 'Why Choose US ?', '2026-03-05 05:23:54', '2026-03-05 05:23:54');

-- --------------------------------------------------------

--
-- Struktur dari tabel `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` varchar(10000) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'date_format', 'd M, Y', '2026-03-05 05:23:54', '2026-03-05 05:23:54'),
(2, 'time_format', 'h:i A', '2026-03-05 05:23:54', '2026-03-05 05:23:54'),
(3, 'site_title', 'tiket', '2026-03-05 05:23:54', '2026-03-05 05:23:54'),
(4, 'site_description', 'Description for your portal !', '2026-03-05 05:23:54', '2026-03-05 05:23:54'),
(5, 'update_setting', 'fauzi', '2026-03-05 05:23:54', '2026-03-05 06:06:04'),
(6, 'site_logo', 'default.png', '2026-03-05 05:23:54', '2026-03-05 05:23:54'),
(7, 'site_favicon', 'favicon.png', '2026-03-05 05:23:54', '2026-03-05 05:23:54'),
(8, 'CAPTCHATYPE', 'off', '2026-03-05 05:23:54', '2026-03-05 05:23:54'),
(9, 'GOOGLE_RECAPTCHA_KEY', '', '2026-03-05 05:23:54', '2026-03-05 05:23:54'),
(10, 'GOOGLE_RECAPTCHA_SECRET', '', '2026-03-05 05:23:54', '2026-03-05 05:23:54'),
(11, 'USER_REOPEN_ISSUE', 'yes', '2026-03-05 05:23:54', '2026-03-05 05:23:54'),
(12, 'USER_REOPEN_TIME', '1', '2026-03-05 05:23:54', '2026-03-05 05:23:54'),
(13, 'AUTO_CLOSE_TICKET', 'yes', '2026-03-05 05:23:54', '2026-03-05 05:23:54'),
(14, 'AUTO_CLOSE_TICKET_TIME', '1', '2026-03-05 05:23:54', '2026-03-05 05:23:54'),
(15, 'AUTO_OVERDUE_TICKET', 'yes', '2026-03-05 05:23:54', '2026-03-05 05:23:54'),
(16, 'AUTO_OVERDUE_TICKET_TIME', '1', '2026-03-05 05:23:54', '2026-03-05 05:23:54'),
(17, 'AUTO_RESPONSETIME_TICKET', 'yes', '2026-03-05 05:23:54', '2026-03-05 05:23:54'),
(18, 'AUTO_RESPONSETIME_TICKET_TIME', '1', '2026-03-05 05:23:54', '2026-03-05 05:23:54'),
(19, 'CUSTOMER_TICKETID', 'SP', '2026-03-05 05:23:54', '2026-03-05 05:23:54'),
(20, 'GUEST_TICKET', 'yes', '2026-03-05 05:23:54', '2026-03-05 05:23:54'),
(21, 'PRIORITY_ENABLE', 'no', '2026-03-05 05:23:54', '2026-03-05 05:23:54'),
(22, 'REGISTER_POPUP', 'no', '2026-03-05 05:23:54', '2026-03-05 05:23:54'),
(23, 'REGISTER_DISABLE', 'on', '2026-03-05 05:23:54', '2026-03-05 05:23:54'),
(24, 'CUSTOMER_CLOSE_TICKET', 'yes', '2026-03-05 05:23:54', '2026-03-05 05:23:54'),
(25, 'USER_FILE_UPLOAD_ENABLE', 'yes', '2026-03-05 05:23:54', '2026-03-05 05:23:54'),
(26, 'GUEST_FILE_UPLOAD_ENABLE', 'yes', '2026-03-05 05:23:54', '2026-03-05 05:23:54'),
(27, 'GOOGLE_ANALYTICS_ENABLE', 'no', '2026-03-05 05:23:54', '2026-03-05 05:23:54'),
(28, 'AUTO_NOTIFICATION_DELETE_ENABLE', 'on', '2026-03-05 05:23:54', '2026-03-05 05:23:54'),
(29, 'AUTO_NOTIFICATION_DELETE_DAYS', '60', '2026-03-05 05:23:54', '2026-03-05 05:23:54'),
(30, 'GOOGLE_ANALYTICS', NULL, '2026-03-05 05:23:54', '2026-03-05 05:23:54'),
(31, 'FILE_UPLOAD_MAX', '3', '2026-03-05 05:23:54', '2026-03-05 05:23:54'),
(32, 'FILE_UPLOAD_TYPES', '.jpg,.jpeg,.png', '2026-03-05 05:23:54', '2026-03-05 05:23:54'),
(33, 'KNOWLEDGE_ENABLE', 'yes', '2026-03-05 05:23:54', '2026-03-05 05:23:54'),
(34, 'FAQ_ENABLE', 'yes', '2026-03-05 05:23:54', '2026-03-05 05:23:54'),
(35, 'CONTACT_ENABLE', 'yes', '2026-03-05 05:23:54', '2026-03-05 05:23:54'),
(36, 'MAINTENANCE_MODE', 'off', '2026-03-05 05:23:54', '2026-03-05 05:23:54'),
(37, 'MAINTENANCE_MODE_VALUE', NULL, '2026-03-05 05:23:54', '2026-03-05 05:23:54'),
(38, 'PROFILE_USER_ENABLE', 'yes', '2026-03-05 05:23:54', '2026-03-05 05:23:54'),
(39, 'PROFILE_AGENT_ENABLE', 'yes', '2026-03-05 05:23:54', '2026-03-05 05:23:54'),
(40, 'RECAPTCH_ENABLE_REGISTER', 'no', '2026-03-05 05:23:54', '2026-03-05 05:23:54'),
(41, 'RECAPTCH_ENABLE_CONTACT', 'no', '2026-03-05 05:23:54', '2026-03-05 05:23:54'),
(42, 'RECAPTCH_ENABLE_LOGIN', 'no', '2026-03-05 05:23:54', '2026-03-05 05:23:54'),
(43, 'RECAPTCH_ENABLE_GUEST', 'no', '2026-03-05 05:23:54', '2026-03-05 05:23:54'),
(44, 'COUNTRY_BLOCKTYPE', 'block', '2026-03-05 05:23:54', '2026-03-05 05:23:54'),
(45, 'COUNTRY_LIST', '', '2026-03-05 05:23:54', '2026-03-05 05:23:54'),
(46, 'ADMIN_COUNTRY_BLOCKTYPE', 'block', '2026-03-05 05:23:54', '2026-03-05 05:23:54'),
(47, 'ADMIN_COUNTRY_LIST', '', '2026-03-05 05:23:54', '2026-03-05 05:23:54'),
(48, 'DOS_Enable', 'off', '2026-03-05 05:23:54', '2026-03-05 05:23:54'),
(49, 'IPMAXATTEMPT', '10', '2026-03-05 05:23:54', '2026-03-05 05:23:54'),
(50, 'IPSECONDS', '30', '2026-03-05 05:23:54', '2026-03-05 05:23:54'),
(51, 'IPBLOCKTYPE', 'captcha', '2026-03-05 05:23:54', '2026-03-05 05:23:54'),
(52, 'GOOGLEFONT_DISABLE', 'off', '2026-03-05 05:23:54', '2026-03-05 05:23:54'),
(53, 'FORCE_SSL', 'off', '2026-03-05 05:23:54', '2026-03-05 05:23:54'),
(54, 'DARK_MODE', '0', '2026-03-05 05:23:54', '2026-03-05 05:23:54'),
(55, 'SPRUKOADMIN_P', 'on', '2026-03-05 05:23:54', '2026-03-05 05:23:54'),
(56, 'SPRUKOADMIN_C', 'off', '2026-03-05 05:23:54', '2026-03-05 05:23:54'),
(57, 'ticket_default_assigned_user_id', '2', '2026-03-05 05:23:54', '2026-03-05 05:23:54'),
(58, 'social_media_facebook', '', '2026-03-05 05:23:54', '2026-03-05 05:23:54'),
(59, 'social_media_instagram', '', '2026-03-05 05:23:54', '2026-03-05 05:23:54'),
(60, 'social_media_twitter', '', '2026-03-05 05:23:54', '2026-03-05 05:23:54'),
(61, 'social_media_youtube', '', '2026-03-05 05:23:54', '2026-03-05 05:23:54'),
(62, 'social_media_pinterest', '', '2026-03-05 05:23:54', '2026-03-05 05:23:54'),
(63, 'social_media_envato', '', '2026-03-05 05:23:54', '2026-03-05 05:23:54'),
(64, 'default_lang', 'en', '2026-03-05 05:23:54', '2026-03-05 05:23:54'),
(65, 'theme_color', 'rgba(51 ,102 ,255, 1)', '2026-03-05 05:23:54', '2026-03-05 05:23:54'),
(66, 'theme_color_dark', 'rgba(24, 71, 128, 1)', '2026-03-05 05:23:54', '2026-03-05 05:23:54'),
(67, 'popular_categories', '[]', '2026-03-05 05:23:54', '2026-03-05 05:23:54'),
(68, 'home_featured_categories', '[]', '2026-03-05 05:23:54', '2026-03-05 05:23:54'),
(69, 'home_categories', '[]', '2026-03-05 05:23:54', '2026-03-05 05:23:54'),
(70, 'home_max_articles', '10', '2026-03-05 05:23:54', '2026-03-05 05:23:54'),
(71, 'mail_driver', 'sendmail', '2026-03-05 05:23:54', '2026-03-05 05:23:54'),
(72, 'mail_host', 'smtp.mailtrap.io', '2026-03-05 05:23:54', '2026-03-05 05:23:54'),
(73, 'mail_port', '2525', '2026-03-05 05:23:54', '2026-03-05 05:23:54'),
(74, 'mail_from_address', 'admin@example.com', '2026-03-05 05:23:54', '2026-03-05 05:23:54'),
(75, 'mail_from_name', 'smtp', '2026-03-05 05:23:54', '2026-03-05 05:23:54'),
(76, 'mail_encryption', 'ssl', '2026-03-05 05:23:54', '2026-03-05 05:23:54'),
(77, 'MAIL_USERNAME', '', '2026-03-05 05:23:54', '2026-03-05 05:23:54'),
(78, 'MAIL_PASSWORD', '', '2026-03-05 05:23:54', '2026-03-05 05:23:54'),
(79, 'IMAP_STATUS', 'off', '2026-03-05 05:23:54', '2026-03-05 05:23:54'),
(80, 'IMAP_HOST', NULL, '2026-03-05 05:23:54', '2026-03-05 05:23:54'),
(81, 'IMAP_PORT', NULL, '2026-03-05 05:23:54', '2026-03-05 05:23:54'),
(82, 'IMAP_PROTOCOL', NULL, '2026-03-05 05:23:54', '2026-03-05 05:23:54'),
(83, 'IMAP_ENCRYPTION', NULL, '2026-03-05 05:23:54', '2026-03-05 05:23:54'),
(84, 'IMAP_USERNAME', '', '2026-03-05 05:23:54', '2026-03-05 05:23:54'),
(85, 'IMAP_PASSWORD', '', '2026-03-05 05:23:54', '2026-03-05 05:23:54'),
(86, 'GUEST_TICKET_OTP', 'no', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(87, 'CUSTOMER_TICKET', 'no', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(88, 'start_week', '0', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(89, 'TICKET_CHARACTER', '10', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(90, 'default_timezone', 'UTC', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(91, 'businesshourstitle', 'Support', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(92, 'businesshourssubtitle', 'Our technical team is available in the IST timezone.', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(93, 'businesshoursswitch', 'on', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(94, 'supporticonimage', NULL, '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(95, 'admin_reply_mail', 'yes', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(96, 'customer_panel_employee_protect', 'off', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(97, 'employeeprotectname', 'Support', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(98, 'ticketrating', 'on', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(99, 'sidemenu_icon_style', 'off', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(100, 'login_disable', 'off', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(101, 'login_disable_statement', 'Due technical issue', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(102, 'cust_profile_delete_enable', 'off', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(103, 'EMAILDOMAIN_BLOCKTYPE', 'blockemail', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(104, 'EMAILDOMAIN_LIST', '', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(105, 'customer_inactive_notify', 'off', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(106, 'customer_inactive_notify_date', '1', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(107, 'customer_inactive_week_date', '1', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(108, 'guest_inactive_notify', 'off', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(109, 'guest_inactive_notify_date', '1', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(110, 'guest_inactive_week_date', '1', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(111, 'RECAPTCH_ENABLE_ADMIN_LOGIN', 'NO', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(112, 'cc_email', 'h:i A', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(113, 'contact_form_mail', NULL, '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(114, 'only_social_logins', 'off', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(115, 'article_count', 'on', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(116, 'trashed_ticket_autodelete', 'off', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(117, 'trashed_ticket_delete_time', '7', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(118, 'RESTRICT_TO_CREATE_TICKET', 'off', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(119, 'MAXIMUM_ALLOW_TICKETS', '1', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(120, 'MAXIMUM_ALLOW_HOURS', '1', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(121, 'SUPPORT_POLICY_URL', '#', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(122, 'RESTRICT_TO_REPLY_TICKET', 'off', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(123, 'MAXIMUM_ALLOW_REPLIES', '0', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(124, 'REPLY_ALLOW_IN_HOURS', '0', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(125, 'NOTE_CREATE_MAILS', 'off', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(126, 'ANNOUNCEMENT_USER', 'all_users', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(127, 'CUSTOMER_RESTICT_TO_DELETE_TICKET', 'off', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(128, 'ENVATO_ON', 'on', '2026-03-05 05:23:57', '2026-03-05 05:23:57'),
(129, 'ENVATO_EXPIRED_BLOCK', 'off', '2026-03-05 05:23:57', '2026-03-05 05:23:57'),
(130, 'MAX_FILE_UPLOAD', '2', '2026-03-05 05:23:57', '2026-03-05 05:23:57'),
(131, 'terms_url', '#', '2026-03-05 05:23:57', '2026-03-05 05:23:57'),
(132, 'purchasecode_on', 'off', '2026-03-05 05:23:57', '2026-03-05 05:23:57'),
(133, 'defaultlogin_on', 'off', '2026-03-05 05:23:57', '2026-03-05 05:23:57'),
(134, 'time_format', 'h:i A', '2026-03-05 05:23:57', '2026-03-05 05:23:57'),
(135, 'cronjob_set', NULL, '2026-03-05 05:24:19', '2026-03-05 05:24:19'),
(136, 'enable_gpt', 'off', '2026-03-05 05:24:19', '2026-03-05 05:24:19'),
(137, 'openai_api', '', '2026-03-05 05:24:19', '2026-03-05 05:24:19'),
(138, 'openai_api', '', '2026-03-05 05:24:19', '2026-03-05 05:24:19'),
(139, 'newupdate', 'updated3.2', '2026-03-05 06:06:04', '2026-03-05 06:06:04'),
(140, 'mail_key_set', 'mail_key', '2026-03-05 06:06:04', '2026-03-05 06:06:04');

-- --------------------------------------------------------

--
-- Struktur dari tabel `social_auth_settings`
--

CREATE TABLE `social_auth_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `facebook_client_id` varchar(255) DEFAULT NULL,
  `facebook_secret_id` varchar(255) DEFAULT NULL,
  `facebook_status` enum('enable','disable') NOT NULL DEFAULT 'disable',
  `google_client_id` varchar(255) DEFAULT NULL,
  `google_secret_id` varchar(255) DEFAULT NULL,
  `google_status` enum('enable','disable') NOT NULL DEFAULT 'disable',
  `twitter_client_id` varchar(255) DEFAULT NULL,
  `twitter_secret_id` varchar(255) DEFAULT NULL,
  `twitter_status` enum('enable','disable') NOT NULL DEFAULT 'disable',
  `envato_client_id` varchar(255) DEFAULT NULL,
  `envato_secret_id` varchar(255) DEFAULT NULL,
  `envato_status` enum('enable','disable') NOT NULL DEFAULT 'disable',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `social_auth_settings`
--

INSERT INTO `social_auth_settings` (`id`, `facebook_client_id`, `facebook_secret_id`, `facebook_status`, `google_client_id`, `google_secret_id`, `google_status`, `twitter_client_id`, `twitter_secret_id`, `twitter_status`, `envato_client_id`, `envato_secret_id`, `envato_status`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, 'disable', NULL, NULL, 'disable', NULL, NULL, 'disable', NULL, NULL, 'disable', '2026-03-05 05:23:27', '2026-03-05 05:23:27');

-- --------------------------------------------------------

--
-- Struktur dari tabel `subcategoryschild`
--

CREATE TABLE `subcategoryschild` (
  `subcategory_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `subcategorysd`
--

CREATE TABLE `subcategorysd` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subcategoryname` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `designation` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `testimonials`
--

INSERT INTO `testimonials` (`id`, `name`, `description`, `designation`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Heather Bell', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quod eos id officiis hic tenetur quae quaerat ad velit ab. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore cum accusamus eveniet molestias voluptatum inventore laboriosam labore sit, aspernatur praesentium iste impedit quidem dolor veniam.', 'Developer', NULL, '2022-01-06 23:13:30', '2022-01-06 23:13:30'),
(2, 'David Blake', 'Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore.', 'Designer', NULL, '2022-01-06 23:13:30', '2022-01-06 23:13:30'),
(3, 'Sophie Carr', 'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium.', 'HTML', NULL, '2022-01-06 23:13:30', '2022-01-06 23:13:30');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ticketassignchildren`
--

CREATE TABLE `ticketassignchildren` (
  `ticket_id` bigint(20) UNSIGNED NOT NULL,
  `toassignuser_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tickethistories`
--

CREATE TABLE `tickethistories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ticket_id` bigint(20) UNSIGNED NOT NULL,
  `ticketactions` longtext DEFAULT NULL,
  `ticketstatus` longtext DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tickethistories`
--

INSERT INTO `tickethistories` (`id`, `ticket_id`, `ticketactions`, `ticketstatus`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, '<div class=\"d-flex align-items-center\">\n            <div class=\"mt-0\">\n                <p class=\"mb-0 fs-12 mb-1\">Status\n            \n                <span class=\"text-burnt-orange font-weight-semibold mx-1\">New</span>\n                \n            <p class=\"mb-0 fs-17 font-weight-semibold text-dark\">Muhammad Fauzi<span class=\"fs-11 mx-1 text-muted\">(Responded)</span></p>\n        </div>\n        <div class=\"ms-auto\">\n        <span class=\"float-end badge badge-primary-light\">\n            <span class=\"fs-11 font-weight-semibold\">superadmin</span>\n        </span>\n        </div>\n\n        </div>\n        ', NULL, NULL, '2026-03-05 06:09:19', '2026-03-05 06:09:19');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ticketnotes`
--

CREATE TABLE `ticketnotes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ticket_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ticketnotes` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tickets`
--

CREATE TABLE `tickets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cust_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ticket_id` varchar(255) DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `subcategory` bigint(20) DEFAULT NULL,
  `subject` varchar(255) NOT NULL,
  `employeesreplying` varchar(255) DEFAULT NULL,
  `usernameverify` varchar(255) DEFAULT NULL,
  `emailticketfile` varchar(255) DEFAULT NULL,
  `priority` varchar(255) DEFAULT NULL,
  `project` varchar(255) DEFAULT NULL,
  `purchasecode` varchar(255) DEFAULT NULL,
  `purchasecodesupport` varchar(255) DEFAULT NULL,
  `message` longtext NOT NULL,
  `note` text DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `replystatus` varchar(255) DEFAULT NULL,
  `myassignuser_id` bigint(20) UNSIGNED DEFAULT NULL,
  `last_reply` datetime DEFAULT NULL,
  `lastreply_mail` bigint(20) UNSIGNED DEFAULT NULL,
  `auto_replystatus` datetime DEFAULT NULL,
  `closing_ticket` datetime DEFAULT NULL,
  `auto_close_ticket` datetime DEFAULT NULL,
  `overduestatus` varchar(255) DEFAULT NULL,
  `auto_overdue_ticket` datetime DEFAULT NULL,
  `selfassignuser_id` bigint(20) UNSIGNED DEFAULT NULL,
  `closedby_user` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tickets`
--

INSERT INTO `tickets` (`id`, `cust_id`, `user_id`, `ticket_id`, `category_id`, `subcategory`, `subject`, `employeesreplying`, `usernameverify`, `emailticketfile`, `priority`, `project`, `purchasecode`, `purchasecodesupport`, `message`, `note`, `status`, `replystatus`, `myassignuser_id`, `last_reply`, `lastreply_mail`, `auto_replystatus`, `closing_ticket`, `auto_close_ticket`, `overduestatus`, `auto_overdue_ticket`, `selfassignuser_id`, `closedby_user`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 'SPG-1', 1, NULL, 'tiketmati', NULL, NULL, NULL, NULL, NULL, 'eyJpdiI6IkZpVU01YllGOVNXeXQwcU4waFliUkE9PSIsInZhbHVlIjoiZzJVSHVUbGNvaGlMdXVhRHNEU2NDN2lwdXIwSHB0ZElacTRXb3hqNGdhQT0iLCJtYWMiOiI5NDU0YTcyZWIyYTNhZTQ3MWNjN2JkYTIyYjViMjFjYmU0MmQzNWVkZjJlY2EwMzVhNmMwMDJhNjE0ZDdkMzM2IiwidGFnIjoiIn0=', NULL, '<p>dsdsds</p>', NULL, 'New', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-05 06:09:19', '2026-03-05 06:09:19', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ticketsccemails`
--

CREATE TABLE `ticketsccemails` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ticket_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ccemails` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `ticketsccemails`
--

INSERT INTO `ticketsccemails` (`id`, `ticket_id`, `ccemails`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, '2026-03-05 06:09:19', '2026-03-05 06:09:19');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ticket_customfields`
--

CREATE TABLE `ticket_customfields` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cust_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ticket_id` bigint(20) UNSIGNED DEFAULT NULL,
  `privacymode` bigint(20) UNSIGNED DEFAULT NULL,
  `fieldnames` varchar(255) DEFAULT NULL,
  `fieldtypes` varchar(255) DEFAULT NULL,
  `values` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `timezone`
--

CREATE TABLE `timezone` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `timezone` varchar(255) DEFAULT NULL,
  `group` varchar(255) DEFAULT NULL,
  `utc` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `timezone`
--

INSERT INTO `timezone` (`id`, `timezone`, `group`, `utc`, `created_at`, `updated_at`) VALUES
(1, 'Europe/Amsterdam', 'Europe', '(GMT/UTC +02:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(2, 'Europe/Andorra', 'Europe', '(GMT/UTC +02:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(3, 'Europe/Astrakhan', 'Europe', '(GMT/UTC +04:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(4, 'Europe/Athens', 'Europe', '(GMT/UTC +03:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(5, 'Europe/Belgrade', 'Europe', '(GMT/UTC +02:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(6, 'Europe/Berlin', 'Europe', '(GMT/UTC +02:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(7, 'Europe/Bratislava', 'Europe', '(GMT/UTC +02:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(8, 'Europe/Brussels', 'Europe', '(GMT/UTC +02:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(9, 'Europe/Bucharest', 'Europe', '(GMT/UTC +03:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(10, 'Europe/Budapest', 'Europe', '(GMT/UTC +02:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(11, 'Europe/Busingen', 'Europe', '(GMT/UTC +02:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(12, 'Europe/Chisinau', 'Europe', '(GMT/UTC +03:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(13, 'Europe/Copenhagen', 'Europe', '(GMT/UTC +02:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(14, 'Europe/Dublin', 'Europe', '(GMT/UTC +01:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(15, 'Europe/Gibraltar', 'Europe', '(GMT/UTC +02:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(16, 'Europe/Guernsey', 'Europe', '(GMT/UTC +01:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(17, 'Europe/Helsinki', 'Europe', '(GMT/UTC +03:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(18, 'Europe/Isle_of_Man', 'Europe', '(GMT/UTC +01:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(19, 'Europe/Istanbul', 'Europe', '(GMT/UTC +03:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(20, 'Europe/Jersey', 'Europe', '(GMT/UTC +01:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(21, 'Europe/Kaliningrad', 'Europe', '(GMT/UTC +02:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(22, 'Europe/Kiev', 'Europe', '(GMT/UTC +03:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(23, 'Europe/Kirov', 'Europe', '(GMT/UTC +03:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(24, 'Europe/Lisbon', 'Europe', '(GMT/UTC +01:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(25, 'Europe/Ljubljana', 'Europe', '(GMT/UTC +02:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(26, 'Europe/London', 'Europe', '(GMT/UTC +01:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(27, 'Europe/Luxembourg', 'Europe', '(GMT/UTC +02:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(28, 'Europe/Madrid', 'Europe', '(GMT/UTC +02:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(29, 'Europe/Malta', 'Europe', '(GMT/UTC +02:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(30, 'Europe/Mariehamn', 'Europe', '(GMT/UTC +03:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(31, 'Europe/Minsk', 'Europe', '(GMT/UTC +03:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(32, 'Europe/Monaco', 'Europe', '(GMT/UTC +02:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(33, 'Europe/Moscow', 'Europe', '(GMT/UTC +03:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(34, 'Europe/Oslo', 'Europe', '(GMT/UTC +02:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(35, 'Europe/Paris', 'Europe', '(GMT/UTC +02:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(36, 'Europe/Podgorica', 'Europe', '(GMT/UTC +02:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(37, 'Europe/Prague', 'Europe', '(GMT/UTC +02:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(38, 'Europe/Riga', 'Europe', '(GMT/UTC +03:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(39, 'Europe/Rome', 'Europe', '(GMT/UTC +02:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(40, 'Europe/Samara', 'Europe', '(GMT/UTC +04:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(41, 'Europe/San_Marino', 'Europe', '(GMT/UTC +02:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(42, 'Europe/Sarajevo', 'Europe', '(GMT/UTC +02:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(43, 'Europe/Saratov', 'Europe', '(GMT/UTC +04:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(44, 'Europe/Simferopol', 'Europe', '(GMT/UTC +03:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(45, 'Europe/Skopje', 'Europe', '(GMT/UTC +02:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(46, 'Europe/Sofia', 'Europe', '(GMT/UTC +03:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(47, 'Europe/Stockholm', 'Europe', '(GMT/UTC +02:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(48, 'Europe/Tallinn', 'Europe', '(GMT/UTC +03:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(49, 'Europe/Tirane', 'Europe', '(GMT/UTC +02:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(50, 'Europe/Ulyanovsk', 'Europe', '(GMT/UTC +04:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(51, 'Europe/Uzhgorod', 'Europe', '(GMT/UTC +03:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(52, 'Europe/Vaduz', 'Europe', '(GMT/UTC +02:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(53, 'Europe/Vatican', 'Europe', '(GMT/UTC +02:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(54, 'Europe/Vienna', 'Europe', '(GMT/UTC +02:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(55, 'Europe/Vilnius', 'Europe', '(GMT/UTC +03:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(56, 'Europe/Volgograd', 'Europe', '(GMT/UTC +03:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(57, 'Europe/Warsaw', 'Europe', '(GMT/UTC +02:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(58, 'Europe/Zagreb', 'Europe', '(GMT/UTC +02:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(59, 'Europe/Zaporozhye', 'Europe', '(GMT/UTC +03:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(60, 'Europe/Zurich', 'Europe', '(GMT/UTC +02:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(61, 'America/Adak', 'America', '(GMT/UTC -09:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(62, 'America/Anchorage', 'America', '(GMT/UTC -08:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(63, 'America/Anguilla', 'America', '(GMT/UTC -04:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(64, 'America/Antigua', 'America', '(GMT/UTC -04:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(65, 'America/Araguaina', 'America', '(GMT/UTC -03:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(66, 'America/Argentina/Buenos_Aires', 'America', '(GMT/UTC -03:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(67, 'America/Argentina/Catamarca', 'America', '(GMT/UTC -03:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(68, 'America/Argentina/Cordoba', 'America', '(GMT/UTC -03:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(69, 'America/Argentina/Jujuy', 'America', '(GMT/UTC -03:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(70, 'America/Argentina/La_Rioja', 'America', '(GMT/UTC -03:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(71, 'America/Argentina/Mendoza', 'America', '(GMT/UTC -03:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(72, 'America/Argentina/Rio_Gallegos', 'America', '(GMT/UTC -03:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(73, 'America/Argentina/Salta', 'America', '(GMT/UTC -03:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(74, 'America/Argentina/San_Juan', 'America', '(GMT/UTC -03:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(75, 'America/Argentina/San_Luis', 'America', '(GMT/UTC -03:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(76, 'America/Argentina/Tucuman', 'America', '(GMT/UTC -03:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(77, 'America/Argentina/Ushuaia', 'America', '(GMT/UTC -03:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(78, 'America/Aruba', 'America', '(GMT/UTC -04:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(79, 'America/Asuncion', 'America', '(GMT/UTC -04:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(80, 'America/Atikokan', 'America', '(GMT/UTC -05:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(81, 'America/Bahia', 'America', '(GMT/UTC -03:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(82, 'America/Bahia_Banderas', 'America', '(GMT/UTC -05:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(83, 'America/Barbados', 'America', '(GMT/UTC -04:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(84, 'America/Belem', 'America', '(GMT/UTC -03:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(85, 'America/Belize', 'America', '(GMT/UTC -06:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(86, 'America/Blanc-Sablon', 'America', '(GMT/UTC -04:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(87, 'America/Boa_Vista', 'America', '(GMT/UTC -04:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(88, 'America/Bogota', 'America', '(GMT/UTC -05:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(89, 'America/Boise', 'America', '(GMT/UTC -06:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(90, 'America/Cambridge_Bay', 'America', '(GMT/UTC -06:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(91, 'America/Campo_Grande', 'America', '(GMT/UTC -04:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(92, 'America/Cancun', 'America', '(GMT/UTC -05:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(93, 'America/Caracas', 'America', '(GMT/UTC -04:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(94, 'America/Cayenne', 'America', '(GMT/UTC -03:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(95, 'America/Cayman', 'America', '(GMT/UTC -05:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(96, 'America/Chicago', 'America', '(GMT/UTC -05:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(97, 'America/Chihuahua', 'America', '(GMT/UTC -06:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(98, 'America/Costa_Rica', 'America', '(GMT/UTC -06:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(99, 'America/Creston', 'America', '(GMT/UTC -07:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(100, 'America/Cuiaba', 'America', '(GMT/UTC -04:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(101, 'America/Curacao', 'America', '(GMT/UTC -04:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(102, 'America/Danmarkshavn', 'America', '(GMT/UTC +00:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(103, 'America/Dawson', 'America', '(GMT/UTC -07:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(104, 'America/Dawson_Creek', 'America', '(GMT/UTC -07:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(105, 'America/Denver', 'America', '(GMT/UTC -06:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(106, 'America/Detroit', 'America', '(GMT/UTC -04:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(107, 'America/Dominica', 'America', '(GMT/UTC -04:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(108, 'America/Edmonton', 'America', '(GMT/UTC -06:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(109, 'America/Eirunepe', 'America', '(GMT/UTC -05:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(110, 'America/El_Salvador', 'America', '(GMT/UTC -06:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(111, 'America/Fort_Nelson', 'America', '(GMT/UTC -07:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(112, 'America/Fortaleza', 'America', '(GMT/UTC -03:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(113, 'America/Glace_Bay', 'America', '(GMT/UTC -03:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(114, 'America/Goose_Bay', 'America', '(GMT/UTC -03:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(115, 'America/Grand_Turk', 'America', '(GMT/UTC -04:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(116, 'America/Grenada', 'America', '(GMT/UTC -04:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(117, 'America/Guadeloupe', 'America', '(GMT/UTC -04:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(118, 'America/Guatemala', 'America', '(GMT/UTC -06:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(119, 'America/Guayaquil', 'America', '(GMT/UTC -05:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(120, 'America/Guyana', 'America', '(GMT/UTC -04:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(121, 'America/Halifax', 'America', '(GMT/UTC -03:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(122, 'America/Havana', 'America', '(GMT/UTC -04:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(123, 'America/Hermosillo', 'America', '(GMT/UTC -07:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(124, 'America/Indiana/Indianapolis', 'America', '(GMT/UTC -04:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(125, 'America/Indiana/Knox', 'America', '(GMT/UTC -05:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(126, 'America/Indiana/Marengo', 'America', '(GMT/UTC -04:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(127, 'America/Indiana/Petersburg', 'America', '(GMT/UTC -04:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(128, 'America/Indiana/Tell_City', 'America', '(GMT/UTC -05:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(129, 'America/Indiana/Vevay', 'America', '(GMT/UTC -04:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(130, 'America/Indiana/Vincennes', 'America', '(GMT/UTC -04:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(131, 'America/Indiana/Winamac', 'America', '(GMT/UTC -04:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(132, 'America/Inuvik', 'America', '(GMT/UTC -06:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(133, 'America/Iqaluit', 'America', '(GMT/UTC -04:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(134, 'America/Jamaica', 'America', '(GMT/UTC -05:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(135, 'America/Juneau', 'America', '(GMT/UTC -08:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(136, 'America/Kentucky/Louisville', 'America', '(GMT/UTC -04:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(137, 'America/Kentucky/Monticello', 'America', '(GMT/UTC -04:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(138, 'America/Kralendijk', 'America', '(GMT/UTC -04:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(139, 'America/La_Paz', 'America', '(GMT/UTC -04:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(140, 'America/Lima', 'America', '(GMT/UTC -05:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(141, 'America/Los_Angeles', 'America', '(GMT/UTC -07:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(142, 'America/Lower_Princes', 'America', '(GMT/UTC -04:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(143, 'America/Maceio', 'America', '(GMT/UTC -03:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(144, 'America/Managua', 'America', '(GMT/UTC -06:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(145, 'America/Manaus', 'America', '(GMT/UTC -04:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(146, 'America/Marigot', 'America', '(GMT/UTC -04:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(147, 'America/Martinique', 'America', '(GMT/UTC -04:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(148, 'America/Matamoros', 'America', '(GMT/UTC -05:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(149, 'America/Mazatlan', 'America', '(GMT/UTC -06:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(150, 'America/Menominee', 'America', '(GMT/UTC -05:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(151, 'America/Merida', 'America', '(GMT/UTC -05:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(152, 'America/Metlakatla', 'America', '(GMT/UTC -08:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(153, 'America/Mexico_City', 'America', '(GMT/UTC -05:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(154, 'America/Miquelon', 'America', '(GMT/UTC -02:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(155, 'America/Moncton', 'America', '(GMT/UTC -03:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(156, 'America/Monterrey', 'America', '(GMT/UTC -05:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(157, 'America/Montevideo', 'America', '(GMT/UTC -03:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(158, 'America/Montserrat', 'America', '(GMT/UTC -04:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(159, 'America/Nassau', 'America', '(GMT/UTC -04:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(160, 'America/New_York', 'America', '(GMT/UTC -04:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(161, 'America/Nipigon', 'America', '(GMT/UTC -04:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(162, 'America/Nome', 'America', '(GMT/UTC -08:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(163, 'America/Noronha', 'America', '(GMT/UTC -02:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(164, 'America/North_Dakota/Beulah', 'America', '(GMT/UTC -05:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(165, 'America/North_Dakota/Center', 'America', '(GMT/UTC -05:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(166, 'America/North_Dakota/New_Salem', 'America', '(GMT/UTC -05:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(167, 'America/Nuuk', 'America', '(GMT/UTC -02:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(168, 'America/Ojinaga', 'America', '(GMT/UTC -06:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(169, 'America/Panama', 'America', '(GMT/UTC -05:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(170, 'America/Pangnirtung', 'America', '(GMT/UTC -04:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(171, 'America/Paramaribo', 'America', '(GMT/UTC -03:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(172, 'America/Phoenix', 'America', '(GMT/UTC -07:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(173, 'America/Port-au-Prince', 'America', '(GMT/UTC -04:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(174, 'America/Port_of_Spain', 'America', '(GMT/UTC -04:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(175, 'America/Porto_Velho', 'America', '(GMT/UTC -04:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(176, 'America/Puerto_Rico', 'America', '(GMT/UTC -04:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(177, 'America/Punta_Arenas', 'America', '(GMT/UTC -03:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(178, 'America/Rainy_River', 'America', '(GMT/UTC -05:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(179, 'America/Rankin_Inlet', 'America', '(GMT/UTC -05:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(180, 'America/Recife', 'America', '(GMT/UTC -03:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(181, 'America/Regina', 'America', '(GMT/UTC -06:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(182, 'America/Resolute', 'America', '(GMT/UTC -05:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(183, 'America/Rio_Branco', 'America', '(GMT/UTC -05:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(184, 'America/Santarem', 'America', '(GMT/UTC -03:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(185, 'America/Santiago', 'America', '(GMT/UTC -04:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(186, 'America/Santo_Domingo', 'America', '(GMT/UTC -04:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(187, 'America/Sao_Paulo', 'America', '(GMT/UTC -03:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(188, 'America/Scoresbysund', 'America', '(GMT/UTC +00:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(189, 'America/Sitka', 'America', '(GMT/UTC -08:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(190, 'America/St_Barthelemy', 'America', '(GMT/UTC -04:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(191, 'America/St_Johns', 'America', '(GMT/UTC -02:30)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(192, 'America/St_Kitts', 'America', '(GMT/UTC -04:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(193, 'America/St_Lucia', 'America', '(GMT/UTC -04:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(194, 'America/St_Thomas', 'America', '(GMT/UTC -04:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(195, 'America/St_Vincent', 'America', '(GMT/UTC -04:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(196, 'America/Swift_Current', 'America', '(GMT/UTC -06:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(197, 'America/Tegucigalpa', 'America', '(GMT/UTC -06:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(198, 'America/Thule', 'America', '(GMT/UTC -03:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(199, 'America/Thunder_Bay', 'America', '(GMT/UTC -04:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(200, 'America/Tijuana', 'America', '(GMT/UTC -07:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(201, 'America/Toronto', 'America', '(GMT/UTC -04:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(202, 'America/Tortola', 'America', '(GMT/UTC -04:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(203, 'America/Vancouver', 'America', '(GMT/UTC -07:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(204, 'America/Whitehorse', 'America', '(GMT/UTC -07:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(205, 'America/Winnipeg', 'America', '(GMT/UTC -05:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(206, 'America/Yakutat', 'America', '(GMT/UTC -08:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(207, 'America/Yellowknife', 'America', '(GMT/UTC -06:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(208, 'Indian/Antananarivo', 'Indian', '(GMT/UTC +03:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(209, 'Indian/Chagos', 'Indian', '(GMT/UTC +06:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(210, 'Indian/Christmas', 'Indian', '(GMT/UTC +07:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(211, 'Indian/Cocos', 'Indian', '(GMT/UTC +06:30)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(212, 'Indian/Comoro', 'Indian', '(GMT/UTC +03:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(213, 'Indian/Kerguelen', 'Indian', '(GMT/UTC +05:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(214, 'Indian/Mahe', 'Indian', '(GMT/UTC +04:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(215, 'Indian/Maldives', 'Indian', '(GMT/UTC +05:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(216, 'Indian/Mauritius', 'Indian', '(GMT/UTC +04:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(217, 'Indian/Mayotte', 'Indian', '(GMT/UTC +03:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(218, 'Indian/Reunion', 'Indian', '(GMT/UTC +04:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(219, 'Australia/Adelaide', 'Australia', '(GMT/UTC +09:30)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(220, 'Australia/Brisbane', 'Australia', '(GMT/UTC +10:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(221, 'Australia/Broken_Hill', 'Australia', '(GMT/UTC +09:30)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(222, 'Australia/Darwin', 'Australia', '(GMT/UTC +09:30)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(223, 'Australia/Eucla', 'Australia', '(GMT/UTC +08:45)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(224, 'Australia/Hobart', 'Australia', '(GMT/UTC +10:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(225, 'Australia/Lindeman', 'Australia', '(GMT/UTC +10:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(226, 'Australia/Lord_Howe', 'Australia', '(GMT/UTC +10:30)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(227, 'Australia/Melbourne', 'Australia', '(GMT/UTC +10:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(228, 'Australia/Perth', 'Australia', '(GMT/UTC +08:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(229, 'Australia/Sydney', 'Australia', '(GMT/UTC +10:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(230, 'Asia/Aden', 'Asia', '(GMT/UTC +03:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(231, 'Asia/Almaty', 'Asia', '(GMT/UTC +06:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(232, 'Asia/Amman', 'Asia', '(GMT/UTC +03:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(233, 'Asia/Anadyr', 'Asia', '(GMT/UTC +12:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(234, 'Asia/Aqtau', 'Asia', '(GMT/UTC +05:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(235, 'Asia/Aqtobe', 'Asia', '(GMT/UTC +05:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(236, 'Asia/Ashgabat', 'Asia', '(GMT/UTC +05:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(237, 'Asia/Atyrau', 'Asia', '(GMT/UTC +05:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(238, 'Asia/Baghdad', 'Asia', '(GMT/UTC +03:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(239, 'Asia/Bahrain', 'Asia', '(GMT/UTC +03:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(240, 'Asia/Baku', 'Asia', '(GMT/UTC +04:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(241, 'Asia/Bangkok', 'Asia', '(GMT/UTC +07:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(242, 'Asia/Barnaul', 'Asia', '(GMT/UTC +07:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(243, 'Asia/Beirut', 'Asia', '(GMT/UTC +03:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(244, 'Asia/Bishkek', 'Asia', '(GMT/UTC +06:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(245, 'Asia/Brunei', 'Asia', '(GMT/UTC +08:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(246, 'Asia/Chita', 'Asia', '(GMT/UTC +09:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(247, 'Asia/Choibalsan', 'Asia', '(GMT/UTC +08:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(248, 'Asia/Colombo', 'Asia', '(GMT/UTC +05:30)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(249, 'Asia/Damascus', 'Asia', '(GMT/UTC +03:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(250, 'Asia/Dhaka', 'Asia', '(GMT/UTC +06:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(251, 'Asia/Dili', 'Asia', '(GMT/UTC +09:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(252, 'Asia/Dubai', 'Asia', '(GMT/UTC +04:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(253, 'Asia/Dushanbe', 'Asia', '(GMT/UTC +05:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(254, 'Asia/Famagusta', 'Asia', '(GMT/UTC +03:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(255, 'Asia/Gaza', 'Asia', '(GMT/UTC +03:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(256, 'Asia/Hebron', 'Asia', '(GMT/UTC +03:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(257, 'Asia/Ho_Chi_Minh', 'Asia', '(GMT/UTC +07:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(258, 'Asia/Hong_Kong', 'Asia', '(GMT/UTC +08:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(259, 'Asia/Hovd', 'Asia', '(GMT/UTC +07:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(260, 'Asia/Irkutsk', 'Asia', '(GMT/UTC +08:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(261, 'Asia/Jakarta', 'Asia', '(GMT/UTC +07:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(262, 'Asia/Jayapura', 'Asia', '(GMT/UTC +09:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(263, 'Asia/Jerusalem', 'Asia', '(GMT/UTC +03:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(264, 'Asia/Kabul', 'Asia', '(GMT/UTC +04:30)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(265, 'Asia/Kamchatka', 'Asia', '(GMT/UTC +12:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(266, 'Asia/Karachi', 'Asia', '(GMT/UTC +05:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(267, 'Asia/Kathmandu', 'Asia', '(GMT/UTC +05:45)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(268, 'Asia/Khandyga', 'Asia', '(GMT/UTC +09:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(269, 'Asia/Kolkata', 'Asia', '(GMT/UTC +05:30)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(270, 'Asia/Krasnoyarsk', 'Asia', '(GMT/UTC +07:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(271, 'Asia/Kuala_Lumpur', 'Asia', '(GMT/UTC +08:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(272, 'Asia/Kuching', 'Asia', '(GMT/UTC +08:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(273, 'Asia/Kuwait', 'Asia', '(GMT/UTC +03:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(274, 'Asia/Macau', 'Asia', '(GMT/UTC +08:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(275, 'Asia/Magadan', 'Asia', '(GMT/UTC +11:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(276, 'Asia/Makassar', 'Asia', '(GMT/UTC +08:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(277, 'Asia/Manila', 'Asia', '(GMT/UTC +08:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(278, 'Asia/Muscat', 'Asia', '(GMT/UTC +04:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(279, 'Asia/Nicosia', 'Asia', '(GMT/UTC +03:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(280, 'Asia/Novokuznetsk', 'Asia', '(GMT/UTC +07:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(281, 'Asia/Novosibirsk', 'Asia', '(GMT/UTC +07:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(282, 'Asia/Omsk', 'Asia', '(GMT/UTC +06:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(283, 'Asia/Oral', 'Asia', '(GMT/UTC +05:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(284, 'Asia/Phnom_Penh', 'Asia', '(GMT/UTC +07:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(285, 'Asia/Pontianak', 'Asia', '(GMT/UTC +07:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(286, 'Asia/Pyongyang', 'Asia', '(GMT/UTC +09:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(287, 'Asia/Qatar', 'Asia', '(GMT/UTC +03:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(288, 'Asia/Qostanay', 'Asia', '(GMT/UTC +06:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(289, 'Asia/Qyzylorda', 'Asia', '(GMT/UTC +05:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(290, 'Asia/Riyadh', 'Asia', '(GMT/UTC +03:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(291, 'Asia/Sakhalin', 'Asia', '(GMT/UTC +11:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(292, 'Asia/Samarkand', 'Asia', '(GMT/UTC +05:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(293, 'Asia/Seoul', 'Asia', '(GMT/UTC +09:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(294, 'Asia/Shanghai', 'Asia', '(GMT/UTC +08:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(295, 'Asia/Singapore', 'Asia', '(GMT/UTC +08:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(296, 'Asia/Srednekolymsk', 'Asia', '(GMT/UTC +11:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(297, 'Asia/Taipei', 'Asia', '(GMT/UTC +08:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(298, 'Asia/Tashkent', 'Asia', '(GMT/UTC +05:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(299, 'Asia/Tbilisi', 'Asia', '(GMT/UTC +04:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(300, 'Asia/Tehran', 'Asia', '(GMT/UTC +04:30)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(301, 'Asia/Thimphu', 'Asia', '(GMT/UTC +06:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(302, 'Asia/Tokyo', 'Asia', '(GMT/UTC +09:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(303, 'Asia/Tomsk', 'Asia', '(GMT/UTC +07:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(304, 'Asia/Ulaanbaatar', 'Asia', '(GMT/UTC +08:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(305, 'Asia/Urumqi', 'Asia', '(GMT/UTC +06:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(306, 'Asia/Ust-Nera', 'Asia', '(GMT/UTC +10:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(307, 'Asia/Vientiane', 'Asia', '(GMT/UTC +07:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(308, 'Asia/Vladivostok', 'Asia', '(GMT/UTC +10:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(309, 'Asia/Yakutsk', 'Asia', '(GMT/UTC +09:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(310, 'Asia/Yangon', 'Asia', '(GMT/UTC +06:30)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(311, 'Asia/Yekaterinburg', 'Asia', '(GMT/UTC +05:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(312, 'Asia/Yerevan', 'Asia', '(GMT/UTC +04:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(313, 'Africa/Abidjan', 'Africa', '(GMT/UTC +00:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(314, 'Africa/Accra', 'Africa', '(GMT/UTC +00:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(315, 'Africa/Addis_Ababa', 'Africa', '(GMT/UTC +03:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(316, 'Africa/Algiers', 'Africa', '(GMT/UTC +01:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(317, 'Africa/Asmara', 'Africa', '(GMT/UTC +03:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(318, 'Africa/Bamako', 'Africa', '(GMT/UTC +00:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(319, 'Africa/Bangui', 'Africa', '(GMT/UTC +01:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(320, 'Africa/Banjul', 'Africa', '(GMT/UTC +00:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(321, 'Africa/Bissau', 'Africa', '(GMT/UTC +00:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(322, 'Africa/Blantyre', 'Africa', '(GMT/UTC +02:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(323, 'Africa/Brazzaville', 'Africa', '(GMT/UTC +01:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(324, 'Africa/Bujumbura', 'Africa', '(GMT/UTC +02:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(325, 'Africa/Cairo', 'Africa', '(GMT/UTC +02:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(326, 'Africa/Casablanca', 'Africa', '(GMT/UTC +01:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(327, 'Africa/Ceuta', 'Africa', '(GMT/UTC +02:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(328, 'Africa/Conakry', 'Africa', '(GMT/UTC +00:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(329, 'Africa/Dakar', 'Africa', '(GMT/UTC +00:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(330, 'Africa/Dar_es_Salaam', 'Africa', '(GMT/UTC +03:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(331, 'Africa/Djibouti', 'Africa', '(GMT/UTC +03:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(332, 'Africa/Douala', 'Africa', '(GMT/UTC +01:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(333, 'Africa/El_Aaiun', 'Africa', '(GMT/UTC +01:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(334, 'Africa/Freetown', 'Africa', '(GMT/UTC +00:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(335, 'Africa/Gaborone', 'Africa', '(GMT/UTC +02:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(336, 'Africa/Harare', 'Africa', '(GMT/UTC +02:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(337, 'Africa/Johannesburg', 'Africa', '(GMT/UTC +02:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(338, 'Africa/Juba', 'Africa', '(GMT/UTC +02:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(339, 'Africa/Kampala', 'Africa', '(GMT/UTC +03:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(340, 'Africa/Khartoum', 'Africa', '(GMT/UTC +02:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(341, 'Africa/Kigali', 'Africa', '(GMT/UTC +02:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(342, 'Africa/Kinshasa', 'Africa', '(GMT/UTC +01:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(343, 'Africa/Lagos', 'Africa', '(GMT/UTC +01:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(344, 'Africa/Libreville', 'Africa', '(GMT/UTC +01:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(345, 'Africa/Lome', 'Africa', '(GMT/UTC +00:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(346, 'Africa/Luanda', 'Africa', '(GMT/UTC +01:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(347, 'Africa/Lubumbashi', 'Africa', '(GMT/UTC +02:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(348, 'Africa/Lusaka', 'Africa', '(GMT/UTC +02:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(349, 'Africa/Malabo', 'Africa', '(GMT/UTC +01:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(350, 'Africa/Maputo', 'Africa', '(GMT/UTC +02:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(351, 'Africa/Maseru', 'Africa', '(GMT/UTC +02:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(352, 'Africa/Mbabane', 'Africa', '(GMT/UTC +02:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(353, 'Africa/Mogadishu', 'Africa', '(GMT/UTC +03:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(354, 'Africa/Monrovia', 'Africa', '(GMT/UTC +00:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(355, 'Africa/Nairobi', 'Africa', '(GMT/UTC +03:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(356, 'Africa/Ndjamena', 'Africa', '(GMT/UTC +01:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(357, 'Africa/Niamey', 'Africa', '(GMT/UTC +01:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(358, 'Africa/Nouakchott', 'Africa', '(GMT/UTC +00:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(359, 'Africa/Ouagadougou', 'Africa', '(GMT/UTC +00:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(360, 'Africa/Porto-Novo', 'Africa', '(GMT/UTC +01:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(361, 'Africa/Sao_Tome', 'Africa', '(GMT/UTC +00:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(362, 'Africa/Tripoli', 'Africa', '(GMT/UTC +02:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(363, 'Africa/Tunis', 'Africa', '(GMT/UTC +01:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(364, 'Africa/Windhoek', 'Africa', '(GMT/UTC +02:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(365, 'Antarctica/Casey', 'Antarctica', '(GMT/UTC +11:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(366, 'Antarctica/Davis', 'Antarctica', '(GMT/UTC +07:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(367, 'Antarctica/DumontDUrville', 'Antarctica', '(GMT/UTC +10:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(368, 'Antarctica/Macquarie', 'Antarctica', '(GMT/UTC +10:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(369, 'Antarctica/Mawson', 'Antarctica', '(GMT/UTC +05:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(370, 'Antarctica/McMurdo', 'Antarctica', '(GMT/UTC +12:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(371, 'Antarctica/Palmer', 'Antarctica', '(GMT/UTC -03:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(372, 'Antarctica/Rothera', 'Antarctica', '(GMT/UTC -03:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(373, 'Antarctica/Syowa', 'Antarctica', '(GMT/UTC +03:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(374, 'Antarctica/Troll', 'Antarctica', '(GMT/UTC +02:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(375, 'Antarctica/Vostok', 'Antarctica', '(GMT/UTC +06:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(376, 'Arctic/Longyearbyen', 'Arctic', '(GMT/UTC +02:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(377, 'Atlantic/Azores', 'Atlantic', '(GMT/UTC +00:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(378, 'Atlantic/Bermuda', 'Atlantic', '(GMT/UTC -03:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(379, 'Atlantic/Canary', 'Atlantic', '(GMT/UTC +01:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(380, 'Atlantic/Cape_Verde', 'Atlantic', '(GMT/UTC -01:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(381, 'Atlantic/Faroe', 'Atlantic', '(GMT/UTC +01:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(382, 'Atlantic/Madeira', 'Atlantic', '(GMT/UTC +01:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(383, 'Atlantic/Reykjavik', 'Atlantic', '(GMT/UTC +00:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(384, 'Atlantic/South_Georgia', 'Atlantic', '(GMT/UTC -02:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(385, 'Atlantic/St_Helena', 'Atlantic', '(GMT/UTC +00:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(386, 'Atlantic/Stanley', 'Atlantic', '(GMT/UTC -03:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(387, 'Pacific/Apia', 'Pacific', '(GMT/UTC +13:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(388, 'Pacific/Auckland', 'Pacific', '(GMT/UTC +12:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(389, 'Pacific/Bougainville', 'Pacific', '(GMT/UTC +11:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(390, 'Pacific/Chatham', 'Pacific', '(GMT/UTC +12:45)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(391, 'Pacific/Chuuk', 'Pacific', '(GMT/UTC +10:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(392, 'Pacific/Easter', 'Pacific', '(GMT/UTC -06:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(393, 'Pacific/Efate', 'Pacific', '(GMT/UTC +11:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(394, 'Pacific/Fakaofo', 'Pacific', '(GMT/UTC +13:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(395, 'Pacific/Fiji', 'Pacific', '(GMT/UTC +12:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(396, 'Pacific/Funafuti', 'Pacific', '(GMT/UTC +12:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(397, 'Pacific/Galapagos', 'Pacific', '(GMT/UTC -06:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(398, 'Pacific/Gambier', 'Pacific', '(GMT/UTC -09:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(399, 'Pacific/Guadalcanal', 'Pacific', '(GMT/UTC +11:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(400, 'Pacific/Guam', 'Pacific', '(GMT/UTC +10:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(401, 'Pacific/Honolulu', 'Pacific', '(GMT/UTC -10:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(402, 'Pacific/Kanton', 'Pacific', '(GMT/UTC +13:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(403, 'Pacific/Kiritimati', 'Pacific', '(GMT/UTC +14:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(404, 'Pacific/Kosrae', 'Pacific', '(GMT/UTC +11:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(405, 'Pacific/Kwajalein', 'Pacific', '(GMT/UTC +12:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(406, 'Pacific/Majuro', 'Pacific', '(GMT/UTC +12:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(407, 'Pacific/Marquesas', 'Pacific', '(GMT/UTC -09:30)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(408, 'Pacific/Midway', 'Pacific', '(GMT/UTC -11:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(409, 'Pacific/Nauru', 'Pacific', '(GMT/UTC +12:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(410, 'Pacific/Niue', 'Pacific', '(GMT/UTC -11:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(411, 'Pacific/Norfolk', 'Pacific', '(GMT/UTC +11:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(412, 'Pacific/Noumea', 'Pacific', '(GMT/UTC +11:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(413, 'Pacific/Pago_Pago', 'Pacific', '(GMT/UTC -11:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(414, 'Pacific/Palau', 'Pacific', '(GMT/UTC +09:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(415, 'Pacific/Pitcairn', 'Pacific', '(GMT/UTC -08:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(416, 'Pacific/Pohnpei', 'Pacific', '(GMT/UTC +11:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(417, 'Pacific/Port_Moresby', 'Pacific', '(GMT/UTC +10:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(418, 'Pacific/Rarotonga', 'Pacific', '(GMT/UTC -10:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(419, 'Pacific/Saipan', 'Pacific', '(GMT/UTC +10:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(420, 'Pacific/Tahiti', 'Pacific', '(GMT/UTC -10:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(421, 'Pacific/Tarawa', 'Pacific', '(GMT/UTC +12:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(422, 'Pacific/Tongatapu', 'Pacific', '(GMT/UTC +13:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(423, 'Pacific/Wake', 'Pacific', '(GMT/UTC +12:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(424, 'Pacific/Wallis', 'Pacific', '(GMT/UTC +12:00)', '2026-03-05 05:23:55', '2026-03-05 05:23:55'),
(425, 'UTC', 'UTC', '', '2026-03-05 05:23:55', '2026-03-05 05:23:55');

-- --------------------------------------------------------

--
-- Struktur dari tabel `timezones`
--

CREATE TABLE `timezones` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `offset` varchar(255) NOT NULL,
  `diff_from_gtm` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `translates`
--

CREATE TABLE `translates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lang_code` varchar(3) NOT NULL,
  `group_langname` varchar(255) NOT NULL DEFAULT 'general',
  `key` text NOT NULL,
  `value` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `translates`
--

INSERT INTO `translates` (`id`, `lang_code`, `group_langname`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'en', 'menu', 'Dashboard', 'Dashboard', '2026-03-05 05:24:05', '2026-03-05 05:24:05'),
(2, 'en', 'menu', 'Profile', 'Profile', '2026-03-05 05:24:05', '2026-03-05 05:24:05'),
(3, 'en', 'menu', 'All Tickets', 'All Tickets', '2026-03-05 05:24:05', '2026-03-05 05:24:05'),
(4, 'en', 'menu', 'Recent Tickets', 'Recent Tickets', '2026-03-05 05:24:05', '2026-03-05 05:24:05'),
(5, 'en', 'menu', 'Total Tickets', 'Total Tickets', '2026-03-05 05:24:05', '2026-03-05 05:24:05'),
(6, 'en', 'menu', 'Total Active Tickets', 'Total Active Tickets', '2026-03-05 05:24:05', '2026-03-05 05:24:05'),
(7, 'en', 'menu', 'Total Closed Tickets', 'Total Closed Tickets', '2026-03-05 05:24:06', '2026-03-05 05:24:06'),
(8, 'en', 'menu', 'Total On-Hold Tickets', 'Total On-Hold Tickets', '2026-03-05 05:24:06', '2026-03-05 05:24:06'),
(9, 'en', 'menu', 'Total Overdue Tickets', 'Total Overdue Tickets', '2026-03-05 05:24:06', '2026-03-05 05:24:06'),
(10, 'en', 'menu', 'Total Assigned Tickets', 'Total Assigned Tickets', '2026-03-05 05:24:06', '2026-03-05 05:24:06'),
(11, 'en', 'menu', 'My Tickets', 'My Tickets', '2026-03-05 05:24:06', '2026-03-05 05:24:06'),
(12, 'en', 'menu', 'Self Assigned Tickets', 'Self Assigned Tickets', '2026-03-05 05:24:06', '2026-03-05 05:24:06'),
(13, 'en', 'menu', 'Assigned Tickets', 'Assigned Tickets', '2026-03-05 05:24:06', '2026-03-05 05:24:06'),
(14, 'en', 'menu', 'My Assigned Tickets', 'My Assigned Tickets', '2026-03-05 05:24:06', '2026-03-05 05:24:06'),
(15, 'en', 'menu', 'My Closed Tickets', 'My Closed Tickets', '2026-03-05 05:24:06', '2026-03-05 05:24:06'),
(16, 'en', 'menu', 'Categories', 'Categories', '2026-03-05 05:24:06', '2026-03-05 05:24:06'),
(17, 'en', 'menu', 'Main Categories', 'Main Categories', '2026-03-05 05:24:06', '2026-03-05 05:24:06'),
(18, 'en', 'menu', 'SubCategory', 'SubCategory', '2026-03-05 05:24:06', '2026-03-05 05:24:06'),
(19, 'en', 'menu', 'Knowledge', 'Knowledge', '2026-03-05 05:24:06', '2026-03-05 05:24:06'),
(20, 'en', 'menu', 'Articles', 'Articles', '2026-03-05 05:24:06', '2026-03-05 05:24:06'),
(21, 'en', 'menu', 'Projects', 'Projects', '2026-03-05 05:24:06', '2026-03-05 05:24:06'),
(22, 'en', 'menu', 'Trashed Tickets', 'Trashed Tickets', '2026-03-05 05:24:06', '2026-03-05 05:24:06'),
(23, 'en', 'menu', 'Faq Category', 'Faq Category', '2026-03-05 05:24:06', '2026-03-05 05:24:06'),
(24, 'en', 'menu', 'Manage Roles', 'Manage Roles', '2026-03-05 05:24:06', '2026-03-05 05:24:06'),
(25, 'en', 'menu', 'Roles & Permissions', 'Roles & Permissions', '2026-03-05 05:24:06', '2026-03-05 05:24:06'),
(26, 'en', 'menu', 'Create Employee', 'Create Employee', '2026-03-05 05:24:06', '2026-03-05 05:24:06'),
(27, 'en', 'menu', 'Employees List', 'Employees List', '2026-03-05 05:24:06', '2026-03-05 05:24:06'),
(28, 'en', 'menu', 'Landing Page Settings', 'Landing Page Settings', '2026-03-05 05:24:06', '2026-03-05 05:24:06'),
(29, 'en', 'menu', 'Banner', 'Banner', '2026-03-05 05:24:06', '2026-03-05 05:24:06'),
(30, 'en', 'menu', 'Feature Box', 'Feature Box', '2026-03-05 05:24:06', '2026-03-05 05:24:06'),
(31, 'en', 'menu', 'Call To Action', 'Call To Action', '2026-03-05 05:24:06', '2026-03-05 05:24:06'),
(32, 'en', 'menu', 'Testmonial', 'Testmonial', '2026-03-05 05:24:06', '2026-03-05 05:24:06'),
(33, 'en', 'menu', 'FAQ’s', 'FAQ’s', '2026-03-05 05:24:06', '2026-03-05 05:24:06'),
(34, 'en', 'menu', 'Customers', 'Customers', '2026-03-05 05:24:06', '2026-03-05 05:24:06'),
(35, 'en', 'menu', 'Canned Response', 'Canned Response', '2026-03-05 05:24:06', '2026-03-05 05:24:06'),
(36, 'en', 'menu', 'Envato', 'Envato', '2026-03-05 05:24:06', '2026-03-05 05:24:06'),
(37, 'en', 'menu', 'Envato API Token', 'Envato API Token', '2026-03-05 05:24:06', '2026-03-05 05:24:06'),
(38, 'en', 'menu', 'Envato License Verification', 'Envato License Verification', '2026-03-05 05:24:06', '2026-03-05 05:24:06'),
(39, 'en', 'menu', 'App Info', 'App Info', '2026-03-05 05:24:06', '2026-03-05 05:24:06'),
(40, 'en', 'menu', 'App Purchase Code', 'App Purchase Code', '2026-03-05 05:24:06', '2026-03-05 05:24:06'),
(41, 'en', 'menu', 'Groups', 'Groups', '2026-03-05 05:24:06', '2026-03-05 05:24:06'),
(42, 'en', 'menu', 'Create Group', 'Create Group', '2026-03-05 05:24:06', '2026-03-05 05:24:06'),
(43, 'en', 'menu', 'Groups List', 'Groups List', '2026-03-05 05:24:06', '2026-03-05 05:24:06'),
(44, 'en', 'menu', 'Notifications', 'Notifications', '2026-03-05 05:24:06', '2026-03-05 05:24:06'),
(45, 'en', 'menu', 'All Notifications', 'All Notifications', '2026-03-05 05:24:06', '2026-03-05 05:24:06'),
(46, 'en', 'menu', 'Custom Notifications', 'Custom Notifications', '2026-03-05 05:24:06', '2026-03-05 05:24:06'),
(47, 'en', 'menu', 'Custom Pages', 'Custom Pages', '2026-03-05 05:24:06', '2026-03-05 05:24:06'),
(48, 'en', 'menu', 'Pages', 'Pages', '2026-03-05 05:24:06', '2026-03-05 05:24:06'),
(49, 'en', 'menu', '404 Error Page', '404 Error Page', '2026-03-05 05:24:06', '2026-03-05 05:24:06'),
(50, 'en', 'menu', 'Under Maintenance Page', 'Under Maintenance Page', '2026-03-05 05:24:06', '2026-03-05 05:24:06'),
(51, 'en', 'menu', 'Bussiness Hours', 'Bussiness Hours', '2026-03-05 05:24:06', '2026-03-05 05:24:06'),
(52, 'en', 'menu', 'App Setting', 'App Setting', '2026-03-05 05:24:06', '2026-03-05 05:24:06'),
(53, 'en', 'menu', 'General Setting', 'General Setting', '2026-03-05 05:24:06', '2026-03-05 05:24:06'),
(54, 'en', 'menu', 'Ticket Setting', 'Ticket Setting', '2026-03-05 05:24:06', '2026-03-05 05:24:06'),
(55, 'en', 'menu', 'SEO', 'SEO', '2026-03-05 05:24:06', '2026-03-05 05:24:06'),
(56, 'en', 'menu', 'Google Analytics', 'Google Analytics', '2026-03-05 05:24:06', '2026-03-05 05:24:06'),
(57, 'en', 'menu', 'Custom CSS & JS', 'Custom CSS & JS', '2026-03-05 05:24:06', '2026-03-05 05:24:06'),
(58, 'en', 'menu', 'Captcha Setting', 'Captcha Setting', '2026-03-05 05:24:06', '2026-03-05 05:24:06'),
(59, 'en', 'menu', 'Social Logins', 'Social Logins', '2026-03-05 05:24:06', '2026-03-05 05:24:06'),
(60, 'en', 'menu', 'Email Setting', 'Email Setting', '2026-03-05 05:24:06', '2026-03-05 05:24:06'),
(61, 'en', 'menu', 'External Chat', 'External Chat', '2026-03-05 05:24:06', '2026-03-05 05:24:06'),
(62, 'en', 'menu', 'Maintenance Mode', 'Maintenance Mode', '2026-03-05 05:24:06', '2026-03-05 05:24:06'),
(63, 'en', 'menu', 'Security Setting', 'Security Setting', '2026-03-05 05:24:06', '2026-03-05 05:24:06'),
(64, 'en', 'menu', 'IP List', 'IP List', '2026-03-05 05:24:06', '2026-03-05 05:24:06'),
(65, 'en', 'menu', 'Email to Tickets', 'Email to Tickets', '2026-03-05 05:24:07', '2026-03-05 05:24:07'),
(66, 'en', 'menu', 'Announcements', 'Announcements', '2026-03-05 05:24:07', '2026-03-05 05:24:07'),
(67, 'en', 'menu', 'Email Templates', 'Email Templates', '2026-03-05 05:24:07', '2026-03-05 05:24:07'),
(68, 'en', 'menu', 'Clear Cache', 'Clear Cache', '2026-03-05 05:24:07', '2026-03-05 05:24:07'),
(69, 'en', 'menu', 'Custom Field', 'Custom Field', '2026-03-05 05:24:07', '2026-03-05 05:24:07'),
(70, 'en', 'menu', 'Languages', 'Languages', '2026-03-05 05:24:07', '2026-03-05 05:24:07'),
(71, 'en', 'menu', 'Create Ticket', 'Create Ticket', '2026-03-05 05:24:07', '2026-03-05 05:24:07'),
(72, 'en', 'menu', 'Home Page', 'Home Page', '2026-03-05 05:24:07', '2026-03-05 05:24:07'),
(73, 'en', 'menu', 'Profile', 'Profile', '2026-03-05 05:24:07', '2026-03-05 05:24:07'),
(74, 'en', 'menu', 'Logout', 'Logout', '2026-03-05 05:24:07', '2026-03-05 05:24:07'),
(75, 'en', 'menu', 'Home', 'Home', '2026-03-05 05:24:07', '2026-03-05 05:24:07'),
(76, 'en', 'menu', 'Contact Us', 'Contact Us', '2026-03-05 05:24:07', '2026-03-05 05:24:07'),
(77, 'en', 'menu', 'Tickets', 'Tickets', '2026-03-05 05:24:07', '2026-03-05 05:24:07'),
(78, 'en', 'menu', 'Login', 'Login', '2026-03-05 05:24:07', '2026-03-05 05:24:07'),
(79, 'en', 'menu', 'Register', 'Register', '2026-03-05 05:24:07', '2026-03-05 05:24:07'),
(80, 'en', 'menu', 'Submit Ticket', 'Submit Ticket', '2026-03-05 05:24:07', '2026-03-05 05:24:07'),
(81, 'en', 'menu', 'Edit Profile', 'Edit Profile', '2026-03-05 05:24:07', '2026-03-05 05:24:07'),
(82, 'en', 'menu', 'Active Tickets', 'Active Tickets', '2026-03-05 05:24:07', '2026-03-05 05:24:07'),
(83, 'en', 'menu', 'Closed Tickets', 'Closed Tickets', '2026-03-05 05:24:07', '2026-03-05 05:24:07'),
(84, 'en', 'menu', 'On-Hold Tickets', 'On-Hold Tickets', '2026-03-05 05:24:07', '2026-03-05 05:24:07'),
(85, 'en', 'notification', 'New Notifications', 'New Notifications', '2026-03-05 05:24:07', '2026-03-05 05:24:07'),
(86, 'en', 'notification', 'Mark all as read', 'Mark all as read', '2026-03-05 05:24:07', '2026-03-05 05:24:07'),
(87, 'en', 'notification', 'A new ticket has been created', 'A new ticket has been created', '2026-03-05 05:24:07', '2026-03-05 05:24:07'),
(88, 'en', 'notification', 'Ticket is assigned', 'Ticket is assigned', '2026-03-05 05:24:07', '2026-03-05 05:24:07'),
(89, 'en', 'notification', 'This ticket has been closed', 'This ticket has been closed', '2026-03-05 05:24:07', '2026-03-05 05:24:07'),
(90, 'en', 'notification', 'This ticket status is On-Hold', 'This ticket status is On-Hold', '2026-03-05 05:24:07', '2026-03-05 05:24:07'),
(91, 'en', 'notification', 'This ticket has been reopened', 'This ticket has been reopened', '2026-03-05 05:24:07', '2026-03-05 05:24:07'),
(92, 'en', 'notification', 'You got a new reply on this ticket', 'You got a new reply on this ticket', '2026-03-05 05:24:07', '2026-03-05 05:24:07'),
(93, 'en', 'notification', 'This ticket status is overdue', 'This ticket status is overdue', '2026-03-05 05:24:07', '2026-03-05 05:24:07'),
(94, 'en', 'notification', 'There are no new notifications to display', 'There are no new notifications to display', '2026-03-05 05:24:07', '2026-03-05 05:24:07'),
(95, 'en', 'notification', 'See All Notifications', 'See All Notifications', '2026-03-05 05:24:07', '2026-03-05 05:24:07'),
(96, 'en', 'notification', 'Your new ticket has been created', 'Your new ticket has been created', '2026-03-05 05:24:07', '2026-03-05 05:24:07'),
(97, 'en', 'notification', 'Your ticket has been closed', 'Your ticket has been closed', '2026-03-05 05:24:07', '2026-03-05 05:24:07'),
(98, 'en', 'notification', 'Your ticket status is On-Hold', 'Your ticket status is On-Hold', '2026-03-05 05:24:07', '2026-03-05 05:24:07'),
(99, 'en', 'notification', 'Your ticket has been Reopened', 'Your ticket has been Reopened', '2026-03-05 05:24:07', '2026-03-05 05:24:07'),
(100, 'en', 'notification', 'You got a new reply on this ticket', 'You got a new reply on this ticket', '2026-03-05 05:24:07', '2026-03-05 05:24:07'),
(101, 'en', 'notification', 'Your ticket status is overdue', 'Your ticket status is overdue', '2026-03-05 05:24:07', '2026-03-05 05:24:07'),
(102, 'en', 'notification', 'Filter Notifications', 'Filter Notifications', '2026-03-05 05:24:07', '2026-03-05 05:24:07'),
(103, 'en', 'notification', 'Sort by Status', 'Sort by Status', '2026-03-05 05:24:07', '2026-03-05 05:24:07'),
(104, 'en', 'notification', 'New Tickets', 'New Tickets', '2026-03-05 05:24:07', '2026-03-05 05:24:07'),
(105, 'en', 'notification', 'Closed Tickets', 'Closed Ticketss', '2026-03-05 05:24:07', '2026-03-05 05:24:07'),
(106, 'en', 'notification', 'On-Hold Tickets', 'On-Hold Tickets', '2026-03-05 05:24:07', '2026-03-05 05:24:07'),
(107, 'en', 'notification', 'Overdue Tickets', 'Overdue Tickets', '2026-03-05 05:24:07', '2026-03-05 05:24:07'),
(108, 'en', 'notification', 'Re-Open Tickets', 'Re-Open Tickets', '2026-03-05 05:24:07', '2026-03-05 05:24:07'),
(109, 'en', 'notification', 'Inprogress Tickets', 'Inprogress Tickets', '2026-03-05 05:24:07', '2026-03-05 05:24:07'),
(110, 'en', 'notification', 'Custom Notifications', 'Custom Notifications', '2026-03-05 05:24:07', '2026-03-05 05:24:07'),
(111, 'en', 'notification', 'New Ticket', 'New Ticket', '2026-03-05 05:24:07', '2026-03-05 05:24:07'),
(112, 'en', 'notification', 'Closed Ticket', 'Closed Ticket', '2026-03-05 05:24:07', '2026-03-05 05:24:07'),
(113, 'en', 'notification', 'On-Hold Ticket', 'On-Hold Ticket', '2026-03-05 05:24:07', '2026-03-05 05:24:07'),
(114, 'en', 'notification', 'Overdue Ticket', 'Overdue Ticket', '2026-03-05 05:24:07', '2026-03-05 05:24:07'),
(115, 'en', 'notification', 'Re-Open Ticket', 'Re-Open Ticket', '2026-03-05 05:24:07', '2026-03-05 05:24:07'),
(116, 'en', 'notification', 'Inprogress Ticket', 'Inprogress Ticket', '2026-03-05 05:24:07', '2026-03-05 05:24:07'),
(117, 'en', 'alerts', 'We have e-mailed your password reset link!', 'We have e-mailed your password reset link!', '2026-03-05 05:24:07', '2026-03-05 05:24:07'),
(118, 'en', 'alerts', 'Your Account is Inactive. Please Contact to Admin.', 'Your Account is Inactive. Please Contact to Admin.', '2026-03-05 05:24:07', '2026-03-05 05:24:07'),
(119, 'en', 'alerts', 'Your Account is Not Verified.', 'Your Account is Not Verified.', '2026-03-05 05:24:07', '2026-03-05 05:24:07'),
(120, 'en', 'alerts', 'Your password has been changed!', 'Your password has been changed!', '2026-03-05 05:24:07', '2026-03-05 05:24:07'),
(121, 'en', 'alerts', 'An announcement has been successfully updated.', 'An announcement has been successfully updated.', '2026-03-05 05:24:07', '2026-03-05 05:24:07'),
(122, 'en', 'alerts', 'The announcement was successfully deleted.', 'The announcement was successfully deleted.', '2026-03-05 05:24:07', '2026-03-05 05:24:07'),
(123, 'en', 'alerts', 'Updated successfully', 'Updated successfully', '2026-03-05 05:24:07', '2026-03-05 05:24:07'),
(124, 'en', 'alerts', 'The ticket was successfully assigned.', 'The ticket was successfully assigned.', '2026-03-05 05:24:07', '2026-03-05 05:24:07'),
(125, 'en', 'alerts', 'Deleted successfully', 'Deleted successfully', '2026-03-05 05:24:07', '2026-03-05 05:24:07'),
(126, 'en', 'alerts', 'Please check the format and size of the file.', 'Please check the format and size of the file.', '2026-03-05 05:24:08', '2026-03-05 05:24:08'),
(127, 'en', 'alerts', 'Your profile has been successfully updated.', 'Your profile has been successfully updated.', '2026-03-05 05:24:08', '2026-03-05 05:24:08'),
(128, 'en', 'alerts', 'The profile image was successfully removed.', 'The profile image was successfully removed.', '2026-03-05 05:24:08', '2026-03-05 05:24:08'),
(129, 'en', 'alerts', 'A new customer was successfully added.', 'A new customer was successfully added.', '2026-03-05 05:24:08', '2026-03-05 05:24:08'),
(130, 'en', 'alerts', 'The customer profile was successfully updated.', 'The customer profile was successfully updated.', '2026-03-05 05:24:08', '2026-03-05 05:24:08'),
(131, 'en', 'alerts', 'The account has been deactivated.', 'The account has been deactivated.', '2026-03-05 05:24:08', '2026-03-05 05:24:08'),
(132, 'en', 'alerts', 'The customer was deleted successfully.', 'The customer was deleted successfully.', '2026-03-05 05:24:08', '2026-03-05 05:24:08'),
(133, 'en', 'alerts', 'A test email was sent successfully.', 'A test email was sent successfully.', '2026-03-05 05:24:08', '2026-03-05 05:24:08'),
(134, 'en', 'alerts', 'The test email couldn’t be sent.', 'The test email couldn’t be sent.', '2026-03-05 05:24:08', '2026-03-05 05:24:08'),
(135, 'en', 'alerts', 'The ticket has been closed.', 'The ticket has been closed.', '2026-03-05 05:24:08', '2026-03-05 05:24:08'),
(136, 'en', 'alerts', 'The ticket was successfully deleted.', 'The ticket was successfully deleted.', '2026-03-05 05:24:08', '2026-03-05 05:24:08'),
(137, 'en', 'alerts', 'A ticket has been opened with the ticket ID.', 'A ticket has been opened with the ticket ID.', '2026-03-05 05:24:08', '2026-03-05 05:24:08'),
(138, 'en', 'alerts', 'Domain is Blocked List', 'Domain is Blocked List', '2026-03-05 05:24:08', '2026-03-05 05:24:08'),
(139, 'en', 'alerts', 'The note was successfully submitted.', 'The note was successfully submitted.', '2026-03-05 05:24:08', '2026-03-05 05:24:08'),
(140, 'en', 'alerts', 'The note was successfully deleted.', 'The note was successfully deleted.', '2026-03-05 05:24:08', '2026-03-05 05:24:08'),
(141, 'en', 'alerts', 'The ticket was successfully restore.', 'The ticket was successfully restore.', '2026-03-05 05:24:08', '2026-03-05 05:24:08'),
(142, 'en', 'alerts', 'A new employee was successfully added.', 'A new employee was successfully added.', '2026-03-05 05:24:08', '2026-03-05 05:24:08'),
(143, 'en', 'alerts', 'The employee’s profile was successfully updated.', 'The employee’s profile was successfully updated.', '2026-03-05 05:24:08', '2026-03-05 05:24:08'),
(144, 'en', 'alerts', 'The employee was successfully deleted.', 'The employee was successfully deleted.', '2026-03-05 05:24:08', '2026-03-05 05:24:08'),
(145, 'en', 'alerts', 'The employee list was imported successfully.', 'The employee list was imported successfully.', '2026-03-05 05:24:08', '2026-03-05 05:24:08'),
(146, 'en', 'alerts', 'The password has been successfully changed!', 'The password has been successfully changed!', '2026-03-05 05:24:08', '2026-03-05 05:24:08'),
(147, 'en', 'alerts', 'A new article was successfully created.', 'A new article was successfully created.', '2026-03-05 05:24:08', '2026-03-05 05:24:08'),
(148, 'en', 'alerts', 'This article has been successfully updated.', 'This article has been successfully updated.', '2026-03-05 05:24:08', '2026-03-05 05:24:08'),
(149, 'en', 'alerts', 'The article was successfully deleted.', 'The article was successfully deleted.', '2026-03-05 05:24:08', '2026-03-05 05:24:08'),
(150, 'en', 'alerts', 'Cannot Update the data', 'Cannot Update the data', '2026-03-05 05:24:08', '2026-03-05 05:24:08'),
(151, 'en', 'alerts', 'The category was successfully updated.', 'The category was successfully updated.', '2026-03-05 05:24:08', '2026-03-05 05:24:08'),
(152, 'en', 'alerts', 'The category was successfully deleted.', 'The category was successfully deleted.', '2026-03-05 05:24:08', '2026-03-05 05:24:08'),
(153, 'en', 'alerts', 'The subcategory was successfully updated.', 'The subcategory was successfully updated.', '2026-03-05 05:24:08', '2026-03-05 05:24:08'),
(154, 'en', 'alerts', 'The subcategory was successfully deleted.', 'The subcategory was successfully deleted.', '2026-03-05 05:24:08', '2026-03-05 05:24:08'),
(155, 'en', 'alerts', 'Your new password can not be the same as your old password. Please choose a new password.', 'Your new password can not be the same as your old password. Please choose a new password.', '2026-03-05 05:24:08', '2026-03-05 05:24:08'),
(156, 'en', 'alerts', 'The current password does not match!', 'The current password does not match!', '2026-03-05 05:24:08', '2026-03-05 05:24:08'),
(157, 'en', 'alerts', 'The response to the ticket was successful.', 'The response to the ticket was successful.', '2026-03-05 05:24:08', '2026-03-05 05:24:08'),
(158, 'en', 'alerts', 'The ticket has been successfully reopened.', 'The ticket has been successfully reopened.', '2026-03-05 05:24:08', '2026-03-05 05:24:08'),
(159, 'en', 'alerts', 'The FAQ has been successfully updated.', 'The FAQ has been successfully updated.', '2026-03-05 05:24:08', '2026-03-05 05:24:08'),
(160, 'en', 'alerts', 'The FAQ has been successfully deleted.', 'The FAQ has been successfully deleted.', '2026-03-05 05:24:08', '2026-03-05 05:24:08'),
(161, 'en', 'alerts', 'Featurebox Updated successfully', 'Featurebox Updated successfully', '2026-03-05 05:24:08', '2026-03-05 05:24:08'),
(162, 'en', 'alerts', 'Featurebox Updated successfully', 'Featurebox Updated successfully', '2026-03-05 05:24:08', '2026-03-05 05:24:08'),
(163, 'en', 'alerts', 'A group was successfully created.', 'A group was successfully created.', '2026-03-05 05:24:08', '2026-03-05 05:24:08'),
(164, 'en', 'alerts', 'The group updated successfully.', 'The group updated successfully.', '2026-03-05 05:24:08', '2026-03-05 05:24:08'),
(165, 'en', 'alerts', 'The group deleted successfully.', 'The group deleted successfully.', '2026-03-05 05:24:08', '2026-03-05 05:24:08'),
(166, 'en', 'alerts', 'The IP address was successfully created and updated.', 'The IP address was successfully created and updated.', '2026-03-05 05:24:08', '2026-03-05 05:24:08'),
(167, 'en', 'alerts', 'The IP address has been successfully removed.', 'The IP address has been successfully removed.', '2026-03-05 05:24:08', '2026-03-05 05:24:08'),
(168, 'en', 'alerts', 'A custom notification was successfully sent to the customer.', 'A custom notification was successfully sent to the customer.', '2026-03-05 05:24:08', '2026-03-05 05:24:08'),
(169, 'en', 'alerts', 'A custom notification was successfully sent to the employee.', 'A custom notification was successfully sent to the employee.', '2026-03-05 05:24:08', '2026-03-05 05:24:08'),
(170, 'en', 'alerts', '\"Custom notification\" was successfully deleted.', '\"Custom notification\" was successfully deleted.', '2026-03-05 05:24:08', '2026-03-05 05:24:08'),
(171, 'en', 'alerts', 'Role updated successfully', 'Role updated successfully', '2026-03-05 05:24:08', '2026-03-05 05:24:08'),
(172, 'en', 'alerts', 'The project has been updated successfully.', 'The project has been updated successfully.', '2026-03-05 05:24:09', '2026-03-05 05:24:09'),
(173, 'en', 'alerts', 'The project was successfully deleted.', 'The project was successfully deleted.', '2026-03-05 05:24:09', '2026-03-05 05:24:09'),
(174, 'en', 'alerts', 'The projects were successfully assigned.', 'The projects were successfully assigned.', '2026-03-05 05:24:09', '2026-03-05 05:24:09'),
(175, 'en', 'alerts', 'Projects have not been assigned.', 'Projects have not been assigned.', '2026-03-05 05:24:09', '2026-03-05 05:24:09'),
(176, 'en', 'alerts', 'The project list was imported successfully.', 'The project list was imported successfully.', '2026-03-05 05:24:09', '2026-03-05 05:24:09'),
(177, 'en', 'alerts', 'The role was successfully created.', 'The role was successfully created.', '2026-03-05 05:24:09', '2026-03-05 05:24:09'),
(178, 'en', 'alerts', 'The role has been successfully updated.', 'The role has been successfully updated.', '2026-03-05 05:24:09', '2026-03-05 05:24:09'),
(179, 'en', 'alerts', 'You are not supposed to block your own country.', 'You are not supposed to block your own country.', '2026-03-05 05:24:09', '2026-03-05 05:24:09'),
(180, 'en', 'alerts', 'The language has been successfully updated', 'The language has been successfully updated', '2026-03-05 05:24:09', '2026-03-05 05:24:09'),
(181, 'en', 'alerts', 'The testimonial has been successfully updated', 'The testimonial has been successfully updated', '2026-03-05 05:24:09', '2026-03-05 05:24:09'),
(182, 'en', 'alerts', 'The testimonial to was successfully deleted.', 'The testimonial to was successfully deleted.', '2026-03-05 05:24:09', '2026-03-05 05:24:09'),
(183, 'en', 'alerts', 'Thank you for contacting us!', 'Thank you for contacting us!', '2026-03-05 05:24:09', '2026-03-05 05:24:09'),
(184, 'en', 'alerts', 'Password successfully changed!', 'Password successfully changed!', '2026-03-05 05:24:09', '2026-03-05 05:24:09'),
(185, 'en', 'alerts', 'Current password does not match!', 'Current password does not match!', '2026-03-05 05:24:09', '2026-03-05 05:24:09'),
(186, 'en', 'alerts', 'Your email has not been verified. Please verify your email.', 'Your email has not been verified. Please verify your email.', '2026-03-05 05:24:09', '2026-03-05 05:24:09'),
(187, 'en', 'alerts', 'This email is not registered.', 'This email is not registered.', '2026-03-05 05:24:09', '2026-03-05 05:24:09'),
(188, 'en', 'alerts', 'Invalid email or password', 'Invalid email or password', '2026-03-05 05:24:09', '2026-03-05 05:24:09'),
(189, 'en', 'alerts', 'Techincal Issue', 'Techincal Issue', '2026-03-05 05:24:09', '2026-03-05 05:24:09'),
(190, 'en', 'alerts', 'The email verification link was successfully sent. Please check and verify your email.', 'The email verification link was successfully sent. Please check and verify your email.', '2026-03-05 05:24:09', '2026-03-05 05:24:09'),
(191, 'en', 'alerts', 'Your e-mail has been verified. You can now login.', 'Your e-mail has been verified. You can now login.', '2026-03-05 05:24:09', '2026-03-05 05:24:09'),
(192, 'en', 'alerts', 'Your e-mail has already been verified. You can now login.', 'Your e-mail has already been verified. You can now login.', '2026-03-05 05:24:09', '2026-03-05 05:24:09'),
(193, 'en', 'alerts', 'Sorry, your email could not be determined.', 'Sorry, your email could not be determined.', '2026-03-05 05:24:09', '2026-03-05 05:24:09'),
(194, 'en', 'alerts', 'Your account has been deleted!', 'Your account has been deleted!', '2026-03-05 05:24:09', '2026-03-05 05:24:09'),
(195, 'en', 'alerts', 'The ticket has been already closed.', 'The ticket has been already closed.', '2026-03-05 05:24:09', '2026-03-05 05:24:09'),
(196, 'en', 'alerts', 'The image has been deleted successfully!', 'The image has been deleted successfully!', '2026-03-05 05:24:09', '2026-03-05 05:24:09'),
(197, 'en', 'alerts', 'You already rating has submitted.', 'You already rating has submitted.', '2026-03-05 05:24:09', '2026-03-05 05:24:09'),
(198, 'en', 'alerts', 'Thank you for rating us.', 'Thank you for rating us.', '2026-03-05 05:24:09', '2026-03-05 05:24:09'),
(199, 'en', 'alerts', 'The purchase code has been verified, but your product support has expired.', 'The purchase code has been verified, but your product support has expired.', '2026-03-05 05:24:09', '2026-03-05 05:24:09'),
(200, 'en', 'alerts', 'The purchase code has been validated and is supported.', 'The purchase code has been validated and is supported.', '2026-03-05 05:24:09', '2026-03-05 05:24:09'),
(201, 'en', 'alerts', 'The Purchase Code is invalid.', 'The Purchase Code is invalid.', '2026-03-05 05:24:09', '2026-03-05 05:24:09'),
(202, 'en', 'alerts', 'Your comment has be submitted.', 'Your comment has be submitted.', '2026-03-05 05:24:09', '2026-03-05 05:24:09'),
(203, 'en', 'alerts', 'Please check your Email', 'Please check your Email', '2026-03-05 05:24:09', '2026-03-05 05:24:09'),
(204, 'en', 'alerts', 'Email is already registered, Please login to Create a Ticket', 'Email is already registered, Please login to Create a Ticket', '2026-03-05 05:24:09', '2026-03-05 05:24:09'),
(205, 'en', 'alerts', 'Please select at least one check box.', 'Please select at least one check box.', '2026-03-05 05:24:09', '2026-03-05 05:24:09'),
(206, 'en', 'alerts', 'Category name already exists', 'Category name already exists', '2026-03-05 05:24:09', '2026-03-05 05:24:09'),
(207, 'en', 'alerts', 'SubCategory name already exists', 'SubCategory name already exists', '2026-03-05 05:24:09', '2026-03-05 05:24:09'),
(208, 'en', 'alerts', 'Setting Not Updated', 'Setting Not Updated', '2026-03-05 05:24:09', '2026-03-05 05:24:09'),
(209, 'en', 'alerts', 'Project Name is Already Exists', 'Project Name is Already Exists', '2026-03-05 05:24:09', '2026-03-05 05:24:09'),
(210, 'en', 'alerts', 'Are you sure you want to continue?', 'Are you sure you want to continue?', '2026-03-05 05:24:09', '2026-03-05 05:24:09'),
(211, 'en', 'alerts', 'This might erase your records permanently', 'This might erase your records permanently', '2026-03-05 05:24:09', '2026-03-05 05:24:09'),
(212, 'en', 'alerts', 'Are you sure you want to unassign this agent?', 'Are you sure you want to unassign this agent?', '2026-03-05 05:24:09', '2026-03-05 05:24:09'),
(213, 'en', 'alerts', 'This agent may no longer exist for this ticket.', 'This agent may no longer exist for this ticket.', '2026-03-05 05:24:09', '2026-03-05 05:24:09'),
(214, 'en', 'alerts', 'Are you sure you want to reset this record?', 'Are you sure you want to reset this record?', '2026-03-05 05:24:09', '2026-03-05 05:24:09'),
(215, 'en', 'alerts', 'Are you sure you want to remove the profile image?', 'Are you sure you want to remove the profile image?', '2026-03-05 05:24:09', '2026-03-05 05:24:09'),
(216, 'en', 'setting', 'App Title & Logos', 'App Title & Logos', '2026-03-05 05:24:09', '2026-03-05 05:24:09'),
(217, 'en', 'setting', 'Upload Light-Logo', 'Upload Light-Logo', '2026-03-05 05:24:09', '2026-03-05 05:24:09'),
(218, 'en', 'setting', 'Upload Dark-Logo', 'Upload Dark-Logo', '2026-03-05 05:24:09', '2026-03-05 05:24:09'),
(219, 'en', 'setting', 'Upload Dark-Icon', 'Upload Dark-Icon', '2026-03-05 05:24:09', '2026-03-05 05:24:09'),
(220, 'en', 'setting', 'Upload Light-Icon', 'Upload Light-Icon', '2026-03-05 05:24:09', '2026-03-05 05:24:09'),
(221, 'en', 'setting', 'Upload Favicon', 'Upload Favicon', '2026-03-05 05:24:09', '2026-03-05 05:24:09'),
(222, 'en', 'setting', 'Set URL', 'Set URL', '2026-03-05 05:24:09', '2026-03-05 05:24:09'),
(223, 'en', 'setting', 'Terms of service URL', 'Terms of service URL', '2026-03-05 05:24:09', '2026-03-05 05:24:09'),
(224, 'en', 'setting', 'Color Setting', 'Color Setting', '2026-03-05 05:24:09', '2026-03-05 05:24:09'),
(225, 'en', 'setting', 'Primary Color', 'Primary Color', '2026-03-05 05:24:10', '2026-03-05 05:24:10'),
(226, 'en', 'setting', 'Secondary Color', 'Secondary Color', '2026-03-05 05:24:10', '2026-03-05 05:24:10'),
(227, 'en', 'setting', 'Global Language Setting', 'Global Language Setting', '2026-03-05 05:24:10', '2026-03-05 05:24:10'),
(228, 'en', 'setting', 'Select Language', 'Select Language', '2026-03-05 05:24:10', '2026-03-05 05:24:10'),
(229, 'en', 'setting', 'Global Date & Time Format', 'Global Date & Time Format', '2026-03-05 05:24:10', '2026-03-05 05:24:10'),
(230, 'en', 'setting', 'Select Date Format', 'Select Date Format', '2026-03-05 05:24:10', '2026-03-05 05:24:10'),
(231, 'en', 'setting', 'Select Time Format', 'Select Time Format', '2026-03-05 05:24:10', '2026-03-05 05:24:10'),
(232, 'en', 'setting', 'First Day of the Week', 'First Day of the Week', '2026-03-05 05:24:10', '2026-03-05 05:24:10'),
(233, 'en', 'setting', 'Select Day', 'Select Day', '2026-03-05 05:24:10', '2026-03-05 05:24:10'),
(234, 'en', 'setting', 'Global Timezones', 'Global Timezones', '2026-03-05 05:24:10', '2026-03-05 05:24:10'),
(235, 'en', 'setting', 'Select Global Timezones', 'Select Global Timezones', '2026-03-05 05:24:10', '2026-03-05 05:24:10'),
(236, 'en', 'setting', 'App Global Settings', 'App Global Settings', '2026-03-05 05:24:10', '2026-03-05 05:24:10'),
(237, 'en', 'setting', 'Enable Personal Setting For Admin Panel', 'Enable Personal Setting For Admin Panel', '2026-03-05 05:24:10', '2026-03-05 05:24:10'),
(238, 'en', 'setting', 'If you disable this setting, the \"Personal Setting\" with the \"Switch to Dark-Mode\" option will disappear from the Admin panel on the profile page.', 'If you disable this setting, the \"Personal Setting\" with the \"Switch to Dark-Mode\" option will disappear from the Admin panel on the profile page.', '2026-03-05 05:24:10', '2026-03-05 05:24:10'),
(239, 'en', 'setting', 'Enable Personal Setting For Customer Panel', 'Enable Personal Setting For Customer Panel', '2026-03-05 05:24:10', '2026-03-05 05:24:10'),
(240, 'en', 'setting', 'If you enable this setting, it will appear on all customer panels on the profile page with the \"Switch to Dark-Mode\" option. And global \"Dark-Mode', 'If you enable this setting, it will appear on all customer panels on the profile page with the \"Switch to Dark-Mode\" option. And global \"Dark-Mode', '2026-03-05 05:24:10', '2026-03-05 05:24:10'),
(241, 'en', 'setting', 'Enable Dark-Mode', 'Enable Dark-Mode', '2026-03-05 05:24:10', '2026-03-05 05:24:10'),
(242, 'en', 'setting', 'If you enable this setting, the whole application will convert into \"Dark-Mode\" except for the users that are permitted with \"Personal Settings.\"', 'If you enable this setting, the whole application will convert into \"Dark-Mode\" except for the users that are permitted with \"Personal Settings.\"', '2026-03-05 05:24:10', '2026-03-05 05:24:10'),
(243, 'en', 'setting', 'Enable Popup Register/Login', 'Enable Popup Register/Login', '2026-03-05 05:24:10', '2026-03-05 05:24:10'),
(244, 'en', 'setting', 'If you enable this setting, only customers can access the registration and login forms with the “popup modal”.', 'If you enable this setting, only customers can access the registration and login forms with the “popup modal”.', '2026-03-05 05:24:10', '2026-03-05 05:24:10'),
(245, 'en', 'setting', 'Disable Register', 'Disable Register', '2026-03-05 05:24:10', '2026-03-05 05:24:10'),
(246, 'en', 'setting', 'If you enable this setting, \"Register\" options will disappear from the application in the header section, and new visitors wont be able to register', 'If you enable this setting, \"Register\" options will disappear from the application in the header section, and new visitors wont be able to register', '2026-03-05 05:24:10', '2026-03-05 05:24:10'),
(247, 'en', 'setting', 'Disable Google Font', 'Disable Google Font', '2026-03-05 05:24:10', '2026-03-05 05:24:10'),
(248, 'en', 'setting', 'If you enable this setting, \"Google Font\" will not apply to the whole application or site.', 'If you enable this setting, \"Google Font\" will not apply to the whole application or site.', '2026-03-05 05:24:10', '2026-03-05 05:24:10'),
(249, 'en', 'setting', 'Enable Force SSL (https)', 'Enable Force SSL (https)', '2026-03-05 05:24:10', '2026-03-05 05:24:10'),
(250, 'en', 'setting', 'If you enable this setting, it will make your web application secure using \"force SSL\" when it is not secure, even if your domain is certified with an SSL certificate.', 'If you enable this setting, it will make your web application secure using \"force SSL\" when it is not secure, even if your domain is certified with an SSL certificate.', '2026-03-05 05:24:10', '2026-03-05 05:24:10'),
(251, 'en', 'setting', 'Enable Knowledge', 'Enable Knowledge', '2026-03-05 05:24:10', '2026-03-05 05:24:10'),
(252, 'en', 'setting', 'If you disable this setting, the \"Knowledge\" option will disappear from the application in the header section.', 'If you disable this setting, the \"Knowledge\" option will disappear from the application in the header section.', '2026-03-05 05:24:10', '2026-03-05 05:24:10'),
(253, 'en', 'setting', 'Enable Faq', 'Enable Faq', '2026-03-05 05:24:10', '2026-03-05 05:24:10'),
(254, 'en', 'setting', 'If you disable this setting, the \"faq\" option will disappear from the application in the header section.', 'If you disable this setting, the \"faq\" option will disappear from the application in the header section.', '2026-03-05 05:24:10', '2026-03-05 05:24:10'),
(255, 'en', 'setting', 'Enable Contact Us', 'Enable Contact Us', '2026-03-05 05:24:10', '2026-03-05 05:24:10'),
(256, 'en', 'setting', 'If you disable this setting, the \"Contact\" option will disappear from the application in the header section.', 'If you disable this setting, the \"Contact\" option will disappear from the application in the header section.', '2026-03-05 05:24:10', '2026-03-05 05:24:10'),
(257, 'en', 'setting', 'Enable Customer Profile Image Upload', 'Enable Customer Profile Image Upload', '2026-03-05 05:24:10', '2026-03-05 05:24:10'),
(258, 'en', 'setting', 'If you disable this setting, the \"Upload file\" option will disappear from the customers profile page, and they wont be able to upload their profile picture.', 'If you disable this setting, the \"Upload file\" option will disappear from the customers profile page, and they wont be able to upload their profile picture.', '2026-03-05 05:24:10', '2026-03-05 05:24:10'),
(259, 'en', 'setting', 'Envato On', 'Envato On', '2026-03-05 05:24:10', '2026-03-05 05:24:10'),
(260, 'en', 'setting', 'If you disable this Envato switch, the \"Envato\" option will disappear from the application’s side menu.', 'If you disable this Envato switch, the \"Envato\" option will disappear from the application’s side menu.', '2026-03-05 05:24:10', '2026-03-05 05:24:10'),
(261, 'en', 'setting', 'Envato Expired On', 'Envato Expired On', '2026-03-05 05:24:10', '2026-03-05 05:24:10'),
(262, 'en', 'setting', 'An expired license cannot be used by \"customers\" or \"guests\" if you enable this Envato Expired switch.', 'An expired license cannot be used by \"customers\" or \"guests\" if you enable this Envato Expired switch.', '2026-03-05 05:24:10', '2026-03-05 05:24:10'),
(263, 'en', 'setting', 'Purchase code enable to agent', 'Purchase code enable to agent', '2026-03-05 05:24:10', '2026-03-05 05:24:10'),
(264, 'en', 'setting', 'If you enable this, employees can see the purchase code.', 'If you enable this, employees can see the purchase code.', '2026-03-05 05:24:10', '2026-03-05 05:24:10'),
(265, 'en', 'setting', 'Default Login', 'Default Login', '2026-03-05 05:24:10', '2026-03-05 05:24:10'),
(266, 'en', 'setting', 'If you enable it will be a login page is default', 'If you enable it will be a login page is default', '2026-03-05 05:24:10', '2026-03-05 05:24:10'),
(267, 'en', 'setting', 'Sidemenu Icon Style', 'Sidemenu Icon Style', '2026-03-05 05:24:10', '2026-03-05 05:24:10'),
(268, 'en', 'setting', 'If you \"Enable\" this setting, the whole application sidemenu will be converted into \"Sidemenu Icon Style\".', 'If you \"Enable\" this setting, the whole application sidemenu will be converted into \"Sidemenu Icon Style\".', '2026-03-05 05:24:10', '2026-03-05 05:24:10'),
(269, 'en', 'setting', 'Login Disable', 'Login Disable', '2026-03-05 05:24:10', '2026-03-05 05:24:10'),
(270, 'en', 'setting', 'If you \"Enable\" this setting, customers cannot login to their dashboard.', 'If you \"Enable\" this setting, customers cannot login to their dashboard.', '2026-03-05 05:24:10', '2026-03-05 05:24:10'),
(271, 'en', 'setting', 'Customer Account Delete On/off', 'Customer Account Delete On/off', '2026-03-05 05:24:10', '2026-03-05 05:24:10'),
(272, 'en', 'setting', 'If you \"Enable\" this setting, customers can \"Delete\" their account permenently.', 'If you \"Enable\" this setting, customers can \"Delete\" their account permenently.', '2026-03-05 05:24:11', '2026-03-05 05:24:11'),
(273, 'en', 'setting', 'Footer Copyright Text', 'Footer Copyright Text', '2026-03-05 05:24:11', '2026-03-05 05:24:11'),
(274, 'en', 'setting', 'Customer Can Re-Open Ticket Enable/Disable', 'Customer Can Re-Open Ticket Enable/Disable', '2026-03-05 05:24:11', '2026-03-05 05:24:11'),
(275, 'en', 'setting', 'If you disable this ticket setting, customers can not \"Re-Open\" their tickets. If it is enabled, then the customers can \"Re-Open\" their tickets within the mentioned days in the input field below. And if it is set to 0 (zero), then the customers can reopen their tickets at any time.', 'If you disable this ticket setting, customers can not \"Re-Open\" their tickets. If it is enabled, then the customers can \"Re-Open\" their tickets within the mentioned days in the input field below. And if it is set to 0 (zero), then the customers can reopen their tickets at any time.', '2026-03-05 05:24:11', '2026-03-05 05:24:11'),
(276, 'en', 'setting', 'Re-Open Days', 'Re-Open Days', '2026-03-05 05:24:11', '2026-03-05 05:24:11'),
(277, 'en', 'setting', 'Auto Close Ticket Enable/Disable', 'Auto Close Ticket Enable/Disable', '2026-03-05 05:24:11', '2026-03-05 05:24:11'),
(278, 'en', 'setting', 'If you disable this ticket setting, the inactive ticket won’t be closed automatically. Users will need to close the ticket manually. If it is enabled, the inactive ticket will close automatically after the completion of the days that are mentioned in the input field below.', 'If you disable this ticket setting, the inactive ticket won’t be closed automatically. Users will need to close the ticket manually. If it is enabled, the inactive ticket will close automatically after the completion of the days that are mentioned in the input field below.', '2026-03-05 05:24:11', '2026-03-05 05:24:11'),
(279, 'en', 'setting', 'Auto Close Days', 'Auto Close Days', '2026-03-05 05:24:11', '2026-03-05 05:24:11'),
(280, 'en', 'setting', 'Auto Ticket Overdue Enable/Disable', 'Auto Ticket Overdue Enable/Disable', '2026-03-05 05:24:11', '2026-03-05 05:24:11'),
(281, 'en', 'setting', 'If you disable this ticket setting, the \"overdue\" status won’t be reflected on the tickets table in the admin panel. If it is enabled and the users of an admin panel don’t give a reply to the customer within the mentioned days, then the ticket status changes to \"Overdue.\"', 'If you disable this ticket setting, the \"overdue\" status won’t be reflected on the tickets table in the admin panel. If it is enabled and the users of an admin panel don’t give a reply to the customer within the mentioned days, then the ticket status changes to \"Overdue.\"', '2026-03-05 05:24:11', '2026-03-05 05:24:11'),
(282, 'en', 'setting', 'Auto Overdue Days', 'Auto Overdue Days', '2026-03-05 05:24:11', '2026-03-05 05:24:11'),
(283, 'en', 'setting', 'Ticket Reply Status Time Enable/Disable', 'Ticket Reply Status Time Enable/Disable', '2026-03-05 05:24:11', '2026-03-05 05:24:11'),
(284, 'en', 'setting', 'Basically, this setting is used to change the ticket status to \"Waiting for response\" when a customer doesn’t give a reply to the ticket within the mentioned hours in the input field. If you disable this ticket setting, then it won’t change the ticket status.', 'Basically, this setting is used to change the ticket status to \"Waiting for response\" when a customer doesn’t give a reply to the ticket within the mentioned hours in the input field. If you disable this ticket setting, then it won’t change the ticket status.', '2026-03-05 05:24:11', '2026-03-05 05:24:11'),
(285, 'en', 'setting', 'Auto Reply Status in Hours', 'Auto Reply Status in Hours', '2026-03-05 05:24:11', '2026-03-05 05:24:11'),
(286, 'en', 'setting', 'Auto Delete Notifications Enable/disable', 'Auto Delete Notifications Enable/disable', '2026-03-05 05:24:11', '2026-03-05 05:24:11'),
(287, 'en', 'setting', 'If you disable this notification setting, the red notification won’t be deleted from both panels, i.e., the customer and admin panel. If it is enabled, then the red notifications will be deleted after the completion of the mentioned days in the input field.', 'If you disable this notification setting, the red notification won’t be deleted from both panels, i.e., the customer and admin panel. If it is enabled, then the red notifications will be deleted after the completion of the mentioned days in the input field.', '2026-03-05 05:24:11', '2026-03-05 05:24:11'),
(288, 'en', 'setting', 'Auto Notification Days', 'Auto Notification Days', '2026-03-05 05:24:11', '2026-03-05 05:24:11'),
(289, 'en', 'setting', 'Custom Ticket Id', 'Custom Ticket Id', '2026-03-05 05:24:11', '2026-03-05 05:24:11'),
(290, 'en', 'setting', 'Simply customise your ticket ID. For example, SPT-1 is the ticket id. You can only customise the first letters of the ticket ID of your choice. It displays SPT-1 for the registered user and SPTG-1 for the guest user. By default, the letter \"G\" represents the guest user.', 'Simply customise your ticket ID. For example, SPT-1 is the ticket id. You can only customise the first letters of the ticket ID of your choice. It displays SPT-1 for the registered user and SPTG-1 for the guest user. By default, the letter \"G\" represents the guest user.', '2026-03-05 05:24:11', '2026-03-05 05:24:11'),
(291, 'en', 'setting', 'Ticket Title Character Limit', 'Ticket Title Character Limit', '2026-03-05 05:24:11', '2026-03-05 05:24:11'),
(292, 'en', 'setting', 'Basically, this setting is used for the limit of ticket titles.Which means the ticket`s title allows the maximum character entered value.', 'Basically, this setting is used for the limit of ticket titles.Which means the ticket`s title allows the maximum character entered value.', '2026-03-05 05:24:11', '2026-03-05 05:24:11'),
(293, 'en', 'setting', 'Employee Name Protection', 'Employee Name Protection', '2026-03-05 05:24:11', '2026-03-05 05:24:11'),
(294, 'en', 'setting', 'If you \"Enable\" this setting, customers will only be able to see the name that you give in the below input field. They will not be able to see the employees name and role.', 'If you \"Enable\" this setting, customers will only be able to see the name that you give in the below input field. They will not be able to see the employees name and role.', '2026-03-05 05:24:11', '2026-03-05 05:24:11'),
(295, 'en', 'setting', 'Guest Ticket Enable/Disable', 'Guest Ticket Enable/Disable', '2026-03-05 05:24:11', '2026-03-05 05:24:11'),
(296, 'en', 'setting', 'If you disable this ticket setting, the \"Guest Ticket\" option will disappear from the application in the header section.', 'If you disable this ticket setting, the \"Guest Ticket\" option will disappear from the application in the header section.', '2026-03-05 05:24:11', '2026-03-05 05:24:11'),
(297, 'en', 'setting', 'Customer File Upload in Ticket', 'Customer File Upload in Ticket', '2026-03-05 05:24:11', '2026-03-05 05:24:11'),
(298, 'en', 'setting', 'If you disable this ticket setting, the \"File Upload\" option will disappear from the \"Tickets\" page, while creating or replying to the ticket to the registered customers.', 'If you disable this ticket setting, the \"File Upload\" option will disappear from the \"Tickets\" page, while creating or replying to the ticket to the registered customers.', '2026-03-05 05:24:11', '2026-03-05 05:24:11'),
(299, 'en', 'setting', 'Guest User File Upload in Ticket', 'Guest User File Upload in Ticket', '2026-03-05 05:24:11', '2026-03-05 05:24:11'),
(300, 'en', 'setting', 'If you disable this ticket setting, the \"File Upload\" option will disappear from the \"Guest Ticket\" page while creating or replying to the ticket to the guest users.', 'If you disable this ticket setting, the \"File Upload\" option will disappear from the \"Guest Ticket\" page while creating or replying to the ticket to the guest users.', '2026-03-05 05:24:11', '2026-03-05 05:24:11'),
(301, 'en', 'setting', 'Guest Ticket OTP Enable/Disable', 'Guest Ticket OTP Enable/Disable', '2026-03-05 05:24:11', '2026-03-05 05:24:11'),
(302, 'en', 'setting', 'If you enable this ticket setting, the \"Guest Ticket OTP\" option will be disabled.', 'If you enable this ticket setting, the \"Guest Ticket OTP\" option will be disabled.', '2026-03-05 05:24:11', '2026-03-05 05:24:11'),
(303, 'en', 'setting', 'Customer Ticket Enable/Disable', 'Customer Ticket Enable/Disable', '2026-03-05 05:24:11', '2026-03-05 05:24:11'),
(304, 'en', 'setting', 'If you enable this ticket setting, the \"Customer Ticket\" option will disappear from the application in the user dashboard.', 'If you enable this ticket setting, the \"Customer Ticket\" option will disappear from the application in the user dashboard.', '2026-03-05 05:24:11', '2026-03-05 05:24:11'),
(305, 'en', 'setting', 'Rating Page Enable/Disable', 'Rating Page Enable/Disable', '2026-03-05 05:24:11', '2026-03-05 05:24:11'),
(306, 'en', 'setting', 'If you \"Enable\" this setting, the \"Rating Page\" will not appear to the customers after closing the ticket.', 'If you \"Enable\" this setting, the \"Rating Page\" will not appear to the customers after closing the ticket.', '2026-03-05 05:24:11', '2026-03-05 05:24:11'),
(307, 'en', 'setting', 'File Setting', 'File Setting', '2026-03-05 05:24:11', '2026-03-05 05:24:11'),
(308, 'en', 'setting', 'Captcha Disable', 'Captcha Disable', '2026-03-05 05:24:11', '2026-03-05 05:24:11'),
(309, 'en', 'setting', 'By default, both manual and Google Captcha will be disabled.', 'By default, both manual and Google Captcha will be disabled.', '2026-03-05 05:24:11', '2026-03-05 05:24:11'),
(310, 'en', 'setting', 'Manual Captcha Enable', 'Manual Captcha Enable', '2026-03-05 05:24:11', '2026-03-05 05:24:11'),
(311, 'en', 'setting', 'This setting will enable the \"Manual\" captcha.', 'This setting will enable the \"Manual\" captcha.', '2026-03-05 05:24:11', '2026-03-05 05:24:11'),
(312, 'en', 'setting', 'Google Captcha Enable', 'Google Captcha Enable', '2026-03-05 05:24:11', '2026-03-05 05:24:11'),
(313, 'en', 'setting', 'This setting will enable the \"Google\" captcha.', 'This setting will enable the \"Google\" captcha.', '2026-03-05 05:24:11', '2026-03-05 05:24:11'),
(314, 'en', 'setting', 'Enable On Contact Form', 'Enable On Contact Form', '2026-03-05 05:24:11', '2026-03-05 05:24:11'),
(315, 'en', 'setting', 'If you enable this captcha setting feature, it will appear on the \"Contact Form\".', 'If you enable this captcha setting feature, it will appear on the \"Contact Form\".', '2026-03-05 05:24:11', '2026-03-05 05:24:11'),
(316, 'en', 'setting', 'Enable On Register Form', 'Enable On Register Form', '2026-03-05 05:24:11', '2026-03-05 05:24:11'),
(317, 'en', 'setting', 'If you enable this captcha setting feature, it will appear on the \"Register Form\".', 'If you enable this captcha setting feature, it will appear on the \"Register Form\".', '2026-03-05 05:24:11', '2026-03-05 05:24:11'),
(318, 'en', 'setting', 'Enable On Login Form', 'Enable On Login Form', '2026-03-05 05:24:11', '2026-03-05 05:24:11'),
(319, 'en', 'setting', 'If you enable this captcha setting feature, it will appear on the \"Login Form\".', 'If you enable this captcha setting feature, it will appear on the \"Login Form\".', '2026-03-05 05:24:11', '2026-03-05 05:24:11'),
(320, 'en', 'setting', 'Enable On Guest Ticket', 'Enable On Guest Ticket', '2026-03-05 05:24:11', '2026-03-05 05:24:11'),
(321, 'en', 'setting', 'If you enable this captcha setting feature, it will appear on the \"Guest Ticket\".', 'If you enable this captcha setting feature, it will appear on the \"Guest Ticket\".', '2026-03-05 05:24:11', '2026-03-05 05:24:11'),
(322, 'en', 'setting', 'External Chat Enable/Disable', 'External Chat Enable/Disable', '2026-03-05 05:24:11', '2026-03-05 05:24:11'),
(323, 'en', 'setting', 'If you enable this “External Chat” setting feature, it will appear on the \"Application\".', 'If you enable this “External Chat” setting feature, it will appear on the \"Application\".', '2026-03-05 05:24:12', '2026-03-05 05:24:12'),
(324, 'en', 'setting', 'All Users', 'All Users', '2026-03-05 05:24:12', '2026-03-05 05:24:12'),
(325, 'en', 'setting', 'If you enable this \"All Users\" setting feature, the \"External Chat\" will appear to both the users, i.e., for registered users as well as for guest users on the \"Application.\"', 'If you enable this \"All Users\" setting feature, the \"External Chat\" will appear to both the users, i.e., for registered users as well as for guest users on the \"Application.\"', '2026-03-05 05:24:12', '2026-03-05 05:24:12'),
(326, 'en', 'setting', 'Only  Registered Users', 'Only  Registered Users', '2026-03-05 05:24:12', '2026-03-05 05:24:12');
INSERT INTO `translates` (`id`, `lang_code`, `group_langname`, `key`, `value`, `created_at`, `updated_at`) VALUES
(327, 'en', 'setting', 'If you enable this \"Only Registered Users\" setting feature, the \"External Chat\" will appear only for the registered users on the \"Application.\"', 'If you enable this \"Only Registered Users\" setting feature, the \"External Chat\" will appear only for the registered users on the \"Application.\"', '2026-03-05 05:24:12', '2026-03-05 05:24:12'),
(328, 'en', 'setting', 'Callback/Redirect URL', 'Callback/Redirect URL', '2026-03-05 05:24:12', '2026-03-05 05:24:12'),
(329, 'en', 'setting', 'Add this callback URL to your \"Envato\" App settings.', 'Add this callback URL to your \"Envato\" App settings.', '2026-03-05 05:24:12', '2026-03-05 05:24:12'),
(330, 'en', 'setting', 'Add this callback URL to your \"Google\" App settings.', 'Add this callback URL to your \"Google\" App settings.', '2026-03-05 05:24:12', '2026-03-05 05:24:12'),
(331, 'en', 'setting', 'Add this callback URL to your \"Facebook\" App settings.', 'Add this callback URL to your \"Facebook\" App settings.', '2026-03-05 05:24:12', '2026-03-05 05:24:12'),
(332, 'en', 'setting', 'Add this callback URL to your \"Twitter\" App settings.', 'Add this callback URL to your \"Twitter\" App settings.', '2026-03-05 05:24:12', '2026-03-05 05:24:12'),
(333, 'en', 'filesetting', 'The file size should not be more than 5MB', 'The file size should not be more than 5MB', '2026-03-05 05:24:12', '2026-03-05 05:24:12'),
(334, 'en', 'filesetting', 'Max File Upload', 'Max File Upload', '2026-03-05 05:24:12', '2026-03-05 05:24:12'),
(335, 'en', 'filesetting', 'Max File Size Upload', 'Max File Size Upload', '2026-03-05 05:24:12', '2026-03-05 05:24:12'),
(336, 'en', 'filesetting', 'MB', 'MB', '2026-03-05 05:24:12', '2026-03-05 05:24:12'),
(337, 'en', 'filesetting', 'Allow File Types', 'Allow File Types', '2026-03-05 05:24:12', '2026-03-05 05:24:12'),
(338, 'en', 'filesetting', 'Upload File', 'Upload File', '2026-03-05 05:24:12', '2026-03-05 05:24:12'),
(339, 'en', 'filesetting', 'Download', 'Download', '2026-03-05 05:24:12', '2026-03-05 05:24:12'),
(340, 'en', 'filesetting', 'File Format: .xlsx & .csv', 'File Format: .xlsx & .csv', '2026-03-05 05:24:12', '2026-03-05 05:24:12'),
(341, 'en', 'filesetting', 'Import Data', 'Import Data', '2026-03-05 05:24:12', '2026-03-05 05:24:12'),
(342, 'en', 'filesetting', 'Sample File', 'Sample File', '2026-03-05 05:24:12', '2026-03-05 05:24:12'),
(343, 'en', 'filesetting', 'The file size should not be more than', 'The file size should not be more than', '2026-03-05 05:24:12', '2026-03-05 05:24:12'),
(344, 'en', 'filesetting', 'MB', 'MB', '2026-03-05 05:24:12', '2026-03-05 05:24:12'),
(345, 'en', 'filesetting', 'The file size should not be more than 500kb', 'The file size should not be more than 500kb', '2026-03-05 05:24:12', '2026-03-05 05:24:12'),
(346, 'en', 'filesetting', 'Filesize should not be morethan 10MB', 'Filesize should not be morethan 10MB', '2026-03-05 05:24:12', '2026-03-05 05:24:12'),
(347, 'en', 'general', 'Employees', 'Employees', '2026-03-05 05:24:12', '2026-03-05 05:24:12'),
(348, 'en', 'general', 'Edit Employee', 'Edit Employee', '2026-03-05 05:24:12', '2026-03-05 05:24:12'),
(349, 'en', 'general', 'First Name', 'First Name', '2026-03-05 05:24:12', '2026-03-05 05:24:12'),
(350, 'en', 'general', 'Last Name', 'Last Name', '2026-03-05 05:24:12', '2026-03-05 05:24:12'),
(351, 'en', 'general', 'Username', 'Username', '2026-03-05 05:24:12', '2026-03-05 05:24:12'),
(352, 'en', 'general', 'Email', 'Email', '2026-03-05 05:24:12', '2026-03-05 05:24:12'),
(353, 'en', 'general', 'Employee ID', 'Employee ID', '2026-03-05 05:24:12', '2026-03-05 05:24:12'),
(354, 'en', 'general', 'Select Role', 'Select Role', '2026-03-05 05:24:12', '2026-03-05 05:24:12'),
(355, 'en', 'general', 'Mobile Number', 'Mobile Number', '2026-03-05 05:24:12', '2026-03-05 05:24:12'),
(356, 'en', 'general', 'Languages', 'Languages', '2026-03-05 05:24:12', '2026-03-05 05:24:12'),
(357, 'en', 'general', 'Skills', 'Skills', '2026-03-05 05:24:12', '2026-03-05 05:24:12'),
(358, 'en', 'general', 'Country', 'Country', '2026-03-05 05:24:12', '2026-03-05 05:24:12'),
(359, 'en', 'general', 'Timezone', 'Timezone', '2026-03-05 05:24:12', '2026-03-05 05:24:12'),
(360, 'en', 'general', 'Status', 'Status', '2026-03-05 05:24:12', '2026-03-05 05:24:12'),
(361, 'en', 'general', 'Update Profile', 'Update Profile', '2026-03-05 05:24:12', '2026-03-05 05:24:12'),
(362, 'en', 'general', 'Password', 'Password', '2026-03-05 05:24:12', '2026-03-05 05:24:12'),
(363, 'en', 'general', 'Add Employee', 'Add Employee', '2026-03-05 05:24:12', '2026-03-05 05:24:12'),
(364, 'en', 'general', 'Import Employees List', 'Import Employees List', '2026-03-05 05:24:12', '2026-03-05 05:24:12'),
(365, 'en', 'general', 'Delete', 'Delete', '2026-03-05 05:24:12', '2026-03-05 05:24:12'),
(366, 'en', 'general', 'Sl.No', 'Sl.No', '2026-03-05 05:24:12', '2026-03-05 05:24:12'),
(367, 'en', 'general', 'Employee Name', 'Employee Name', '2026-03-05 05:24:12', '2026-03-05 05:24:12'),
(368, 'en', 'general', 'Roles', 'Roles', '2026-03-05 05:24:12', '2026-03-05 05:24:12'),
(369, 'en', 'general', 'Register Date', 'Register Date', '2026-03-05 05:24:12', '2026-03-05 05:24:12'),
(370, 'en', 'general', 'Actions', 'Actions', '2026-03-05 05:24:12', '2026-03-05 05:24:12'),
(371, 'en', 'general', 'Generate Password', 'Generate Password', '2026-03-05 05:24:12', '2026-03-05 05:24:12'),
(372, 'en', 'general', 'Save', 'Save', '2026-03-05 05:24:12', '2026-03-05 05:24:12'),
(373, 'en', 'general', 'User Import', 'User Import', '2026-03-05 05:24:12', '2026-03-05 05:24:12'),
(374, 'en', 'general', 'Import file', 'Import file', '2026-03-05 05:24:12', '2026-03-05 05:24:12'),
(375, 'en', 'general', 'Upload file', 'Upload file', '2026-03-05 05:24:12', '2026-03-05 05:24:12'),
(376, 'en', 'general', 'Add New Announcement', 'Add New Announcement', '2026-03-05 05:24:12', '2026-03-05 05:24:12'),
(377, 'en', 'general', 'Title', 'Title', '2026-03-05 05:24:12', '2026-03-05 05:24:12'),
(378, 'en', 'general', 'Start Date', 'Start Date', '2026-03-05 05:24:12', '2026-03-05 05:24:12'),
(379, 'en', 'general', 'End Date', 'End Date', '2026-03-05 05:24:12', '2026-03-05 05:24:12'),
(380, 'en', 'general', 'Add Announcement', 'Add Announcement', '2026-03-05 05:24:13', '2026-03-05 05:24:13'),
(381, 'en', 'general', 'Edit Announcement', 'Edit Announcement', '2026-03-05 05:24:13', '2026-03-05 05:24:13'),
(382, 'en', 'general', 'Notice Text', 'Notice Text', '2026-03-05 05:24:13', '2026-03-05 05:24:13'),
(383, 'en', 'general', 'Close', 'Close', '2026-03-05 05:24:13', '2026-03-05 05:24:13'),
(384, 'en', 'general', 'New Article', 'New Article', '2026-03-05 05:24:13', '2026-03-05 05:24:13'),
(385, 'en', 'general', 'Category', 'Category', '2026-03-05 05:24:13', '2026-03-05 05:24:13'),
(386, 'en', 'general', 'SubCategory', 'SubCategory', '2026-03-05 05:24:13', '2026-03-05 05:24:13'),
(387, 'en', 'general', 'Description', 'Description', '2026-03-05 05:24:13', '2026-03-05 05:24:13'),
(388, 'en', 'general', 'Tags', 'Tags', '2026-03-05 05:24:13', '2026-03-05 05:24:13'),
(389, 'en', 'general', 'Publish', 'Publish', '2026-03-05 05:24:13', '2026-03-05 05:24:13'),
(390, 'en', 'general', 'UnPublish', 'UnPublish', '2026-03-05 05:24:13', '2026-03-05 05:24:13'),
(391, 'en', 'general', 'Privacy Mode', 'Privacy Mode', '2026-03-05 05:24:13', '2026-03-05 05:24:13'),
(392, 'en', 'general', 'Update', 'Update', '2026-03-05 05:24:13', '2026-03-05 05:24:13'),
(393, 'en', 'general', 'Article Title', 'Article Title', '2026-03-05 05:24:13', '2026-03-05 05:24:13'),
(394, 'en', 'general', 'Edit Article', 'Edit Article', '2026-03-05 05:24:13', '2026-03-05 05:24:13'),
(395, 'en', 'general', 'Add Article', 'Add Article', '2026-03-05 05:24:13', '2026-03-05 05:24:13'),
(396, 'en', 'general', 'Article List', 'Article List', '2026-03-05 05:24:13', '2026-03-05 05:24:13'),
(397, 'en', 'general', 'Hide Section', 'Hide Section', '2026-03-05 05:24:13', '2026-03-05 05:24:13'),
(398, 'en', 'general', 'Article Section', 'Article Section', '2026-03-05 05:24:13', '2026-03-05 05:24:13'),
(399, 'en', 'general', 'Subtitle', 'Subtitle', '2026-03-05 05:24:13', '2026-03-05 05:24:13'),
(400, 'en', 'general', 'Save Changes', 'Save Changes', '2026-03-05 05:24:13', '2026-03-05 05:24:13'),
(401, 'en', 'general', 'Ticket To Article', 'Ticket To Article', '2026-03-05 05:24:13', '2026-03-05 05:24:13'),
(402, 'en', 'general', 'New', 'New', '2026-03-05 05:24:13', '2026-03-05 05:24:13'),
(403, 'en', 'general', 'In-Progress', 'In-Progress', '2026-03-05 05:24:13', '2026-03-05 05:24:13'),
(404, 'en', 'general', 'On-Hold', 'On-Hold', '2026-03-05 05:24:13', '2026-03-05 05:24:13'),
(405, 'en', 'general', 'Re-Open', 'Re-Open', '2026-03-05 05:24:13', '2026-03-05 05:24:13'),
(406, 'en', 'general', 'OverDue', 'OverDue', '2026-03-05 05:24:13', '2026-03-05 05:24:13'),
(407, 'en', 'general', 'Closed', 'Closed', '2026-03-05 05:24:13', '2026-03-05 05:24:13'),
(408, 'en', 'general', 'Ticket Details', 'Ticket Details', '2026-03-05 05:24:13', '2026-03-05 05:24:13'),
(409, 'en', 'general', 'User', 'User', '2026-03-05 05:24:13', '2026-03-05 05:24:13'),
(410, 'en', 'general', 'Assign To', 'Assign To', '2026-03-05 05:24:13', '2026-03-05 05:24:13'),
(411, 'en', 'general', 'Assign To Agent', 'Assign To Agent', '2026-03-05 05:24:13', '2026-03-05 05:24:13'),
(412, 'en', 'general', 'Restore', 'Restore', '2026-03-05 05:24:13', '2026-03-05 05:24:13'),
(413, 'en', 'general', 'Ticket Information', 'Ticket Information', '2026-03-05 05:24:13', '2026-03-05 05:24:13'),
(414, 'en', 'general', 'Created Date', 'Created Date', '2026-03-05 05:24:13', '2026-03-05 05:24:13'),
(415, 'en', 'general', 'Conversations', 'Conversations', '2026-03-05 05:24:13', '2026-03-05 05:24:13'),
(416, 'en', 'general', 'Priority', 'Priority', '2026-03-05 05:24:13', '2026-03-05 05:24:13'),
(417, 'en', 'general', 'Project', 'Project', '2026-03-05 05:24:13', '2026-03-05 05:24:13'),
(418, 'en', 'general', 'Opened Date', 'Opened Date', '2026-03-05 05:24:13', '2026-03-05 05:24:13'),
(419, 'en', 'general', 'Reply Status', 'Reply Status', '2026-03-05 05:24:13', '2026-03-05 05:24:13'),
(420, 'en', 'general', 'Customer Details', 'Customer Details', '2026-03-05 05:24:13', '2026-03-05 05:24:13'),
(421, 'en', 'general', 'IP', 'IP', '2026-03-05 05:24:13', '2026-03-05 05:24:13'),
(422, 'en', 'general', 'Don’t have any notes yet', 'Don’t have any notes yet', '2026-03-05 05:24:13', '2026-03-05 05:24:13'),
(423, 'en', 'general', 'Add your notes here', 'Add your notes here', '2026-03-05 05:24:13', '2026-03-05 05:24:13'),
(424, 'en', 'general', 'Change Password', 'Change Password', '2026-03-05 05:24:13', '2026-03-05 05:24:13'),
(425, 'en', 'general', 'Old Password', 'Old Password', '2026-03-05 05:24:13', '2026-03-05 05:24:13'),
(426, 'en', 'general', 'New Password', 'New Password', '2026-03-05 05:24:13', '2026-03-05 05:24:13'),
(427, 'en', 'general', 'Confirm Password', 'Confirm Password', '2026-03-05 05:24:13', '2026-03-05 05:24:13'),
(428, 'en', 'general', 'Forgot Password?', 'Forgot Password?', '2026-03-05 05:24:13', '2026-03-05 05:24:13'),
(429, 'en', 'general', 'Enter the email address that is linked to your account.', 'Enter the email address that is linked to your account.', '2026-03-05 05:24:13', '2026-03-05 05:24:13'),
(430, 'en', 'general', 'Submit', 'Submit', '2026-03-05 05:24:13', '2026-03-05 05:24:13'),
(431, 'en', 'general', 'Send me Back', 'Send me Back', '2026-03-05 05:24:13', '2026-03-05 05:24:13'),
(432, 'en', 'general', 'Reset Password', 'Reset Password', '2026-03-05 05:24:13', '2026-03-05 05:24:13'),
(433, 'en', 'general', 'Enter the email address registered on your account', 'Enter the email address registered on your account', '2026-03-05 05:24:13', '2026-03-05 05:24:13'),
(434, 'en', 'general', 'Remembered your password?', 'Remembered your password?', '2026-03-05 05:24:13', '2026-03-05 05:24:13'),
(435, 'en', 'general', 'Remember me', 'Remember me', '2026-03-05 05:24:13', '2026-03-05 05:24:13'),
(436, 'en', 'general', 'Bussiness Hours Title', 'Bussiness Hours Title', '2026-03-05 05:24:13', '2026-03-05 05:24:13'),
(437, 'en', 'general', 'Days', 'Days', '2026-03-05 05:24:13', '2026-03-05 05:24:13'),
(438, 'en', 'general', 'Closed/Open', 'Closed/Open', '2026-03-05 05:24:13', '2026-03-05 05:24:13'),
(439, 'en', 'general', 'Start-time', 'Start-time', '2026-03-05 05:24:13', '2026-03-05 05:24:13'),
(440, 'en', 'general', 'End-time', 'End-time', '2026-03-05 05:24:13', '2026-03-05 05:24:13'),
(441, 'en', 'general', 'Call Action', 'Call Action', '2026-03-05 05:24:13', '2026-03-05 05:24:13'),
(442, 'en', 'general', 'Call Action Section', 'Call Action Section', '2026-03-05 05:24:13', '2026-03-05 05:24:13'),
(443, 'en', 'general', 'Button-Text', 'Button-Text', '2026-03-05 05:24:13', '2026-03-05 05:24:13'),
(444, 'en', 'general', 'Select Category', 'Select Category', '2026-03-05 05:24:13', '2026-03-05 05:24:13'),
(445, 'en', 'general', 'Category List', 'Category List', '2026-03-05 05:24:13', '2026-03-05 05:24:13'),
(446, 'en', 'general', 'Add Category', 'Add Category', '2026-03-05 05:24:14', '2026-03-05 05:24:14'),
(447, 'en', 'general', 'Envato Api Assign', 'Envato Api Assign', '2026-03-05 05:24:14', '2026-03-05 05:24:14'),
(448, 'en', 'general', 'Assign Envato Api', 'Assign Envato Api', '2026-03-05 05:24:14', '2026-03-05 05:24:14'),
(449, 'en', 'general', 'Category Name', 'Category Name', '2026-03-05 05:24:14', '2026-03-05 05:24:14'),
(450, 'en', 'general', 'Ticket/Knowledge', 'Ticket/Knowledge', '2026-03-05 05:24:14', '2026-03-05 05:24:14'),
(451, 'en', 'general', 'Assign To Groups', 'Assign To Groups', '2026-03-05 05:24:14', '2026-03-05 05:24:14'),
(452, 'en', 'general', 'Assigned Priority', 'Assigned Priority', '2026-03-05 05:24:14', '2026-03-05 05:24:14'),
(453, 'en', 'general', 'Add New Category', 'Add New Category', '2026-03-05 05:24:14', '2026-03-05 05:24:14'),
(454, 'en', 'general', 'Edit Category', 'Edit Category', '2026-03-05 05:24:14', '2026-03-05 05:24:14'),
(455, 'en', 'general', 'View On :', 'View On :', '2026-03-05 05:24:14', '2026-03-05 05:24:14'),
(456, 'en', 'general', 'View On Both', 'View On Both', '2026-03-05 05:24:14', '2026-03-05 05:24:14'),
(457, 'en', 'general', 'View On Tickets', 'View On Tickets', '2026-03-05 05:24:14', '2026-03-05 05:24:14'),
(458, 'en', 'general', 'View On Knowledge', 'View On Knowledge', '2026-03-05 05:24:14', '2026-03-05 05:24:14'),
(459, 'en', 'general', 'Choose Priority', 'Choose Priority', '2026-03-05 05:24:14', '2026-03-05 05:24:14'),
(460, 'en', 'general', 'Choose Priority :', 'Choose Priority :', '2026-03-05 05:24:14', '2026-03-05 05:24:14'),
(461, 'en', 'general', 'Low', 'Low', '2026-03-05 05:24:14', '2026-03-05 05:24:14'),
(462, 'en', 'general', 'Medium', 'Medium', '2026-03-05 05:24:14', '2026-03-05 05:24:14'),
(463, 'en', 'general', 'High', 'High', '2026-03-05 05:24:14', '2026-03-05 05:24:14'),
(464, 'en', 'general', 'Status :', 'Status :', '2026-03-05 05:24:14', '2026-03-05 05:24:14'),
(465, 'en', 'general', 'Sub-Category', 'Sub-Category', '2026-03-05 05:24:14', '2026-03-05 05:24:14'),
(466, 'en', 'general', 'Subcategory List', 'Subcategory List', '2026-03-05 05:24:14', '2026-03-05 05:24:14'),
(467, 'en', 'general', 'Add SubCategory', 'Add SubCategory', '2026-03-05 05:24:14', '2026-03-05 05:24:14'),
(468, 'en', 'general', 'Subcategory Name', 'Subcategory Name', '2026-03-05 05:24:14', '2026-03-05 05:24:14'),
(469, 'en', 'general', 'Parent Category list', 'Parent Category list', '2026-03-05 05:24:14', '2026-03-05 05:24:14'),
(470, 'en', 'general', 'Add New SubCategory', 'Add New SubCategory', '2026-03-05 05:24:14', '2026-03-05 05:24:14'),
(471, 'en', 'general', 'Edit Subcategory', 'Edit Subcategory', '2026-03-05 05:24:14', '2026-03-05 05:24:14'),
(472, 'en', 'general', 'Parent Category', 'Parent Category', '2026-03-05 05:24:14', '2026-03-05 05:24:14'),
(473, 'en', 'general', 'Compose for Customers', 'Compose for Customers', '2026-03-05 05:24:14', '2026-03-05 05:24:14'),
(474, 'en', 'general', 'Compose for Employees', 'Compose for Employees', '2026-03-05 05:24:14', '2026-03-05 05:24:14'),
(475, 'en', 'general', 'Compose Notification For Customers', 'Compose Notification For Customers', '2026-03-05 05:24:14', '2026-03-05 05:24:14'),
(476, 'en', 'general', 'Compose Notification For Employees', 'Compose Notification For Employees', '2026-03-05 05:24:14', '2026-03-05 05:24:14'),
(477, 'en', 'general', 'To', 'To', '2026-03-05 05:24:14', '2026-03-05 05:24:14'),
(478, 'en', 'general', 'Tag', 'Tag', '2026-03-05 05:24:14', '2026-03-05 05:24:14'),
(479, 'en', 'general', 'Select Tag Color', 'Select Tag Color', '2026-03-05 05:24:14', '2026-03-05 05:24:14'),
(480, 'en', 'general', 'Send Message', 'Send Message', '2026-03-05 05:24:14', '2026-03-05 05:24:14'),
(481, 'en', 'general', 'Message', 'Message', '2026-03-05 05:24:14', '2026-03-05 05:24:14'),
(482, 'en', 'general', 'Employees', 'Employees', '2026-03-05 05:24:14', '2026-03-05 05:24:14'),
(483, 'en', 'general', 'Custom Notifications List', 'Custom Notifications List', '2026-03-05 05:24:14', '2026-03-05 05:24:14'),
(484, 'en', 'general', 'User Type', 'User Type', '2026-03-05 05:24:14', '2026-03-05 05:24:14'),
(485, 'en', 'general', 'Customer', 'Customer', '2026-03-05 05:24:14', '2026-03-05 05:24:14'),
(486, 'en', 'general', 'Create Customer', 'Create Customer', '2026-03-05 05:24:15', '2026-03-05 05:24:15'),
(487, 'en', 'general', 'Please copy the Password', 'Please copy the Password', '2026-03-05 05:24:15', '2026-03-05 05:24:15'),
(488, 'en', 'general', 'Customers List', 'Customers List', '2026-03-05 05:24:15', '2026-03-05 05:24:15'),
(489, 'en', 'general', 'Add Customer', 'Add Customer', '2026-03-05 05:24:15', '2026-03-05 05:24:15'),
(490, 'en', 'general', 'Verification', 'Verification', '2026-03-05 05:24:15', '2026-03-05 05:24:15'),
(491, 'en', 'general', 'Edit Customer', 'Edit Customer', '2026-03-05 05:24:15', '2026-03-05 05:24:15'),
(492, 'en', 'general', 'Timezone', 'Timezone', '2026-03-05 05:24:15', '2026-03-05 05:24:15'),
(493, 'en', 'general', 'Timezones', 'Timezones', '2026-03-05 05:24:15', '2026-03-05 05:24:15'),
(494, 'en', 'general', 'Email Template', 'Email Template', '2026-03-05 05:24:15', '2026-03-05 05:24:15'),
(495, 'en', 'general', 'Email Subject', 'Email Subject', '2026-03-05 05:24:15', '2026-03-05 05:24:15'),
(496, 'en', 'general', 'Email Body', 'Email Body', '2026-03-05 05:24:15', '2026-03-05 05:24:15'),
(497, 'en', 'general', 'Send Test Mail', 'Send Test Mail', '2026-03-05 05:24:15', '2026-03-05 05:24:15'),
(498, 'en', 'general', 'Enter Mail', 'Enter Mail', '2026-03-05 05:24:15', '2026-03-05 05:24:15'),
(499, 'en', 'general', 'Send', 'Send', '2026-03-05 05:24:15', '2026-03-05 05:24:15'),
(500, 'en', 'general', 'Mail Driver', 'Mail Driver', '2026-03-05 05:24:15', '2026-03-05 05:24:15'),
(501, 'en', 'general', 'Mail Host', 'Mail Host', '2026-03-05 05:24:15', '2026-03-05 05:24:15'),
(502, 'en', 'general', 'Mail Port', 'Mail Port', '2026-03-05 05:24:15', '2026-03-05 05:24:15'),
(503, 'en', 'general', 'Mail Username', 'Mail Username', '2026-03-05 05:24:15', '2026-03-05 05:24:15'),
(504, 'en', 'general', 'Mail Password', 'Mail Password', '2026-03-05 05:24:15', '2026-03-05 05:24:15'),
(505, 'en', 'general', 'From Name', 'From Name', '2026-03-05 05:24:15', '2026-03-05 05:24:15'),
(506, 'en', 'general', 'From Email', 'From Email', '2026-03-05 05:24:15', '2026-03-05 05:24:15'),
(507, 'en', 'general', 'Last Updated on', 'Last Updated on', '2026-03-05 05:24:15', '2026-03-05 05:24:15'),
(508, 'en', 'general', 'Action', 'Action', '2026-03-05 05:24:15', '2026-03-05 05:24:15'),
(509, 'en', 'general', 'Main Title', 'Main Title', '2026-03-05 05:24:15', '2026-03-05 05:24:15'),
(510, 'en', 'general', 'Add Faq Category', 'Add Faq Category', '2026-03-05 05:24:15', '2026-03-05 05:24:15'),
(511, 'en', 'general', 'Faq Category Name', 'Faq Category Name', '2026-03-05 05:24:15', '2026-03-05 05:24:15'),
(512, 'en', 'general', 'FAQ’s Section', 'FAQ’s Section', '2026-03-05 05:24:15', '2026-03-05 05:24:15'),
(513, 'en', 'general', 'Add FAQ', 'Add FAQ', '2026-03-05 05:24:15', '2026-03-05 05:24:15'),
(514, 'en', 'general', 'Question', 'Question', '2026-03-05 05:24:15', '2026-03-05 05:24:15'),
(515, 'en', 'general', 'Answer', 'Answer', '2026-03-05 05:24:15', '2026-03-05 05:24:15'),
(516, 'en', 'general', 'Add New FAQ', 'Add New FAQ', '2026-03-05 05:24:15', '2026-03-05 05:24:15'),
(517, 'en', 'general', 'Edit FAQ', 'Edit FAQ', '2026-03-05 05:24:15', '2026-03-05 05:24:15'),
(518, 'en', 'general', 'Select Faq Category', 'Select Faq Category', '2026-03-05 05:24:15', '2026-03-05 05:24:15'),
(519, 'en', 'general', 'Feature Box Section', 'Feature Box Section', '2026-03-05 05:24:15', '2026-03-05 05:24:15'),
(520, 'en', 'general', 'Feature Box List', 'Feature Box List', '2026-03-05 05:24:15', '2026-03-05 05:24:15'),
(521, 'en', 'general', 'Add Feature', 'Add Feature', '2026-03-05 05:24:15', '2026-03-05 05:24:15'),
(522, 'en', 'general', 'Add New Feature Box', 'Add New Feature Box', '2026-03-05 05:24:15', '2026-03-05 05:24:15'),
(523, 'en', 'general', 'Edit Feature Box', 'Edit Feature Box', '2026-03-05 05:24:15', '2026-03-05 05:24:15'),
(524, 'en', 'general', 'URL', 'URL', '2026-03-05 05:24:15', '2026-03-05 05:24:15'),
(525, 'en', 'general', 'Open in a new tab', 'Open in a new tab', '2026-03-05 05:24:15', '2026-03-05 05:24:15'),
(526, 'en', 'general', 'Create Page', 'Create Page', '2026-03-05 05:24:15', '2026-03-05 05:24:15'),
(527, 'en', 'general', 'Add New Page', 'Add New Page', '2026-03-05 05:24:15', '2026-03-05 05:24:15'),
(528, 'en', 'general', 'Edit page', 'Edit page', '2026-03-05 05:24:15', '2026-03-05 05:24:15'),
(529, 'en', 'general', 'View on header', 'View on header', '2026-03-05 05:24:15', '2026-03-05 05:24:15'),
(530, 'en', 'general', 'View on footer', 'View on footer', '2026-03-05 05:24:15', '2026-03-05 05:24:15'),
(531, 'en', 'general', 'Are you sure want to remove this logo?', 'Are you sure want to remove this logo?', '2026-03-05 05:24:15', '2026-03-05 05:24:15'),
(532, 'en', 'general', 'Login Disable Statement', 'Login Disable Statement', '2026-03-05 05:24:15', '2026-03-05 05:24:15'),
(533, 'en', 'general', 'Banner Section', 'Banner Section', '2026-03-05 05:24:15', '2026-03-05 05:24:15'),
(534, 'en', 'general', 'Captcha Enable/Disable', 'Captcha Enable/Disable', '2026-03-05 05:24:15', '2026-03-05 05:24:15'),
(535, 'en', 'general', 'Google Re-Captcha Setting', 'Google Re-Captcha Setting', '2026-03-05 05:24:15', '2026-03-05 05:24:15'),
(536, 'en', 'general', 'Site Key', 'Site Key', '2026-03-05 05:24:15', '2026-03-05 05:24:15'),
(537, 'en', 'general', 'Secret Key', 'Secret Key', '2026-03-05 05:24:15', '2026-03-05 05:24:15'),
(538, 'en', 'general', 'Captcha Setting in Forms', 'Captcha Setting in Forms', '2026-03-05 05:24:15', '2026-03-05 05:24:15'),
(539, 'en', 'general', 'External Chat Setting', 'External Chat Setting', '2026-03-05 05:24:15', '2026-03-05 05:24:15'),
(540, 'en', 'general', 'Custom CSS', 'Custom CSS', '2026-03-05 05:24:16', '2026-03-05 05:24:16'),
(541, 'en', 'general', 'Custom JS', 'Custom JS', '2026-03-05 05:24:16', '2026-03-05 05:24:16'),
(542, 'en', 'general', 'Enable Google Analytics', 'Enable Google Analytics', '2026-03-05 05:24:16', '2026-03-05 05:24:16'),
(543, 'en', 'general', 'Tracking ID', 'Tracking ID', '2026-03-05 05:24:16', '2026-03-05 05:24:16'),
(544, 'en', 'general', 'Social Login', 'Social Login', '2026-03-05 05:24:16', '2026-03-05 05:24:16'),
(545, 'en', 'general', 'Envato Settings', 'Envato Settings', '2026-03-05 05:24:16', '2026-03-05 05:24:16'),
(546, 'en', 'general', 'Envato App ID', 'Envato App ID', '2026-03-05 05:24:16', '2026-03-05 05:24:16'),
(547, 'en', 'general', 'Envato Secret', 'Envato Secret', '2026-03-05 05:24:16', '2026-03-05 05:24:16'),
(548, 'en', 'general', 'Google App ID', 'Google App ID', '2026-03-05 05:24:16', '2026-03-05 05:24:16'),
(549, 'en', 'general', 'Google Secret', 'Google Secret', '2026-03-05 05:24:16', '2026-03-05 05:24:16'),
(550, 'en', 'general', 'Facebook App ID', 'Facebook App ID', '2026-03-05 05:24:16', '2026-03-05 05:24:16'),
(551, 'en', 'general', 'Facebook Secret', 'Facebook Secret', '2026-03-05 05:24:16', '2026-03-05 05:24:16'),
(552, 'en', 'general', 'Twitter App ID', 'Twitter App ID', '2026-03-05 05:24:16', '2026-03-05 05:24:16'),
(553, 'en', 'general', 'Twitter Secret', 'Twitter Secret', '2026-03-05 05:24:16', '2026-03-05 05:24:16'),
(554, 'en', 'general', 'Google', 'Google', '2026-03-05 05:24:16', '2026-03-05 05:24:16'),
(555, 'en', 'general', 'Facebook', 'Facebook', '2026-03-05 05:24:16', '2026-03-05 05:24:16'),
(556, 'en', 'general', 'Twitter', 'Twitter', '2026-03-05 05:24:16', '2026-03-05 05:24:16'),
(557, 'en', 'general', 'Create Group', 'Create Group', '2026-03-05 05:24:16', '2026-03-05 05:24:16'),
(558, 'en', 'general', 'Select Employees', 'Select Employees', '2026-03-05 05:24:16', '2026-03-05 05:24:16'),
(559, 'en', 'general', 'Edit Group', 'Edit Group', '2026-03-05 05:24:16', '2026-03-05 05:24:16'),
(560, 'en', 'general', 'Groups List', 'Groups List', '2026-03-05 05:24:16', '2026-03-05 05:24:16'),
(561, 'en', 'general', 'Add Group', 'Add Group', '2026-03-05 05:24:16', '2026-03-05 05:24:16'),
(562, 'en', 'general', 'Category Assign', 'Category Assign', '2026-03-05 05:24:16', '2026-03-05 05:24:16'),
(563, 'en', 'general', 'Group Name', 'Group Name', '2026-03-05 05:24:16', '2026-03-05 05:24:16'),
(564, 'en', 'general', 'Count', 'Count', '2026-03-05 05:24:16', '2026-03-05 05:24:16'),
(565, 'en', 'general', 'Go Live', 'Go Live', '2026-03-05 05:24:16', '2026-03-05 05:24:16'),
(566, 'en', 'general', 'Under Maintenance', 'Under Maintenance', '2026-03-05 05:24:16', '2026-03-05 05:24:16'),
(567, 'en', 'general', 'Notification View', 'Notification View', '2026-03-05 05:24:16', '2026-03-05 05:24:16'),
(568, 'en', 'general', 'Delete Photo', 'Delete Photo', '2026-03-05 05:24:16', '2026-03-05 05:24:16'),
(569, 'en', 'general', 'Personal Details', 'Personal Details', '2026-03-05 05:24:16', '2026-03-05 05:24:16'),
(570, 'en', 'general', 'Phone', 'Phone', '2026-03-05 05:24:16', '2026-03-05 05:24:16'),
(571, 'en', 'general', 'Role', 'Role', '2026-03-05 05:24:16', '2026-03-05 05:24:16'),
(572, 'en', 'general', 'Role Name', 'Role Name', '2026-03-05 05:24:16', '2026-03-05 05:24:16'),
(573, 'en', 'general', 'Location', 'Location', '2026-03-05 05:24:16', '2026-03-05 05:24:16'),
(574, 'en', 'general', 'Personal setting', 'Personal setting', '2026-03-05 05:24:16', '2026-03-05 05:24:16'),
(575, 'en', 'general', 'Switch to Dark-Mode', 'Switch to Dark-Mode', '2026-03-05 05:24:16', '2026-03-05 05:24:16'),
(576, 'en', 'general', 'Setting', 'Setting', '2026-03-05 05:24:16', '2026-03-05 05:24:16'),
(577, 'en', 'general', 'Email Notification On/Off', 'Email Notification On/Off', '2026-03-05 05:24:16', '2026-03-05 05:24:16'),
(578, 'en', 'general', 'Profile Details', 'Profile Details', '2026-03-05 05:24:16', '2026-03-05 05:24:16'),
(579, 'en', 'general', 'Add Project', 'Add Project', '2026-03-05 05:24:16', '2026-03-05 05:24:16'),
(580, 'en', 'general', 'Assign Projects', 'Assign Projects', '2026-03-05 05:24:16', '2026-03-05 05:24:16'),
(581, 'en', 'general', 'Add New Project', 'Add New Project', '2026-03-05 05:24:16', '2026-03-05 05:24:16'),
(582, 'en', 'general', 'Edit Project', 'Edit Project', '2026-03-05 05:24:16', '2026-03-05 05:24:16'),
(583, 'en', 'general', 'Create Role & Permissions', 'Create Role & Permissions', '2026-03-05 05:24:16', '2026-03-05 05:24:16'),
(584, 'en', 'general', 'Select All', 'Select All', '2026-03-05 05:24:17', '2026-03-05 05:24:17'),
(585, 'en', 'general', 'Permissions', 'Permissions', '2026-03-05 05:24:17', '2026-03-05 05:24:17'),
(586, 'en', 'general', 'Edit Role & Permissions', 'Edit Role & Permissions', '2026-03-05 05:24:17', '2026-03-05 05:24:17'),
(587, 'en', 'general', 'Roles List', 'Roles List', '2026-03-05 05:24:17', '2026-03-05 05:24:17'),
(588, 'en', 'general', 'Add Role & Permissions', 'Add Role & Permissions', '2026-03-05 05:24:17', '2026-03-05 05:24:17'),
(589, 'en', 'general', 'Employees Count', 'Employees Count', '2026-03-05 05:24:17', '2026-03-05 05:24:17'),
(590, 'en', 'general', 'Permissions Count', 'Permissions Count', '2026-03-05 05:24:17', '2026-03-05 05:24:17'),
(591, 'en', 'general', 'Email to tickets Enable/Disable', 'Email to tickets Enable/Disable', '2026-03-05 05:24:17', '2026-03-05 05:24:17'),
(592, 'en', 'general', 'IMAP Host', 'IMAP Host', '2026-03-05 05:24:17', '2026-03-05 05:24:17'),
(593, 'en', 'general', 'IMAP Port', 'IMAP Port', '2026-03-05 05:24:17', '2026-03-05 05:24:17'),
(594, 'en', 'general', 'IMAP Encryption', 'IMAP Encryption', '2026-03-05 05:24:17', '2026-03-05 05:24:17'),
(595, 'en', 'general', 'IMAP Protocol', 'IMAP Protocol', '2026-03-05 05:24:17', '2026-03-05 05:24:17'),
(596, 'en', 'general', 'IMAP Username', 'IMAP Username', '2026-03-05 05:24:17', '2026-03-05 05:24:17'),
(597, 'en', 'general', 'IMAP Password', 'IMAP Password', '2026-03-05 05:24:17', '2026-03-05 05:24:17'),
(598, 'en', 'general', 'Add IP Address', 'Add IP Address', '2026-03-05 05:24:17', '2026-03-05 05:24:17'),
(599, 'en', 'general', 'Entry ', 'Entry  ', '2026-03-05 05:24:17', '2026-03-05 05:24:17'),
(600, 'en', 'general', 'Types', 'Types', '2026-03-05 05:24:17', '2026-03-05 05:24:17'),
(601, 'en', 'general', 'Edit IP Address', 'Edit IP Address', '2026-03-05 05:24:17', '2026-03-05 05:24:17'),
(602, 'en', 'general', 'Add New IP Address', 'Add New IP Address', '2026-03-05 05:24:17', '2026-03-05 05:24:17'),
(603, 'en', 'general', 'Unlock', 'Unlock', '2026-03-05 05:24:17', '2026-03-05 05:24:17'),
(604, 'en', 'general', 'Lock', 'Lock', '2026-03-05 05:24:17', '2026-03-05 05:24:17'),
(605, 'en', 'general', 'Block', 'Block', '2026-03-05 05:24:17', '2026-03-05 05:24:17'),
(606, 'en', 'general', 'Front End', 'Front End', '2026-03-05 05:24:17', '2026-03-05 05:24:17'),
(607, 'en', 'general', 'Admin', 'Admin', '2026-03-05 05:24:17', '2026-03-05 05:24:17'),
(608, 'en', 'general', 'DOS', 'DOS', '2026-03-05 05:24:17', '2026-03-05 05:24:17'),
(609, 'en', 'general', 'Domain Lists', 'Domain Lists', '2026-03-05 05:24:17', '2026-03-05 05:24:17'),
(610, 'en', 'general', 'Country Block/Unblock Setting', 'Country Block/Unblock Setting', '2026-03-05 05:24:17', '2026-03-05 05:24:17'),
(611, 'en', 'general', 'Countries List', 'Countries List', '2026-03-05 05:24:17', '2026-03-05 05:24:17'),
(612, 'en', 'general', 'Blocked Countries', 'Blocked Countries', '2026-03-05 05:24:17', '2026-03-05 05:24:17'),
(613, 'en', 'general', 'Allowed Countries', 'Allowed Countries', '2026-03-05 05:24:17', '2026-03-05 05:24:17'),
(614, 'en', 'general', 'Admin Country Block/Unblock Setting', 'Admin Country Block/Unblock Setting', '2026-03-05 05:24:17', '2026-03-05 05:24:17'),
(615, 'en', 'general', 'DOS Attack Setting', 'DOS Attack Setting', '2026-03-05 05:24:17', '2026-03-05 05:24:17'),
(616, 'en', 'general', 'Enable/Disable', 'Enable/Disable', '2026-03-05 05:24:17', '2026-03-05 05:24:17'),
(617, 'en', 'general', 'If you enable this setting, it prevents denial-of-service (DoS) attacks on the application.', 'If you enable this setting, it prevents denial-of-service (DoS) attacks on the application.', '2026-03-05 05:24:17', '2026-03-05 05:24:17'),
(618, 'en', 'general', 'If there are more than', 'If there are more than', '2026-03-05 05:24:17', '2026-03-05 05:24:17'),
(619, 'en', 'general', 'attempts in', 'attempts in', '2026-03-05 05:24:17', '2026-03-05 05:24:17'),
(620, 'en', 'general', 'seconds', 'seconds', '2026-03-05 05:24:17', '2026-03-05 05:24:17'),
(621, 'en', 'general', 'View Captcha', 'View Captcha', '2026-03-05 05:24:17', '2026-03-05 05:24:17'),
(622, 'en', 'general', 'Block IP Address', 'Block IP Address', '2026-03-05 05:24:17', '2026-03-05 05:24:17'),
(623, 'en', 'general', 'Author', 'Author', '2026-03-05 05:24:17', '2026-03-05 05:24:17'),
(624, 'en', 'general', 'Keywords', 'Keywords', '2026-03-05 05:24:17', '2026-03-05 05:24:17'),
(625, 'en', 'general', 'Testmonial Section', 'Testmonial Section', '2026-03-05 05:24:17', '2026-03-05 05:24:17'),
(626, 'en', 'general', 'Testimonial List', 'Testimonial List', '2026-03-05 05:24:17', '2026-03-05 05:24:17'),
(627, 'en', 'general', 'Add Testmonial', 'Add Testmonial', '2026-03-05 05:24:17', '2026-03-05 05:24:17'),
(628, 'en', 'general', 'Add New Testimonial', 'Add New Testimonial', '2026-03-05 05:24:17', '2026-03-05 05:24:17'),
(629, 'en', 'general', 'Edit Testimonial', 'Edit Testimonial', '2026-03-05 05:24:17', '2026-03-05 05:24:17'),
(630, 'en', 'general', 'Designation', 'Designation', '2026-03-05 05:24:17', '2026-03-05 05:24:17'),
(631, 'en', 'general', 'Assigned Closed Tickets', 'Assigned Closed Tickets', '2026-03-05 05:24:17', '2026-03-05 05:24:17'),
(632, 'en', 'general', 'Assigned In-Progress Tickets', 'Assigned In-Progress Tickets', '2026-03-05 05:24:17', '2026-03-05 05:24:17'),
(633, 'en', 'general', 'Assigned New Tickets', 'Assigned New Tickets', '2026-03-05 05:24:17', '2026-03-05 05:24:17'),
(634, 'en', 'general', 'Assigned On-Hold Tickets', 'Assigned On-Hold Tickets', '2026-03-05 05:24:17', '2026-03-05 05:24:17'),
(635, 'en', 'general', 'Assigned Overdue Tickets', 'Assigned Overdue Tickets', '2026-03-05 05:24:17', '2026-03-05 05:24:17'),
(636, 'en', 'general', 'Assigned Re-Open Tickets', 'Assigned Re-Open Tickets', '2026-03-05 05:24:17', '2026-03-05 05:24:17'),
(637, 'en', 'general', 'My Assigned Closed Tickets', 'My Assigned Closed Tickets', '2026-03-05 05:24:17', '2026-03-05 05:24:17'),
(638, 'en', 'general', 'My Assigned In-Progress Tickets', 'My Assigned In-Progress Tickets', '2026-03-05 05:24:18', '2026-03-05 05:24:18'),
(639, 'en', 'general', 'My Assigned New Tickets', 'My Assigned New Tickets', '2026-03-05 05:24:18', '2026-03-05 05:24:18'),
(640, 'en', 'general', 'My Assigned On-Hold Tickets', 'My Assigned On-Hold Tickets', '2026-03-05 05:24:18', '2026-03-05 05:24:18'),
(641, 'en', 'general', 'My Assigned Overdue Tickets', 'My Assigned Overdue Tickets', '2026-03-05 05:24:18', '2026-03-05 05:24:18'),
(642, 'en', 'general', 'My Assigned Re-Open Tickets', 'My Assigned Re-Open Tickets', '2026-03-05 05:24:18', '2026-03-05 05:24:18'),
(643, 'en', 'general', 'Self Assigned Closed Tickets', 'Self Assigned Closed Tickets', '2026-03-05 05:24:18', '2026-03-05 05:24:18'),
(644, 'en', 'general', 'Self Assigned In-Progress Tickets', 'Self Assigned In-Progress Tickets', '2026-03-05 05:24:18', '2026-03-05 05:24:18'),
(645, 'en', 'general', 'Self Assigned New Tickets', 'Self Assigned New Tickets', '2026-03-05 05:24:18', '2026-03-05 05:24:18'),
(646, 'en', 'general', 'Self Assigned On-Hold Tickets', 'Self Assigned On-Hold Tickets', '2026-03-05 05:24:18', '2026-03-05 05:24:18'),
(647, 'en', 'general', 'Self Assigned Overdue Tickets', 'Self Assigned Overdue Tickets', '2026-03-05 05:24:18', '2026-03-05 05:24:18'),
(648, 'en', 'general', 'Self Assigned Re-Open Tickets', 'Self Assigned Re-Open Tickets', '2026-03-05 05:24:18', '2026-03-05 05:24:18'),
(649, 'en', 'general', 'Delete Ticket', 'Delete Ticket', '2026-03-05 05:24:18', '2026-03-05 05:24:18'),
(650, 'en', 'general', 'Ticket Activity', 'Ticket Activity', '2026-03-05 05:24:18', '2026-03-05 05:24:18'),
(651, 'en', 'general', 'Today', 'Today', '2026-03-05 05:24:18', '2026-03-05 05:24:18'),
(652, 'en', 'general', 'Yesterday', 'Yesterday', '2026-03-05 05:24:18', '2026-03-05 05:24:18'),
(653, 'en', 'general', 'Previous', 'Previous', '2026-03-05 05:24:18', '2026-03-05 05:24:18'),
(654, 'en', 'general', 'Next', 'Next', '2026-03-05 05:24:18', '2026-03-05 05:24:18'),
(655, 'en', 'general', 'Guest Ticket', 'Guest Ticket', '2026-03-05 05:24:18', '2026-03-05 05:24:18'),
(656, 'en', 'general', 'Thank you for submitting your ticket to us. Your tickets are always our top priority. You are submitting a guest ticket.', 'Thank you for submitting your ticket to us. Your tickets are always our top priority. You are submitting a guest ticket.', '2026-03-05 05:24:18', '2026-03-05 05:24:18'),
(657, 'en', 'general', 'Please register your account with us to access more features.', 'Please register your account with us to access more features.', '2026-03-05 05:24:18', '2026-03-05 05:24:18'),
(658, 'en', 'general', 'View Ticket', 'View Ticket', '2026-03-05 05:24:18', '2026-03-05 05:24:18'),
(659, 'en', 'general', 'View', 'View', '2026-03-05 05:24:18', '2026-03-05 05:24:18'),
(660, 'en', 'general', 'Active', 'Active', '2026-03-05 05:24:18', '2026-03-05 05:24:18'),
(661, 'en', 'general', 'Inactive', 'Inactive', '2026-03-05 05:24:18', '2026-03-05 05:24:18'),
(662, 'en', 'general', 'Support Active', 'Support Active', '2026-03-05 05:24:18', '2026-03-05 05:24:18'),
(663, 'en', 'general', 'Support Expired', 'Support Expired', '2026-03-05 05:24:18', '2026-03-05 05:24:18'),
(664, 'en', 'general', 'We Care about your privacy', 'We Care about your privacy', '2026-03-05 06:06:05', '2026-03-05 06:06:05'),
(665, 'en', 'general', 'Your experience on this site will be improved by allowing cookies.', 'Your experience on this site will be improved by allowing cookies.', '2026-03-05 06:06:05', '2026-03-05 06:06:05'),
(666, 'en', 'general', 'Accept', 'Accept', '2026-03-05 06:06:05', '2026-03-05 06:06:05'),
(667, 'en', 'general', 'Sign In to your account', 'Sign In to your account', '2026-03-05 06:06:31', '2026-03-05 06:06:31'),
(668, 'en', 'menu', 'Global Tickets', 'Global Tickets', '2026-03-05 06:07:23', '2026-03-05 06:07:23'),
(669, 'en', 'general', 'All Tickets', 'All Tickets', '2026-03-05 06:07:23', '2026-03-05 06:07:23'),
(670, 'en', 'general', 'Recent Tickets', 'Recent Tickets', '2026-03-05 06:07:23', '2026-03-05 06:07:23'),
(671, 'en', 'general', 'Active Tickets', 'Active Tickets', '2026-03-05 06:07:23', '2026-03-05 06:07:23'),
(672, 'en', 'general', 'Suspended Tickets', 'Suspended Tickets', '2026-03-05 06:07:23', '2026-03-05 06:07:23'),
(673, 'en', 'general', 'Closed Tickets', 'Closed Tickets', '2026-03-05 06:07:23', '2026-03-05 06:07:23'),
(674, 'en', 'general', 'Self Tickets', 'Self Tickets', '2026-03-05 06:07:23', '2026-03-05 06:07:23'),
(675, 'en', 'general', 'Self assigned Tickets', 'Self assigned Tickets', '2026-03-05 06:07:23', '2026-03-05 06:07:23'),
(676, 'en', 'general', 'My Assigned Tickets', 'My Assigned Tickets', '2026-03-05 06:07:23', '2026-03-05 06:07:23'),
(677, 'en', 'general', 'Suspend Tickets', 'Suspend Tickets', '2026-03-05 06:07:23', '2026-03-05 06:07:23'),
(678, 'en', 'general', 'Loading....', 'Loading....', '2026-03-05 06:07:23', '2026-03-05 06:07:23'),
(679, 'en', 'general', 'No data available in table', 'No data available in table', '2026-03-05 06:07:24', '2026-03-05 06:07:24'),
(680, 'en', 'general', 'No entries to show', 'No entries to show', '2026-03-05 06:07:24', '2026-03-05 06:07:24'),
(681, 'en', 'general', 'showing page', 'showing page', '2026-03-05 06:07:24', '2026-03-05 06:07:24'),
(682, 'en', 'general', 'of', 'of', '2026-03-05 06:07:24', '2026-03-05 06:07:24'),
(683, 'en', 'general', '- filtered from ', '- filtered from ', '2026-03-05 06:07:24', '2026-03-05 06:07:24'),
(684, 'en', 'general', 'records', 'records', '2026-03-05 06:07:24', '2026-03-05 06:07:24'),
(685, 'en', 'general', 'entries', 'entries', '2026-03-05 06:07:24', '2026-03-05 06:07:24'),
(686, 'en', 'general', 'Show', 'Show', '2026-03-05 06:07:24', '2026-03-05 06:07:24'),
(687, 'en', 'general', 'Search...', 'Search...', '2026-03-05 06:07:24', '2026-03-05 06:07:24'),
(688, 'en', 'general', 'Select Agent', 'Select Agent', '2026-03-05 06:07:24', '2026-03-05 06:07:24'),
(689, 'en', 'menu', 'Overdue Tickets', 'Overdue Tickets', '2026-03-05 06:07:29', '2026-03-05 06:07:29'),
(690, 'en', 'menu', 'Suspended Tickets', 'Suspended Tickets', '2026-03-05 06:07:29', '2026-03-05 06:07:29'),
(691, 'en', 'menu', 'Self Tickets', 'Self Tickets', '2026-03-05 06:07:29', '2026-03-05 06:07:29'),
(692, 'en', 'menu', 'Suspend Tickets', 'Suspend Tickets', '2026-03-05 06:07:29', '2026-03-05 06:07:29'),
(693, 'en', 'menu', 'Department', 'Department', '2026-03-05 06:07:29', '2026-03-05 06:07:29'),
(694, 'en', 'menu', 'Main FAQ’s', 'Main FAQ’s', '2026-03-05 06:07:29', '2026-03-05 06:07:29'),
(695, 'en', 'menu', 'Envato Setting', 'Envato Setting', '2026-03-05 06:07:29', '2026-03-05 06:07:29'),
(696, 'en', 'menu', 'Envato License\n                            Verification', 'Envato License\n                            Verification', '2026-03-05 06:07:29', '2026-03-05 06:07:29'),
(697, 'en', 'menu', 'Reports', 'Reports', '2026-03-05 06:07:30', '2026-03-05 06:07:30'),
(698, 'en', 'menu', 'Contact Support', 'Contact Support', '2026-03-05 06:07:30', '2026-03-05 06:07:30'),
(699, 'en', 'general', 'It is necessary to set up your email settings first in order to send and receive emails.', 'It is necessary to set up your email settings first in order to send and receive emails.', '2026-03-05 06:07:31', '2026-03-05 06:07:31'),
(700, 'en', 'general', 'Email Setup', 'Email Setup', '2026-03-05 06:07:31', '2026-03-05 06:07:31'),
(701, 'en', 'general', 'Setup Reference ', 'Setup Reference ', '2026-03-05 06:07:31', '2026-03-05 06:07:31'),
(702, 'en', 'general', 'It is necessary to set up your cron job first in order for the auto functions to work.', 'It is necessary to set up your cron job first in order for the auto functions to work.', '2026-03-05 06:07:31', '2026-03-05 06:07:31'),
(703, 'en', 'general', 'You have', 'You have', '2026-03-05 06:07:31', '2026-03-05 06:07:31'),
(704, 'en', 'general', 'new notification', 'new notification', '2026-03-05 06:07:31', '2026-03-05 06:07:31'),
(705, 'en', 'general', 'Assign to group', 'Assign to group', '2026-03-05 06:08:15', '2026-03-05 06:08:15'),
(706, 'en', 'general', 'Edit', 'Edit', '2026-03-05 06:08:15', '2026-03-05 06:08:15'),
(707, 'en', 'general', 'Name', 'Name', '2026-03-05 06:08:15', '2026-03-05 06:08:15'),
(708, 'en', 'general', 'View On:', 'View On:', '2026-03-05 06:08:15', '2026-03-05 06:08:15'),
(709, 'en', 'general', 'Critical', 'Critical', '2026-03-05 06:08:15', '2026-03-05 06:08:15'),
(710, 'en', 'general', 'Select Group', 'Select Group', '2026-03-05 06:08:15', '2026-03-05 06:08:15'),
(711, 'en', 'general', 'New Ticket', 'New Ticket', '2026-03-05 06:08:37', '2026-03-05 06:08:37'),
(712, 'en', 'general', 'Subject', 'Subject', '2026-03-05 06:08:37', '2026-03-05 06:08:37'),
(713, 'en', 'general', 'Maximum', 'Maximum', '2026-03-05 06:08:37', '2026-03-05 06:08:37'),
(714, 'en', 'general', 'Characters', 'Characters', '2026-03-05 06:08:37', '2026-03-05 06:08:37'),
(715, 'en', 'general', 'Select SubCategory', 'Select SubCategory', '2026-03-05 06:08:37', '2026-03-05 06:08:37'),
(716, 'en', 'alerts', 'Purchase Code field is Required', 'Purchase Code field is Required', '2026-03-05 06:08:37', '2026-03-05 06:08:37'),
(717, 'en', 'alerts', 'Check the all field(*) required', 'Check the all field(*) required', '2026-03-05 06:08:37', '2026-03-05 06:08:37'),
(718, 'en', 'alerts', 'A ticket has been opened with the ticket ID', 'A ticket has been opened with the ticket ID', '2026-03-05 06:09:28', '2026-03-05 06:09:28'),
(719, 'en', 'general', 'Date', 'Date', '2026-03-05 06:09:32', '2026-03-05 06:09:32'),
(720, 'en', 'general', 'Last Replied', 'Last Replied', '2026-03-05 06:09:32', '2026-03-05 06:09:32'),
(721, 'en', 'general', 'Guest', 'Guest', '2026-03-05 06:09:32', '2026-03-05 06:09:32'),
(722, 'en', 'general', 'Assign', 'Assign', '2026-03-05 06:09:32', '2026-03-05 06:09:32'),
(723, 'en', 'general', 'Self Assign', 'Self Assign', '2026-03-05 06:09:32', '2026-03-05 06:09:32'),
(724, 'en', 'general', 'Other Assign', 'Other Assign', '2026-03-05 06:09:32', '2026-03-05 06:09:32'),
(725, 'en', 'general', 'Assigned', 'Assigned', '2026-03-05 06:10:16', '2026-03-05 06:10:16'),
(726, 'en', 'general', 'Report', 'Report', '2026-03-05 06:11:37', '2026-03-05 06:11:37'),
(727, 'en', 'general', 'View All', 'View All', '2026-03-05 06:11:37', '2026-03-05 06:11:37'),
(728, 'en', 'general', 'Customers', 'Customers', '2026-03-05 06:11:37', '2026-03-05 06:11:37'),
(729, 'en', 'general', 'Ticket', 'Ticket', '2026-03-05 06:11:37', '2026-03-05 06:11:37'),
(730, 'en', 'general', 'Inprogress', 'Inprogress', '2026-03-05 06:11:37', '2026-03-05 06:11:37'),
(731, 'en', 'general', 'Reopen', 'Reopen', '2026-03-05 06:11:37', '2026-03-05 06:11:37'),
(732, 'en', 'general', 'Ticket Priority', 'Ticket Priority', '2026-03-05 06:11:37', '2026-03-05 06:11:37'),
(733, 'en', 'general', 'Knowledge Base', 'Knowledge Base', '2026-03-05 06:11:37', '2026-03-05 06:11:37'),
(734, 'en', 'general', 'Ratings For Employee', 'Ratings For Employee', '2026-03-05 06:11:37', '2026-03-05 06:11:37'),
(735, 'en', 'general', 'Total', 'Total', '2026-03-05 06:11:37', '2026-03-05 06:11:37');

-- --------------------------------------------------------

--
-- Struktur dari tabel `userratings`
--

CREATE TABLE `userratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cust_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ticket_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ratingstar` bigint(20) NOT NULL DEFAULT 0,
  `ratingcomment` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `empid` varchar(255) DEFAULT NULL,
  `name` longtext DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `departments` varchar(255) DEFAULT NULL,
  `dashboard` varchar(255) DEFAULT NULL,
  `provider_id` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `phone` bigint(20) DEFAULT NULL,
  `skills` longtext DEFAULT NULL,
  `languagues` longtext DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `verified` tinyint(1) NOT NULL DEFAULT 0,
  `password` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `timezone` varchar(255) DEFAULT NULL,
  `darkmode` bigint(20) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `empid`, `name`, `gender`, `departments`, `dashboard`, `provider_id`, `email`, `phone`, `skills`, `languagues`, `status`, `image`, `verified`, `password`, `country`, `timezone`, `darkmode`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Muhammad', 'Fauzi', NULL, 'Muhammad Fauzi', NULL, NULL, 'Admin', NULL, 'muhammad.fauzi1000@Gmail.com', NULL, NULL, NULL, '1', NULL, 1, '$2y$10$k0nzICAnUkyMpTD6hdUn.O3Es493HMZJ0HISHTRUS9c2Madv897fC', 'United States', 'America/New_York', NULL, NULL, '2026-03-05 06:06:04', '2026-03-05 06:06:04');

-- --------------------------------------------------------

--
-- Struktur dari tabel `usersettings`
--

CREATE TABLE `usersettings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `users_id` bigint(20) UNSIGNED NOT NULL,
  `ticket_refresh` bigint(20) DEFAULT NULL,
  `emailnotifyon` tinyint(1) DEFAULT NULL,
  `star5` bigint(20) NOT NULL DEFAULT 0,
  `star4` bigint(20) NOT NULL DEFAULT 0,
  `star3` bigint(20) NOT NULL DEFAULT 0,
  `star2` bigint(20) NOT NULL DEFAULT 0,
  `star1` bigint(20) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `usersettings`
--

INSERT INTO `usersettings` (`id`, `users_id`, `ticket_refresh`, `emailnotifyon`, `star5`, `star4`, `star3`, `star2`, `star1`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 1, 0, 0, 0, 0, 0, '2026-03-05 06:06:04', '2026-03-05 06:06:04');

-- --------------------------------------------------------

--
-- Struktur dari tabel `verify_otps`
--

CREATE TABLE `verify_otps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cust_id` varchar(255) DEFAULT NULL,
  `otp` varchar(255) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `verify_users`
--

CREATE TABLE `verify_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cust_id` int(11) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `apptitles`
--
ALTER TABLE `apptitles`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articles_category_id_foreign` (`category_id`);

--
-- Indeks untuk tabel `articles_likes`
--
ALTER TABLE `articles_likes`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `article_comments`
--
ALTER TABLE `article_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `article_replies`
--
ALTER TABLE `article_replies`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `bussinesshours`
--
ALTER TABLE `bussinesshours`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `callactions`
--
ALTER TABLE `callactions`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cannedmessages`
--
ALTER TABLE `cannedmessages`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`);

--
-- Indeks untuk tabel `category_category_user`
--
ALTER TABLE `category_category_user`
  ADD PRIMARY KEY (`category_id`,`category_user_id`),
  ADD KEY `category_category_user_category_user_id_foreign` (`category_user_id`);

--
-- Indeks untuk tabel `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `1` (`ticket_id`),
  ADD KEY `comments_cust_id_foreign` (`cust_id`);

--
-- Indeks untuk tabel `contactforms`
--
ALTER TABLE `contactforms`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `customcssjs`
--
ALTER TABLE `customcssjs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customers_email_unique` (`email`);

--
-- Indeks untuk tabel `customer_settings`
--
ALTER TABLE `customer_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_settings_custs_id_foreign` (`custs_id`);

--
-- Indeks untuk tabel `customfields`
--
ALTER TABLE `customfields`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `customizeerrors`
--
ALTER TABLE `customizeerrors`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `employeeratings`
--
ALTER TABLE `employeeratings`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `envatoapitoken`
--
ALTER TABLE `envatoapitoken`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `envatocategoryassign`
--
ALTER TABLE `envatocategoryassign`
  ADD PRIMARY KEY (`id`),
  ADD KEY `envatocategoryassign_category_id_foreign` (`category_id`);

--
-- Indeks untuk tabel `faq_categories`
--
ALTER TABLE `faq_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `faq_list`
--
ALTER TABLE `faq_list`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `feature_boxes`
--
ALTER TABLE `feature_boxes`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `footertexts`
--
ALTER TABLE `footertexts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `groups_groupname_unique` (`groupname`);

--
-- Indeks untuk tabel `groups_categories`
--
ALTER TABLE `groups_categories`
  ADD PRIMARY KEY (`group_id`,`category_id`),
  ADD KEY `groups_categories_category_id_foreign` (`category_id`);

--
-- Indeks untuk tabel `groups_users`
--
ALTER TABLE `groups_users`
  ADD PRIMARY KEY (`groups_id`,`users_id`),
  ADD KEY `groups_users_users_id_foreign` (`users_id`);

--
-- Indeks untuk tabel `i_p_l_i_s_t_s`
--
ALTER TABLE `i_p_l_i_s_t_s`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `languages_languagecode_unique` (`languagecode`);

--
-- Indeks untuk tabel `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `media_uuid_unique` (`uuid`),
  ADD KEY `media_model_type_model_id_index` (`model_type`,`model_id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indeks untuk tabel `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indeks untuk tabel `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indeks untuk tabel `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indeks untuk tabel `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `projects_name_unique` (`name`);

--
-- Indeks untuk tabel `projects_categories`
--
ALTER TABLE `projects_categories`
  ADD PRIMARY KEY (`projects_id`,`category_id`),
  ADD KEY `projects_categories_category_id_foreign` (`category_id`);

--
-- Indeks untuk tabel `ratingtokens`
--
ALTER TABLE `ratingtokens`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indeks untuk tabel `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indeks untuk tabel `sendmails`
--
ALTER TABLE `sendmails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sendmails_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `senduserlists`
--
ALTER TABLE `senduserlists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `senduserlists_mail_id_foreign` (`mail_id`),
  ADD KEY `senduserlists_touser_id_foreign` (`touser_id`),
  ADD KEY `senduserlists_tocust_id_foreign` (`tocust_id`);

--
-- Indeks untuk tabel `seosettings`
--
ALTER TABLE `seosettings`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `social_auth_settings`
--
ALTER TABLE `social_auth_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `subcategoryschild`
--
ALTER TABLE `subcategoryschild`
  ADD PRIMARY KEY (`category_id`,`subcategory_id`),
  ADD KEY `subcategoryschild_subcategory_id_foreign` (`subcategory_id`);

--
-- Indeks untuk tabel `subcategorysd`
--
ALTER TABLE `subcategorysd`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `ticketassignchildren`
--
ALTER TABLE `ticketassignchildren`
  ADD PRIMARY KEY (`toassignuser_id`,`ticket_id`),
  ADD KEY `ticketassignchildren_ticket_id_foreign` (`ticket_id`);

--
-- Indeks untuk tabel `tickethistories`
--
ALTER TABLE `tickethistories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tickethistories_ticket_id_foreign` (`ticket_id`);

--
-- Indeks untuk tabel `ticketnotes`
--
ALTER TABLE `ticketnotes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ticketnotes_ticket_id_foreign` (`ticket_id`),
  ADD KEY `ticketnotes_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tickets_ticket_id_unique` (`ticket_id`),
  ADD KEY `tickets_cust_id_foreign` (`cust_id`),
  ADD KEY `tickets_category_id_foreign` (`category_id`);

--
-- Indeks untuk tabel `ticketsccemails`
--
ALTER TABLE `ticketsccemails`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `ticket_customfields`
--
ALTER TABLE `ticket_customfields`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `timezone`
--
ALTER TABLE `timezone`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `timezones`
--
ALTER TABLE `timezones`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `translates`
--
ALTER TABLE `translates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `translates_lang_code_foreign` (`lang_code`);

--
-- Indeks untuk tabel `userratings`
--
ALTER TABLE `userratings`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indeks untuk tabel `usersettings`
--
ALTER TABLE `usersettings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usersettings_users_id_foreign` (`users_id`);

--
-- Indeks untuk tabel `verify_otps`
--
ALTER TABLE `verify_otps`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `verify_users`
--
ALTER TABLE `verify_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `announcements`
--
ALTER TABLE `announcements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `apptitles`
--
ALTER TABLE `apptitles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `articles_likes`
--
ALTER TABLE `articles_likes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT untuk tabel `article_comments`
--
ALTER TABLE `article_comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `article_replies`
--
ALTER TABLE `article_replies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `bussinesshours`
--
ALTER TABLE `bussinesshours`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `callactions`
--
ALTER TABLE `callactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `cannedmessages`
--
ALTER TABLE `cannedmessages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `contactforms`
--
ALTER TABLE `contactforms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=250;

--
-- AUTO_INCREMENT untuk tabel `customcssjs`
--
ALTER TABLE `customcssjs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `customer_settings`
--
ALTER TABLE `customer_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `customfields`
--
ALTER TABLE `customfields`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `customizeerrors`
--
ALTER TABLE `customizeerrors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT untuk tabel `employeeratings`
--
ALTER TABLE `employeeratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `envatoapitoken`
--
ALTER TABLE `envatoapitoken`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `envatocategoryassign`
--
ALTER TABLE `envatocategoryassign`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `faq_categories`
--
ALTER TABLE `faq_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `faq_list`
--
ALTER TABLE `faq_list`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `feature_boxes`
--
ALTER TABLE `feature_boxes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `footertexts`
--
ALTER TABLE `footertexts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `groups`
--
ALTER TABLE `groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `i_p_l_i_s_t_s`
--
ALTER TABLE `i_p_l_i_s_t_s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT untuk tabel `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT untuk tabel `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `ratingtokens`
--
ALTER TABLE `ratingtokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `sendmails`
--
ALTER TABLE `sendmails`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `senduserlists`
--
ALTER TABLE `senduserlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `seosettings`
--
ALTER TABLE `seosettings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT untuk tabel `social_auth_settings`
--
ALTER TABLE `social_auth_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `subcategorysd`
--
ALTER TABLE `subcategorysd`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tickethistories`
--
ALTER TABLE `tickethistories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `ticketnotes`
--
ALTER TABLE `ticketnotes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `ticketsccemails`
--
ALTER TABLE `ticketsccemails`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `ticket_customfields`
--
ALTER TABLE `ticket_customfields`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `timezone`
--
ALTER TABLE `timezone`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=426;

--
-- AUTO_INCREMENT untuk tabel `timezones`
--
ALTER TABLE `timezones`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `translates`
--
ALTER TABLE `translates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=736;

--
-- AUTO_INCREMENT untuk tabel `userratings`
--
ALTER TABLE `userratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `usersettings`
--
ALTER TABLE `usersettings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `verify_otps`
--
ALTER TABLE `verify_otps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `verify_users`
--
ALTER TABLE `verify_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `category_category_user`
--
ALTER TABLE `category_category_user`
  ADD CONSTRAINT `category_category_user_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `category_category_user_category_user_id_foreign` FOREIGN KEY (`category_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `1` FOREIGN KEY (`ticket_id`) REFERENCES `tickets` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_cust_id_foreign` FOREIGN KEY (`cust_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `customer_settings`
--
ALTER TABLE `customer_settings`
  ADD CONSTRAINT `customer_settings_custs_id_foreign` FOREIGN KEY (`custs_id`) REFERENCES `customers` (`id`);

--
-- Ketidakleluasaan untuk tabel `envatocategoryassign`
--
ALTER TABLE `envatocategoryassign`
  ADD CONSTRAINT `envatocategoryassign_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `groups_categories`
--
ALTER TABLE `groups_categories`
  ADD CONSTRAINT `groups_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `groups_categories_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `groups_users`
--
ALTER TABLE `groups_users`
  ADD CONSTRAINT `groups_users_groups_id_foreign` FOREIGN KEY (`groups_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `groups_users_users_id_foreign` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `projects_categories`
--
ALTER TABLE `projects_categories`
  ADD CONSTRAINT `projects_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `projects_categories_projects_id_foreign` FOREIGN KEY (`projects_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `sendmails`
--
ALTER TABLE `sendmails`
  ADD CONSTRAINT `sendmails_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ketidakleluasaan untuk tabel `senduserlists`
--
ALTER TABLE `senduserlists`
  ADD CONSTRAINT `senduserlists_mail_id_foreign` FOREIGN KEY (`mail_id`) REFERENCES `sendmails` (`id`),
  ADD CONSTRAINT `senduserlists_tocust_id_foreign` FOREIGN KEY (`tocust_id`) REFERENCES `customers` (`id`),
  ADD CONSTRAINT `senduserlists_touser_id_foreign` FOREIGN KEY (`touser_id`) REFERENCES `users` (`id`);

--
-- Ketidakleluasaan untuk tabel `subcategoryschild`
--
ALTER TABLE `subcategoryschild`
  ADD CONSTRAINT `subcategoryschild_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `subcategoryschild_subcategory_id_foreign` FOREIGN KEY (`subcategory_id`) REFERENCES `subcategorysd` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `ticketassignchildren`
--
ALTER TABLE `ticketassignchildren`
  ADD CONSTRAINT `ticketassignchildren_ticket_id_foreign` FOREIGN KEY (`ticket_id`) REFERENCES `tickets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ticketassignchildren_toassignuser_id_foreign` FOREIGN KEY (`toassignuser_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tickethistories`
--
ALTER TABLE `tickethistories`
  ADD CONSTRAINT `tickethistories_ticket_id_foreign` FOREIGN KEY (`ticket_id`) REFERENCES `tickets` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `ticketnotes`
--
ALTER TABLE `ticketnotes`
  ADD CONSTRAINT `ticketnotes_ticket_id_foreign` FOREIGN KEY (`ticket_id`) REFERENCES `tickets` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ticketnotes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tickets`
--
ALTER TABLE `tickets`
  ADD CONSTRAINT `tickets_cust_id_foreign` FOREIGN KEY (`cust_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `translates`
--
ALTER TABLE `translates`
  ADD CONSTRAINT `translates_lang_code_foreign` FOREIGN KEY (`lang_code`) REFERENCES `languages` (`languagecode`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `usersettings`
--
ALTER TABLE `usersettings`
  ADD CONSTRAINT `usersettings_users_id_foreign` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
