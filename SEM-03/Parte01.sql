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
