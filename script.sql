CREATE DATABASES modelo_v1
GO
USE DATABASES  modelo_v1
GO
CREATE TABLE CATEGORIA(
	ID_CATEGORIA INT PRIMARY KEY,
	NOMBRE_CATEGORIA VARCHAR(60),
)
GO 
CREATE TABLE PRODUCTO(
	ID_PRODUCTO INT PRIMARY KEY,
	ID_CATEGORIA INT,
	MONBRE PRODUCTO VARCHAR(60),
	FOREIGN KEY (ID_CATEGORIA)  REFERENCES CATEGORIA(ID_CATEGORIA), 
)
GO
CREATE TABLE FACTURA(
	ID_FACTURA INT PRIMARY KEY,
	NOMBRE_FACTURA VARCHAR(60) 
)

CREATE TABLE MOV_VENTA(
	ID_MOVIMIENTO INT PRIMARY KEY,
	ID_PRODUCTO INT,
	ID_FACTURA INT,
	COSTO VARCHAR(60),
	CANTIDAD VARCHAR(60),
	FOREIGN KEY(ID_FACTURA) REFERENCES FACTURA(ID_FACTURA),
	FOREIGN KEY(ID_PRODUCTO) REFERENCES PRODUCTO(ID_PRODUCTO)
)