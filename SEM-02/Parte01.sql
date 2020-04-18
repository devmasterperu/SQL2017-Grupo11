--SEMANA 02
--Operadores matem�ticos
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
--L�gica de Procesamiento
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
 
 --02.02
 insert into Sector values ('SECTOR_PRUEBA','Sector no utilizado',0)
 select nombre,estado,
		case when estado=1 
		then nombre+' se encuentra ACTIVO'
		else nombre+' se encuentra INACTIVO'
		end as mensaje--nombre+ACTIVO/INACTIVO
 from Sector

  select nombre,estado,
		 nombre+
		 case when estado=1 
		 then +' se encuentra ACTIVO'
		 else +' se encuentra INACTIVO'
		 end as mensaje--nombre+ACTIVO/INACTIVO
 from Sector

  select nombre,estado,
		case when estado=1 
		then concat(nombre,' se encuentra ACTIVO porque su estado es ',estado)
		else concat(nombre,' se encuentra INACTIVO porque su estado es ',estado)
		end as mensaje--nombre+ACTIVO/INACTIVO
 from Sector

 --02.03
 --Modificar longitud de columnas
 alter table Padron alter column nombres varchar(40)
 alter table Padron alter column apellidos varchar(40)

 select 'DNI' as TIPO,numdoc as NUMERO,ltrim(nombres) as nombres,ltrim(apellidos) as apellidos, 
		 case idubigeo
			 when 1 then 'HUACHO' when 2 then 'AMBAR'
			 when 3 then 'CALETA DE CARQUIN'  when 4 then 'CHECRAS'
			 when 5	then 'HUALMAY'  when 6 then 'HUAURA'
			 when 7	then 'LEONCIO PRADO'  when 8 then 'PACCHO'
			 when 9	then 'SANTA LEONOR'  when 10 then 'SANTA MAR�A'
			 when 11 then 'SAYAN'  when 12 then 'VEGUETA'
		 end as UBIGEO
 from Padron
 where idtipo=1
-- order by nombres asc
 --order by 3 asc (no recomendado)
 --ltrim: No considerar espacios en blanco al inicio
 --order by ltrim(nombres) asc,ltrim(apellidos) desc --Ordenamiento 2 niveles
 --order by ltrim(nombres)+ltrim(apellidos)
 order by fecnacimiento asc

 --02.04

 --update Padron set nombres='DABADU'
 --where idpadron=1

 select idtipo,numdoc as NUMERO,ltrim(nombres)+' '+ltrim(apellidos) as NOMBRE_COMPLETO,direccion,
		 case idubigeo
			 when 1 then 'HUACHO' when 2 then 'AMBAR'
			 when 3 then 'CALETA DE CARQUIN'  when 4 then 'CHECRAS'
			 when 5	then 'HUALMAY'  when 6 then 'HUAURA'
			 when 7	then 'LEONCIO PRADO'  when 8 then 'PACCHO'
			 when 9	then 'SANTA LEONOR'  when 10 then 'SANTA MAR�A'
			 when 11 then 'SAYAN'  when 12 then 'VEGUETA'
		 end as UBIGEO,
		 idubigeo,
		 fecnacimiento
 from Padron
 where 
 --p               --q             --r
 --(idubigeo=1) or (idubigeo=3) or (idubigeo=5) --predicado (p or q or r)
 --A=> idubigeo in (1,3,5)
 --fecnacimiento>='1970-01-01' and fecnacimiento<='1970-12-31'
 --B=> fecnacimiento BETWEEN '1970-01-01' and '1970-12-31'
 --C=>ltrim(nombres)+' '+ltrim(apellidos) LIKE 'A%' --%: No me importa hacia la derecha/izquierda cuantos y que caracteres existen
 --D=>ltrim(nombres)+' '+ltrim(apellidos) LIKE '%ABA%'
 --E=>ltrim(nombres)+' '+ltrim(apellidos) LIKE '%AN'
 --LTRIM(nombres)+ ' ' +LTRIM(apellidos) LIKE '%O' AND LTRIM(nombres)+ ' ' +LTRIM(apellidos) LIKE 'O%'
 --F=>LTRIM(nombres)+ ' ' +LTRIM(apellidos) LIKE 'O%O'
 --G=>ltrim(nombres)+' '+ltrim(apellidos) LIKE '_ABA%' --'_': Separo posiciones en el patr�n.
 --H=>ltrim(nombres)+' '+ltrim(apellidos) LIKE '%M__'
 --I=>ltrim(nombres)+' '+ltrim(apellidos) LIKE '_E%E_'
 --J=>ltrim(nombres)+' '+ltrim(apellidos) LIKE '[aeiou]%[aeiou]'--'[]': Permiten buscar dentro de una lista de caracteres
 --K=>ltrim(nombres)+' '+ltrim(apellidos) LIKE '[^aeiou]%[^aeiou]'--'[^]': Permite buscar un caracter diferentes a los valores de la lista
 --L=>LTRIM(nombres)+ ' ' +LTRIM(apellidos) LIKE'[AEIOU]%[^AEIOU]'
 --M=>ltrim(direccion) like 'A%' and idubigeo in (7,8,9,10)
 --N=>LTRIM(nombres)+ ' ' +LTRIM(apellidos) LIKE 'E%' OR idubigeo in (8,9,10)
 --O=>(ltrim(direccion) like 'A%' and idubigeo in (7,8,9,10)) --p' and q'=>p
 --AND (LTRIM(nombres)+ ' ' +LTRIM(apellidos) LIKE 'E%' OR idubigeo in (8,9,10)) --p' or q'=>q
 --P=>(ltrim(direccion) like 'A%' and idubigeo in (7,8,9,10)) --p' and q'=>p
 --OR (LTRIM(nombres)+ ' ' +LTRIM(apellidos) LIKE 'E%' OR idubigeo in (8,9,10)) --p' or q'=>q
 NOT (ltrim(direccion) like 'A%' and idubigeo in (7,8,9,10))