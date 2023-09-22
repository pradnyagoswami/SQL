select * from product

create function GEtDiscount(@price int)
returns decimal
as begin
declare @discountPrice decimal
set @discountPrice=@price-(@price*0.10)
return @discountPrice
end

select price, dbo.GEtDiscount(price) as 'discount price' from product

