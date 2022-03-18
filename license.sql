-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.22-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.3.0.6444
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for license
DROP DATABASE IF EXISTS `license`;
CREATE DATABASE IF NOT EXISTS `license` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `license`;

-- Dumping structure for table license.licensee
DROP TABLE IF EXISTS `licensee`;
CREATE TABLE IF NOT EXISTS `licensee` (
  `licenseeId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `first` varchar(50) NOT NULL,
  `last` varchar(50) NOT NULL,
  `expiry` date NOT NULL,
  PRIMARY KEY (`licenseeId`),
  UNIQUE KEY `first_last` (`first`,`last`)
) ENGINE=InnoDB AUTO_INCREMENT=256 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table license.licensee: ~188 rows (approximately)
INSERT INTO `licensee` (`licenseeId`, `first`, `last`, `expiry`) VALUES
	(1, 'Jacob', 'O\'Connor', '2009-05-09'),
	(2, 'Noah', 'Murphy', '2009-04-02'),
	(3, 'Michael', 'Jones', '2015-07-19'),
	(4, 'Jessica', 'Walsh', '2010-09-29'),
	(5, 'Charlie', 'Johnson', '2019-09-14'),
	(6, 'Michelle', 'Williams', '2015-11-09'),
	(7, 'Damian', 'Wilson', '2008-09-08'),
	(8, 'Ethan', 'Williams', '2011-10-18'),
	(9, 'Michelle', 'Davis', '2016-03-15'),
	(10, 'Tracy', 'O\'Kelly', '2009-07-21'),
	(11, 'Liam', 'Thomas', '2020-12-25'),
	(12, 'William', 'Thomas', '2013-01-14'),
	(13, 'Noah', 'Smith', '2014-01-17'),
	(14, 'Charles', 'Jones', '2016-10-09'),
	(15, 'Barbara', 'Roberts', '2020-05-23'),
	(16, 'Oliver', 'Murphy', '2011-06-30'),
	(17, 'Tracy', 'O\'Brien', '2011-11-08'),
	(18, 'Harry', 'Evans', '2018-02-16'),
	(19, 'Michael', 'Garcia', '2006-12-07'),
	(20, 'Jack', 'Lam', '2017-12-05'),
	(21, 'David', 'Singh', '2012-03-25'),
	(22, 'Oliver', 'Li', '2009-07-01'),
	(23, 'Charlotte', 'Wilson', '2012-10-27'),
	(24, 'Oliver', 'Jones', '2018-02-19'),
	(25, 'Victoria', 'White', '2010-05-26'),
	(26, 'Michael', 'Taylor', '2007-11-19'),
	(27, 'Megan', 'O\'Sullivan', '2017-09-11'),
	(28, 'Michael', 'Rodriguez', '2006-06-30'),
	(29, 'Barbara', 'O\'Brien', '2007-12-16'),
	(30, 'Mary', 'Smith', '2015-04-07'),
	(31, 'Kyle', 'Lee', '2015-08-22'),
	(32, 'Mason', 'Brown', '2013-12-30'),
	(33, 'Lauren', 'Lee', '2007-04-02'),
	(34, 'Michael', 'Evans', '2009-06-16'),
	(35, 'David', 'Gagnon', '2018-09-18'),
	(37, 'Victoria', 'Wang', '2016-05-14'),
	(38, 'Elizabeth', 'Wang', '2019-01-28'),
	(39, 'Rhys', 'Evans', '2017-09-26'),
	(40, 'Emily', 'Martin', '2013-02-05'),
	(41, 'Liam', 'Davies', '2009-08-16'),
	(42, 'Susan', 'Martin', '2020-05-25'),
	(43, 'Elizabeth', 'Wilson', '2006-10-07'),
	(44, 'Oscar', 'O\'Sullivan', '2007-12-27'),
	(45, 'Joe', 'Rodriguez', '2017-10-01'),
	(46, 'Isla', 'O\'Connor', '2011-01-14'),
	(47, 'Abigail', 'Garcia', '2015-06-14'),
	(48, 'Harry', 'Jones', '2020-07-17'),
	(49, 'Bethany', 'Morton', '2017-07-24'),
	(50, 'Isla', 'Jones', '2016-03-25'),
	(51, 'Michael', 'Wilson', '2020-10-18'),
	(52, 'Jake', 'Gelbero', '2012-04-29'),
	(53, 'Charlie', 'Garcia', '2014-11-09'),
	(54, 'Thomas', 'Johnson', '2016-09-30'),
	(55, 'Isla', 'Tremblay', '2018-06-27'),
	(56, 'Joanne', 'Brown', '2020-10-29'),
	(57, 'Jake', 'Wilson', '2020-05-23'),
	(58, 'Michael', 'Li', '2008-04-02'),
	(59, 'Charlie', 'Rodriguez', '2006-06-04'),
	(60, 'Jacob', 'Lee', '2017-09-22'),
	(61, 'James', 'Wang', '2018-03-22'),
	(62, 'Emily', 'Roy', '2015-10-12'),
	(63, 'Susan', 'Walsh', '2007-10-04'),
	(64, 'George', 'Johnson', '2013-09-28'),
	(65, 'Mary', 'Garcia', '2020-08-27'),
	(66, 'Charles', 'Anderson', '2016-04-02'),
	(67, 'Ava', 'Martin', '2006-10-08'),
	(68, 'Emily', 'Jones', '2017-02-19'),
	(69, 'Joanne', 'Lam', '2011-03-03'),
	(70, 'Samantha', 'O\'Connor', '2015-11-04'),
	(71, 'Mary', 'Lee', '2010-02-12'),
	(73, 'George', 'Rodriguez', '2009-09-09'),
	(74, 'Tracy', 'Gagnon', '2012-09-11'),
	(75, 'Lauren', 'Li', '2013-09-24'),
	(76, 'Michael', 'O\'Kelly', '2006-10-29'),
	(77, 'Tracy', 'Garcia', '2013-04-02'),
	(78, 'Michael', 'Lam', '2013-06-26'),
	(79, 'Joe', 'Jones', '2020-12-01'),
	(80, 'Ava', 'Evans', '2008-06-25'),
	(81, 'Kyle', 'Tremblay', '2016-03-03'),
	(82, 'Oscar', 'Lee', '2012-12-28'),
	(83, 'Barbara', 'Murphy', '2008-03-03'),
	(84, 'Harry', 'Taylor', '2011-12-29'),
	(85, 'Poppy', 'O\'Sullivan', '2012-05-05'),
	(86, 'Oliver', 'White', '2013-02-24'),
	(87, 'Callum', 'Williams', '2018-08-17'),
	(89, 'Liam', 'Lam', '2011-02-17'),
	(90, 'Robert', 'Garcia', '2017-02-27'),
	(91, 'Tracy', 'O\'Neill', '2009-08-02'),
	(92, 'James', 'Wilson', '2015-05-17'),
	(94, 'Barbara', 'Smith', '2017-06-25'),
	(95, 'Callum', 'Jones', '2012-07-14'),
	(96, 'Poppy', 'Anderson', '2014-04-01'),
	(97, 'Robert', 'Evans', '2012-09-01'),
	(98, 'Rhys', 'Garcia', '2010-12-20'),
	(99, 'Robert', 'Martin', '2009-08-21'),
	(100, 'Margaret', 'Martin', '2008-08-28'),
	(101, 'James', 'Roberts', '2019-11-22'),
	(102, 'John', 'Gagnon', '2008-06-17'),
	(103, 'Barbara', 'Morton', '2016-10-21'),
	(104, 'Robert', 'Johnson', '2007-03-01'),
	(105, 'Poppy', 'Roy', '2018-01-09'),
	(106, 'Isla', 'Thomas', '2010-08-06'),
	(107, 'Bethany', 'Lee', '2009-12-17'),
	(108, 'Kyle', 'Rodriguez', '2017-09-17'),
	(109, 'Callum', 'Wilson', '2019-07-13'),
	(110, 'Patricia', 'Lee', '2012-07-10'),
	(111, 'Sarah', 'Smith', '2006-02-26'),
	(112, 'Thomas', 'Williams', '2019-06-19'),
	(113, 'Charles', 'Johnson', '2012-12-14'),
	(114, 'Rhys', 'Jones', '2016-06-01'),
	(115, 'Charles', 'White', '2018-12-23'),
	(116, 'Jake', 'O\'Ryan', '2007-04-07'),
	(117, 'Victoria', 'Roberts', '2015-07-21'),
	(118, 'Tracy', 'Murphy', '2017-12-15'),
	(119, 'Robert', 'O\'Ryan', '2015-07-05'),
	(120, 'Mia', 'Jones', '2017-07-13'),
	(121, 'Samantha', 'Brown', '2019-01-13'),
	(122, 'Harry', 'Gagnon', '2007-09-29'),
	(123, 'Noah', 'Wang', '2011-06-22'),
	(124, 'Jennifer', 'Murphy', '2011-03-02'),
	(125, 'Susan', 'Singh', '2012-02-11'),
	(126, 'Patricia', 'Morton', '2008-07-02'),
	(127, 'Ava', 'O\'Neill', '2009-01-12'),
	(128, 'Noah', 'Thomas', '2008-03-25'),
	(129, 'Robert', 'Byrne', '2012-07-12'),
	(130, 'Jessica', 'Morton', '2017-05-30'),
	(131, 'Isla', 'O\'Neill', '2013-05-27'),
	(132, 'Harry', 'Walsh', '2007-08-04'),
	(133, 'Joe', 'Davis', '2019-01-22'),
	(134, 'Richard', 'O\'Connor', '2010-03-25'),
	(135, 'Jacob', 'Li', '2020-07-19'),
	(136, 'Charlotte', 'Rodriguez', '2008-10-21'),
	(137, 'John', 'Tremblay', '2015-06-04'),
	(138, 'Tracy', 'Li', '2020-05-11'),
	(139, 'Michelle', 'Gagnon', '2008-06-10'),
	(140, 'Daniel', 'White', '2018-03-16'),
	(141, 'Damian', 'O\'Neill', '2017-10-16'),
	(142, 'Callum', 'Davies', '2012-04-10'),
	(143, 'Margaret', 'Tremblay', '2019-02-21'),
	(144, 'Jessica', 'Johnson', '2020-02-04'),
	(145, 'John', 'Lee', '2019-09-10'),
	(146, 'Mason', 'Roberts', '2011-10-05'),
	(147, 'Sophia', 'O\'Sullivan', '2015-04-11'),
	(148, 'Patricia', 'Roberts', '2012-01-15'),
	(149, 'Emily', 'White', '2014-11-01'),
	(150, 'Isla', 'Murphy', '2012-08-12'),
	(151, 'Olivia', 'Smith', '2020-09-08'),
	(152, 'Sophia', 'Lam', '2013-12-29'),
	(153, 'Michelle', 'Miller', '2014-06-29'),
	(154, 'Liam', 'Singh', '2018-06-03'),
	(155, 'Lily', 'Smith', '2006-05-18'),
	(156, 'Thomas', 'Miller', '2020-05-18'),
	(157, 'Joanne', 'O\'Brien', '2013-10-28'),
	(158, 'Noah', 'Li', '2009-09-10'),
	(159, 'Jack', 'Martin', '2014-04-10'),
	(160, 'Lauren', 'Roberts', '2014-04-28'),
	(161, 'Margaret', 'Roberts', '2010-07-30'),
	(162, 'Alexander', 'Tremblay', '2012-04-27'),
	(163, 'Lily', 'O\'Brien', '2017-10-09'),
	(164, 'Samantha', 'Walsh', '2016-04-02'),
	(165, 'Linda', 'Tremblay', '2011-08-05'),
	(166, 'Margaret', 'Wilson', '2020-10-20'),
	(167, 'Victoria', 'Rodriguez', '2016-09-19'),
	(168, 'Michelle', 'Johnson', '2019-01-25'),
	(169, 'Lily', 'Johnson', '2008-06-20'),
	(171, 'Olivia', 'Murphy', '2010-04-13'),
	(172, 'Patricia', 'Brown', '2016-03-23'),
	(173, 'Lily', 'Gelbero', '2014-11-06'),
	(174, 'Jacob', 'Anderson', '2010-09-27'),
	(175, 'Mason', 'O\'Neill', '2016-06-02'),
	(176, 'Richard', 'Gagnon', '2009-05-20'),
	(177, 'Isabella', 'Lam', '2018-12-05'),
	(178, 'Michelle', 'Rodriguez', '2015-02-20'),
	(179, 'Jacob', 'Johnson', '2018-05-14'),
	(181, 'Damian', 'Murphy', '2017-09-18'),
	(182, 'Isabella', 'O\'Kelly', '2010-12-25'),
	(183, 'Emma', 'Evans', '2015-05-13'),
	(184, 'Isla', 'Martin', '2017-05-10'),
	(186, 'Emily', 'Miller', '2007-11-17'),
	(187, 'Oliver', 'Brown', '2013-05-08'),
	(188, 'Samantha', 'Singh', '2015-10-25'),
	(189, 'John', 'O\'Ryan', '2006-09-20'),
	(190, 'Charlotte', 'Gagnon', '2012-09-16'),
	(191, 'Lauren', 'Lam', '2016-02-16'),
	(192, 'Isabella', 'Wilson', '2008-04-28'),
	(193, 'Susan', 'Murphy', '2011-12-01'),
	(194, 'Bethany', 'Li', '2009-10-21'),
	(195, 'Elizabeth', 'Davis', '2007-07-08');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;