--UNION
select 1,2,null
union
select 1,2,3
union
select 1,2,4

--UNION ALL
select 1,2,3
union all
select 1,2,3
union all
select 1,2,4

--06.01.A
--FORMA-01
CREATE VIEW V_PERSONAS AS
WITH CTE_PERSONA AS
(
select idtipo,numdoc,nombres, apellidos from Padron --1000
union all
select idtipo,numdoc,nombres, apellidos from PadronCarga --505
)
select t.nombre,p.numdoc,p.nombres,p.apellidos from CTE_PERSONA p
inner join TipoDocumento t on p.idtipo=t.idtipo

SELECT * FROM V_PERSONAS

--FORMA-02
CREATE VIEW V_PERSONAS_2 AS
select t.nombre,p.numdoc,p.nombres,p.apellidos from Padron p
inner join TipoDocumento t on p.idtipo=t.idtipo
union all
select t.nombre,p.numdoc,p.nombres,p.apellidos from PadronCarga p
inner join TipoDocumento t on p.idtipo=t.idtipo

SELECT * FROM V_PERSONAS_2

--06.01.B

SELECT 'GIANFRANCO','MANRIQUE  VALENTIN'
UNION 
SELECT 'GIANFRANCO','MANRIQUE VALENTIN'

CREATE VIEW V_PERSONAS_B AS
WITH CTE_PERSONA AS
(
select idtipo,numdoc,nombres, apellidos from Padron --1000
union 
select idtipo,numdoc,nombres, apellidos from PadronCarga --505
)
select t.nombre,p.numdoc,p.nombres,p.apellidos from CTE_PERSONA p
inner join TipoDocumento t on p.idtipo=t.idtipo

SELECT * FROM V_PERSONAS_B

--06.01.C
CREATE FUNCTION F_PERSONA(@idtipo int,@numdoc varchar(15)) returns table
ALTER FUNCTION F_PERSONA(@idtipo int,@numdoc varchar(15)) returns table
as
return
	WITH CTE_PERSONA AS
	(
	select idtipo,numdoc,nombres, apellidos from Padron --1000
	union all
	select idtipo,numdoc,nombres, apellidos from PadronCarga --505
	)
	select t.nombre,p.numdoc,p.nombres,p.apellidos from CTE_PERSONA p
	inner join TipoDocumento t on p.idtipo=t.idtipo
	where p.idtipo=@idtipo and p.numdoc=@numdoc

select * from F_PERSONA(1,'22094127')

--06.01.D

CREATE FUNCTION F_PERSONA_I() returns table
as
return
	WITH CTE_PERSONA AS
	(
	select idtipo,numdoc,nombres, apellidos from Padron --1000
	intersect
	select idtipo,numdoc,nombres, apellidos from PadronCarga --505
	)
	select t.nombre,p.numdoc,p.nombres,p.apellidos from CTE_PERSONA p
	inner join TipoDocumento t on p.idtipo=t.idtipo

select * from F_PERSONA_I()

--06.01.E
	
	--Las combinaciones que están en Padron y no en PadronCarga
	select idtipo,numdoc,nombres, apellidos from Padron
	except
	select idtipo,numdoc,nombres, apellidos from PadronCarga

CREATE FUNCTION F_PERSONA_E() returns table
as
return
	WITH CTE_PERSONA AS
	(
	--Las combinaciones que están en PadronCarga y no en Padron
	select idtipo,numdoc,nombres, apellidos from PadronCarga 
	except
	select idtipo,numdoc,nombres, apellidos from Padron
	)
	select t.nombre,p.numdoc,p.nombres,p.apellidos from CTE_PERSONA p
	inner join TipoDocumento t on p.idtipo=t.idtipo


select * from F_PERSONA_E()

select idtipo,numdoc,nombres, apellidos from Padron
where idtipo=1 and numdoc='00488191' and nombres='SERGIO PASTOR' and apellidos='FLORES VILDOSO'

select idtipo,numdoc,nombres, apellidos from PadronCarga
where idtipo=1 and numdoc='00488191' and nombres='SERGIO PASTOR' and apellidos='FLORES VILDOSO'