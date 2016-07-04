create database sinarm;

use sinarm;

CREATE TABLE `USER` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `regdate` date NOT NULL,
  PRIMARY KEY  (`id`)
);

CREATE TABLE `ARMA` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `codigo` varchar(45) NOT NULL,
  `tipo` varchar(45) NOT NULL,
  `fabricante` varchar(45) NOT NULL,
  `modelo` varchar(45) NOT NULL,
  `calibre` varchar(45) NOT NULL,
  `regdate` date NOT NULL,
  PRIMARY KEY  (`id`)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;