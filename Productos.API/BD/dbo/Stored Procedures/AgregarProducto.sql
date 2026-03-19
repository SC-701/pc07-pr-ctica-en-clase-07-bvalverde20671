CREATE PROCEDURE AgregarProducto
    @Id UNIQUEIDENTIFIER,
    @IdSubCategoria UNIQUEIDENTIFIER,
    @Nombre NVARCHAR(200),
    @Descripcion NVARCHAR(500),
    @Precio DECIMAL(18,2),
    @Stock INT,
    @CodigoBarras NVARCHAR(100)
AS
BEGIN
    INSERT INTO Producto
    (
        Id,
        IdSubCategoria,
        Nombre,
        Descripcion,
        Precio,
        Stock,
        CodigoBarras
    )
    VALUES
    (
        @Id,
        @IdSubCategoria,
        @Nombre,
        @Descripcion,
        @Precio,
        @Stock,
        @CodigoBarras
    )

    SELECT @Id
END