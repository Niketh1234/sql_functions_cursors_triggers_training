create table cart(itemcode int,name varchar(30), qty int,price float)
insert into cart(itemcode,name,qty,price) values
(101,'iphone',1,399.00),
(201,'realme',2,999.00),
(301,'samsung',3,1999.00),
(401,'micromax',9,99.00)

select * from cart

alter table cart drop column slno

alter table cart add slno int

alter procedure updateslnoCart
as 
begin
	declare carts cursor for select * from cart for update of slno
	declare @itemcode int
	declare @name varchar(30)
	declare @qty int
	declare @price float
	declare @slno int
	declare @counter int =1
	open carts
	fetch carts into @itemcode,@name,@qty,@price,@slno
	while(@@FETCH_STATUS != -1) -- while(@@FETCH_STATUS = 0)
		begin
			update cart set slno = @counter where current of carts
			fetch carts into @itemcode,@name,@qty,@price,@slno
			set @counter = @counter+1
		end 
	close carts
	deallocate carts
end


exec updateslnocart

select * from cart