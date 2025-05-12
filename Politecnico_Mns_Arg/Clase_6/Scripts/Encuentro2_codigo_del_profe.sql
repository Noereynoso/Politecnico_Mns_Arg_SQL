create database encriptado;
 
use encriptado;
 
create table usuarios (id_usuario int primary key auto_increment, 
nombre_usuario varchar(30)  not null,
clave text not null)engine=InnoDB char set=latin1;
 
drop table usuarios;
 
 
insert into usuarios (id_usuario, nombre_usuario, clave) values
(1,"usuario1",aes_encrypt("123456","AES"));
 
select id_usuario,nombre_usuario,(aes_decrypt(clave))
 
select * from usuarios;