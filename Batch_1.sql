--batch
begin
	declare @age tinyint;
	select @age = age from customers where customerid <=200
	select @age;
end