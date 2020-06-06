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