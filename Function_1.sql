-- a function is similar to procedure where the parameter is optional
-- and a return type is mandatory

create function calcDiscount(@data float) -- single row function/scaler function
returns float
begin
return @data *10.3;
end

select dbo.calcDiscount(age) as new_age from customers -- calling the function