
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

--04.14
--Calculo COSTO
BEGIN TRAN
	UPDATE Ficha SET costo=10+numhabitantes*20
ROLLBACK

select idficha,numhabitantes,costo from Ficha --costo=10+numhabitantes*20

select ltrim(p.nombres)+' '+ltrim(p.apellidos) as [NOMBRE COMPLETO],f.montopago as MONTO_PAGO,
f.costo as COSTO_CALCULADO, 
case 
when f.montopago>f.costo then 'Cliente genera ganancia' 
when f.montopago<f.costo then 'Cliente genera pérdida' 
else '-' end as MENSAJE
from Ficha f inner join Cliente c on f.idcliente=c.idcliente
inner join Padron p on c.idpadron=p.idpadron

--04.15
--Cálculo costo
	BEGIN TRAN
	UPDATE Ficha SET costo= case when tipoconsumidor = 'P' then 10+numhabitantes*20--10.00+ N° Habitantes * 20.00
								 when tipoconsumidor = 'M' then 15+numhabitantes*25--15.00+ N° Habitantes * 25.00
								 when tipoconsumidor = 'G' then 20+numhabitantes*30--20.00+ N° Habitantes * 30.00
							end
	ROLLBACK

	select ltrim(p.nombres)+' '+ltrim(p.apellidos) as [NOMBRE COMPLETO],f.tipoconsumidor as 'TIPO_CONSUMIDOR',f.numhabitantes as 'N° HABITANTES',f.montopago as MONTO_PAGO,
	f.costo as COSTO_CALCULADO, 
	case 
	when f.montopago>f.costo then 'Cliente genera ganancia' 
	when f.montopago<f.costo then 'Cliente genera pérdida' 
	else '-' end as MENSAJE
	from Ficha f inner join Cliente c on f.idcliente=c.idcliente
	inner join Padron p on c.idpadron=p.idpadron
	ORDER BY  ltrim(p.nombres)+' '+ltrim(p.apellidos) ASC

--04.16

	select a.idencuestador,t.idtrabajador,p.idpadron,u.nom_dto
	from Asignacion a inner join Trabajador t on a.idencuestador=t.idtrabajador inner join
	Padron p on t.idpadron=p.idpadron inner join Ubigeo u on p.idubigeo=u.idubigeo
	where u.nom_dto= 'SAYAN'

	select * from Padron where idpadron between 21 and 24
	select * from Ubigeo where idubigeo=11

	begin tran
	update Padron set idubigeo=11 where idpadron between 21 and 24
	rollback

	create table AsignacionEncuestadorSAYAN
	(
	idencuestador int,
	idmanzana int,
	fecinicio_ant date,
	fecinicio_nueva date,
	)

	BEGIN TRAN
		update Asignacion
		set fecinicio= '2020-02-02'
		output deleted.idencuestador,deleted.idmanzana,deleted.fecinicio,inserted.fecinicio
		into AsignacionEncuestadorSAYAN
		from Asignacion a inner join Trabajador t on a.idencuestador=t.idtrabajador inner join
		Padron p on t.idpadron=p.idpadron inner join Ubigeo u on p.idubigeo=u.idubigeo
		where u.nom_dto= 'SAYAN'
	ROLLBACK

	select a.idencuestador,t.idtrabajador,p.idpadron,u.nom_dto
	from Asignacion a inner join Trabajador t on a.idencuestador=t.idtrabajador inner join
	Padron p on t.idpadron=p.idpadron inner join Ubigeo u on p.idubigeo=u.idubigeo
	where u.nom_dto= 'SAYAN'

--04.17
	select * from Padron where idpadron between 21 and 24
	select * from Ubigeo where idubigeo=10

	begin tran
	update Padron set idubigeo=10 where idpadron between 21 and 24
	rollback

	select a.idencuestador,t.idtrabajador,p.idpadron,u.nom_dto
	from Asignacion a inner join Trabajador t on a.idencuestador=t.idtrabajador inner join
	Padron p on t.idpadron=p.idpadron inner join Ubigeo u on p.idubigeo=u.idubigeo
	where u.nom_dto= 'SANTA MARÍA'

create table AsignacionEncuestadorSantaMaria
(
idencuestador int,
idmanzana int,
fecfin_ant date,
fecfin_nueva date,
)

BEGIN TRAN
	update Asignacion
	set fecinicio= '2020-12-31'
	output deleted.idencuestador,deleted.idmanzana,deleted.fecinicio,inserted.fecinicio
	into AsignacionEncuestadorSantaMaria
	from Asignacion a inner join Trabajador t on a.idencuestador=t.idtrabajador inner join
	Padron p on t.idpadron=p.idpadron inner join Ubigeo u on p.idubigeo=u.idubigeo
	where u.nom_dto= 'SANTA MARÍA'
ROLLBACK

select * from AsignacionEncuestadorSantaMaria


