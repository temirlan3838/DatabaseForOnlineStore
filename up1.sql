CREATE PROCEDURE updateBasketProducts
       @BasketProductId INT,
        @Quantity INT
AS
BEGIN
       SET NOCOUNT ON;
       update Basket_Product    
       set Quantity = @Quantity
    where BasketProductId = @BasketProductId          
END
exec updateBasketProducts 6, 20
select * from Basket_Product;