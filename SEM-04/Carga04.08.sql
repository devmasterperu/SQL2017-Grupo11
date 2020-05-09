--Carga 04.08
/*
ALTER TABLE [dbo].[UnidadUso] WITH CHECK ADD CONSTRAINT [RefFicha19] FOREIGN KEY([idficha]) REFERENCES [dbo].[Ficha] ([idficha])
GO
ALTER TABLE [dbo].[UnidadUso] CHECK CONSTRAINT [RefFicha19]
GO
*/
--select IDENT_CURRENT( 'UnidadUso')
SET IDENTITY_INSERT dbo.UnidadUso ON;--Permite inserción en columnas IDENTITY.
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (1,'VIVIENDA 1ER PISO','DOM',1)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (2,'VIVIENDA 2DO PISO','DOM',1)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (3,'VIVIENDA 3ER PISO','DOM',1)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (4,'VIVIENDA 1ER PISO','DOM',2)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (5,'VIVIENDA 2DO PISO','DOM',2)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (6,'VIVIENDA 3ER PISO','DOM',2)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (7,'VIVIENDA 1ER PISO','DOM',3)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (8,'VIVIENDA 2DO PISO','DOM',3)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (9,'VIVIENDA 3ER PISO','DOM',3)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (10,'VIVIENDA 1ER PISO','DOM',4)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (11,'VIVIENDA 2DO PISO','DOM',4)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (12,'VIVIENDA 3ER PISO','DOM',4)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (13,'VIVIENDA 1ER PISO','DOM',5)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (14,'VIVIENDA 2DO PISO','DOM',5)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (15,'VIVIENDA 3ER PISO','DOM',5)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (16,'VIVIENDA 1ER PISO','DOM',6)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (17,'VIVIENDA 2DO PISO','DOM',6)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (18,'VIVIENDA 3ER PISO','DOM',6)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (19,'VIVIENDA 1ER PISO','DOM',7)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (20,'VIVIENDA 2DO PISO','DOM',7)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (21,'VIVIENDA 3ER PISO','DOM',7)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (22,'VIVIENDA 1ER PISO','DOM',8)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (23,'VIVIENDA 2DO PISO','DOM',8)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (24,'VIVIENDA 3ER PISO','DOM',8)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (25,'VIVIENDA 1ER PISO','DOM',9)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (26,'VIVIENDA 2DO PISO','DOM',9)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (27,'VIVIENDA 3ER PISO','DOM',9)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (28,'VIVIENDA 1ER PISO','DOM',10)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (29,'VIVIENDA 2DO PISO','DOM',10)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (30,'VIVIENDA 3ER PISO','DOM',10)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (31,'VIVIENDA 1ER PISO','DOM',11)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (32,'VIVIENDA 2DO PISO','DOM',11)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (33,'VIVIENDA 3ER PISO','DOM',11)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (34,'VIVIENDA 1ER PISO','DOM',12)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (35,'VIVIENDA 2DO PISO','DOM',12)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (36,'VIVIENDA 3ER PISO','DOM',12)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (37,'VIVIENDA 1ER PISO','DOM',13)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (38,'VIVIENDA 2DO PISO','DOM',13)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (39,'VIVIENDA 3ER PISO','DOM',13)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (40,'VIVIENDA 1ER PISO','DOM',14)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (41,'VIVIENDA 2DO PISO','DOM',14)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (42,'VIVIENDA 3ER PISO','DOM',14)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (43,'VIVIENDA 1ER PISO','DOM',15)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (44,'VIVIENDA 2DO PISO','DOM',15)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (45,'VIVIENDA 3ER PISO','DOM',15)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (46,'VIVIENDA 1ER PISO','DOM',16)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (47,'VIVIENDA 2DO PISO','DOM',16)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (48,'VIVIENDA 3ER PISO','DOM',16)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (49,'VIVIENDA 1ER PISO','DOM',17)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (50,'VIVIENDA 2DO PISO','DOM',17)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (51,'VIVIENDA 3ER PISO','DOM',17)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (52,'VIVIENDA 1ER PISO','DOM',18)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (53,'VIVIENDA 2DO PISO','DOM',18)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (54,'VIVIENDA 3ER PISO','DOM',18)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (55,'VIVIENDA 1ER PISO','DOM',19)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (56,'VIVIENDA 2DO PISO','DOM',19)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (57,'VIVIENDA 3ER PISO','DOM',19)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (58,'VIVIENDA 1ER PISO','DOM',20)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (59,'VIVIENDA 2DO PISO','DOM',20)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (60,'VIVIENDA 3ER PISO','DOM',20)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (61,'VIVIENDA 1ER PISO','DOM',21)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (62,'VIVIENDA 2DO PISO','DOM',21)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (63,'VIVIENDA 3ER PISO','DOM',21)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (64,'VIVIENDA 1ER PISO','DOM',22)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (65,'VIVIENDA 2DO PISO','DOM',22)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (66,'VIVIENDA 3ER PISO','DOM',22)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (67,'VIVIENDA 1ER PISO','DOM',23)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (68,'VIVIENDA 2DO PISO','DOM',23)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (69,'VIVIENDA 3ER PISO','DOM',23)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (70,'VIVIENDA 1ER PISO','DOM',24)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (71,'VIVIENDA 2DO PISO','DOM',24)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (72,'VIVIENDA 3ER PISO','DOM',24)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (73,'VIVIENDA 1ER PISO','DOM',25)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (74,'VIVIENDA 2DO PISO','DOM',25)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (75,'VIVIENDA 3ER PISO','DOM',25)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (76,'VIVIENDA 1ER PISO','DOM',26)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (77,'VIVIENDA 2DO PISO','DOM',26)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (78,'VIVIENDA 3ER PISO','DOM',26)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (79,'VIVIENDA 1ER PISO','DOM',27)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (80,'VIVIENDA 2DO PISO','DOM',27)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (81,'VIVIENDA 3ER PISO','DOM',27)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (82,'VIVIENDA 1ER PISO','DOM',28)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (83,'VIVIENDA 2DO PISO','DOM',28)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (84,'VIVIENDA 3ER PISO','DOM',28)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (85,'VIVIENDA 1ER PISO','DOM',29)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (86,'VIVIENDA 2DO PISO','DOM',29)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (87,'VIVIENDA 3ER PISO','DOM',29)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (88,'VIVIENDA 1ER PISO','DOM',30)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (89,'VIVIENDA 2DO PISO','DOM',30)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (90,'VIVIENDA 3ER PISO','DOM',30)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (91,'VIVIENDA 1ER PISO','DOM',31)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (92,'VIVIENDA 2DO PISO','DOM',31)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (93,'VIVIENDA 3ER PISO','DOM',31)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (94,'VIVIENDA 1ER PISO','DOM',32)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (95,'VIVIENDA 2DO PISO','DOM',32)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (96,'VIVIENDA 3ER PISO','DOM',32)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (97,'VIVIENDA 1ER PISO','DOM',33)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (98,'VIVIENDA 2DO PISO','DOM',33)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (99,'VIVIENDA 3ER PISO','DOM',33)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (100,'VIVIENDA 1ER PISO','DOM',34)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (101,'VIVIENDA 2DO PISO','DOM',34)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (102,'VIVIENDA 3ER PISO','DOM',34)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (103,'VIVIENDA 1ER PISO','DOM',35)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (104,'VIVIENDA 2DO PISO','DOM',35)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (105,'VIVIENDA 3ER PISO','DOM',35)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (106,'VIVIENDA 1ER PISO','DOM',36)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (107,'VIVIENDA 2DO PISO','DOM',36)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (108,'VIVIENDA 3ER PISO','DOM',36)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (109,'VIVIENDA 1ER PISO','DOM',37)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (110,'VIVIENDA 2DO PISO','DOM',37)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (111,'VIVIENDA 3ER PISO','DOM',37)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (112,'VIVIENDA 1ER PISO','DOM',38)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (113,'VIVIENDA 2DO PISO','DOM',38)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (114,'VIVIENDA 3ER PISO','DOM',38)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (115,'VIVIENDA 1ER PISO','DOM',39)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (116,'VIVIENDA 2DO PISO','DOM',39)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (117,'VIVIENDA 3ER PISO','DOM',39)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (118,'VIVIENDA 1ER PISO','DOM',40)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (119,'VIVIENDA 2DO PISO','DOM',40)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (120,'VIVIENDA 3ER PISO','DOM',40)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (121,'VIVIENDA 1ER PISO','DOM',41)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (122,'VIVIENDA 2DO PISO','DOM',41)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (123,'VIVIENDA 3ER PISO','DOM',41)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (124,'VIVIENDA 1ER PISO','DOM',42)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (125,'VIVIENDA 2DO PISO','DOM',42)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (126,'VIVIENDA 3ER PISO','DOM',42)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (127,'VIVIENDA 1ER PISO','DOM',43)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (128,'VIVIENDA 2DO PISO','DOM',43)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (129,'VIVIENDA 3ER PISO','DOM',43)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (130,'VIVIENDA 1ER PISO','DOM',44)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (131,'VIVIENDA 2DO PISO','DOM',44)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (132,'VIVIENDA 3ER PISO','DOM',44)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (133,'VIVIENDA 1ER PISO','DOM',45)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (134,'VIVIENDA 2DO PISO','DOM',45)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (135,'VIVIENDA 3ER PISO','DOM',45)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (136,'VIVIENDA 1ER PISO','DOM',46)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (137,'VIVIENDA 2DO PISO','DOM',46)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (138,'VIVIENDA 3ER PISO','DOM',46)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (139,'VIVIENDA 1ER PISO','DOM',47)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (140,'VIVIENDA 2DO PISO','DOM',47)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (141,'VIVIENDA 3ER PISO','DOM',47)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (142,'VIVIENDA 1ER PISO','DOM',48)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (143,'VIVIENDA 2DO PISO','DOM',48)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (144,'VIVIENDA 3ER PISO','DOM',48)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (145,'VIVIENDA 1ER PISO','DOM',49)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (146,'VIVIENDA 2DO PISO','DOM',49)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (147,'VIVIENDA 3ER PISO','DOM',49)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (148,'VIVIENDA 1ER PISO','DOM',50)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (149,'VIVIENDA 2DO PISO','DOM',50)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (150,'VIVIENDA 3ER PISO','DOM',50)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (151,'VIVIENDA 1ER PISO','DOM',51)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (152,'VIVIENDA 2DO PISO','DOM',51)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (153,'VIVIENDA 3ER PISO','DOM',51)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (154,'VIVIENDA 1ER PISO','DOM',52)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (155,'VIVIENDA 2DO PISO','DOM',52)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (156,'VIVIENDA 3ER PISO','DOM',52)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (157,'VIVIENDA 1ER PISO','DOM',53)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (158,'VIVIENDA 2DO PISO','DOM',53)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (159,'VIVIENDA 3ER PISO','DOM',53)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (160,'VIVIENDA 1ER PISO','DOM',54)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (161,'VIVIENDA 2DO PISO','DOM',54)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (162,'VIVIENDA 3ER PISO','DOM',54)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (163,'VIVIENDA 1ER PISO','DOM',55)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (164,'VIVIENDA 2DO PISO','DOM',55)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (165,'VIVIENDA 3ER PISO','DOM',55)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (166,'VIVIENDA 1ER PISO','DOM',56)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (167,'VIVIENDA 2DO PISO','DOM',56)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (168,'VIVIENDA 3ER PISO','DOM',56)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (169,'VIVIENDA 1ER PISO','DOM',57)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (170,'VIVIENDA 2DO PISO','DOM',57)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (171,'VIVIENDA 3ER PISO','DOM',57)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (172,'VIVIENDA 1ER PISO','DOM',58)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (173,'VIVIENDA 2DO PISO','DOM',58)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (174,'VIVIENDA 3ER PISO','DOM',58)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (175,'VIVIENDA 1ER PISO','DOM',59)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (176,'VIVIENDA 2DO PISO','DOM',59)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (177,'VIVIENDA 3ER PISO','DOM',59)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (178,'VIVIENDA 1ER PISO','DOM',60)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (179,'VIVIENDA 2DO PISO','DOM',60)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (180,'VIVIENDA 3ER PISO','DOM',60)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (181,'VIVIENDA 1ER PISO','DOM',61)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (182,'VIVIENDA 2DO PISO','DOM',61)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (183,'VIVIENDA 3ER PISO','DOM',61)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (184,'VIVIENDA 1ER PISO','DOM',62)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (185,'VIVIENDA 2DO PISO','DOM',62)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (186,'VIVIENDA 3ER PISO','DOM',62)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (187,'VIVIENDA 1ER PISO','DOM',63)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (188,'VIVIENDA 2DO PISO','DOM',63)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (189,'VIVIENDA 3ER PISO','DOM',63)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (190,'VIVIENDA 1ER PISO','DOM',64)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (191,'VIVIENDA 2DO PISO','DOM',64)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (192,'VIVIENDA 3ER PISO','DOM',64)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (193,'VIVIENDA 1ER PISO','DOM',65)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (194,'VIVIENDA 2DO PISO','DOM',65)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (195,'VIVIENDA 3ER PISO','DOM',65)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (196,'VIVIENDA 1ER PISO','DOM',66)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (197,'VIVIENDA 2DO PISO','DOM',66)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (198,'VIVIENDA 3ER PISO','DOM',66)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (199,'VIVIENDA 1ER PISO','DOM',67)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (200,'VIVIENDA 2DO PISO','DOM',67)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (201,'VIVIENDA 3ER PISO','DOM',67)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (202,'VIVIENDA 1ER PISO','DOM',68)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (203,'VIVIENDA 2DO PISO','DOM',68)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (204,'VIVIENDA 3ER PISO','DOM',68)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (205,'VIVIENDA 1ER PISO','DOM',69)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (206,'VIVIENDA 2DO PISO','DOM',69)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (207,'VIVIENDA 3ER PISO','DOM',69)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (208,'VIVIENDA 1ER PISO','DOM',70)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (209,'VIVIENDA 2DO PISO','DOM',70)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (210,'VIVIENDA 3ER PISO','DOM',70)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (211,'VIVIENDA 1ER PISO','DOM',71)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (212,'VIVIENDA 2DO PISO','DOM',71)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (213,'VIVIENDA 3ER PISO','DOM',71)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (214,'VIVIENDA 1ER PISO','DOM',72)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (215,'VIVIENDA 2DO PISO','DOM',72)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (216,'VIVIENDA 3ER PISO','DOM',72)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (217,'VIVIENDA 1ER PISO','DOM',73)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (218,'VIVIENDA 2DO PISO','DOM',73)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (219,'VIVIENDA 3ER PISO','DOM',73)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (220,'VIVIENDA 1ER PISO','DOM',74)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (221,'VIVIENDA 2DO PISO','DOM',74)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (222,'VIVIENDA 3ER PISO','DOM',74)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (223,'VIVIENDA 1ER PISO','DOM',75)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (224,'VIVIENDA 2DO PISO','DOM',75)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (225,'VIVIENDA 3ER PISO','DOM',75)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (226,'VIVIENDA 1ER PISO','DOM',76)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (227,'VIVIENDA 2DO PISO','DOM',76)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (228,'VIVIENDA 3ER PISO','DOM',76)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (229,'VIVIENDA 1ER PISO','DOM',77)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (230,'VIVIENDA 2DO PISO','DOM',77)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (231,'VIVIENDA 3ER PISO','DOM',77)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (232,'VIVIENDA 1ER PISO','DOM',78)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (233,'VIVIENDA 2DO PISO','DOM',78)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (234,'VIVIENDA 3ER PISO','DOM',78)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (235,'VIVIENDA 1ER PISO','DOM',79)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (236,'VIVIENDA 2DO PISO','DOM',79)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (237,'VIVIENDA 3ER PISO','DOM',79)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (238,'VIVIENDA 1ER PISO','DOM',80)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (239,'VIVIENDA 2DO PISO','DOM',80)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (240,'VIVIENDA 3ER PISO','DOM',80)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (241,'VIVIENDA 1ER PISO','DOM',81)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (242,'VIVIENDA 2DO PISO','DOM',81)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (243,'VIVIENDA 3ER PISO','DOM',81)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (244,'VIVIENDA 1ER PISO','DOM',82)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (245,'VIVIENDA 2DO PISO','DOM',82)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (246,'VIVIENDA 3ER PISO','DOM',82)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (247,'VIVIENDA 1ER PISO','DOM',83)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (248,'VIVIENDA 2DO PISO','DOM',83)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (249,'VIVIENDA 3ER PISO','DOM',83)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (250,'VIVIENDA 1ER PISO','DOM',84)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (251,'VIVIENDA 2DO PISO','DOM',84)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (252,'VIVIENDA 3ER PISO','DOM',84)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (253,'VIVIENDA 1ER PISO','DOM',85)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (254,'VIVIENDA 2DO PISO','DOM',85)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (255,'VIVIENDA 3ER PISO','DOM',85)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (256,'VIVIENDA 1ER PISO','DOM',86)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (257,'VIVIENDA 2DO PISO','DOM',86)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (258,'VIVIENDA 3ER PISO','DOM',86)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (259,'VIVIENDA 1ER PISO','DOM',87)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (260,'VIVIENDA 2DO PISO','DOM',87)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (261,'VIVIENDA 3ER PISO','DOM',87)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (262,'VIVIENDA 1ER PISO','DOM',88)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (263,'VIVIENDA 2DO PISO','DOM',88)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (264,'VIVIENDA 3ER PISO','DOM',88)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (265,'VIVIENDA 1ER PISO','DOM',89)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (266,'VIVIENDA 2DO PISO','DOM',89)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (267,'VIVIENDA 3ER PISO','DOM',89)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (268,'VIVIENDA 1ER PISO','DOM',90)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (269,'VIVIENDA 2DO PISO','DOM',90)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (270,'VIVIENDA 3ER PISO','DOM',90)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (271,'VIVIENDA 1ER PISO','DOM',91)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (272,'VIVIENDA 2DO PISO','DOM',91)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (273,'VIVIENDA 3ER PISO','DOM',91)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (274,'VIVIENDA 1ER PISO','DOM',92)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (275,'VIVIENDA 2DO PISO','DOM',92)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (276,'VIVIENDA 3ER PISO','DOM',92)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (277,'VIVIENDA 1ER PISO','DOM',93)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (278,'VIVIENDA 2DO PISO','DOM',93)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (279,'VIVIENDA 3ER PISO','DOM',93)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (280,'VIVIENDA 1ER PISO','DOM',94)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (281,'VIVIENDA 2DO PISO','DOM',94)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (282,'VIVIENDA 3ER PISO','DOM',94)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (283,'VIVIENDA 1ER PISO','DOM',95)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (284,'VIVIENDA 2DO PISO','DOM',95)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (285,'VIVIENDA 3ER PISO','DOM',95)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (286,'VIVIENDA 1ER PISO','DOM',96)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (287,'VIVIENDA 2DO PISO','DOM',96)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (288,'VIVIENDA 3ER PISO','DOM',96)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (289,'VIVIENDA 1ER PISO','DOM',97)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (290,'VIVIENDA 2DO PISO','DOM',97)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (291,'VIVIENDA 3ER PISO','DOM',97)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (292,'VIVIENDA 1ER PISO','DOM',98)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (293,'VIVIENDA 2DO PISO','DOM',98)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (294,'VIVIENDA 3ER PISO','DOM',98)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (295,'VIVIENDA 1ER PISO','DOM',99)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (296,'VIVIENDA 2DO PISO','DOM',99)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (297,'VIVIENDA 3ER PISO','DOM',99)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (298,'VIVIENDA 1ER PISO','DOM',100)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (299,'VIVIENDA 2DO PISO','DOM',100)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (300,'VIVIENDA 3ER PISO','DOM',100)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (301,'VIVIENDA 1ER PISO','DOM',101)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (302,'VIVIENDA 2DO PISO','DOM',101)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (303,'VIVIENDA 3ER PISO','DOM',101)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (304,'VIVIENDA 1ER PISO','DOM',102)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (305,'VIVIENDA 2DO PISO','DOM',102)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (306,'VIVIENDA 3ER PISO','DOM',102)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (307,'VIVIENDA 1ER PISO','DOM',103)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (308,'VIVIENDA 2DO PISO','DOM',103)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (309,'VIVIENDA 3ER PISO','DOM',103)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (310,'VIVIENDA 1ER PISO','DOM',104)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (311,'VIVIENDA 2DO PISO','DOM',104)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (312,'VIVIENDA 3ER PISO','DOM',104)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (313,'VIVIENDA 1ER PISO','DOM',105)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (314,'VIVIENDA 2DO PISO','DOM',105)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (315,'VIVIENDA 3ER PISO','DOM',105)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (316,'VIVIENDA 1ER PISO','DOM',106)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (317,'VIVIENDA 2DO PISO','DOM',106)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (318,'VIVIENDA 3ER PISO','DOM',106)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (319,'VIVIENDA 1ER PISO','DOM',107)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (320,'VIVIENDA 2DO PISO','DOM',107)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (321,'VIVIENDA 3ER PISO','DOM',107)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (322,'VIVIENDA 1ER PISO','DOM',108)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (323,'VIVIENDA 2DO PISO','DOM',108)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (324,'VIVIENDA 3ER PISO','DOM',108)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (325,'VIVIENDA 1ER PISO','DOM',109)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (326,'VIVIENDA 2DO PISO','DOM',109)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (327,'VIVIENDA 3ER PISO','DOM',109)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (328,'VIVIENDA 1ER PISO','DOM',110)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (329,'VIVIENDA 2DO PISO','DOM',110)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (330,'VIVIENDA 3ER PISO','DOM',110)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (331,'VIVIENDA 1ER PISO','DOM',111)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (332,'VIVIENDA 2DO PISO','DOM',111)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (333,'VIVIENDA 3ER PISO','DOM',111)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (334,'VIVIENDA 1ER PISO','DOM',112)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (335,'VIVIENDA 2DO PISO','DOM',112)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (336,'VIVIENDA 3ER PISO','DOM',112)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (337,'VIVIENDA 1ER PISO','DOM',113)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (338,'VIVIENDA 2DO PISO','DOM',113)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (339,'VIVIENDA 3ER PISO','DOM',113)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (340,'VIVIENDA 1ER PISO','DOM',114)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (341,'VIVIENDA 2DO PISO','DOM',114)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (342,'VIVIENDA 3ER PISO','DOM',114)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (343,'VIVIENDA 1ER PISO','DOM',115)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (344,'VIVIENDA 2DO PISO','DOM',115)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (345,'VIVIENDA 3ER PISO','DOM',115)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (346,'VIVIENDA 1ER PISO','DOM',116)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (347,'VIVIENDA 2DO PISO','DOM',116)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (348,'VIVIENDA 3ER PISO','DOM',116)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (349,'VIVIENDA 1ER PISO','DOM',117)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (350,'VIVIENDA 2DO PISO','DOM',117)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (351,'VIVIENDA 3ER PISO','DOM',117)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (352,'VIVIENDA 1ER PISO','DOM',118)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (353,'VIVIENDA 2DO PISO','DOM',118)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (354,'VIVIENDA 3ER PISO','DOM',118)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (355,'VIVIENDA 1ER PISO','DOM',119)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (356,'VIVIENDA 2DO PISO','DOM',119)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (357,'VIVIENDA 3ER PISO','DOM',119)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (358,'VIVIENDA 1ER PISO','DOM',120)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (359,'VIVIENDA 2DO PISO','DOM',120)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (360,'VIVIENDA 3ER PISO','DOM',120)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (361,'VIVIENDA 1ER PISO','DOM',121)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (362,'VIVIENDA 2DO PISO','DOM',121)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (363,'VIVIENDA 3ER PISO','DOM',121)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (364,'VIVIENDA 1ER PISO','DOM',122)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (365,'VIVIENDA 2DO PISO','DOM',122)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (366,'VIVIENDA 3ER PISO','DOM',122)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (367,'VIVIENDA 1ER PISO','DOM',123)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (368,'VIVIENDA 2DO PISO','DOM',123)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (369,'VIVIENDA 3ER PISO','DOM',123)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (370,'VIVIENDA 1ER PISO','DOM',124)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (371,'VIVIENDA 2DO PISO','DOM',124)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (372,'VIVIENDA 3ER PISO','DOM',124)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (373,'VIVIENDA 1ER PISO','DOM',125)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (374,'VIVIENDA 2DO PISO','DOM',125)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (375,'VIVIENDA 3ER PISO','DOM',125)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (376,'VIVIENDA 1ER PISO','DOM',126)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (377,'VIVIENDA 2DO PISO','DOM',126)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (378,'VIVIENDA 3ER PISO','DOM',126)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (379,'VIVIENDA 1ER PISO','DOM',127)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (380,'VIVIENDA 2DO PISO','DOM',127)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (381,'VIVIENDA 3ER PISO','DOM',127)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (382,'VIVIENDA 1ER PISO','DOM',128)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (383,'VIVIENDA 2DO PISO','DOM',128)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (384,'VIVIENDA 3ER PISO','DOM',128)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (385,'VIVIENDA 1ER PISO','DOM',129)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (386,'VIVIENDA 2DO PISO','DOM',129)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (387,'VIVIENDA 3ER PISO','DOM',129)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (388,'VIVIENDA 1ER PISO','DOM',130)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (389,'VIVIENDA 2DO PISO','DOM',130)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (390,'VIVIENDA 3ER PISO','DOM',130)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (391,'VIVIENDA 1ER PISO','DOM',131)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (392,'VIVIENDA 2DO PISO','DOM',131)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (393,'VIVIENDA 3ER PISO','DOM',131)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (394,'VIVIENDA 1ER PISO','DOM',132)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (395,'VIVIENDA 2DO PISO','DOM',132)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (396,'VIVIENDA 3ER PISO','DOM',132)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (397,'VIVIENDA 1ER PISO','DOM',133)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (398,'VIVIENDA 2DO PISO','DOM',133)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (399,'VIVIENDA 3ER PISO','DOM',133)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (400,'VIVIENDA 1ER PISO','DOM',134)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (401,'VIVIENDA 2DO PISO','DOM',134)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (402,'VIVIENDA 3ER PISO','DOM',134)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (403,'VIVIENDA 1ER PISO','DOM',135)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (404,'VIVIENDA 2DO PISO','DOM',135)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (405,'VIVIENDA 3ER PISO','DOM',135)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (406,'VIVIENDA 1ER PISO','DOM',136)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (407,'VIVIENDA 2DO PISO','DOM',136)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (408,'VIVIENDA 3ER PISO','DOM',136)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (409,'VIVIENDA 1ER PISO','DOM',137)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (410,'VIVIENDA 2DO PISO','DOM',137)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (411,'VIVIENDA 3ER PISO','DOM',137)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (412,'VIVIENDA 1ER PISO','DOM',138)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (413,'VIVIENDA 2DO PISO','DOM',138)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (414,'VIVIENDA 3ER PISO','DOM',138)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (415,'VIVIENDA 1ER PISO','DOM',139)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (416,'VIVIENDA 2DO PISO','DOM',139)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (417,'VIVIENDA 3ER PISO','DOM',139)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (418,'VIVIENDA 1ER PISO','DOM',140)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (419,'VIVIENDA 2DO PISO','DOM',140)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (420,'VIVIENDA 3ER PISO','DOM',140)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (421,'VIVIENDA 1ER PISO','DOM',141)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (422,'VIVIENDA 2DO PISO','DOM',141)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (423,'VIVIENDA 3ER PISO','DOM',141)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (424,'VIVIENDA 1ER PISO','DOM',142)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (425,'VIVIENDA 2DO PISO','DOM',142)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (426,'VIVIENDA 3ER PISO','DOM',142)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (427,'VIVIENDA 1ER PISO','DOM',143)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (428,'VIVIENDA 2DO PISO','DOM',143)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (429,'VIVIENDA 3ER PISO','DOM',143)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (430,'VIVIENDA 1ER PISO','DOM',144)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (431,'VIVIENDA 2DO PISO','DOM',144)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (432,'VIVIENDA 3ER PISO','DOM',144)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (433,'VIVIENDA 1ER PISO','DOM',145)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (434,'VIVIENDA 2DO PISO','DOM',145)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (435,'VIVIENDA 3ER PISO','DOM',145)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (436,'VIVIENDA 1ER PISO','DOM',146)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (437,'VIVIENDA 2DO PISO','DOM',146)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (438,'VIVIENDA 3ER PISO','DOM',146)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (439,'VIVIENDA 1ER PISO','DOM',147)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (440,'VIVIENDA 2DO PISO','DOM',147)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (441,'VIVIENDA 3ER PISO','DOM',147)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (442,'VIVIENDA 1ER PISO','DOM',148)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (443,'VIVIENDA 2DO PISO','DOM',148)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (444,'VIVIENDA 3ER PISO','DOM',148)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (445,'VIVIENDA 1ER PISO','DOM',149)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (446,'VIVIENDA 2DO PISO','DOM',149)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (447,'VIVIENDA 3ER PISO','DOM',149)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (448,'VIVIENDA 1ER PISO','DOM',150)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (449,'VIVIENDA 2DO PISO','DOM',150)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (450,'VIVIENDA 3ER PISO','DOM',150)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (451,'VIVIENDA 1ER PISO','DOM',151)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (452,'VIVIENDA 2DO PISO','DOM',151)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (453,'VIVIENDA 3ER PISO','DOM',151)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (454,'VIVIENDA 1ER PISO','DOM',152)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (455,'VIVIENDA 2DO PISO','DOM',152)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (456,'VIVIENDA 3ER PISO','DOM',152)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (457,'VIVIENDA 1ER PISO','DOM',153)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (458,'VIVIENDA 2DO PISO','DOM',153)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (459,'VIVIENDA 3ER PISO','DOM',153)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (460,'VIVIENDA 1ER PISO','DOM',154)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (461,'VIVIENDA 2DO PISO','DOM',154)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (462,'VIVIENDA 3ER PISO','DOM',154)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (463,'VIVIENDA 1ER PISO','DOM',155)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (464,'VIVIENDA 2DO PISO','DOM',155)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (465,'VIVIENDA 3ER PISO','DOM',155)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (466,'VIVIENDA 1ER PISO','DOM',156)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (467,'VIVIENDA 2DO PISO','DOM',156)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (468,'VIVIENDA 3ER PISO','DOM',156)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (469,'VIVIENDA 1ER PISO','DOM',157)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (470,'VIVIENDA 2DO PISO','DOM',157)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (471,'VIVIENDA 3ER PISO','DOM',157)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (472,'VIVIENDA 1ER PISO','DOM',158)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (473,'VIVIENDA 2DO PISO','DOM',158)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (474,'VIVIENDA 3ER PISO','DOM',158)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (475,'VIVIENDA 1ER PISO','DOM',159)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (476,'VIVIENDA 2DO PISO','DOM',159)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (477,'VIVIENDA 3ER PISO','DOM',159)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (478,'VIVIENDA 1ER PISO','DOM',160)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (479,'VIVIENDA 2DO PISO','DOM',160)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (480,'VIVIENDA 3ER PISO','DOM',160)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (481,'VIVIENDA 1ER PISO','DOM',161)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (482,'VIVIENDA 2DO PISO','DOM',161)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (483,'VIVIENDA 3ER PISO','DOM',161)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (484,'VIVIENDA 1ER PISO','DOM',162)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (485,'VIVIENDA 2DO PISO','DOM',162)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (486,'VIVIENDA 3ER PISO','DOM',162)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (487,'VIVIENDA 1ER PISO','DOM',163)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (488,'VIVIENDA 2DO PISO','DOM',163)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (489,'VIVIENDA 3ER PISO','DOM',163)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (490,'VIVIENDA 1ER PISO','DOM',164)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (491,'VIVIENDA 2DO PISO','DOM',164)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (492,'VIVIENDA 3ER PISO','DOM',164)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (493,'VIVIENDA 1ER PISO','DOM',165)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (494,'VIVIENDA 2DO PISO','DOM',165)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (495,'VIVIENDA 3ER PISO','DOM',165)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (496,'VIVIENDA 1ER PISO','DOM',166)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (497,'VIVIENDA 2DO PISO','DOM',166)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (498,'VIVIENDA 3ER PISO','DOM',166)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (499,'VIVIENDA 1ER PISO','DOM',167)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (500,'VIVIENDA 2DO PISO','DOM',167)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (501,'VIVIENDA 3ER PISO','DOM',167)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (502,'VIVIENDA 1ER PISO','DOM',168)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (503,'VIVIENDA 2DO PISO','DOM',168)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (504,'VIVIENDA 3ER PISO','DOM',168)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (505,'VIVIENDA 1ER PISO','DOM',169)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (506,'VIVIENDA 2DO PISO','DOM',169)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (507,'VIVIENDA 3ER PISO','DOM',169)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (508,'VIVIENDA 1ER PISO','DOM',170)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (509,'VIVIENDA 2DO PISO','DOM',170)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (510,'VIVIENDA 3ER PISO','DOM',170)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (511,'VIVIENDA 1ER PISO','DOM',171)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (512,'VIVIENDA 2DO PISO','DOM',171)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (513,'VIVIENDA 3ER PISO','DOM',171)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (514,'VIVIENDA 1ER PISO','DOM',172)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (515,'VIVIENDA 2DO PISO','DOM',172)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (516,'VIVIENDA 3ER PISO','DOM',172)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (517,'VIVIENDA 1ER PISO','DOM',173)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (518,'VIVIENDA 2DO PISO','DOM',173)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (519,'VIVIENDA 3ER PISO','DOM',173)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (520,'VIVIENDA 1ER PISO','DOM',174)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (521,'VIVIENDA 2DO PISO','DOM',174)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (522,'VIVIENDA 3ER PISO','DOM',174)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (523,'VIVIENDA 1ER PISO','DOM',175)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (524,'VIVIENDA 2DO PISO','DOM',175)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (525,'VIVIENDA 3ER PISO','DOM',175)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (526,'VIVIENDA 1ER PISO','DOM',176)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (527,'VIVIENDA 2DO PISO','DOM',176)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (528,'VIVIENDA 3ER PISO','DOM',176)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (529,'VIVIENDA 1ER PISO','DOM',177)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (530,'VIVIENDA 2DO PISO','DOM',177)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (531,'VIVIENDA 3ER PISO','DOM',177)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (532,'VIVIENDA 1ER PISO','DOM',178)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (533,'VIVIENDA 2DO PISO','DOM',178)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (534,'VIVIENDA 3ER PISO','DOM',178)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (535,'VIVIENDA 1ER PISO','DOM',179)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (536,'VIVIENDA 2DO PISO','DOM',179)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (537,'VIVIENDA 3ER PISO','DOM',179)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (538,'VIVIENDA 1ER PISO','DOM',180)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (539,'VIVIENDA 2DO PISO','DOM',180)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (540,'VIVIENDA 3ER PISO','DOM',180)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (541,'VIVIENDA 1ER PISO','DOM',181)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (542,'VIVIENDA 2DO PISO','DOM',181)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (543,'VIVIENDA 3ER PISO','DOM',181)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (544,'VIVIENDA 1ER PISO','DOM',182)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (545,'VIVIENDA 2DO PISO','DOM',182)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (546,'VIVIENDA 3ER PISO','DOM',182)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (547,'VIVIENDA 1ER PISO','DOM',183)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (548,'VIVIENDA 2DO PISO','DOM',183)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (549,'VIVIENDA 3ER PISO','DOM',183)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (550,'VIVIENDA 1ER PISO','DOM',184)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (551,'VIVIENDA 2DO PISO','DOM',184)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (552,'VIVIENDA 3ER PISO','DOM',184)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (553,'VIVIENDA 1ER PISO','DOM',185)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (554,'VIVIENDA 2DO PISO','DOM',185)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (555,'VIVIENDA 3ER PISO','DOM',185)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (556,'VIVIENDA 1ER PISO','DOM',186)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (557,'VIVIENDA 2DO PISO','DOM',186)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (558,'VIVIENDA 3ER PISO','DOM',186)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (559,'VIVIENDA 1ER PISO','DOM',187)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (560,'VIVIENDA 2DO PISO','DOM',187)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (561,'VIVIENDA 3ER PISO','DOM',187)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (562,'VIVIENDA 1ER PISO','DOM',188)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (563,'VIVIENDA 2DO PISO','DOM',188)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (564,'VIVIENDA 3ER PISO','DOM',188)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (565,'VIVIENDA 1ER PISO','DOM',189)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (566,'VIVIENDA 2DO PISO','DOM',189)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (567,'VIVIENDA 3ER PISO','DOM',189)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (568,'VIVIENDA 1ER PISO','DOM',190)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (569,'VIVIENDA 2DO PISO','DOM',190)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (570,'VIVIENDA 3ER PISO','DOM',190)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (571,'VIVIENDA 1ER PISO','DOM',191)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (572,'VIVIENDA 2DO PISO','DOM',191)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (573,'VIVIENDA 3ER PISO','DOM',191)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (574,'VIVIENDA 1ER PISO','DOM',192)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (575,'VIVIENDA 2DO PISO','DOM',192)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (576,'VIVIENDA 3ER PISO','DOM',192)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (577,'VIVIENDA 1ER PISO','DOM',193)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (578,'VIVIENDA 2DO PISO','DOM',193)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (579,'VIVIENDA 3ER PISO','DOM',193)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (580,'VIVIENDA 1ER PISO','DOM',194)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (581,'VIVIENDA 2DO PISO','DOM',194)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (582,'VIVIENDA 3ER PISO','DOM',194)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (583,'VIVIENDA 1ER PISO','DOM',195)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (584,'VIVIENDA 2DO PISO','DOM',195)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (585,'VIVIENDA 3ER PISO','DOM',195)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (586,'VIVIENDA 1ER PISO','DOM',196)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (587,'VIVIENDA 2DO PISO','DOM',196)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (588,'VIVIENDA 3ER PISO','DOM',196)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (589,'VIVIENDA 1ER PISO','DOM',197)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (590,'VIVIENDA 2DO PISO','DOM',197)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (591,'VIVIENDA 3ER PISO','DOM',197)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (592,'VIVIENDA 1ER PISO','DOM',198)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (593,'VIVIENDA 2DO PISO','DOM',198)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (594,'VIVIENDA 3ER PISO','DOM',198)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (595,'VIVIENDA 1ER PISO','DOM',199)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (596,'VIVIENDA 2DO PISO','DOM',199)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (597,'VIVIENDA 3ER PISO','DOM',199)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (598,'VIVIENDA 1ER PISO','DOM',200)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (599,'VIVIENDA 2DO PISO','DOM',200)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (600,'VIVIENDA 3ER PISO','DOM',200)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (601,'VIVIENDA 1ER PISO','DOM',201)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (602,'VIVIENDA 2DO PISO','DOM',201)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (603,'VIVIENDA 3ER PISO','DOM',201)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (604,'VIVIENDA 1ER PISO','DOM',202)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (605,'VIVIENDA 2DO PISO','DOM',202)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (606,'VIVIENDA 3ER PISO','DOM',202)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (607,'VIVIENDA 1ER PISO','DOM',203)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (608,'VIVIENDA 2DO PISO','DOM',203)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (609,'VIVIENDA 3ER PISO','DOM',203)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (610,'VIVIENDA 1ER PISO','DOM',204)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (611,'VIVIENDA 2DO PISO','DOM',204)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (612,'VIVIENDA 3ER PISO','DOM',204)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (613,'VIVIENDA 1ER PISO','DOM',205)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (614,'VIVIENDA 2DO PISO','DOM',205)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (615,'VIVIENDA 3ER PISO','DOM',205)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (616,'VIVIENDA 1ER PISO','DOM',206)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (617,'VIVIENDA 2DO PISO','DOM',206)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (618,'VIVIENDA 3ER PISO','DOM',206)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (619,'VIVIENDA 1ER PISO','DOM',207)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (620,'VIVIENDA 2DO PISO','DOM',207)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (621,'VIVIENDA 3ER PISO','DOM',207)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (622,'VIVIENDA 1ER PISO','DOM',208)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (623,'VIVIENDA 2DO PISO','DOM',208)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (624,'VIVIENDA 3ER PISO','DOM',208)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (625,'VIVIENDA 1ER PISO','DOM',209)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (626,'VIVIENDA 2DO PISO','DOM',209)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (627,'VIVIENDA 3ER PISO','DOM',209)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (628,'VIVIENDA 1ER PISO','DOM',210)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (629,'VIVIENDA 2DO PISO','DOM',210)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (630,'VIVIENDA 3ER PISO','DOM',210)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (631,'VIVIENDA 1ER PISO','DOM',211)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (632,'VIVIENDA 2DO PISO','DOM',211)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (633,'VIVIENDA 3ER PISO','DOM',211)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (634,'VIVIENDA 1ER PISO','DOM',212)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (635,'VIVIENDA 2DO PISO','DOM',212)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (636,'VIVIENDA 3ER PISO','DOM',212)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (637,'VIVIENDA 1ER PISO','DOM',213)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (638,'VIVIENDA 2DO PISO','DOM',213)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (639,'VIVIENDA 3ER PISO','DOM',213)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (640,'VIVIENDA 1ER PISO','DOM',214)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (641,'VIVIENDA 2DO PISO','DOM',214)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (642,'VIVIENDA 3ER PISO','DOM',214)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (643,'VIVIENDA 1ER PISO','DOM',215)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (644,'VIVIENDA 2DO PISO','DOM',215)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (645,'VIVIENDA 3ER PISO','DOM',215)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (646,'VIVIENDA 1ER PISO','DOM',216)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (647,'VIVIENDA 2DO PISO','DOM',216)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (648,'VIVIENDA 3ER PISO','DOM',216)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (649,'VIVIENDA 1ER PISO','DOM',217)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (650,'VIVIENDA 2DO PISO','DOM',217)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (651,'VIVIENDA 3ER PISO','DOM',217)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (652,'VIVIENDA 1ER PISO','DOM',218)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (653,'VIVIENDA 2DO PISO','DOM',218)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (654,'VIVIENDA 3ER PISO','DOM',218)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (655,'VIVIENDA 1ER PISO','DOM',219)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (656,'VIVIENDA 2DO PISO','DOM',219)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (657,'VIVIENDA 3ER PISO','DOM',219)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (658,'VIVIENDA 1ER PISO','DOM',220)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (659,'VIVIENDA 2DO PISO','DOM',220)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (660,'VIVIENDA 3ER PISO','DOM',220)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (661,'VIVIENDA 1ER PISO','DOM',221)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (662,'VIVIENDA 2DO PISO','DOM',221)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (663,'VIVIENDA 3ER PISO','DOM',221)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (664,'VIVIENDA 1ER PISO','DOM',222)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (665,'VIVIENDA 2DO PISO','DOM',222)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (666,'VIVIENDA 3ER PISO','DOM',222)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (667,'VIVIENDA 1ER PISO','DOM',223)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (668,'VIVIENDA 2DO PISO','DOM',223)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (669,'VIVIENDA 3ER PISO','DOM',223)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (670,'VIVIENDA 1ER PISO','DOM',224)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (671,'VIVIENDA 2DO PISO','DOM',224)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (672,'VIVIENDA 3ER PISO','DOM',224)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (673,'VIVIENDA 1ER PISO','DOM',225)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (674,'VIVIENDA 2DO PISO','DOM',225)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (675,'VIVIENDA 3ER PISO','DOM',225)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (676,'VIVIENDA 1ER PISO','DOM',226)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (677,'VIVIENDA 2DO PISO','DOM',226)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (678,'VIVIENDA 3ER PISO','DOM',226)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (679,'VIVIENDA 1ER PISO','DOM',227)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (680,'VIVIENDA 2DO PISO','DOM',227)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (681,'VIVIENDA 3ER PISO','DOM',227)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (682,'VIVIENDA 1ER PISO','DOM',228)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (683,'VIVIENDA 2DO PISO','DOM',228)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (684,'VIVIENDA 3ER PISO','DOM',228)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (685,'VIVIENDA 1ER PISO','DOM',229)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (686,'VIVIENDA 2DO PISO','DOM',229)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (687,'VIVIENDA 3ER PISO','DOM',229)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (688,'VIVIENDA 1ER PISO','DOM',230)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (689,'VIVIENDA 2DO PISO','DOM',230)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (690,'VIVIENDA 3ER PISO','DOM',230)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (691,'VIVIENDA 1ER PISO','DOM',231)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (692,'VIVIENDA 2DO PISO','DOM',231)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (693,'VIVIENDA 3ER PISO','DOM',231)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (694,'VIVIENDA 1ER PISO','DOM',232)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (695,'VIVIENDA 2DO PISO','DOM',232)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (696,'VIVIENDA 3ER PISO','DOM',232)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (697,'VIVIENDA 1ER PISO','DOM',233)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (698,'VIVIENDA 2DO PISO','DOM',233)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (699,'VIVIENDA 3ER PISO','DOM',233)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (700,'VIVIENDA 1ER PISO','DOM',234)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (701,'VIVIENDA 2DO PISO','DOM',234)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (702,'VIVIENDA 3ER PISO','DOM',234)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (703,'VIVIENDA 1ER PISO','DOM',235)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (704,'VIVIENDA 2DO PISO','DOM',235)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (705,'VIVIENDA 3ER PISO','DOM',235)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (706,'VIVIENDA 1ER PISO','DOM',236)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (707,'VIVIENDA 2DO PISO','DOM',236)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (708,'VIVIENDA 3ER PISO','DOM',236)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (709,'VIVIENDA 1ER PISO','DOM',237)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (710,'VIVIENDA 2DO PISO','DOM',237)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (711,'VIVIENDA 3ER PISO','DOM',237)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (712,'VIVIENDA 1ER PISO','DOM',238)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (713,'VIVIENDA 2DO PISO','DOM',238)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (714,'VIVIENDA 3ER PISO','DOM',238)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (715,'VIVIENDA 1ER PISO','DOM',239)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (716,'VIVIENDA 2DO PISO','DOM',239)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (717,'VIVIENDA 3ER PISO','DOM',239)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (718,'VIVIENDA 1ER PISO','DOM',240)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (719,'VIVIENDA 2DO PISO','DOM',240)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (720,'VIVIENDA 3ER PISO','DOM',240)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (721,'VIVIENDA 1ER PISO','DOM',241)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (722,'VIVIENDA 2DO PISO','DOM',241)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (723,'VIVIENDA 3ER PISO','DOM',241)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (724,'VIVIENDA 1ER PISO','DOM',242)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (725,'VIVIENDA 2DO PISO','DOM',242)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (726,'VIVIENDA 3ER PISO','DOM',242)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (727,'VIVIENDA 1ER PISO','DOM',243)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (728,'VIVIENDA 2DO PISO','DOM',243)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (729,'VIVIENDA 3ER PISO','DOM',243)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (730,'VIVIENDA 1ER PISO','DOM',244)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (731,'VIVIENDA 2DO PISO','DOM',244)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (732,'VIVIENDA 3ER PISO','DOM',244)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (733,'VIVIENDA 1ER PISO','DOM',245)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (734,'VIVIENDA 2DO PISO','DOM',245)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (735,'VIVIENDA 3ER PISO','DOM',245)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (736,'VIVIENDA 1ER PISO','DOM',246)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (737,'VIVIENDA 2DO PISO','DOM',246)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (738,'VIVIENDA 3ER PISO','DOM',246)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (739,'VIVIENDA 1ER PISO','DOM',247)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (740,'VIVIENDA 2DO PISO','DOM',247)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (741,'VIVIENDA 3ER PISO','DOM',247)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (742,'VIVIENDA 1ER PISO','DOM',248)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (743,'VIVIENDA 2DO PISO','DOM',248)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (744,'VIVIENDA 3ER PISO','DOM',248)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (745,'VIVIENDA 1ER PISO','DOM',249)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (746,'VIVIENDA 2DO PISO','DOM',249)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (747,'VIVIENDA 3ER PISO','DOM',249)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (748,'VIVIENDA 1ER PISO','DOM',250)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (749,'VIVIENDA 2DO PISO','DOM',250)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (750,'VIVIENDA 3ER PISO','DOM',250)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (751,'VIVIENDA 1ER PISO','DOM',251)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (752,'VIVIENDA 2DO PISO','DOM',251)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (753,'VIVIENDA 3ER PISO','DOM',251)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (754,'VIVIENDA 1ER PISO','DOM',252)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (755,'VIVIENDA 2DO PISO','DOM',252)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (756,'VIVIENDA 3ER PISO','DOM',252)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (757,'VIVIENDA 1ER PISO','DOM',253)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (758,'VIVIENDA 2DO PISO','DOM',253)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (759,'VIVIENDA 3ER PISO','DOM',253)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (760,'VIVIENDA 1ER PISO','DOM',254)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (761,'VIVIENDA 2DO PISO','DOM',254)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (762,'VIVIENDA 3ER PISO','DOM',254)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (763,'VIVIENDA 1ER PISO','DOM',255)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (764,'VIVIENDA 2DO PISO','DOM',255)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (765,'VIVIENDA 3ER PISO','DOM',255)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (766,'VIVIENDA 1ER PISO','DOM',256)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (767,'VIVIENDA 2DO PISO','DOM',256)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (768,'VIVIENDA 3ER PISO','DOM',256)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (769,'VIVIENDA 1ER PISO','DOM',257)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (770,'VIVIENDA 2DO PISO','DOM',257)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (771,'VIVIENDA 3ER PISO','DOM',257)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (772,'VIVIENDA 1ER PISO','DOM',258)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (773,'VIVIENDA 2DO PISO','DOM',258)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (774,'VIVIENDA 3ER PISO','DOM',258)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (775,'VIVIENDA 1ER PISO','DOM',259)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (776,'VIVIENDA 2DO PISO','DOM',259)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (777,'VIVIENDA 3ER PISO','DOM',259)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (778,'VIVIENDA 1ER PISO','DOM',260)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (779,'VIVIENDA 2DO PISO','DOM',260)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (780,'VIVIENDA 3ER PISO','DOM',260)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (781,'VIVIENDA 1ER PISO','DOM',261)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (782,'VIVIENDA 2DO PISO','DOM',261)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (783,'VIVIENDA 3ER PISO','DOM',261)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (784,'VIVIENDA 1ER PISO','DOM',262)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (785,'VIVIENDA 2DO PISO','DOM',262)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (786,'VIVIENDA 3ER PISO','DOM',262)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (787,'VIVIENDA 1ER PISO','DOM',263)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (788,'VIVIENDA 2DO PISO','DOM',263)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (789,'VIVIENDA 3ER PISO','DOM',263)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (790,'VIVIENDA 1ER PISO','DOM',264)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (791,'VIVIENDA 2DO PISO','DOM',264)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (792,'VIVIENDA 3ER PISO','DOM',264)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (793,'VIVIENDA 1ER PISO','DOM',265)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (794,'VIVIENDA 2DO PISO','DOM',265)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (795,'VIVIENDA 3ER PISO','DOM',265)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (796,'VIVIENDA 1ER PISO','DOM',266)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (797,'VIVIENDA 2DO PISO','DOM',266)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (798,'VIVIENDA 3ER PISO','DOM',266)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (799,'VIVIENDA 1ER PISO','DOM',267)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (800,'VIVIENDA 2DO PISO','DOM',267)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (801,'VIVIENDA 3ER PISO','DOM',267)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (802,'VIVIENDA 1ER PISO','DOM',268)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (803,'VIVIENDA 2DO PISO','DOM',268)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (804,'VIVIENDA 3ER PISO','DOM',268)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (805,'VIVIENDA 1ER PISO','DOM',269)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (806,'VIVIENDA 2DO PISO','DOM',269)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (807,'VIVIENDA 3ER PISO','DOM',269)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (808,'VIVIENDA 1ER PISO','DOM',270)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (809,'VIVIENDA 2DO PISO','DOM',270)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (810,'VIVIENDA 3ER PISO','DOM',270)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (811,'VIVIENDA 1ER PISO','DOM',271)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (812,'VIVIENDA 2DO PISO','DOM',271)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (813,'VIVIENDA 3ER PISO','DOM',271)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (814,'VIVIENDA 1ER PISO','DOM',272)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (815,'VIVIENDA 2DO PISO','DOM',272)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (816,'VIVIENDA 3ER PISO','DOM',272)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (817,'VIVIENDA 1ER PISO','DOM',273)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (818,'VIVIENDA 2DO PISO','DOM',273)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (819,'VIVIENDA 3ER PISO','DOM',273)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (820,'VIVIENDA 1ER PISO','DOM',274)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (821,'VIVIENDA 2DO PISO','DOM',274)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (822,'VIVIENDA 3ER PISO','DOM',274)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (823,'VIVIENDA 1ER PISO','DOM',275)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (824,'VIVIENDA 2DO PISO','DOM',275)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (825,'VIVIENDA 3ER PISO','DOM',275)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (826,'VIVIENDA 1ER PISO','DOM',276)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (827,'VIVIENDA 2DO PISO','DOM',276)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (828,'VIVIENDA 3ER PISO','DOM',276)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (829,'VIVIENDA 1ER PISO','DOM',277)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (830,'VIVIENDA 2DO PISO','DOM',277)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (831,'VIVIENDA 3ER PISO','DOM',277)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (832,'VIVIENDA 1ER PISO','DOM',278)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (833,'VIVIENDA 2DO PISO','DOM',278)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (834,'VIVIENDA 3ER PISO','DOM',278)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (835,'VIVIENDA 1ER PISO','DOM',279)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (836,'VIVIENDA 2DO PISO','DOM',279)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (837,'VIVIENDA 3ER PISO','DOM',279)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (838,'COMERCIAL 1ER PISO','COM',280)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (839,'VIVIENDA 2DO PISO','DOM',280)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (840,'VIVIENDA 3ER PISO','DOM',280)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (841,'COMERCIAL 1ER PISO','COM',281)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (842,'VIVIENDA 2DO PISO','DOM',281)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (843,'VIVIENDA 3ER PISO','DOM',281)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (844,'COMERCIAL 1ER PISO','COM',282)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (845,'VIVIENDA 2DO PISO','DOM',282)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (846,'VIVIENDA 3ER PISO','DOM',282)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (847,'COMERCIAL 1ER PISO','COM',283)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (848,'VIVIENDA 2DO PISO','DOM',283)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (849,'VIVIENDA 3ER PISO','DOM',283)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (850,'COMERCIAL 1ER PISO','COM',284)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (851,'VIVIENDA 2DO PISO','DOM',284)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (852,'VIVIENDA 3ER PISO','DOM',284)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (853,'COMERCIAL 1ER PISO','COM',285)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (854,'VIVIENDA 2DO PISO','DOM',285)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (855,'VIVIENDA 3ER PISO','DOM',285)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (856,'COMERCIAL 1ER PISO','COM',286)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (857,'VIVIENDA 2DO PISO','DOM',286)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (858,'VIVIENDA 3ER PISO','DOM',286)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (859,'COMERCIAL 1ER PISO','COM',287)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (860,'VIVIENDA 2DO PISO','DOM',287)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (861,'VIVIENDA 3ER PISO','DOM',287)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (862,'COMERCIAL 1ER PISO','COM',288)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (863,'VIVIENDA 2DO PISO','DOM',288)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (864,'VIVIENDA 3ER PISO','DOM',288)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (865,'COMERCIAL 1ER PISO','COM',289)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (866,'VIVIENDA 2DO PISO','DOM',289)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (867,'VIVIENDA 3ER PISO','DOM',289)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (868,'COMERCIAL 1ER PISO','COM',290)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (869,'VIVIENDA 2DO PISO','DOM',290)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (870,'VIVIENDA 3ER PISO','DOM',290)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (871,'COMERCIAL 1ER PISO','COM',291)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (872,'VIVIENDA 2DO PISO','DOM',291)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (873,'VIVIENDA 3ER PISO','DOM',291)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (874,'COMERCIAL 1ER PISO','COM',292)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (875,'VIVIENDA 2DO PISO','DOM',292)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (876,'VIVIENDA 3ER PISO','DOM',292)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (877,'COMERCIAL 1ER PISO','COM',293)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (878,'VIVIENDA 2DO PISO','DOM',293)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (879,'VIVIENDA 3ER PISO','DOM',293)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (880,'COMERCIAL 1ER PISO','COM',294)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (881,'VIVIENDA 2DO PISO','DOM',294)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (882,'VIVIENDA 3ER PISO','DOM',294)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (883,'COMERCIAL 1ER PISO','COM',295)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (884,'VIVIENDA 2DO PISO','DOM',295)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (885,'VIVIENDA 3ER PISO','DOM',295)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (886,'COMERCIAL 1ER PISO','COM',296)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (887,'VIVIENDA 2DO PISO','DOM',296)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (888,'VIVIENDA 3ER PISO','DOM',296)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (889,'COMERCIAL 1ER PISO','COM',297)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (890,'VIVIENDA 2DO PISO','DOM',297)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (891,'VIVIENDA 3ER PISO','DOM',297)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (892,'COMERCIAL 1ER PISO','COM',298)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (893,'VIVIENDA 2DO PISO','DOM',298)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (894,'VIVIENDA 3ER PISO','DOM',298)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (895,'COMERCIAL 1ER PISO','COM',299)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (896,'VIVIENDA 2DO PISO','DOM',299)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (897,'VIVIENDA 3ER PISO','DOM',299)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (898,'COMERCIAL 1ER PISO','COM',300)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (899,'VIVIENDA 2DO PISO','DOM',300)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (900,'VIVIENDA 3ER PISO','DOM',300)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (901,'COMERCIAL 1ER PISO','COM',301)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (902,'VIVIENDA 2DO PISO','DOM',301)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (903,'VIVIENDA 3ER PISO','DOM',301)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (904,'COMERCIAL 1ER PISO','COM',302)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (905,'VIVIENDA 2DO PISO','DOM',302)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (906,'VIVIENDA 3ER PISO','DOM',302)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (907,'COMERCIAL 1ER PISO','COM',303)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (908,'VIVIENDA 2DO PISO','DOM',303)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (909,'VIVIENDA 3ER PISO','DOM',303)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (910,'COMERCIAL 1ER PISO','COM',304)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (911,'VIVIENDA 2DO PISO','DOM',304)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (912,'VIVIENDA 3ER PISO','DOM',304)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (913,'COMERCIAL 1ER PISO','COM',305)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (914,'VIVIENDA 2DO PISO','DOM',305)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (915,'VIVIENDA 3ER PISO','DOM',305)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (916,'COMERCIAL 1ER PISO','COM',306)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (917,'VIVIENDA 2DO PISO','DOM',306)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (918,'VIVIENDA 3ER PISO','DOM',306)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (919,'COMERCIAL 1ER PISO','COM',307)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (920,'VIVIENDA 2DO PISO','DOM',307)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (921,'VIVIENDA 3ER PISO','DOM',307)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (922,'COMERCIAL 1ER PISO','COM',308)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (923,'VIVIENDA 2DO PISO','DOM',308)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (924,'VIVIENDA 3ER PISO','DOM',308)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (925,'COMERCIAL 1ER PISO','COM',309)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (926,'VIVIENDA 2DO PISO','DOM',309)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (927,'VIVIENDA 3ER PISO','DOM',309)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (928,'COMERCIAL 1ER PISO','COM',310)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (929,'VIVIENDA 2DO PISO','DOM',310)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (930,'VIVIENDA 3ER PISO','DOM',310)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (931,'COMERCIAL 1ER PISO','COM',311)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (932,'VIVIENDA 2DO PISO','DOM',311)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (933,'VIVIENDA 3ER PISO','DOM',311)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (934,'COMERCIAL 1ER PISO','COM',312)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (935,'VIVIENDA 2DO PISO','DOM',312)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (936,'VIVIENDA 3ER PISO','DOM',312)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (937,'COMERCIAL 1ER PISO','COM',313)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (938,'VIVIENDA 2DO PISO','DOM',313)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (939,'VIVIENDA 3ER PISO','DOM',313)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (940,'COMERCIAL 1ER PISO','COM',314)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (941,'VIVIENDA 2DO PISO','DOM',314)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (942,'VIVIENDA 3ER PISO','DOM',314)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (943,'COMERCIAL 1ER PISO','COM',315)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (944,'VIVIENDA 2DO PISO','DOM',315)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (945,'VIVIENDA 3ER PISO','DOM',315)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (946,'COMERCIAL 1ER PISO','COM',316)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (947,'VIVIENDA 2DO PISO','DOM',316)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (948,'VIVIENDA 3ER PISO','DOM',316)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (949,'COMERCIAL 1ER PISO','COM',317)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (950,'VIVIENDA 2DO PISO','DOM',317)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (951,'VIVIENDA 3ER PISO','DOM',317)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (952,'COMERCIAL 1ER PISO','COM',318)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (953,'VIVIENDA 2DO PISO','DOM',318)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (954,'VIVIENDA 3ER PISO','DOM',318)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (955,'COMERCIAL 1ER PISO','COM',319)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (956,'VIVIENDA 2DO PISO','DOM',319)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (957,'VIVIENDA 3ER PISO','DOM',319)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (958,'COMERCIAL 1ER PISO','COM',320)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (959,'VIVIENDA 2DO PISO','DOM',320)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (960,'VIVIENDA 3ER PISO','DOM',320)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (961,'COMERCIAL 1ER PISO','COM',321)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (962,'VIVIENDA 2DO PISO','DOM',321)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (963,'VIVIENDA 3ER PISO','DOM',321)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (964,'COMERCIAL 1ER PISO','COM',322)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (965,'VIVIENDA 2DO PISO','DOM',322)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (966,'VIVIENDA 3ER PISO','DOM',322)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (967,'COMERCIAL 1ER PISO','COM',323)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (968,'VIVIENDA 2DO PISO','DOM',323)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (969,'VIVIENDA 3ER PISO','DOM',323)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (970,'COMERCIAL 1ER PISO','COM',324)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (971,'VIVIENDA 2DO PISO','DOM',324)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (972,'VIVIENDA 3ER PISO','DOM',324)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (973,'COMERCIAL 1ER PISO','COM',325)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (974,'VIVIENDA 2DO PISO','DOM',325)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (975,'VIVIENDA 3ER PISO','DOM',325)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (976,'COMERCIAL 1ER PISO','COM',326)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (977,'VIVIENDA 2DO PISO','DOM',326)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (978,'VIVIENDA 3ER PISO','DOM',326)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (979,'COMERCIAL 1ER PISO','COM',327)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (980,'VIVIENDA 2DO PISO','DOM',327)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (981,'VIVIENDA 3ER PISO','DOM',327)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (982,'COMERCIAL 1ER PISO','COM',328)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (983,'VIVIENDA 2DO PISO','DOM',328)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (984,'VIVIENDA 3ER PISO','DOM',328)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (985,'COMERCIAL 1ER PISO','COM',329)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (986,'VIVIENDA 2DO PISO','DOM',329)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (987,'VIVIENDA 3ER PISO','DOM',329)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (988,'COMERCIAL 1ER PISO','COM',330)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (989,'VIVIENDA 2DO PISO','DOM',330)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (990,'VIVIENDA 3ER PISO','DOM',330)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (991,'COMERCIAL 1ER PISO','COM',331)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (992,'VIVIENDA 2DO PISO','DOM',331)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (993,'VIVIENDA 3ER PISO','DOM',331)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (994,'COMERCIAL 1ER PISO','COM',332)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (995,'VIVIENDA 2DO PISO','DOM',332)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (996,'VIVIENDA 3ER PISO','DOM',332)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (997,'COMERCIAL 1ER PISO','COM',333)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (998,'VIVIENDA 2DO PISO','DOM',333)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (999,'VIVIENDA 3ER PISO','DOM',99998)
go
insert into UnidadUso(idunidaduso,descripcion,categoria,idficha)
values (1000,'COMERCIAL 1ER PISO','COM',99999)
go
SET IDENTITY_INSERT dbo.UnidadUso OFF;--Permite cerrar inserción en columnas IDENTITY.

