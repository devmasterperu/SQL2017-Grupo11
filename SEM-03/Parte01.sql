--03.01
--a
select count(1) from Sector --5
select count(1) from Manzana --16

select s.nombre as SECTOR,m.nombre as MANZANA
from Sector as s cross join Manzana as m --80 combinaciones

--b
select count(1) from Sector --5
select count(1) from Manzana where estado=1 --13

select s.nombre as SECTOR,m.nombre as MANZANA
from Sector as s cross join Manzana as m --65 combinaciones
where m.estado=1 --Manzanas activas 

select count (1)  from Sector --5
select count (1) from Manzana where estado=1 and nombre like '001%'--6

select s.nombre as SECTOR,m.nombre as MANZANA
from Sector as s cross join Manzana as m --30 combinaciones
where m.estado=1 and m.nombre like '001%'--Manzanas activas que inicien en '001'

--Manzanas activas que contengan '01'

select s.nombre as SECTOR,m.nombre as MANZANA
from Sector as s cross join Manzana as m --30 combinaciones
where m.estado=1 and m.nombre like '%01%'--Manzanas activas que contengan '01'

--03.02

select idtipo as [TIPO-DOC],numdoc as [NUM-DOC],
ltrim(nombres)+' '+ltrim(apellidos) as [NOMBRE-COMPLETO],
u.nom_dto as UBIGEO
from Padron p inner join Ubigeo u on p.idubigeo=u.idubigeo
where ltrim(nombres) like '%JORGE%' or ltrim(apellidos) like '%CAMARGO%'

--03.03

select m.nombre as [NOM-MANZANA],s.nombre as [NOM-SECTOR],
concat('Mi ID en la tabla Manzana es ',m.idmanzana) as MENSAJE
from Manzana m inner join Sector s on m.idsector=s.idsector
where m.estado=1 --Manzanas activas

--03.04
--NOTA: ASIGNACION_VIGENTE
--ASIGNACION-INICIO:26/04 FIN:DESCONOCIDO (no vigente)
--ASIGNACION-INICIO:25/04 FIN:DESCONOCIDO (vigente)
--ASIGNACION-INICIO:01/03 FIN:DESCONOCIDO (vigente)
--ASIGNACION-INICIO:01/03 FIN:31/03 (no vigente)

--select * from Trabajador where tipo='E'
update Asignacion set fecinicio='2020-03-01',fecfin='2020-03-31' where idmanzana=2 --No vigente

--select getdate()
select m.nombre as [NOMBRE MANZANA],
ltrim(p.nombres)+' '+ltrim(p.apellidos) as [NOMBRE COMPLETO ENCUESTADOR],
a.idsupervisor as [ID-SUPERVISOR],convert(varchar(8),a.fecinicio,112) as FECINICIO,
--getdate():Obtiene la fecha y hora actual del servidor donde se ejecuta la consulta.
convert(varchar(8),isnull(a.fecfin,getdate()),112) as FECFIN
from Asignacion a --Tabla columna
--[NOMBRE MANZANA]
inner join Manzana m on a.idmanzana=m.idmanzana
--[NOMBRE COMPLETO ENCUESTADOR]
inner join Trabajador t on a.idencuestador=t.idtrabajador and t.tipo='E'
inner join Padron p on p.idpadron=t.idpadron
--convert(varchar(8),getdate(),112): Convertir un tipo fecha y hora a texto en formato 112:AAAAMMDD
where convert(varchar(8),getdate(),112) between convert(varchar(8),a.fecinicio,112) and 
convert(varchar(8),isnull(a.fecfin,getdate()),112) --Solo vigentes