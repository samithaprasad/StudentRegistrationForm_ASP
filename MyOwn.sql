create database if not exists login;
use login;
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `FullName` varchar(100) NOT NULL,
  `PostalAddress` varchar(100) NOT NULL,
  `ContactNumber` varchar(12) NOT NULL,
  `Email` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;