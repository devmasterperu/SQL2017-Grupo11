--SEMANA 02
--Operadores matemáticos
declare @num1 int=10
declare @num2 int=5

select 'SUMA'=@num1+@num2,
	   'RESTA'=@num1-@num2,
	   'MULTIPLICA'=@num1*@num2,
	   'DIVISION'=@num1/@num2,
	   'RESTO'=@num1%@num2,
	   'POWER'=POWER(@num1,@num2),
	   'RAIZ_CUADRADA'=SQRT(1000),
	   'PI'=PI()
--Lógica de Procesamiento
select * from Manzana

select idsector,count(1) as total --[5]Definir expresiones (Inc.columnas) a mostrar
from Manzana --Tablas a consultar [1]
where estado=1 --Filtros o condiciones [2]
group by idsector --Agrupa por expresiones [3]
having count(1)>0 --Filtros o condiciones sobre agrupaciones [4]
order by idsector desc --Ordenar los resultados [6]

select idsector, --[5]
       count(idmanzana) as total, --[5]
	   count(idmanzana)+1 --[5]Definir expresiones (Inc.columnas) a mostrar
from Manzana --Tablas a consultar [1]
where estado=1 --Filtros o condiciones [2]
group by idsector --Agrupa por expresiones [3]
having count(idmanzana)>0 --Filtros o condiciones sobre agrupaciones [4]
order by count(idmanzana) desc --Ordenar los resultados [6]

--Uso de DISTINCT

select idsector,idmanzana from Manzana
select distinct idsector,idmanzana from Manzana

--Crear schema: 
  create schema desarrollo 

  create table desarrollo.Dato
  (
	col1 int,
	col2 int
  )

  insert into desarrollo.Dato values (1,1),(1,1),(1,2),(1,3),(1,3),(2,1)

  select col1 from desarrollo.Dato --6 res
  select distinct col1 from desarrollo.Dato --2 res

  select col2 from desarrollo.Dato --6 res
  select distinct col2 from desarrollo.Dato --3 res

  select col1,col2 from desarrollo.Dato --6 res
  select distinct col1,col2 from desarrollo.Dato --4 res

  --Uso de alias de columnas

  select col1 as valor1,col2 valor2, col1+col2 [Mi suma],'multiplica'=col1*col2 
  from desarrollo.Dato

  --Alias de tablas
  select tb.col1,tb.col2,col1+col2 [Mi suma],'multiplica'=col1*col2 
  from desarrollo.Dato as tb

  select tb.col1 as valor1,tb.col2 valor2, col1+col2 [Mi suma],'multiplica'=col1*col2 
  from desarrollo.Dato tb

  select col1 as valor1,col2 valor2, col1+col2 [Mi suma],'multiplica'=col1*col2 
  from desarrollo.Dato [Mi tabla]

--PROGRESION ARITMETICA CRECIENTE
--2,4,6,8...T100 =>T1=2,N=100,R=2
--1,3,5,7...T150 =>T1=1,N=150,R=2
--TN=T1+(N-1)*R
--02.00
--A
declare @T1 int=2   --entrada
declare @N int=100  --entrada
declare @R int=2    --entrada

select 'TN'=@T1+(@N-1)*@R --salida

--B
 DECLARE @T1 BIGINT=2
 DECLARE @N BIGINT=62
 DECLARE @R BIGINT=2

 SELECT 'EJERCICIO'=@T1*POWER (@R,@N-1)

 --02.01

 select  nombre as MANZANA,
		 estado as estado_o,
		 case when estado=1 --columna estado
		 then 'Manzana activa'
		 else 'Manzana inactiva' end as ESTADO,
		 idsector as isector_o,
		 case idsector --columna idsector
		 when 1 then 'SECTOR_NOROESTE'
		 when 2 then 'SECTOR_NORESTE'
		 when 3 then 'SECTOR_SUROESTE'
		 when 4 then 'SECTOR_SURESTE'
		 else 'SECTOR_DESCONOCIDO' end as SECTOR
 from Manzana
 
 
 idsector from Manzana