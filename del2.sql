create PROCEDURE delFromBasket (
    @BasketProductId INT
)
AS
BEGIN
    set NOCOUNT ON;
    delete from Basket_Product where BasketProductId = @BasketProductId  
END

exec delFromBasket 10;
select * from Basket_Product;