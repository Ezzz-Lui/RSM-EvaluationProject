-- Crear la tabla Clientes
CREATE TABLE clientes (
    clienteid INTEGER PRIMARY KEY,
    nombrecliente VARCHAR(100),
    email VARCHAR(100),
    telefono VARCHAR(20),
    direccion VARCHAR(1000)
);

-- Crear la tabla Productos
CREATE TABLE productos (
    productoid INTEGER PRIMARY KEY,
    nombreproducto VARCHAR(100),
    categoria VARCHAR(50),
    preciounitario NUMERIC(10,2)
);

-- Crear la tabla de Transacciones
CREATE TABLE transacciones (
    transaccionid INTEGER PRIMARY KEY,
    fechatransaccion DATE,
    monto_total NUMERIC(10,2)
);

-- Crear la tabla Ventas
CREATE TABLE ventas (
    ventaid INTEGER PRIMARY KEY,
    clienteid INTEGER REFERENCES clientes(clienteid),
    productoid INTEGER REFERENCES productos(productoid),
    cantidad INTEGER,
    fechaventa DATE,
    region VARCHAR(50),
    transaccionid INTEGER REFERENCES transacciones(transaccionid),
    preciounitario FLOAT
);