--Ejemplo 01
begin try
    select 10+20
	select 1/0 --ERROR
end try
begin catch
	select ERROR_MESSAGE()
end catch

--Ejemplo 02
alter procedure usp_insunidaduso_e02 as
BEGIN
	BEGIN TRY
		insert into dbo.UnidadUso(idunidaduso,descripcion,categoria,idficha)
		select 1000,'CARWASH','EMP',999999
	END TRY
	BEGIN CATCH
		SELECT
		ERROR_NUMBER() AS ERRNUM,
		ERROR_MESSAGE() AS ERRMSG,
		ERROR_SEVERITY() AS ERRSEV,
		ERROR_PROCEDURE() AS ERRPROC,
		ERROR_LINE() AS ERRLINE;
	END CATCH
END

execute usp_insunidaduso_e02

select * from sys.sysmessages
where error=547--The %ls statement conflicted with the %ls constraint "%.*ls". The conflict occurred in database "%.*ls", table "%.*ls"%ls%.*ls%ls.

select * from sys.sysmessages
where error=544--Cannot insert explicit value for identity column in table 'UnidadUso' when IDENTITY_INSERT is set to OFF.

alter procedure usp_insunidaduso_e03
as
begin

	execute USP_R_PAGINADO_PERSONA @tampag=50,@numpag=20
	execute usp_insunidaduso_e02
	
end

execute usp_insunidaduso_e03

--08.01

select * from sys.sysmessages where error=50010

EXEC sp_addmessage @msgnum =50010, @severity =16, @msgtext ='Manzana existente'

alter procedure usp_insManzana(@nombre varchar(5),@idsector int,@estado bit)
as
begin
	begin try
		declare @mensaje varchar(300),@idmanzana int

		if not exists(select 1 from Manzana where nombre=@nombre) --No existe el nombre de la manzana
		begin
			insert into Manzana(nombre,idsector,estado) values (@nombre,@idsector,@estado)
			set @mensaje='Manzana insertada'
			set @idmanzana=(select IDENT_CURRENT('Manzana'))
		end
		else -- Si existe el nombre de la manzana
		begin
			--raiserror('Manzana con nombre existente',16,1)
			raiserror(50010,16,1)
		end

		--Devolver resultados
		select @mensaje as MENSAJE,@idmanzana as ID_MANZANA

	end try
	begin catch
		SELECT
		ERROR_NUMBER() AS ERRNUM,
		ERROR_MESSAGE() AS ERRMSG,
		ERROR_SEVERITY() AS ERRSEV,
		ERROR_PROCEDURE() AS ERRPROC,
		ERROR_LINE() AS ERRLINE;
	end catch
end

--Nombre de manzana existente
execute usp_insManzana @nombre='0001',@idsector=1,@estado=0

--Id Sector no existente
execute usp_insManzana @nombre='0020',@idsector=10,@estado=0

--Id Sector existente
execute usp_insManzana @nombre='0020',@idsector=1,@estado=0

--08.02

select * from sys.sysmessages where error=50020

EXEC sp_addmessage @msgnum =50020, @severity =16, @msgtext ='unidad de uso existente'
EXEC sp_dropmessage @msgnum =50020

alter procedure usp_insuniuso(@descripcion varchar(40),@categoria char(3),@idficha int)
as
begin
begin try
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
		--raiserror(50020,16,1)
		raiserror('Unidad de uso existente',16,1)
	end

	select @mensaje as MENSAJE, @iduniuso as UNIDAD_USO
	end try
	begin catch
		SELECT
		ERROR_NUMBER() AS ERRNUM,
		ERROR_MESSAGE() AS ERRMSG,
		ERROR_SEVERITY() AS ERRSEV,
		ERROR_PROCEDURE() AS ERRPROC,
		ERROR_LINE() AS ERRLINE;
	end catch

end

select * from UnidadUso where idficha=947

execute usp_insuniuso @descripcion='Taller de confeccion',@categoria='EMP',@idficha=947

--08.03

