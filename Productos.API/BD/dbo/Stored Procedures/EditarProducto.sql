CREATE PROCEDURE EditarProducto
    @Id UNIQUEIDENTIFIER,
    @IdSubCategoria UNIQUEIDENTIFIER,
    @Nombre NVARCHAR(200),
    @Descripcion NVARCHAR(500),
    @Precio DECIMAL(18,2),
    @Stock INT,
    @CodigoBarras NVARCHAR(100)
AS
BEGIN
    UPDATE Producto
    SET
        IdSubCategoria = @IdSubCategoria,
        Nombre = @Nombre,
        Descripcion = @Descripcion,
        Precio = @Precio,
        Stock = @Stock,
        CodigoBarras = @CodigoBarras
    WHERE Id = @Id

    SELECT @Id
END