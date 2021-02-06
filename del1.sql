-- select * from product;
create PROCEDURE deleteFromProduct
   @ProductID INT
AS
set NOCOUNT ON;
BEGIN
    
    delete from Product where ProductID = @ProductID   
END

exec deleteFromProduct 11;
select * from product;

