# RSM-EvaluationProject

Este repositorio es donde esta documentado nuestro proyecto para RSM por parte de actividad final para el bootcamp Data Analyst

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

- [Tabla **Clientes**](/Capturas/clientes.png)
![Clientes](/Capturas/clientes.png)
- [Tabla **Productos**](/Capturas/productos.png)
![Productos](/Capturas/productos.png)
- [Tabla **Ventas**](/Capturas/ventas.png)
![Ventas](/Capturas/ventas.png)

## Tabla Transacciones

- En esta tabla se guardan los registros de las transacciones realizadas por los clientes, se han agregado los siguientes campos:

- **transaccion_id**: Es el identificador único de la transacción, independientemente de la cantidad de productos que se hayan vendido en una sola transacción.

- **Fecha de Transacción**: La fecha en la que se registró la transacción en el sistema, que puede ser diferente a la fecha de venta debido a procesos internos de la empresa para el registro o auditoria en lapsos de tiempo especeficos para sus operaciones.

- **Monto de Transacción**: El monto total de la transacción, que es multiplicación de la cantidad de productos vendidos por el precio unitario de cada producto
- [Tabla **Transacciones**](/Capturas/transacciones.png)
![Transacciones](/Capturas/transacciones.png)
