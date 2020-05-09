
BEGIN TRAN --INICIO TRANSACCION
	DELETE FROM UnidadUso
	WHERE idunidaduso=100
ROLLBACK   --REVERSA TRANSACCION

--04.09
BEGIN TRAN --INICIO TRANSACCION
	DELETE FROM UnidadUso
	WHERE idficha=100
ROLLBACK   --REVERSA TRANSACCION
COMMIT     --CONFIRMAR TRANSACCION

select count(1) from UnidadUso where idficha=100

--04.10
select count(1)
from UnidadUso u inner join Ficha f on u.idficha=f.idficha
where f.idencuestador=23

BEGIN TRAN --INICIO TRANSACCION
	DELETE u
	FROM   UnidadUso u inner join Ficha f on u.idficha=f.idficha
	where  f.idencuestador=23
ROLLBACK   --REVERSA TRANSACCION

--04.11
select u.idunidaduso,f.idficha,f.idmanzana,m.idsector
from UnidadUso u inner join Ficha f on u.idficha=f.idficha
inner join Manzana m on f.idmanzana=m.idmanzana
where m.idsector=4

create table ueliminado
(
idunidaduso int
)

BEGIN TRAN --INICIO TRANSACCION
	DELETE top(5) u
	OUTPUT deleted.idunidaduso INTO ueliminado
	FROM   UnidadUso u 
	inner join Ficha f on u.idficha=f.idficha
	inner join Manzana m on f.idmanzana=m.idmanzana
	where m.idsector=4
ROLLBACK   --REVERSA TRANSACCION

select idunidaduso from ueliminado

--04.12

select a.idencuestador,t.idtrabajador,p.idpadron,u.nom_dto
from Asignacion a inner join Trabajador t on a.idencuestador=t.idtrabajador inner join
Padron p on t.idpadron=p.idpadron inner join Ubigeo u on p.idubigeo=u.idubigeo
where u.nom_dto= 'HUACHO'

create table eliminadosA
(
idmanzana int,idencuestador int,fecinicio date
)

BEGIN TRAN
	delete top(10) a
	output deleted.idmanzana, deleted.idencuestador,deleted.fecinicio into eliminadosA /*OPCIONAL*/
	from Asignacion a inner join Trabajador t on a.idencuestador=t.idtrabajador inner join
	Padron p on t.idpadron=p.idpadron inner join Ubigeo u on p.idubigeo=u.idubigeo
	where u.nom_dto= 'HUACHO'
ROLLBACK

select idmanzana,idencuestador,fecinicio from eliminadosA

--04.13
--a
select * from Padron where idpadron=101

create table actualizadoP
(
idpadron int,
direccion_ant varchar(200),
direccion_nueva varchar(200),
fecnacimiento_ant date,
fecnacimiento_nueva date,
)
BEGIN TRAN
	update Padron
	set    idubigeo=3,direccion='URB. LOS CIPRESES M-24',numdoc='22064382', sexo='F',fecnacimiento='1969-04-10'
	output deleted.idpadron,deleted.direccion,inserted.direccion,deleted.fecnacimiento,inserted.fecnacimiento
	into   actualizadoP
	where  idpadron=101
ROLLBACK

select * from actualizadoP

--b

create table actualizadoA
(
idmanzana int,
idencuestador int,
fecinicio datetime,
fecinicioa datetime,
fecfin datetime,
fecfina datetime,
idsupervisor int,
idsupervisora int
)

BEGIN TRAN
	update Asignacion
	set    fecinicio='2020-02-01',fecfin='2020-12-31',idsupervisor='5'
	output deleted.idmanzana,deleted.idencuestador,inserted.fecinicio,deleted.fecinicio,inserted.fecfin,deleted.fecfin,
		   inserted.idsupervisor,deleted.idsupervisor into actualizadoA
	where  idencuestador=23 and idmanzana=7
ROLLBACK

select * from actualizadoA