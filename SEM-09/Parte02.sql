--JSON+SQL SERVER

select top 10 
c.CustomerID as [cliente.id],
Title as [cliente.title],
FirstName as [customer.firstname],
MiddleName as [customer.middlename],
LastName as [customer.lastname],
direccion.AddressLine1 as [customer.detalle]
from SalesLT.Customer c
inner join SalesLT.CustomerAddress ca on c.CustomerID=ca.CustomerID
inner join SalesLT.Address direccion on ca.AddressID=direccion.AddressID
--for json auto,include_null_values,root('clientes')
for json path

--XML+SQL SERVER

select p.ProductID as '@ProductID',
p.Name as ProductName,
p.ProductNumber,
p.Color as 'detalle/color',
p.ListPrice as 'detalle/listprice',
pc.Name  as 'detalle/category'
from SalesLT.Product p
inner join SalesLT.ProductCategory pc on p.ProductCategoryID=pc.ProductCategoryID
--for xml raw
--for xml auto
for xml path('product'),root('products')

SELECT Todatetimeoffset (getdate(), '-05:00') AS CURRENT_DATE_TIME_OFFSET_CHANGE;