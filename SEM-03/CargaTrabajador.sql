--Carga de Trabajadores
alter table Trabajador add estado bit null --Agregando la columna estado a tabla Trabajador

INSERT INTO Trabajador(idpadron,usuario,contrasena,tipo,estado) VALUES
(1,'usuario1',hashbytes('SHA1','password1'),'S',1),
(2,'usuario2',hashbytes('SHA1','password2'),'S',1),
(3,'usuario3',hashbytes('SHA1','password3'),'S',1),
(4,'usuario4',hashbytes('SHA1','password4'),'S',1),
(5,'usuario5',hashbytes('SHA1','password5'),'S',1),
(6,'usuario6',hashbytes('SHA1','password6'),'S',1),
(7,'usuario7',hashbytes('SHA1','password7'),'S',1),
(8,'usuario8',hashbytes('SHA1','password8'),'S',1),
(9,'usuario9',hashbytes('SHA1','password9'),'S',1),
(10,'usuario10',hashbytes('SHA1','password10'),'S',1),
(11,'usuario11',hashbytes('SHA1','password11'),'E',1),
(12,'usuario12',hashbytes('SHA1','password12'),'E',1),
(13,'usuario13',hashbytes('SHA1','password13'),'E',1),
(14,'usuario14',hashbytes('SHA1','password14'),'E',1),
(15,'usuario15',hashbytes('SHA1','password15'),'E',1),
(16,'usuario16',hashbytes('SHA1','password16'),'E',1),
(17,'usuario17',hashbytes('SHA1','password17'),'E',1),
(18,'usuario18',hashbytes('SHA1','password18'),'E',1),
(19,'usuario19',hashbytes('SHA1','password19'),'E',1),
(20,'usuario20',hashbytes('SHA1','password20'),'E',1),
(21,'usuario21',hashbytes('SHA1','password21'),'E',1),
(22,'usuario22',hashbytes('SHA1','password22'),'E',1),
(23,'usuario23',hashbytes('SHA1','password23'),'E',1),
(24,'usuario24',hashbytes('SHA1','password24'),'E',1),
(25,'usuario25',hashbytes('SHA1','password25'),'E',1),
(26,'usuario26',hashbytes('SHA1','password26'),'E',1),
(27,'usuario27',hashbytes('SHA1','password27'),'E',1),
(28,'usuario28',hashbytes('SHA1','password28'),'E',1),
(29,'usuario29',hashbytes('SHA1','password29'),'E',1),
(30,'usuario30',hashbytes('SHA1','password30'),'E',1),
(31,'usuario31',hashbytes('SHA1','password31'),'E',1),
(32,'usuario32',hashbytes('SHA1','password32'),'E',1),
(33,'usuario33',hashbytes('SHA1','password33'),'E',1),
(34,'usuario34',hashbytes('SHA1','password34'),'E',1),
(35,'usuario35',hashbytes('SHA1','password35'),'E',1),
(36,'usuario36',hashbytes('SHA1','password36'),'E',1),
(37,'usuario37',hashbytes('SHA1','password37'),'E',1),
(38,'usuario38',hashbytes('SHA1','password38'),'E',1),
(39,'usuario39',hashbytes('SHA1','password39'),'E',1),
(40,'usuario40',hashbytes('SHA1','password40'),'E',1),
(41,'usuario41',hashbytes('SHA1','password41'),'E',1),
(42,'usuario42',hashbytes('SHA1','password42'),'E',1),
(43,'usuario43',hashbytes('SHA1','password43'),'E',1),
(44,'usuario44',hashbytes('SHA1','password44'),'E',1),
(45,'usuario45',hashbytes('SHA1','password45'),'E',1),
(46,'usuario46',hashbytes('SHA1','password46'),'E',1),
(47,'usuario47',hashbytes('SHA1','password47'),'E',1),
(48,'usuario48',hashbytes('SHA1','password48'),'E',1),
(49,'usuario49',hashbytes('SHA1','password49'),'E',1),
(50,'usuario50',hashbytes('SHA1','password50'),'E',1)

--Select * from Trabajador