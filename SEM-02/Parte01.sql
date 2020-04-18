--SEMANA 02
declare @num1 int=10
declare @num2 int=5

select 'SUMA'=@num1+@num2,
	   'RESTA'=@num1-@num2,
	   'MULTIPLICA'=@num1*@num2,
	   'DIVISION'=@num1/@num2,
	   'RESTO'=@num1%@num2,
	   'POWER'=POWER(@num1,@num2),
	   'RAIZ_CUADRADA'=SQRT(1000),
	   'PI'=PI()

--PROGRESION ARITMETICA CRECIENTE
--2,4,6,8...T100 =>T1=2,N=100,R=2
--1,3,5,7...T150 =>T1=1,N=150,R=2
--TN=T1+(N-1)*R
--02.00
declare @T1 int=2   --entrada
declare @N int=100  --entrada
declare @R int=2    --entrada

select 'TN'=@T1+(@N-1)*@R --salida