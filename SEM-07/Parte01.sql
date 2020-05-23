USE DevWifiDB
go
CREATE PROCEDURE USP_REPORTE_TEL(@tipotelefono char(4),@mensaje varchar)
ALTER PROCEDURE USP_REPORTE_TEL(@tipotelefono char(4),@mensaje varchar(300))
as
begin
	select tipo,numero,@mensaje as MENSAJE from Telefono
	where tipo=@tipotelefono and estado=1
end

EXECUTE USP_REPORTE_TEL 'LLA','Hola, no
olvide realizar el pago de su servicio de Internet'

EXEC USP_REPORTE_TEL 'SMS','Hola,
muchas gracias por su preferencia. Tenemos excelentes promociones para usted'

EXEC USP_REPORTE_TEL @tipotelefono='WSP',@mensaje='Hola, hasta
el 15/03 recibe un 20% de descuento en tu facturación'

EXEC USP_REPORTE_TEL @tipotelefono='WSP',@mensaje='Hola, hoy es la 7° sesión de clases'

--07.01

--PROCEDIMIENTO_ALMACENADO
declare @T1 int=2   --entrada
declare @N int=100  --entrada
declare @R int=2    --entrada

create procedure USP_PROGRESION_ARITMETICA(@T1 int,@N int,@R int)
as
begin
	select 'TN'=@T1+(@N-1)*@R 
end

execute USP_PROGRESION_ARITMETICA @T1=2,@N=100,@R=2

--FUNCION_VALOR_TABLA
alter function F_PROGRESION_ARITMETICA(@T1 int,@N int,@R int) returns table as
return
	select 'TN'=@T1+(@N-1)*@R,getdate() as FEC_CONSULTA

select * from F_PROGRESION_ARITMETICA(2,100,2)

--FUNCION_ESCALAR
alter function FE_PROGRESION_ARITMETICA(@T1 int,@N int,@R int) returns int
as
begin
	return (select @T1+(@N-1)*@R)
end

select dbo.FE_PROGRESION_ARITMETICA(2,100,2) as TN

--CTES
WITH CTE_NUM AS
(
	select 2 as T1,100 as N,2 as R union 
	select 1 as T1,100 as N,2 as R  
)
select T1,N,R,dbo.FE_PROGRESION_ARITMETICA(T1,N,R) as TN
from CTE_NUM num

--07.03

--A
select 90/10 as mod,90%10 as resto union
select 91/10 as mod,91%10 as resto

alter function F_NUM_PAGINAS(@tampag int) returns int
as
begin
	declare @mod   int=(select count(idpadron) from Padron)/@tampag

	declare @resto int=(select count(idpadron) from Padron)%@tampag

	declare @totpag int=(select case when @resto=0 then @mod else @mod+1 end)

	return @totpag
end

select dbo.F_NUM_PAGINAS(30) as TOTPAGINAS

--declare @tampag int=30

--declare @mod   int=(select count(idpadron) from Padron)/@tampag
--print 'mod:'+cast(@mod as varchar(100))
--declare @resto int=(select count(idpadron) from Padron)%@tampag
--print 'resto:'+cast(@resto as varchar(100))
--declare @totpag int=(select case when @resto=0 then @mod/@tampag else (@mod/@tampag)+1 end)
--print 'totpag'+cast(@totpag as varchar(100))

--B
create procedure USP_R_PAGINADO_PERSONA(@tampag int,@numpag int)
as
begin
	select ROW_NUMBER() OVER(ORDER BY  rtrim(ltrim(nombres))+' '+rtrim(ltrim(apellidos))) AS POSICION,
           rtrim(ltrim(nombres))+' '+rtrim(ltrim(apellidos)) as NOMBRE_COMPLETO
	from   Padron
	where rtrim(ltrim(nombres))+' '+rtrim(ltrim(apellidos))<>''
	order by [NOMBRE_COMPLETO]
	offset @tampag*(@numpag-1) rows 
	fetch next @tampag rows only 
end

execute USP_R_PAGINADO_PERSONA @tampag=50,@numpag=20

create view V_PAGINADO_PADRON as
select ROW_NUMBER() OVER(ORDER BY  rtrim(ltrim(nombres))+' '+rtrim(ltrim(apellidos))) AS POSICION,
       rtrim(ltrim(nombres))+' '+rtrim(ltrim(apellidos)) as NOMBRE_COMPLETO
from   Padron
where  rtrim(ltrim(nombres))+' '+rtrim(ltrim(apellidos))<>''

create procedure USP_R_PAGINADO_PERSONA_2(@tampag int,@numpag int)
as
begin
	select * from V_PAGINADO_PADRON
	order by [NOMBRE_COMPLETO]
	offset @tampag*(@numpag-1) rows 
	fetch next @tampag rows only 
end

execute USP_R_PAGINADO_PERSONA_2 @tampag=50,@numpag=20