--OVER:GRUPOS=PARTICIONES
--06.03
--SUBCONSULTAS
select f.idficha as [ID FICHA],
f.numhabitantes as [NUM HAB],
m.nombre as [NOM MZA],
rm.M_NUM_FICHAS,rm.M_TOT_HAB,rm.M_MAX_HAB,rm.M_MIN_HAB,rm.M_PROM_HAB
from Ficha f left join Manzana m on f.idmanzana=m.idmanzana
left join (
	select idmanzana,count(idficha) as M_NUM_FICHAS,sum(numhabitantes) as M_TOT_HAB,
	max(numhabitantes) as M_MAX_HAB,min(numhabitantes) AS M_MIN_HAB,
	avg(numhabitantes) as M_PROM_HAB 
	from Ficha group by idmanzana
) rm on f.idmanzana=rm.idmanzana
order by [NOM MZA]

--FUNCIONES DE VENTANA
create function F_REPORTE_MANZANA() returns table
as
return
select f.idficha as [ID FICHA],
f.numhabitantes as [NUM HAB],
m.nombre as [NOM MZA],
count(idficha)     OVER(PARTITION BY m.nombre) as M_NUM_FICHAS,
sum(numhabitantes) OVER(PARTITION BY m.nombre) as M_TOT_HAB,
max(numhabitantes) OVER(PARTITION BY m.nombre) as M_MAX_HAB,
min(numhabitantes) OVER(PARTITION BY m.nombre) as M_MIN_HAB,
avg(numhabitantes) OVER(PARTITION BY m.nombre) as M_PROM_HAB
from Ficha f left join Manzana m on f.idmanzana=m.idmanzana
--left join (
--	select idmanzana,count(idficha) as M_NUM_FICHAS,sum(numhabitantes) as M_TOT_HAB,
--	max(numhabitantes) as M_MAX_HAB,min(numhabitantes) AS M_MIN_HAB,
--	avg(numhabitantes) as M_PROM_HAB 
--	from Ficha group by idmanzana
--) rm on f.idmanzana=rm.idmanzana
--order by [NOM MZA]

select * from F_REPORTE_MANZANA()
order by [NOM MZA] desc