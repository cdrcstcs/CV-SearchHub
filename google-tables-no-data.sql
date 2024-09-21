SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";
CREATE USER IF NOT EXISTS 'google'@'%' IDENTIFIED BY 'PASSWORD_HERE';
GRANT SELECT, INSERT, UPDATE ON `google`.* TO 'google'@'%';
CREATE DATABASE IF NOT EXISTS `google` DEFAULT CHARACTER SET utf8mb4;
USE `google`;
CREATE TABLE IF NOT EXISTS `images` (
  `id` int(11) NOT NULL,
  `siteUrl` varchar(512) NOT NULL,
  `imageUrl` varchar(512) NOT NULL,
  `alt` varchar(512) NOT NULL,
  `title` varchar(512) NOT NULL,
  `clicks` int(11) NOT NULL DEFAULT '0',
  `broken` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE TABLE IF NOT EXISTS `sites` (
  `id` int(11) NOT NULL,
  `url` varchar(512) NOT NULL,
  `title` varchar(512) NOT NULL,
  `description` varchar(512) NOT NULL,
  `keywords` varchar(512) NOT NULL,
  `clicks` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `sites`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13003;
ALTER TABLE `sites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5297;
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1382;
COMMIT;