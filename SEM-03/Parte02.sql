--03.05
select m.nombre as MANZANA,ltrim(pe.nombres)+' '+ltrim(pe.apellidos) as ENCUESTADOR,
ltrim(ps.nombres)+' '+ltrim(ps.apellidos) as SUPERVISOR,convert(varchar(8),a.fecinicio,112) as FECINICIO,
convert(varchar(8),getdate(),112) as HOY,
convert(varchar(8),isnull(a.fecfin,getdate()),112) as FECFIN
from Asignacion a 
--MANZANA
inner join Manzana m on a.idmanzana=m.idmanzana
--ENCUESTADOR
inner join Trabajador e on a.idencuestador=e.idtrabajador and e.tipo='E'
inner join Padron pe on e.idpadron=pe.idpadron
--SUPERVISOR
inner join Trabajador s on a.idsupervisor=s.idtrabajador and s.tipo='S'
inner join Padron ps on s.idpadron=ps.idpadron
where convert(varchar(8),getdate(),112) between convert(varchar(8),a.fecinicio,112) and 
convert(varchar(8),isnull(a.fecfin,getdate()),112)
order by MANZANA 

--03.06
--Tabla izquierda: Trabajador (Prevalece)
--Tabla derecha: Asignacion

select t.usuario as USUARIO,t.idtrabajador as [ID ENCUESTADOR],isnull(a.idmanzana,0) as [ID MANZANA],
isnull(fecinicio,'9999-12-31') as FECINICIO,isnull(fecfin,'9999-12-31') as FECFIN
from Trabajador t left join Asignacion a on t.idtrabajador=a.idencuestador --and a.idmanzana=4
where t.tipo='E'

select t.usuario as USUARIO,t.idtrabajador as [ID ENCUESTADOR],isnull(a.idmanzana,0) as [ID MANZANA],
isnull(fecinicio,'9999-12-31') as FECINICIO,isnull(fecfin,'9999-12-31') as FECFIN
from Trabajador t left join Asignacion a on t.idtrabajador=a.idencuestador 
where t.tipo='E' --and a.idmanzana=4

--03.07
--Manzana left join Asignacion: Lo común+ lo que está en Manzana pero no en Asignación.
--Asignación left join Manzana: Lo común+ lo que está en Asignación pero no en Manzana.

select m.nombre AS NOMBRE, case when m.estado=1 then 'ACTIVO' ELSE 'INACTIVO' END as ESTADO,
M.idsector,isnull(a.idencuestador,0) as IDENCUESTADOR
from Manzana m left join Asignacion a  on a.idmanzana =m.idmanzana
order by ESTADO ASC

--03.08

select t.usuario as USUARIO,t.idtrabajador as [ID ENCUESTADOR],ltrim(p.nombres)+' '+ltrim(apellidos) as NOMBRE_COMPLETO,
isnull(a.idmanzana,0) as [ID MANZANA],isnull(fecinicio,'9999-12-31') as FECINICIO,isnull(fecfin,'9999-12-31') as FECFIN
from Trabajador t 
left join Asignacion a on t.idtrabajador=a.idencuestador 
left join Padron p on t.idpadron=p.idpadron --NOMBRE COMPLETO
where t.tipo='E' and t.estado=1

--03.09
select t.usuario as USUARIO,LTRIM(p.nombres)+''+LTRIM(apellidos) as 'NOMBRE COMPLETO',
isnull(m.nombre,'0000') AS 'MANZANA',ISNULL(fecinicio,'9999-12-31') as FECINICIO, ISNULL(fecfin,'9999-12-31') as FECFIN
from Trabajador t 
left join Asignacion a on t.idtrabajador=a.idencuestador 
left join Padron p on t.idpadron = p.idpadron --'NOMBRE COMPLETO' 
left join Manzana m on a.idmanzana= m.idmanzana --'MANZANA'
where t.tipo= 'E' and t.estado=1

--03.10
--Tabla izquierda: Trabajador 
--Tabla derecha: Asignacion (Prevalece)
select t.tipo,isnull(t.usuario,'-') as USUARIO,
case when idpadron is null then '-' else concat('P',idpadron) end as IDPERSONA,
a.idencuestador as [ID ENCUESTADOR],isnull(a.idmanzana,0) as [ID MANZANA],
isnull(fecinicio,'9999-12-31') as FECINICIO,isnull(fecfin,'9999-12-31') as FECFIN
from Trabajador t right join Asignacion a on t.idtrabajador=a.idencuestador 
where isnull(t.tipo,'E')='E'

--03.11
select ISNULL(m.nombre,'-') as 'MANZANA',isnull(m.idsector,'0') as 'ID SECTOR', 
isnull(a.idencuestador,0) as [ID ENCUESTADOR],isnull(a.idmanzana,0) as [ID MANZANA],
isnull(fecinicio,'9999-12-31') as FECINICIO,isnull(fecfin,'9999-12-31') as FECFIN
from Manzana m right join Asignacion a on m.idmanzana=a.idmanzana
where isnull(m.estado,1)=1

--03.12
select m.estado,ISNULL(m.nombre,'-') as 'MANZANA',isnull(m.idsector,'0') as 'ID SECTOR', 
a.idencuestador as [ID ENCUESTADOR],isnull(a.idmanzana,0) as [ID MANZANA],
isnull(fecinicio,'9999-12-31') as FECINICIO,isnull(fecfin,'9999-12-31') as FECFIN
from Manzana m full outer join Asignacion a on m.idmanzana=a.idmanzana

--LEFT+RIGHT JOIN+UNION
select ISNULL(m.nombre,'-') as 'MANZANA',isnull(m.idsector,'0') as 'ID SECTOR', 
isnull(a.idencuestador,0) as [ID ENCUESTADOR],isnull(a.idmanzana,0) as [ID MANZANA],
isnull(fecinicio,'9999-12-31') as FECINICIO,isnull(fecfin,'9999-12-31') as FECFIN
from Manzana m left join Asignacion a on m.idmanzana=a.idmanzana
union
select ISNULL(m.nombre,'-') as 'MANZANA',isnull(m.idsector,'0') as 'ID SECTOR', 
isnull(a.idencuestador,0) as [ID ENCUESTADOR],isnull(a.idmanzana,0) as [ID MANZANA],
isnull(fecinicio,'9999-12-31') as FECINICIO,isnull(fecfin,'9999-12-31') as FECFIN
from Manzana m right join Asignacion a on m.idmanzana=a.idmanzana

--03.13
--Página n y tamaño de página m
declare @_n int=5
declare @_m int=8

select isnull(ltrim(p.nombres)+' '+ltrim(p.apellidos),'') as ENCUESTADOR,
isnull(m.nombre,'') as MANZANA,isnull(ltrim(ps.nombres)+' '+ltrim(ps.apellidos),'') as SUPERVISOR,
@_n as PAGINA
from Asignacion a
--ENCUESTADOR
inner join Trabajador t on a.idencuestador=t.idtrabajador
inner join Padron p on t.idpadron=p.idpadron
--MANZANA
inner join Manzana m on a.idmanzana=m.idmanzana
--SUPERVISOR
inner join Trabajador ts on a.idencuestador=ts.idtrabajador
inner join Padron ps on ts.idpadron=ps.idpadron
order by ENCUESTADOR asc, MANZANA asc
offset @_m*(@_n-1) rows 
fetch next @_m rows only 