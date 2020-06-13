--TAREAS_PROGRAMADAS [JOBS].

--PROCESOS_MASIVOS
--*Carga de pagos + enviar alertas (ETL) - SSIS
--*Comandos TSQL

--01 Tarea programada - Ficha 

alter table Ficha add numunidades int

create procedure USP_ACTUALIZA_FICHA_UNIDADES
as
begin
	update f
	set    f.numunidades=(select count(idunidaduso) from UnidadUso u where u.idficha=f.idficha)
	from   Ficha f
end

execute USP_ACTUALIZA_FICHA_UNIDADES

update Ficha set numunidades=null

select idficha,numunidades from Ficha

alter table Ficha drop column numunidades

--02 Tarea programada - Ficha 
--Crear un procedimiento almacenado que actualice la columna numfichas 
--obtenida de la tabla Ficha, SOLO para los encuestadores.

--Crear una tarea programada que ejecute este procedimiento almacenado
--SOLO sábados y domingos 09:50 am.