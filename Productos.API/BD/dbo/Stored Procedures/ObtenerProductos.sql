CREATE PROCEDURE ObtenerProductos
AS
BEGIN
    SELECT 
        p.Id,
        p.Nombre,
        p.Descripcion,
        p.Precio,
        p.Stock,
        p.CodigoBarras,
        s.Nombre AS SubCategoria,
        c.Nombre AS Categoria
    FROM Producto p
    INNER JOIN SubCategorias s ON p.IdSubCategoria = s.Id
    INNER JOIN Categorias c ON s.IdCategoria = c.Id
END