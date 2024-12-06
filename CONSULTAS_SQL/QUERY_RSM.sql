/* Consultas SQL para Extracción de Información */

/* Ventas totales por categoría de producto */
SELECT p.categoria,
        SUM(v.montototal)  AS ventas_totales
FROM ventas AS V
INNER JOIN venta_detalle   AS vd      ON vd.ventaid      = v.ventaid
INNER JOIN productos        AS p        ON vd.productoid         = p.productoid
GROUP BY p.categoria;

/* Clientes con mayor valor de compra */
SELECT c.nombrecliente,
     SUM(v.montototal)      AS total_gastado
FROM       clientes               AS  c
INNER JOIN venta_detalle   AS vd      ON vd.clienteid = c.clienteid
INNER JOIN ventas           AS  v ON vd.ventaid      = v.ventaid
GROUP BY c.nombrecliente
ORDER BY   total_gastado DESC;

/* Productos más vendidos por región */
SELECT region,
    nombreproducto,
    cantidad_vendida
FROM (
    SELECT v.region,
        p.nombreproducto,
        SUM(vd.cantidad) AS cantidad_vendida,
        RANK() OVER (PARTITION BY v.region ORDER BY SUM(vd.cantidad) DESC) AS ranking
    FROM productos p
	JOIN venta_detalle vd on vd.productoid = p.productoid
    JOIN ventas v ON v.ventaid=vd.ventaid
    GROUP BY v.region, p.nombreproducto
) AS ranked_products
WHERE ranking <= 5
ORDER BY region, ranking;