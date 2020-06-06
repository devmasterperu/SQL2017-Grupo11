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

--07.06

create procedure usp_insuniuso(@descripcion varchar(40),@categoria char(3),@idficha int)
as
begin
	declare @iduniuso int, @mensaje varchar(500)
	
	if not exists(select 1 from UnidadUso where descripcion=@descripcion and idficha=@idficha)
	begin
		insert into UnidadUso(descripcion,categoria,idficha)
		values(@descripcion,@categoria,@idficha)

		set @mensaje='Unidad de uso insertada'
		set @iduniuso=IDENT_CURRENT('UnidadUso')
	end
	else
	begin
		set @mensaje='Unidad de uso con descripción existente en ficha'
		set @iduniuso=0
	end

	select @mensaje as MENSAJE, @iduniuso as UNIDAD_USO

end

--INSERCIÓN EXITOSA

execute usp_insuniuso @descripcion='Usado por entidad del estado',@categoria='EST',@idficha=3
select idunidaduso,descripcion,categoria from UnidadUso where idficha=3

execute usp_insuniuso @descripcion='Usado por entidad del estado',@categoria='EST',@idficha=4
select idunidaduso,descripcion,categoria from UnidadUso where idficha=4

--INSERCIÓN CON ERROR

execute usp_insuniuso @descripcion='Usado por entidad del estado',@categoria='EST',@idficha=3

--07.07

alter procedure usp_actualiza_asignacion(@idencuestador int,@idmanzana int,@fecinicio date,
@fecfin date,@idsupervisor int)
as
begin
	declare @mensaje varchar(300)

	if exists (select 1 from Asignacion where idencuestador=@idencuestador and idmanzana=@idmanzana) --Si existe asignación
	begin
		update a
		set a.fecinicio=@fecinicio,
			a.fecfin=@fecfin,
			a.idsupervisor=@idsupervisor
		from Asignacion a
		where a.idencuestador=@idencuestador and a.idmanzana=@idmanzana

		set @mensaje='Asignación actualizada'
	end
	else --No existe asignación
	begin
		set @mensaje='Asignación no identificada'
	end

	select @mensaje as MENSAJE,@idencuestador AS ID_ENCUESTADOR,@idmanzana as ID_MANZANA
end

--ACTUALIZACIÓN EXITOSA
select idencuestador,idmanzana,fecinicio,fecfin,idsupervisor from Asignacion
where idencuestador=21 and idmanzana=5

execute usp_actualiza_asignacion @idencuestador=21,@idmanzana=5,@fecinicio='2020-07-01',
@fecfin='2020-12-31',@idsupervisor=4

--ACTUALIZACIÓN CON ERROR
execute usp_actualiza_asignacion @idencuestador=1000,@idmanzana=5,@fecinicio='2020-07-01',
@fecfin='2020-12-31',@idsupervisor=4