alter procedure usp_actualiza_asignacion(@idencuestador int,@idmanzana int,@fecinicio date,
@fecfin date,@idsupervisor int)
as
begin
	begin try
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
		THROW 50000,'No existe asignación para actualización',1;
		--THROW 50030,'No existe asignación para actualización',1;
	end

	select @mensaje as MENSAJE,@idencuestador AS ID_ENCUESTADOR,@idmanzana as ID_MANZANA;

	end try
	begin catch
		SELECT
		ERROR_NUMBER() AS ERRNUM,
		ERROR_MESSAGE() AS ERRMSG,
		ERROR_SEVERITY() AS ERRSEV,
		ERROR_PROCEDURE() AS ERRPROC,
		ERROR_LINE() AS ERRLINE;
	end catch
end

--ACTUALIZACIÓN EXITOSA
select idencuestador,idmanzana,fecinicio,fecfin,idsupervisor from Asignacion
where idencuestador=21 and idmanzana=5

execute usp_actualiza_asignacion @idencuestador=21,@idmanzana=5,@fecinicio='2020-08-01',
@fecfin='2020-11-30',@idsupervisor=4

--ACTUALIZACIÓN CON ERROR
execute usp_actualiza_asignacion @idencuestador=1000,@idmanzana=5,@fecinicio='2020-08-01',
@fecfin='2020-11-30',@idsupervisor=4

--08.04

alter procedure usp_actualiza_padron 
	(
	@idtipo int,@numdoc varchar(15),
	@nombres varchar(50), @apellidos varchar(40), @sexo varchar(1),
	@fecnacimiento date, @direccion varchar(300),@idubigeo int,@razon_social varchar(50)
	)
	as
	begin
		
		begin try
		declare @mensaje varchar(500)

		if not exists(select 1 from Padron p inner join TipoDocumento t on p.idtipo=t.idtipo
		where p.idtipo=@idtipo and numdoc=@numdoc) or @idtipo<>1--Si no existe por tipo de documento y número de documento
		begin

			THROW 50040,'No existe padrón para actualización y/o no es DNI',1

		end
		else
		begin
			
			if exists(select 1 from Padron p inner join TipoDocumento t on p.idtipo=t.idtipo
			where t.categoria='P' and p.idtipo=@idtipo and numdoc=@numdoc)--Si existe categoría 'P' para el tipo de documento y por número de documento
			begin 
				update p
				set 
					   p.nombres=@nombres,
					   p.apellidos=@apellidos,
					   p.sexo=@sexo,
					   p.fecnacimiento=@fecnacimiento,
					   p.direccion=@direccion,
					   p.idubigeo=@idubigeo
				from  Padron p
				where idtipo=@idtipo and numdoc=@numdoc 

				set @mensaje='Persona actualizada'
			end
		
			if exists(select 1 from Padron p inner join TipoDocumento t on p.idtipo=t.idtipo
			where t.categoria='E' and p.idtipo=@idtipo and numdoc=@numdoc)--Si existe categoría 'E' para el tipo de documento y por número de documento
			begin

				update p
				set    p.razon_social=@razon_social,
					   p.direccion=@direccion,
					   p.idubigeo=@idubigeo
				from  Padron p
				where idtipo=@idtipo and numdoc=@numdoc 

				set @mensaje='Empresa actualizada'
			end
			
		end
		select @mensaje as MENSAJE, @idtipo as TIPO, @numdoc as NUMDOC
		end try
		begin catch
			SELECT
			ERROR_NUMBER() AS ERRNUM,
			ERROR_MESSAGE() AS ERRMSG,
			ERROR_SEVERITY() AS ERRSEV,
			ERROR_PROCEDURE() AS ERRPROC,
			ERROR_LINE() AS ERRLINE;
		end catch
	end

--ACTUALIZACIÓN DE EMPRESA
execute usp_actualiza_padron @idtipo=3,@numdoc='20602275320',@nombres=NULL, @apellidos=NULL, 
@sexo=NULL,@fecnacimiento=NULL, @direccion='AV. BRASIL 840 BREÑA (LIMA)',@idubigeo=2,
@razon_social='DEV MASTER ACADEMY SAC'

