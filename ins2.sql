create PROCEDURE InsertIntoBasket (
    @ProductID INT,
    @UserID INT,
    @Quantity INT
)
AS
BEGIN
    set NOCOUNT ON;
    insert into Basket_Product (ProductID, UserID, Quantity)
    values (@ProductID, @UserID, @Quantity)
END

exec InsertIntoBasket 4, 9 ,2;

select * from Basket_Product;