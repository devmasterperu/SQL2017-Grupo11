--07.04
create table Parametro
(
idparametro int identity(1,1) primary key, --Obtener códigos autogenerados
nombre varchar(100) not null,
valor varchar(300) not null
)

insert into Parametro(nombre,valor) values
('RAZON_SOCIAL','DEV MASTER PERÚ'),
('RUC_EMPRESA','20602275320')

alter procedure usp_obtener_recibo(@idficha int)
as
begin
	/* Parámetros de empresa */
	select
	(select valor from Parametro where nombre='RAZON_SOCIAL') as [RAZON_SOCIAL],--DEV MASTER PERÚ
	(select valor from Parametro where nombre='RUC_EMPRESA') as [RUC_EMPRESA],--20602275320
	getdate() as [CONSULTA AL]

	/* Parámetro de cliente */
	select rtrim(ltrim(p.nombres))+' '+rtrim(ltrim(p.apellidos)) as [NOMBRE_COMPLETO],
	p.direccion as [DIRECCION],f.montopago as [MONTO_PAGO]
	from Ficha f inner join Cliente c on f.idcliente=c.idcliente
	inner join Padron p on c.idpadron=p.idpadron
	where f.idficha=@idficha

	/* Parámetros de unidades de uso */
	select 
	row_number() over(order by idunidaduso) as [#UNIDAD],
	descripcion as [DESCRIPCIÓN],
	categoria as [CATEGORÍA]
	from UnidadUso
	where idficha=@idficha

	/* Parámetros de Ficha*/
	select @idficha
end

execute usp_obtener_recibo 200

--Modificar RAZON SOCIAL a DEV MASTER ACADEMY

update parametro set valor='DEV MASTER ACADEMY' where nombre='RAZON_SOCIAL'

execute usp_obtener_recibo 200

--07.05
select * from Manzana
select IDENT_CURRENT('Manzana')

create procedure usp_insManzana(@nombre varchar(5),@idsector int,@estado bit)
as
begin
	declare @mensaje varchar(300),@idmanzana int

	if not exists(select 1 from Manzana where nombre=@nombre) --No existe el nombre de la manzana
	begin
		insert into Manzana(nombre,idsector,estado) values (@nombre,@idsector,@estado)
		set @mensaje='Manzana insertada'
		set @idmanzana=(select IDENT_CURRENT('Manzana'))
	end
	else -- Si existe el nombre de la manzana
	begin
		set @mensaje='Manzana con nombre existente'
		set @idmanzana=0
	end

	--Devolver resultados
	select @mensaje as MENSAJE,@idmanzana as ID_MANZANA
end

--INSERCIÓN EXITOSA
execute usp_insManzana @nombre='0017',@idsector=4,@estado=0

--INSERCIÓN CON ERROR
execute usp_insManzana @nombre='0017',@idsector=4,@estado=0

--INSERCIÓN EXITOSA
execute usp_insManzana @nombre='0018',@idsector=4,@estado=0

select nombre,idsector from Manzana where nombre='0018'