--ACTUALIZACIÓN DE PERSONA
execute usp_actualiza_padron @idtipo=1,@numdoc='40249116',@nombres='GIAN CARLOS', @apellidos='MANRIQUE VALENTÍN', 
@sexo='M',@fecnacimiento='1990-01-09', @direccion='URB. LOS CIPRESES M-25',@idubigeo=1,
@razon_social=null

--08.05

alter procedure usp_eliminar_unidad(@idunidaduso int)
as
begin
	begin try
		declare @mensaje varchar(300),@idunidadusodel int=0
	
		if exists(select 1 from UnidadUso where idunidaduso=@idunidaduso)
		begin
			delete UnidadUso where idunidaduso=@idunidaduso

			set @mensaje='Unidad de uso eliminada'
			set @idunidadusodel=@idunidaduso
		end
		else
		begin
			THROW 50050,'No existe unidad de uso para eliminación',1
		end

		select @mensaje as MENSAJE, @idunidadusodel as UNIDAD_USO_ELIMINADA
	end try
	begin catch
			SELECT
			ERROR_NUMBER() AS ERRNUM,
			ERROR_MESSAGE() AS ERRMSG,
			ERROR_SEVERITY() AS ERRSEV,
			ERROR_PROCEDURE() AS ERRPROC,
			ERROR_LINE() AS ERRLINE;
	end catch
end

--ELIMINACIÓN NO EXITOSA
execute usp_eliminar_unidad 947

select * from UnidadUso where idunidaduso=947

--08.06
alter table Ficha add numunidades int
alter table Ficha drop column numunidades

create procedure usp_actualiza_f_u(@descripcion varchar(40),@categoria char(3),@idficha int)
as
begin
	--Operación 01
	insert into UnidadUso(descripcion,categoria,idficha)
	values(@descripcion,@categoria,@idficha)

	--Operación 02
	update f
	set f.numunidades=(select count(1) from UnidadUso where idficha=@idficha)
	from Ficha f
	where idficha=@idficha
end

alter procedure usp_insuniuso(@descripcion varchar(40),@categoria char(3),@idficha int)
as
begin
begin try
		declare @iduniuso int, @mensaje varchar(500)

		if not exists(select 1 from UnidadUso where descripcion=@descripcion and idficha=@idficha)
		begin
			
			begin transaction --Inicio transacción
				execute usp_actualiza_f_u @descripcion,@categoria,@idficha
			commit transaction --Confirmar cambios
		end
		else
		begin
			begin transaction --Iniciar transaccion
			raiserror('Unidad de uso existente',16,1)
		end

	end try
	begin catch
		rollback transaction --Deshacer cambios

		SELECT
		ERROR_NUMBER() AS ERRNUM,
		ERROR_MESSAGE() AS ERRMSG,
		ERROR_SEVERITY() AS ERRSEV,
		ERROR_PROCEDURE() AS ERRPROC,
		ERROR_LINE() AS ERRLINE;
	end catch

end

--ACTUALIZACIÓN NO EXITOSA X DESCRIPCION EXISTENTE
select * from UnidadUso where idficha=947
execute usp_insuniuso @descripcion='Taller de confeccion',@categoria='EMP',@idficha=947

--ACTUALIZACIONES EXITOSAS
execute usp_insuniuso @descripcion='Peluquería',@categoria='EMP',@idficha=947
execute usp_insuniuso @descripcion='Restaurante',@categoria='EMP',@idficha=947
execute usp_insuniuso @descripcion='Pollería',@categoria='EMP',@idficha=947

--ACTUALIZACION CUANDO COLUMNA numunidades no existe
alter table Ficha drop column numunidades 

execute usp_insuniuso @descripcion='Instituto',@categoria='EMP',@idficha=947
execute usp_insuniuso @descripcion='Universidad',@categoria='EMP',@idficha=947
execute usp_insuniuso @descripcion='Guardería',@categoria='EMP',@idficha=947
execute usp_insuniuso @descripcion='Cuna',@categoria='EMP',@idficha=947
execute usp_insuniuso @descripcion='Restaurant',@categoria='EMP',@idficha=947
execute usp_insuniuso @descripcion='Cabina',@categoria='EMP',@idficha=947

select * from Ficha where idficha=947
select * from UnidadUso where idficha=947