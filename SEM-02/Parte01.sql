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
			 when 9	then 'SANTA LEONOR'  when 10 then 'SANTA MARÍA'
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
			 when 9	then 'SANTA LEONOR'  when 10 then 'SANTA MARÍA'
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
 --G=>ltrim(nombres)+' '+ltrim(apellidos) LIKE '_ABA%' --'_': Separo posiciones en el patrón.
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

 --02.05
 --COUNT(columna|expresion)=>Total de ocurrencias
 --MAX(columna|expresion)=>Máximo valor
 --MIN(columna|expresion)=>Mínimo valor
 --AVG(columna|expresion)=>Promedio valor

 select idubigeo,count(idpadron) as TOTAL,max(fecnacimiento) as MAXFECNAC,
 min(fecnacimiento) as MINFECNAC
 from Padron
 group by idubigeo--Campo agrupador
 order by idubigeo asc

 select idubigeo,estado,count(idpadron) as TOTAL,max(fecnacimiento) as MAXFECNAC,
 min(fecnacimiento) as MINFECNAC
 from Padron
 group by idubigeo,estado--Campos agrupadores
 order by idubigeo asc

 --02.06
select idsector,COUNT(idmanzana) as [TOTAL-M],MAX(idmanzana) as [MAX-ID-M],
MIN(idmanzana) as [MIN-ID-M]
from Manzana --Activas+Inactivas
where estado=1 --Activas
group by idsector --Campo agrupador

--02.07
--select distinct sexo from Padron
select isnull(sexo,'-') as SEXO,idubigeo as UBIGEO,count(idpadron) as TOTAL,
max(fecnacimiento) as MAXFECNAC,min(fecnacimiento) as MINFECNAC
from Padron
group by sexo,idubigeo --Campos agrupadores

update Padron set sexo='M' where idpadron=2

select isnull(sexo,'-') as SEXO,idubigeo as UBIGEO,count(idpadron) as TOTAL,
max(fecnacimiento) as MAXFECNAC,min(fecnacimiento) as MINFECNAC
from Padron
group by sexo,idubigeo --Campos agrupadores
order by idubigeo

update Padron set sexo='F' where idpadron=3
update Padron set sexo='M' where idpadron=203

--02.08
select idubigeo as UBIGEO,isnull(sexo,'-') as SEXO,count(idpadron) as TOTAL,
max(ltrim(rtrim(apellidos))) as [MAX-APELLIDOS],min(rtrim(ltrim(apellidos))) as [MIN-APELLIDOS]
from Padron
group by idubigeo,sexo --Campos agrupadores
order by idubigeo

--02.09

select 
top (6) --Listar SOLO los 6 primeros con mayor número de ocurrencias
rtrim(ltrim(nombres)) as NOMBRES,count(idpadron) as NUMERO
from Padron
group by rtrim(ltrim(nombres)) --Campo|expresion agrupadora
order by NUMERO desc --Ordena de mayor a menor 

select 
top (6) percent -- Listar SOLO el primer 6% con mayor número de ocurrencias
rtrim(ltrim(nombres)) as NOMBRES,count(idpadron) as NUMERO
from Padron
group by rtrim(ltrim(nombres)) --Campo|expresion agrupadora
order by NUMERO desc --Ordena de mayor a menor 

--02.10

select top(7) with ties
rtrim(ltrim(nombres)) as NOMBRES,count(idpadron) as NUMERO
from Padron
group by rtrim(ltrim(nombres)) --Campo|expresion agrupadora
order by NUMERO desc --Ordena de mayor a menor 

select top(7) percent with ties --Incluir empates con el registro de la última posición del TOP
rtrim(ltrim(nombres)) as NOMBRES,count(idpadron) as NUMERO
from Padron
group by rtrim(ltrim(nombres)) --Campo|expresion agrupadora
order by NUMERO desc --Ordena de mayor a menor 

--02.11

