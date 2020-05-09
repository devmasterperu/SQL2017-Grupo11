--05.01
--El total de fichas
select count(1) from Ficha
--El total de fichas con tipo de consumidor “G”
select count(1) from Ficha where tipoconsumidor='G'
--El total de fichas con tipo de consumidor “M”.
select count(1) from Ficha where tipoconsumidor='M'
--El total de fichas con tipo de consumidor “P”
select count(1) from Ficha where tipoconsumidor='P'

--Forma 01 [SQL]
SELECT 
count(1) as [TOTAL-FICHAS],
(select count(1) from Ficha where tipoconsumidor='G') as [TOTAL-G], --CI
(select count(1) from Ficha where tipoconsumidor='M') as [TOTAL-M], --CI
(select count(1) from Ficha where tipoconsumidor='P') as [TOTAL-P]  --CI
FROM Ficha --CE

--Forma 02 [TSQL]
SELECT --CE
(select count(1) from Ficha) as [TOTAL-FICHAS],                     --CI
(select count(1) from Ficha where tipoconsumidor='G') as [TOTAL-G], --CI
(select count(1) from Ficha where tipoconsumidor='M') as [TOTAL-M], --CI
(select count(1) from Ficha where tipoconsumidor='P') as [TOTAL-P]  --CI

--05.02

SELECT --CE
(SELECT COUNT(idtrabajador) FROM Trabajador) AS 'TOTAL-E-S',				--CI
(SELECT COUNT(idtrabajador) FROM Trabajador WHERE tipo= 'E') AS 'TOTAL-E', --CI
(SELECT COUNT(idtrabajador) FROM Trabajador WHERE tipo= 'S') AS 'TOTAL-S'  --CI

--05.03

	select  t.usuario,t.idtrabajador,
			upper(ltrim(p.nombres)) as NOMBRES_MA, 
			upper(ltrim(p.apellidos)) as APELLIDOS_MA,
			replace(lower(rtrim(ltrim(p.nombres))),' ','_') as NOMBRES_MI, 
			replace(lower(rtrim(ltrim(p.apellidos))),' ','_') as APELLIDOS_MI,
			(select count(idficha) from Ficha where idencuestador=t.idtrabajador) as TOTAL, --CI
			case 
			when (select count(idficha) from Ficha where idencuestador=t.idtrabajador) between 1 and 19 then 'Baja productividad'
			when (select count(idficha) from Ficha where idencuestador=t.idtrabajador) between 20 and 29 then 'Mediana productividad'
			when (select count(idficha) from Ficha where idencuestador=t.idtrabajador) >=30 then 'Alta productividad'
			else 'Sin fichas' end as MENSAJE
	from Trabajador t inner join Padron p on t.idpadron=p.idpadron --CE
	where t.tipo='E'

