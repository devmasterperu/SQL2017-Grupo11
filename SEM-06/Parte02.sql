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

--06.04
CREATE VIEW V_REPORTE_ENC
as
select f.idficha as [ID FICHA],
f.montopago as [MTO PAGO],
LTRIM(P.nombres)+' '+ LTRIM(p.apellidos) as [NOM ENC],
count(idficha) OVER(PARTITION BY f.idencuestador) as E_NUM_FICHAS,
sum(montopago) OVER(PARTITION BY f.idencuestador) as E_TOT_MONTOPAGO,
max(montopago) OVER(PARTITION BY f.idencuestador) as E_MAX_MTOPAGO,
min(montopago) OVER(PARTITION BY f.idencuestador) as E_MIN_MTOPAGO,
avg(montopago) OVER(PARTITION BY f.idencuestador) as E_PROM_MTOPAGO
from Ficha f inner join Trabajador t on f.idencuestador=t.idtrabajador 
inner join Padron p on t.idpadron=p.idpadron	

select * from V_REPORTE_ENC
order by [NOM ENC]

--06.05
select m.nombre as MANZANA,
f.idficha as IDFICHA,
f.numhabitantes as NHABITANTES,
ROW_NUMBER() OVER(ORDER BY f.numhabitantes ASC) as RN0
from Ficha f left join Manzana m on f.idmanzana=m.idmanzana
order by f.numhabitantes ASC

alter function F_DETALLE_MANZANA(@idmanzana int) returns table as
return
	select m.nombre as MANZANA,
	f.idficha as IDFICHA,
	f.numhabitantes as NHABITANTES,
	ROW_NUMBER() OVER(PARTITION BY m.idmanzana ORDER BY f.numhabitantes ASC) as RN1,
	RANK() OVER(PARTITION BY m.idmanzana ORDER BY f.numhabitantes ASC) as RK,
	DENSE_RANK() OVER(PARTITION BY m.idmanzana ORDER BY f.numhabitantes ASC) as DRK,
	NTILE(4) OVER(PARTITION BY m.idmanzana ORDER BY f.numhabitantes ASC) as NTILE4
	from Ficha f left join Manzana m on f.idmanzana=m.idmanzana
	where f.idmanzana=case when @idmanzana=0 then f.idmanzana else @idmanzana end
	--order by m.nombre asc, f.numhabitantes ASC

	select * from F_DETALLE_MANZANA(0)

--06.06

alter function F_DETALLE_TIPOCONSUMIDOR(@tipoconsumidor varchar) returns table as
return
select tipoconsumidor as 'TIPO CONSUMIDOR', idficha AS 'IDFICHA',
numhabitantes as 'NHABITANTES', f.montopago as 'MONTOPAGO',
ROW_NUMBER() OVER (PARTITION BY tipoconsumidor order by montopago desc,idficha desc) as RN,
RANK()OVER (PARTITION BY tipoconsumidor order by montopago desc, idficha desc) as RK,
DENSE_RANK()OVER (PARTITION BY tipoconsumidor order by montopago desc,idficha desc) as DRK,
NTILE(5)OVER (PARTITION BY tipoconsumidor order by montopago desc,idficha desc) as NTILE5,
NTILE(10)OVER (PARTITION BY tipoconsumidor order by montopago desc,idficha desc) as NTILE10,
NTILE(15)OVER (PARTITION BY tipoconsumidor order by montopago desc,idficha desc) as NTILE15
from Ficha f
where  f.tipoconsumidor= case when @tipoconsumidor = 'T' THEN f.tipoconsumidor else @tipoconsumidor end

select * from  F_DETALLE_TIPOCONSUMIDOR('T')
order by [TIPO CONSUMIDOR], [MONTOPAGO] desc,[IDFICHA] desc
