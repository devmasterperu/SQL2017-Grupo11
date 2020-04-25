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