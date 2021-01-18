-- select * from product;
create PROCEDURE InsertIntoProdu
    @ProductId INT,
    @Title VARCHAR(250),
    @Price FLOAT,
    @UpdatedDate DATETIME,
    @Discount INT
AS
BEGIN
    set NOCOUNT ON
    insert into Product (ProductID, Title,  Price, UpdatedDate, Discount)
    values (@ProductId, @Title, @Price, @UpdatedDate, @Discount)
END
exec InsertIntoProdu 11, 'new blue Borg Lined Hoody', 18740, '2020-02-02 14:59:59', 22;

