-- We can return a different datatype by using output keyword but cannot return usin
-- return keyword

create procedure proc2 (@a int,@b int, @result varchar(10) output) as
begin
	set @result = @a+@b
end

begin
	declare @result varchar(10)
	exec proc2 10,20,@result output
	print @result
end