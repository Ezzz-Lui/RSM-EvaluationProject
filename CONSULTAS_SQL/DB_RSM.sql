CREATE TABLE clientes
(
    clienteid     INTEGER PRIMARY KEY,
    nombrecliente VARCHAR(100),
    email         VARCHAR(100),
    telefono      VARCHAR(20),
    direccion     VARCHAR(1000)
);

CREATE TABLE productos
(
    productoid     INTEGER PRIMARY KEY,
    nombreproducto VARCHAR(100),
    categoria      VARCHAR(50),
    preciounitario NUMERIC(10, 2)
);

CREATE TABLE ventas
(
    ventaid        INTEGER PRIMARY KEY,
    fechaventa     DATE,
    region         VARCHAR(50),
    preciounitario FLOAT,
    montototal     FLOAT,
    clienteid      INTEGER references clientes(clienteid)
);

create table venta_detalle
(
    ventaid        integer        not null
        references ventas
            on delete cascade,
    cantidad       integer        not null,
    preciounitario numeric(10, 2) not null,
    productoid     integer        not null
        references productos
            on delete cascade,
    clienteid      integer        not null
        references clientes
            on delete cascade,
    primary key (ventaid, productoid, clienteid)
);