select TOP 2 idsector as SECTOR,count(idmanzana) as MANZANAS,
concat('El sector ',idsector,' tiene ',count(idmanzana),' manzanas') as MENSAJE
from Manzana --Manzanas activas+inactivas
where estado=1 --Manzanas activas
group by idsector --Campo agrupador
order by MANZANAS desc --Ordenado X total de mayor a menor

--02.12

select TOP 2 with ties idsector as SECTOR,count(idmanzana) as MANZANAS,--Mostrar empates de 2° puesto
concat('El sector ',idsector,' tiene ',count(idmanzana),' manzanas') as MENSAJE
from Manzana --Manzanas activas+inactivas
where estado=1 --Manzanas activas
group by idsector --Campo agrupador
order by MANZANAS desc --Ordenado X total de mayor a menor

--02.13

--Página 1 y tamaño de página 10
select ltrim(nombres)+' '+ltrim(apellidos) as NOMBRE_COMPLETO from Padron
where ltrim(nombres)+' '+ltrim(apellidos) <>''
order by NOMBRE_COMPLETO asc
offset 0 rows --Número de resultados a obviar [TAM_PAGINA]*([NUM_PAGINA]-1)
fetch next 10 rows only --Resultados sgtes. a mostrar [TAM_PAGINA] 

--Página 2 y tamaño de página 10
select ltrim(nombres)+' '+ltrim(apellidos) as NOMBRE_COMPLETO from Padron
where ltrim(nombres)+' '+ltrim(apellidos) <>''
order by NOMBRE_COMPLETO asc
offset 10 rows --Número de resultados a obviar [TAM_PAGINA]*([NUM_PAGINA]-1)
fetch next 10 rows only --Resultados sgtes. a mostrar [TAM_PAGINA]

--Página 3 y tamaño de página 10
select ltrim(nombres)+' '+ltrim(apellidos) as NOMBRE_COMPLETO from Padron
where ltrim(nombres)+' '+ltrim(apellidos) <>''
order by NOMBRE_COMPLETO asc
offset 20 rows --Número de resultados a obviar [TAM_PAGINA]*([NUM_PAGINA]-1)
fetch next 10 rows only --Resultados sgtes. a mostrar [TAM_PAGINA]

--Página 1 y tamaño de página 100
select ltrim(nombres)+' '+ltrim(apellidos) as NOMBRE_COMPLETO from Padron
where ltrim(nombres)+' '+ltrim(apellidos) <>''
order by NOMBRE_COMPLETO asc
offset 0 rows --Número de resultados a obviar [TAM_PAGINA]*([NUM_PAGINA]-1)
fetch next 100 rows only --Resultados sgtes. a mostrar [TAM_PAGINA]

--Página 2 y tamaño de página 100
select ltrim(nombres)+' '+ltrim(apellidos) as NOMBRE_COMPLETO from Padron
where ltrim(nombres)+' '+ltrim(apellidos) <>''
order by NOMBRE_COMPLETO asc
offset 100 rows --Número de resultados a obviar [TAM_PAGINA]*([NUM_PAGINA]-1)
fetch next 100 rows only --Resultados sgtes. a mostrar [TAM_PAGINA]

--Página 3 y tamaño de página 100
select ltrim(nombres)+' '+ltrim(apellidos) as NOMBRE_COMPLETO from Padron
where ltrim(nombres)+' '+ltrim(apellidos) <>''
order by NOMBRE_COMPLETO asc
offset 200 rows --Número de resultados a obviar [TAM_PAGINA]*([NUM_PAGINA]-1)
fetch next 100 rows only --Resultados sgtes. a mostrar [TAM_PAGINA]

--Página n y tamaño de página m
declare @_n int=10
declare @_m int=100

select ltrim(nombres)+' '+ltrim(apellidos) as NOMBRE_COMPLETO from Padron
where ltrim(nombres)+' '+ltrim(apellidos) <>''
order by NOMBRE_COMPLETO asc
offset @_m*(@_n-1) rows --Número de resultados a obviar [TAM_PAGINA]*([NUM_PAGINA]-1)
fetch next @_m rows only --Resultados sgtes. a mostrar [TAM_PAGINA]

