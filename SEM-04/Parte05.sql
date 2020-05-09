
BEGIN TRAN --INICIO TRANSACCION
	DELETE FROM UnidadUso
	WHERE idunidaduso=100
ROLLBACK   --REVERSA TRANSACCION

--04.09
BEGIN TRAN --INICIO TRANSACCION
	DELETE FROM UnidadUso
	WHERE idficha=100
ROLLBACK   --REVERSA TRANSACCION
COMMIT     --CONFIRMAR TRANSACCION

select count(1) from UnidadUso where idficha=100

--04.10
select count(1)
from UnidadUso u inner join Ficha f on u.idficha=f.idficha
where f.idencuestador=23

BEGIN TRAN --INICIO TRANSACCION
	DELETE u
	FROM   UnidadUso u inner join Ficha f on u.idficha=f.idficha
	where  f.idencuestador=23
ROLLBACK   --REVERSA TRANSACCION

--04.11
select u.idunidaduso,f.idficha,f.idmanzana,m.idsector
from UnidadUso u inner join Ficha f on u.idficha=f.idficha
inner join Manzana m on f.idmanzana=m.idmanzana
where m.idsector=4

create table ueliminado
(
idunidaduso int
)

BEGIN TRAN --INICIO TRANSACCION
	DELETE top(5) u
	OUTPUT deleted.idunidaduso INTO ueliminado
	FROM   UnidadUso u 
	inner join Ficha f on u.idficha=f.idficha
	inner join Manzana m on f.idmanzana=m.idmanzana
	where m.idsector=4
ROLLBACK   --REVERSA TRANSACCION

select idunidaduso from ueliminado