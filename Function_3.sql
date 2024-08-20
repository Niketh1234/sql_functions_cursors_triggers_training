create function product_table()
returns @product table 
(id int, name varchar(30),price float)
as 
begin
insert into @product values(1,'bingo',99.99)
insert into @product values(2,'sunfeast',100.00)
return
end

select * from product_table()
select id as code, name as pname,price into new_table2 from product_table() where 1=2
select * from new_table2

select * into new_table from product_table()

select * from new_table