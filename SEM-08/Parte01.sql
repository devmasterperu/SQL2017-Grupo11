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