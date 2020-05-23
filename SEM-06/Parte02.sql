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

--06.08
alter function F_REPORTE_MANZANA_R(@idsector int) returns table
as return
select m.idsector as [ID SECTOR],m.nombre as [MANZANA],isnull(rm.total,0) as TOTAL,
ROW_NUMBER() over(partition by m.idsector order by rm.total desc) as RN,
LAG(isnull(rm.total,0),1,0) over(partition by m.idsector order by rm.total desc) as M_LAG,
LEAD(isnull(rm.total,0),1,0) over(partition by m.idsector order by rm.total desc) as M_LEAD,
FIRST_VALUE(isnull(rm.total,0)) over(partition by m.idsector order by rm.total desc) as M_FV,
LAST_VALUE(isnull(rm.total,0)) over(partition by m.idsector order by rm.total desc) as M_LV
from Manzana m
left join (
 select idmanzana,count(idficha) as total from Ficha group by idmanzana
) rm on m.idmanzana=rm.idmanzana
where m.idsector=case when @idsector=0 then m.idsector else @idsector end

select * from F_REPORTE_MANZANA_R(0)
order by [ID SECTOR],TOTAL desc

--06.09
CREATE VIEW dbo.V_PADRON AS
WITH CTE_RP AS
(
	select idubigeo as IDUBIGEO,SUBSTRING(ltrim(nombres),1,1) as INICIAL,count(idpadron) as TOTAL from Padron
	group by idubigeo,SUBSTRING(ltrim(nombres),1,1)
	having SUBSTRING(ltrim(nombres),1,1)<>''
	--order by idubigeo,SUBSTRING(ltrim(nombres),1,1)
)
select 
IDUBIGEO,INICIAL,TOTAL,
ROW_NUMBER() OVER (PARTITION BY IDUBIGEO ORDER BY TOTAL ASC) as RN,
LAG(TOTAL,1,0) OVER (PARTITION BY IDUBIGEO ORDER BY TOTAL ASC) as LAG,
LEAD(TOTAL,1,0) OVER (PARTITION BY IDUBIGEO ORDER BY TOTAL ASC) as LEAD,
FIRST_VALUE(TOTAL) OVER (PARTITION BY IDUBIGEO ORDER BY TOTAL ASC) as FV,
LAST_VALUE(TOTAL) OVER (PARTITION BY IDUBIGEO ORDER BY TOTAL ASC) as LV
from CTE_RP

select * from dbo.V_PADRON order by IDUBIGEO, TOTAL ASC