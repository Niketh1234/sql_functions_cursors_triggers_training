--create a procedure that accepts number as parameter and display the multiplication
-- table of that number

-- create a procedure with a parameter

create procedure proc1(@n int) as 
begin
	declare @num int = 1;
	while @num <= 10
		begin
			print concat(@n,'*',@num,'=',@n*@num);
			set @num = @num+1;
		end
end
exec proc1 11