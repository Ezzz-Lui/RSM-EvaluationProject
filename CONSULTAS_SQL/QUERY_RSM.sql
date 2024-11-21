/*Consultas SQL para Extracción de Información
Ventas totales por categoría de producto*/
SELECT
    p.Categoria,
    SUM(v.Cantidad * p.preciounitario) AS VentasTotales
FROM
    Ventas v
INNER JOIN Productos p ON v.ProductoID = p.ProductoID
GROUP BY
    p.Categoria;

/*Clientes con mayor valor de compra*/
SELECT
    c.NombreCliente,
    SUM(v.Cantidad * p.PrecioUnitario) AS TotalGastado
FROM
    Clientes c
INNER JOIN Ventas v ON c.ClienteID = v.ClienteID
INNER JOIN Productos p ON v.ProductoID = p.ProductoID
GROUP BY
    c.NombreCliente
ORDER BY
    TotalGastado DESC;

/*Productos más vendidos por región*/
SELECT region,nombreproducto, cantidad_vendida
FROM (
    SELECT 
        v.region,
        p.nombreproducto,
        SUM(v.cantidad) AS cantidad_vendida,
        ROW_NUMBER() OVER (PARTITION BY v.region ORDER BY SUM(v.cantidad) DESC) AS ranking
    FROM public.productos p
    JOIN public.ventas v ON v.productoid = p.productoid
    GROUP BY v.region, p.nombreproducto
) AS ranked_products
WHERE ranking <= 5
ORDER BY region, ranking;