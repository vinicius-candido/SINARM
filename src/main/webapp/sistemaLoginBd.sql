create database sistemaLoginBd;

use sistemaLoginBd;

create table Login(
id int auto_increment,
usuario varchar(30),
senha varchar(10),
primary key(id)
); 