select count(1) from UnidadUso

--Carga de Unidades Uso Excel

create table UnidadUsoE
(
idunidaduso int
)

--UnidadUsoE
insert into UnidadUsoE(idunidaduso) values
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(12),
(13),
(14),
(15),
(16),
(17),
(18),
(19),
(20),
(21),
(22),
(23),
(24),
(25),
(26),
(27),
(28),
(29),
(30),
(31),
(32),
(33),
(34),
(35),
(36),
(37),
(38),
(39),
(40),
(41),
(42),
(43),
(44),
(45),
(46),
(47),
(48),
(49),
(50),
(51),
(52),
(53),
(54),
(55),
(56),
(57),
(58),
(59),
(60),
(61),
(62),
(63),
(64),
(65),
(66),
(67),
(68),
(69),
(70),
(71),
(72),
(73),
(74),
(75),
(76),
(77),
(78),
(79),
(80),
(81),
(82),
(83),
(84),
(85),
(86),
(87),
(88),
(89),
(90),
(91),
(92),
(93),
(94),
(95),
(96),
(97),
(98),
(99),
(100),
(101),
(102),
(103),
(104),
(105),
(106),
(107),
(108),
(109),
(110),
(111),
(112),
(113),
(114),
(115),
(116),
(117),
(118),
(119),
(120),
(121),
(122),
(123),
(124),
(125),
(126),
(127),
(128),
(129),
(130),
(131),
(132),
(133),
(134),
(135),
(136),
(137),
(138),
(139),
(140),
(141),
(142),
(143),
(144),
(145),
(146),
(147),
(148),
(149),
(150),
(151),
(152),
(153),
(154),
(155),
(156),
(157),
(158),
(159),
(160),
(161),
(162),
(163),
(164),
(165),
(166),
(167),
(168),
(169),
(170),
(171),
(172),
(173),
(174),
(175),
(176),
(177),
(178),
(179),
(180),
(181),
(182),
(183),
(184),
(185),
(186),
(187),
(188),
(189),
(190),
(191),
(192),
(193),
(194),
(195),
(196),
(197),
(198),
(199),
(200),
(201),
(202),
(203),
(204),
(205),
(206),
(207),
(208),
(209),
(210),
(211),
(212),
(213),
(214),
(215),
(216),
(217),
(218),
(219),
(220),
(221),
(222),
(223),
(224),
(225),
(226),
(227),
(228),
(229),
(230),
(231),
(232),
(233),
(234),
(235),
(236),
(237),
(238),
(239),
(240),
(241),
(242),
(243),
(244),
(245),
(246),
(247),
(248),
(249),
(250),
(251),
(252),
(253),
(254),
(255),
(256),
(257),
(258),
(259),
(260),
(261),
(262),
(263),
(264),
(265),
(266),
(267),
(268),
(269),
(270),
(271),
(272),
(273),
(274),
(275),
(276),
(277),
(278),
(279),
(280),
(281),
(282),
(283),
(284),
(285),
(286),
(287),
(288),
(289),
(290),
(291),
(292),
(293),
(294),
(295),
(296),
(297),
(298),
(299),
(300),
(301),
(302),
(303),
(304),
(305),
(306),
(307),
(308),
(309),
(310),
(311),
(312),
(313),
(314),
(315),
(316),
(317),
(318),
(319),
(320),
(321),
(322),
(323),
(324),
(325),
(326),
(327),
(328),
(329),
(330),
(331),
(332),
(333),
(334),
(335),
(336),
(337),
(338),
(339),
(340),
(341),
(342),
(343),
(344),
(345),
(346),
(347),
(348),
(349),
(350),
(351),
(352),
(353),
(354),
(355),
(356),
(357),
(358),
(359),
(360),
(361),
(362),
(363),
(364),
(365),
(366),
(367),
(368),
(369),
(370),
(371),
(372),
(373),
(374),
(375),
(376),
(377),
(378),
(379),
(380),
(381),
(382),
(383),
(384),
(385),
(386),
(387),
(388),
(389),
(390),
(391),
(392),
(393),
(394),
(395),
(396),
(397),
(398),
(399),
(400),
(401),
(402),
(403),
(404),
(405),
(406),
(407),
(408),
(409),
(410),
(411),
(412),
(413),
(414),
(415),
(416),
(417),
(418),
(419),
(420),
(421),
(422),
(423),
(424),
(425),
(426),
(427),
(428),
(429),
(430),
(431),
(432),
(433),
(434),
(435),
(436),
(437),
(438),
(439),
(440),
(441),
(442),
(443),
(444),
(445),
(446),
(447),
(448),
(449),
(450),
(451),
(452),
(453),
(454),
(455),
(456),
(457),
(458),
(459),
(460),
(461),
(462),
(463),
(464),
(465),
(466),
(467),
(468),
(469),
(470),
(471),
(472),
(473),
(474),
(475),
(476),
(477),
(478),
(479),
(480),
(481),
(482),
(483),
(484),
(485),
(486),
(487),
(488),
(489),
(490),
(491),
(492),
(493),
(494),
(495),
(496),
(497),
(498),
(499),
(500),
(501),
(502),
(503),
(504),
(505),
(506),
(507),
(508),
(509),
(510),
(511),
(512),
(513),
(514),
(515),
(516),
(517),
(518),
(519),
(520),
(521),
(522),
(523),
(524),
(525),
(526),
(527),
(528),
(529),
(530),
(531),
(532),
(533),
(534),
(535),
(536),
(537),
(538),
(539),
(540),
(541),
(542),
(543),
(544),
(545),
(546),
(547),
(548),
(549),
(550),
(551),
(552),
(553),
(554),
(555),
(556),
(557),
(558),
(559),
(560),
(561),
(562),
(563),
(564),
(565),
(566),
(567),
(568),
(569),
(570),
(571),
(572),
(573),
(574),
(575),
(576),
(577),
(578),
(579),
(580),
(581),
(582),
(583),
(584),
(585),
(586),
(587),
(588),
(589),
(590),
(591),
(592),
(593),
(594),
(595),
(596),
(597),
(598),
(599),
(600),
(601),
(602),
(603),
(604),
(605),
(606),
(607),
(608),
(609),
(610),
(611),
(612),
(613),
(614),
(615),
(616),
(617),
(618),
(619),
(620),
(621),
(622),
(623),
(624),
(625),
(626),
(627),
(628),
(629),
(630),
(631),
(632),
(633),
(634),
(635),
(636),
(637),
(638),
(639),
(640),
(641),
(642),
(643),
(644),
(645),
(646),
(647),
(648),
(649),
(650),
(651),
(652),
(653),
(654),
(655),
(656),
(657),
(658),
(659),
(660),
(661),
(662),
(663),
(664),
(665),
(666),
(667),
(668),
(669),
(670),
(671),
(672),
(673),
(674),
(675),
(676),
(677),
(678),
(679),
(680),
(681),
(682),
(683),
(684),
(685),
(686),
(687),
(688),
(689),
(690),
(691),
(692),
(693),
(694),
(695),
(696),
(697),
(698),
(699),
(700),
(701),
(702),
(703),
(704),
(705),
(706),
(707),
(708),
(709),
(710),
(711),
(712),
(713),
(714),
(715),
(716),
(717),
(718),
(719),
(720),
(721),
(722),
(723),
(724),
(725),
(726),
(727),
(728),
(729),
(730),
(731),
(732),
(733),
(734),
(735),
(736),
(737),
(738),
(739),
(740),
(741),
(742),
(743),
(744),
(745),
(746),
(747),
(748),
(749),
(750),
(751),
(752),
(753),
(754),
(755),
(756),
(757),
(758),
(759),
(760),
(761),
(762),
(763),
(764),
(765),
(766),
(767),
(768),
(769),
(770),
(771),
(772),
(773),
(774),
(775),
(776),
(777),
(778),
(779),
(780),
(781),
(782),
(783),
(784),
(785),
(786),
(787),
(788),
(789),
(790),
(791),
(792),
(793),
(794),
(795),
(796),
(797),
(798),
(799),
(800),
(801),
(802),
(803),
(804),
(805),
(806),
(807),
(808),
(809),
(810),
(811),
(812),
(813),
(814),
(815),
(816),
(817),
(818),
(819),
(820),
(821),
(822),
(823),
(824),
(825),
(826),
(827),
(828),
(829),
(830),
(831),
(832),
(833),
(834),
(835),
(836),
(837),
(838),
(839),
(840),
(841),
(842),
(843),
(844),
(845),
(846),
(847),
(848),
(849),
(850),
(851),
(852),
(853),
(854),
(855),
(856),
(857),
(858),
(859),
(860),
(861),
(862),
(863),
(864),
(865),
(866),
(867),
(868),
(869),
(870),
(871),
(872),
(873),
(874),
(875),
(876),
(877),
(878),
(879),
(880),
(881),
(882),
(883),
(884),
(885),
(886),
(887),
(888),
(889),
(890),
(891),
(892),
(893),
(894),
(895),
(896),
(897),
(898),
(899),
(900),
(901),
(902),
(903),
(904),
(905),
(906),
(907),
(908),
(909),
(910),
(911),
(912),
(913),
(914),
(915),
(916),
(917),
(918),
(919),
(920),
(921),
(922),
(923),
(924),
(925),
(926),
(927),
(928),
(929),
(930),
(931),
(932),
(933),
(934),
(935),
(936),
(937),
(938),
(939),
(940),
(941),
(942),
(943),
(944),
(945),
(946),
(947),
(948),
(949),
(950),
(951),
(952),
(953),
(954),
(955),
(956),
(957),
(958),
(959),
(960),
(961),
(962),
(963),
(964),
(965),
(966),
(967),
(968),
(969),
(970),
(971),
(972),
(973),
(974),
(975),
(976),
(977),
(978),
(979),
(980),
(981),
(982),
(983),
(984),
(985),
(986),
(987),
(988),
(989),
(990),
(991),
(992),
(993),
(994),
(995),
(996),
(997),
(998),
(999),
(1000)

select * from UnidadUsoE

select u.idunidaduso,ue.idunidaduso
from UnidadUso u right join UnidadUsoE ue on u.idunidaduso=ue.idunidaduso
where u.idunidaduso is null

select u.idunidaduso,ue.idunidaduso
from UnidadUsoE ue left join UnidadUso u on u.idunidaduso=ue.idunidaduso
where u.idunidaduso is null