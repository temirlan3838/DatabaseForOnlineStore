CREATE PROCEDURE updateProduc
    @ProductId INT,
    @Title VARCHAR(250),
    @Price FLOAT,
    @UpdatedDate DATETIME,
    @Discount INT
AS
BEGIN
       SET NOCOUNT ON;
       update Product    
       set Title = @Title, Price = @Price, UpdatedDate = @UpdatedDate, Discount = @Discount
        where ProductID = @ProductID          
END
exec updateProduc 8, 8500, '2020-11-22 12:57:00', 20, '2020-12-01 12:59:59', '2020-12-20 12:59:59';
select * from product;