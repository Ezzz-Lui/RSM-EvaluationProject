/* Consultas SQL para Extracción de Información */

/* Ventas totales por categoría de producto */
SELECT p.categoria,
        SUM(t.monto_total)  AS ventas_totales
FROM ventas AS V
INNER JOIN productos        AS p        ON v.productoid         = p.productoid
INNER JOIN transacciones    AS t        ON t.transaccionid      = v.transaccionid
GROUP BY p.categoria;

/* Clientes con mayor valor de compra */
SELECT c.nombrecliente,
     SUM(t.monto_total)      AS total_gastado
FROM       clientes               AS  c
INNER JOIN ventas           AS  v ON c.clienteid        = v.clienteid
INNER JOIN transacciones    AS  t ON t.transaccionid    = v.transaccionid
GROUP BY c.nombrecliente
ORDER BY   total_gastado DESC;

/* Productos más vendidos por región */
SELECT region,
    nombreproducto,
    cantidad_vendida
FROM (
    SELECT v.region,
        p.nombreproducto,
        SUM(v.cantidad) AS cantidad_vendida,
        RANK() OVER (PARTITION BY v.region ORDER BY SUM(v.cantidad) DESC) AS ranking
    FROM productos p
    JOIN ventas v ON v.productoid = p.productoid
    GROUP BY v.region, p.nombreproducto
) AS ranked_products
WHERE ranking <= 5
ORDER BY region, ranking;
