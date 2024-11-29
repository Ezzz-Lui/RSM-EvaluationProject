# RSM-EvaluationProject - Segunda Entrega + Revision feedback

Este repositorio es donde esta documentado nuestro proyecto para RSM por parte de actividad final para el bootcamp Data Analyst.


# Integrantes

- Sara Abigail Galicia Altuve
- Josue Isaac Guevara Portillo
- Andy Josue Medina Alvarez
- Luis Gerardo Ramos Martinez

## Recursos utilizados

| Recursos 🙌                                                                                           | Descripción 🤯🧐                                                                                                                                     |
| ----------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------- |
| [Trello](https://trello.com/invite/b/6736b4bf02576a2daef5c0c5/ATTIa801be59b0e7abb9a14b3674cb393a94DA014A37/proyecto-rsm)  | Uso de la herramienta trello para el intercambio y roles a cumplir dentro del projecto.                                                              |
| [SQL](https://drive.google.com/drive/folders/1dRTCiiEzxL33S-1qyCtmXk2xZZpMyP2d?usp=sharing)        | Lenguaje de consultas para desarrollo de la base de datos y manipulacion de datos  |
| [Visio](https://drive.google.com/drive/folders/1Y4iuff89TxRmQEcQBLWrGptIQf1-sI9Y) | Herramienta para crear diagramas                                                                           |
| [Drive](https://drive.google.com/drive/folders/1uAj_9s2-jROsAIQfNYyujRo7ImrerVvS?usp=sharing)     | Documento del Perfil del Proyecto                                                                                                                    |
# Herramientas 🛠️

- [x] [PostgreSQL](https://www.postgresql.org/)

- [x] [Trello](https://trello.com/b/Mgzfr7cQ/proyecto-rsm)

- [x] [Python](https://www.python.org/)

# Informacion de la base de datos

## Diagramas de la base de datos - ERD
- [Diagrama ER de la base de datos](/ERD/ERD-RSM.jpg)
![ERD](/ERD/ERD-RSM.jpg)

- [Diagrama logico de la base de datos](/ERD/DB_Diagrama.png)
![ERD](/ERD/DB_Diagrama.png)

## Tabla Clientes

- En esta tabla se guardan los registros de los clientes que realizan compras en la tienda, se han agregado los siguientes campos:

- **clienteid**: Identificador unico para cada cliente.
- **nombrecliente**: Nombre del cliente.
- **email**: Correo electronico del cliente.
- **telefono**: Numero de telefono del cliente.
- **direccion**: Direccion del cliente.

- [Tabla **Clientes**](/Capturas/clientes.png)
![Clientes](/Capturas/clientes.png)

## Tabla Productos

- En esta tabla se guardan los registros de los productos que se venden en la tienda, se han agregado los siguientes campos:

- **productoid**: Identificador unico para cada producto.
- **nombre**: Nombre del producto o articulo.
- **categoria**: Categoria a la que pertenece el producto.
- **preciounitario**: Precio unitario del producto.

- [Tabla **Productos**](/Capturas/productos.png)
![Productos](/Capturas/productos.png)

## Tabla Ventas

- En esta tabla se guardan los registros de las ventas realizadas por los clientes, se han agregado los siguientes campos:

- **ventaid**: Identificador unico para cada registro de venta.
- **clienteid**: Identificador unico del cliente que realizo la compra.
- **productoid**: Identificador unico del producto que se vendio.
- **cantidad**: Cantidad de productos vendidos del mismo articulo.
- **fechaventa**: Fecha en la que se realizo la venta pero no necesariamente la fecha en la que se registro la transaccion (Como fecha de corte o lapsos de tiempo para agrupar ventas).
- **region**: Region en la que se realizo la venta(Norte, Sur, Este, Oeste).
- **transaccionid**: Identificador unico de la transaccion en la que se registro la venta.
- **preciounitario**: Precio unitario del producto vendido independientemente de la cantidad.

- [Tabla **Ventas**](/Capturas/ventas.png)
![Ventas](/Capturas/ventas.png)

## Tabla Transacciones

- En esta tabla se guardan los registros de las transacciones realizadas por los clientes, se han agregado los siguientes campos:

- **transaccion_id**: Es el identificador único de la transacción, independientemente de la cantidad de productos que se hayan vendido en una sola transacción.

- **Fecha de Transacción**: La fecha en la que se registró la transacción en el sistema, que puede ser diferente a la fecha de venta debido a procesos internos de la empresa para el registro o auditoria en lapsos de tiempo especeficos para sus operaciones.

- **Monto de Transacción**: El monto total de la transacción, que es multiplicación de la cantidad de productos vendidos por el precio unitario de cada producto
- [Tabla **Transacciones**](/Capturas/transacciones.png)
![Transacciones](/Capturas/transacciones.png)


# Dashboard 📊

# Dashboard de Análisis de Datos

Este dashboard de Power BI proporciona una visión integral del análisis de datos de ventas, transacciones, productos y categorías. Está diseñado para ofrecer información clave de manera visual y fácil de interpretar.

## Resumen General
- **Ventas Totales:** $4.6 millones.
- **Cantidad Total Vendida:** 4,936 productos.
- **Número de Transacciones:** 1,000.

## Principales Indicadores
### Top 5 Clientes por Ventas
- Representa los cinco clientes con mayores montos de ventas totales y sus respectivos promedios.
- **Clientes destacados:** Cliente 43 ($110 mil), Cliente 63 ($85 mil), entre otros.

### Ventas por Categoría
- Distribución de ventas entre las principales categorías:
  - Hogar: 29.6%
  - Juguetería: 29.4%
  - Electrónica: 28.7%
  - Periféricos: 12.3%

### Ventas por Región
- Análisis del rendimiento por región:
  - **Este:** $1.32 millones (26.45%).
  - **Norte:** $1.22 millones (28.73%).
  - **Oeste:** $1.05 millones (21.96%).
  - **Sur:** $1.01 millones (22.86%).

## Tendencias Mensuales
- Número de productos vendidos mes a mes, destacando picos de ventas en meses específicos.

## Productos Más y Menos Vendidos
### Más Vendidos
- Producto 1: 210 unidades.
- Producto 2: 203 unidades.
- Producto 3: 197 unidades.

### Menos Vendidos
- Producto 22: 126 unidades.
- Producto 28: 111 unidades.
- Producto 19: 108 unidades.

## Detalles Adicionales
- **Comparación entre ventas por categoría y región:** Permite identificar las categorías más exitosas en cada región.
- **Visualización interactiva:** Filtrado dinámico por año, región y categoría.

## Uso Práctico
Este dashboard es ideal para:
- Identificar áreas de oportunidad.
- Optimizar estrategias de ventas y marketing.
- Monitorear el desempeño en tiempo real.


