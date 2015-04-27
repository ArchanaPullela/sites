-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 27, 2015 at 03:12 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cake`
--

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
`id` int(8) NOT NULL,
  `topic_id` int(8) NOT NULL,
  `user_id` int(8) NOT NULL,
  `body` text NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `topic_id`, `user_id`, `body`, `created`, `modified`) VALUES
(1, 0, 0, 'My brand new post', '2015-04-26 21:18:47', '2015-04-26 21:18:47'),
(2, 0, 0, 'hello me', '2015-04-26 22:05:37', '2015-04-26 22:05:37'),
(3, 2, 0, 'this is the post for topic id 2.', '2015-04-27 09:00:56', '2015-04-27 09:00:55'),
(4, 1, 0, 'topic id 1.\r\n', '2015-04-27 09:03:02', '2015-04-27 09:03:02'),
(5, 2, 0, 'hello archana', '2015-04-27 09:43:28', '2015-04-27 09:43:28'),
(6, 6, 0, 'this is the 1st post!', '2015-04-27 09:59:57', '2015-04-27 09:59:57'),
(7, 6, 0, 'this is the 2nd post in demo!', '2015-04-27 10:00:36', '2015-04-27 10:00:36'),
(9, 21, 3, 'im a regular user!', '2015-04-27 12:01:24', '2015-04-27 12:01:24'),
(10, 21, 4, 'hello!', '2015-04-27 12:24:09', '2015-04-27 12:24:09'),
(11, 21, 3, 'one more', '2015-04-27 12:42:04', '2015-04-27 12:42:04'),
(12, 21, 3, 'lol', '2015-04-27 12:43:33', '2015-04-27 12:43:33');

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE IF NOT EXISTS `topics` (
`id` int(8) NOT NULL,
  `user_id` int(8) NOT NULL,
  `title` varchar(100) NOT NULL,
  `visible` tinyint(1) NOT NULL COMMENT '1 for visible,2 for hidden',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`id`, `user_id`, `title`, `visible`, `created`, `modified`) VALUES
(2, 0, 'Test1', 1, '2015-04-26 19:45:49', '2015-04-26 19:45:49'),
(3, 0, 'Test2', 1, '2015-04-26 19:47:14', '2015-04-26 19:47:14'),
(4, 0, 'Test3', 1, '2015-04-26 19:48:48', '2015-04-26 19:48:48'),
(5, 0, 'Test4', 1, '2015-04-26 19:51:04', '2015-04-26 19:51:04'),
(6, 0, 'Demo', 1, '2015-04-27 09:59:19', '2015-04-27 09:59:19'),
(11, 0, 'Topic By Admin', 1, '2015-04-27 11:27:14', '2015-04-27 11:27:14'),
(12, 0, 'Topic By Admin as Published', 1, '2015-04-27 11:29:18', '2015-04-27 11:29:18'),
(13, 0, 'Topic By Admin as Hidden', 1, '2015-04-27 11:29:55', '2015-04-27 11:29:55'),
(14, 0, 'topic by regular user', 1, '2015-04-27 11:30:37', '2015-04-27 11:30:37'),
(15, 0, 'topic by regular user as hidden', 1, '2015-04-27 11:30:54', '2015-04-27 11:30:54'),
(16, 0, 'Topic By Admin', 1, '2015-04-27 11:35:27', '2015-04-27 11:35:27'),
(19, 4, 'Topic with user id', 1, '2015-04-27 11:53:18', '2015-04-27 11:53:18'),
(20, 4, 'Archana', 1, '2015-04-27 11:54:37', '2015-04-27 11:54:37'),
(21, 3, 'mess', 1, '2015-04-27 11:56:10', '2015-04-27 11:56:10'),
(22, 4, '1st topic', 1, '2015-04-27 13:01:26', '2015-04-27 13:01:26');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id` int(8) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `role` tinyint(1) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `full_name`, `role`, `created`, `modified`) VALUES
(3, 'regular_user', '9d4e1e23bd5b727046a9e3b4b7db57bd8d6ee684', 'Regular User', 1, '2015-04-27 10:52:18', '2015-04-27 10:52:18'),
(4, 'admin', '9d4e1e23bd5b727046a9e3b4b7db57bd8d6ee684', 'Admin', 2, '2015-04-27 11:05:48', '2015-04-27 11:05:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `topics`
--
ALTER TABLE `topics`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
MODIFY `id` int(8) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `topics`
--
ALTER TABLE `topics`
MODIFY `id` int(8) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` int(8) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
