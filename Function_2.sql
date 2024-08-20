-- table valued functions
create function mytable() --creation of table valued function
returns table
as 
return (select customerid,
		upper(customername) as custName,
		convert(varchar,age) as custAge,
		phone from customers
		);


select * from mytable() --calling the created function

-- select * from customers