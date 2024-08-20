create rule ageRule
as 
@age>0 and @age<=150


create table people(id int,age tinyint);

sp_bindrule 'agerule','people.age','futureonly' -- applying a rule on a table
sp_unbindrule 'people.age' -- removing the rule for the age column in people table

insert into people values(214,160)
select * from people


