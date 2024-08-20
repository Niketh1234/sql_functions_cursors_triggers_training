--procedure can only have integer as return type

create procedure addnum(@a int, @b int)
as 
return @a + @b 

begin
	declare @res int = 0
	exec @res = addnum 44,56 
	print @res
end