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
