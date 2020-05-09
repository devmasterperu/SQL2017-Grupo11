--05.01
--El total de fichas
select count(1) from Ficha
--El total de fichas con tipo de consumidor “G”
select count(1) from Ficha where tipoconsumidor='G'
--El total de fichas con tipo de consumidor “M”.
select count(1) from Ficha where tipoconsumidor='M'
--El total de fichas con tipo de consumidor “P”
select count(1) from Ficha where tipoconsumidor='P'

--Forma 01 [SQL]
SELECT 
count(1) as [TOTAL-FICHAS],
(select count(1) from Ficha where tipoconsumidor='G') as [TOTAL-G], --CI
(select count(1) from Ficha where tipoconsumidor='M') as [TOTAL-M], --CI
(select count(1) from Ficha where tipoconsumidor='P') as [TOTAL-P]  --CI
FROM Ficha --CE

--Forma 02 [TSQL]
SELECT --CE
(select count(1) from Ficha) as [TOTAL-FICHAS],                     --CI
(select count(1) from Ficha where tipoconsumidor='G') as [TOTAL-G], --CI
(select count(1) from Ficha where tipoconsumidor='M') as [TOTAL-M], --CI
(select count(1) from Ficha where tipoconsumidor='P') as [TOTAL-P]  --CI
