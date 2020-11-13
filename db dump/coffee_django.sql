-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 13, 2020 at 02:13 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `coffee_django`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add list article', 7, 'add_listarticle'),
(26, 'Can change list article', 7, 'change_listarticle'),
(27, 'Can delete list article', 7, 'delete_listarticle'),
(28, 'Can view list article', 7, 'view_listarticle'),
(29, 'Can add picture', 8, 'add_picture'),
(30, 'Can change picture', 8, 'change_picture'),
(31, 'Can delete picture', 8, 'delete_picture'),
(32, 'Can view picture', 8, 'view_picture'),
(33, 'Can add service article', 9, 'add_servicearticle'),
(34, 'Can change service article', 9, 'change_servicearticle'),
(35, 'Can delete service article', 9, 'delete_servicearticle'),
(36, 'Can view service article', 9, 'view_servicearticle'),
(37, 'Can add contact', 10, 'add_contact'),
(38, 'Can change contact', 10, 'change_contact'),
(39, 'Can delete contact', 10, 'delete_contact'),
(40, 'Can view contact', 10, 'view_contact');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$216000$IvZc6mHY85fo$ji9J8yQmvYYiihPeZ3UtS9EboJ3qQS61lYKSSTZPjco=', '2020-11-13 12:25:32.079936', 1, 'admin', '', '', 'admin@example.com', 1, 1, '2020-11-11 15:45:12.135069');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `coffeeapp_contact`
--

CREATE TABLE `coffeeapp_contact` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `text` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `coffeeapp_contact`
--

INSERT INTO `coffeeapp_contact` (`id`, `name`, `phone`, `email`, `text`) VALUES
(3, 'Иван Иваныч', '+7 (953) 444-44-44', '', 'adret@mail.com'),
(4, 'Сергей Михаилов', '+7 (945) 535-35-35', 'adret@mail.com', 'Как дела?');

-- --------------------------------------------------------

--
-- Table structure for table `coffeeapp_listarticle`
--

CREATE TABLE `coffeeapp_listarticle` (
  `id` int(11) NOT NULL,
  `text` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `coffeeapp_listarticle`
--

INSERT INTO `coffeeapp_listarticle` (`id`, `text`) VALUES
(1, 'Это НЕ текст-\"рыба\", часто используемый в печати и вэб-дизайне. Lorem Ipsum является\r\n                                        стандартной \"рыбой\" для\r\n                                        текстов на латинице с начала XVI века, но это уже не рыба');

-- --------------------------------------------------------

--
-- Table structure for table `coffeeapp_picture`
--

CREATE TABLE `coffeeapp_picture` (
  `id` int(11) NOT NULL,
  `name` longtext NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `coffeeapp_picture`
--

INSERT INTO `coffeeapp_picture` (`id`, `name`, `image`) VALUES
(1, 'Не рыба', 'main/picture1.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `coffeeapp_servicearticle`
--

CREATE TABLE `coffeeapp_servicearticle` (
  `id` int(11) NOT NULL,
  `text` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL
) ;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2020-11-12 13:34:44.876479', '1', 'ListArticle object (1)', 1, '[{\"added\": {}}]', 7, 1),
(2, '2020-11-12 13:38:28.295610', '1', 'Picture object (1)', 1, '[{\"added\": {}}]', 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(10, 'coffeeapp', 'contact'),
(7, 'coffeeapp', 'listarticle'),
(8, 'coffeeapp', 'picture'),
(9, 'coffeeapp', 'servicearticle'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-11-06 12:34:52.730124'),
(2, 'auth', '0001_initial', '2020-11-06 12:34:54.544325'),
(3, 'admin', '0001_initial', '2020-11-06 12:35:03.066949'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-11-06 12:35:05.158465'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-11-06 12:35:05.215715'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-11-06 12:35:06.284074'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-11-06 12:35:07.321637'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-11-06 12:35:08.818626'),
(9, 'auth', '0004_alter_user_username_opts', '2020-11-06 12:35:08.870563'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-11-06 12:35:10.668567'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-11-06 12:35:10.723868'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-11-06 12:35:10.786658'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-11-06 12:35:10.946179'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-11-06 12:35:11.115553'),
(15, 'auth', '0010_alter_group_name_max_length', '2020-11-06 12:35:12.186917'),
(16, 'auth', '0011_update_proxy_permissions', '2020-11-06 12:35:12.249414'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2020-11-06 12:35:12.400893'),
(18, 'sessions', '0001_initial', '2020-11-06 12:35:12.795473'),
(19, 'coffeeapp', '0001_initial', '2020-11-12 13:27:43.603615'),
(20, 'coffeeapp', '0002_contact', '2020-11-12 20:05:52.988164'),
(21, 'coffeeapp', '0003_auto_20201113_0942', '2020-11-13 09:42:37.246868'),
(22, 'coffeeapp', '0004_auto_20201113_1025', '2020-11-13 10:25:39.332347');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('5423q18jmr8va9ok7x45enf7dmdso9ag', '.eJxVjEEOwiAQRe_C2hAgwExduvcMZJghUjWQlHZlvLs26UK3_733XyrRtta0jbKkWdRZWXX63TLxo7QdyJ3arWvubV3mrHdFH3Toa5fyvBzu30GlUb919NFjZmAnOEXG4AqiBEKEnB1YCYGMkInOOnCRAiATCAmbOAl59f4A0Wc3rQ:1kcsJi:QrQ-Nene5syqTFOAhWnTRWrsSIEApw72oVaqPzxvbnc', '2020-11-25 15:45:50.872474'),
('95pndvuz701fjx68e98ho4sujiishpsk', '.eJxVjEEOwiAQRe_C2hAgwExduvcMZJghUjWQlHZlvLs26UK3_733XyrRtta0jbKkWdRZWXX63TLxo7QdyJ3arWvubV3mrHdFH3Toa5fyvBzu30GlUb919NFjZmAnOEXG4AqiBEKEnB1YCYGMkInOOnCRAiATCAmbOAl59f4A0Wc3rQ:1kdCej:EMwzbdWwq_RUm2G7Eg8ewXzCu_ZJKUp_w6OhbfAPG2A', '2020-11-26 13:28:53.181398'),
('ak7u91as2aek8rtg0dr2ch49nlbg679q', '.eJxVjEEOwiAQRe_C2hAgwExduvcMZJghUjWQlHZlvLs26UK3_733XyrRtta0jbKkWdRZWXX63TLxo7QdyJ3arWvubV3mrHdFH3Toa5fyvBzu30GlUb919NFjZmAnOEXG4AqiBEKEnB1YCYGMkInOOnCRAiATCAmbOAl59f4A0Wc3rQ:1kdY8y:r-cBoZc1JR43Jjudywxj6oqFwom6mX4RsBtC-98tbxQ', '2020-11-27 12:25:32.125009');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `coffeeapp_contact`
--
ALTER TABLE `coffeeapp_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coffeeapp_listarticle`
--
ALTER TABLE `coffeeapp_listarticle`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coffeeapp_picture`
--
ALTER TABLE `coffeeapp_picture`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coffeeapp_servicearticle`
--
ALTER TABLE `coffeeapp_servicearticle`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coffeeapp_contact`
--
ALTER TABLE `coffeeapp_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `coffeeapp_listarticle`
--
ALTER TABLE `coffeeapp_listarticle`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `coffeeapp_picture`
--
ALTER TABLE `coffeeapp_picture`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `coffeeapp_servicearticle`
--
ALTER TABLE `coffeeapp_servicearticle`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
