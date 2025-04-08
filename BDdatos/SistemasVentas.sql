-- 1) Crear la base de datos
CREATE DATABASE SistemaDeVentas;
GO

-- 2) Utilizar la base de datos
USE SistemaDeVentas;
GO

-- ============================================
-- TABLA: CLIENTES
-- ============================================
CREATE TABLE Clientes (
    DNI INT PRIMARY KEY,
    Nombres       NVARCHAR(100),
    Apellido      NVARCHAR(100),
    Telefono      INT,
    Direccion     NVARCHAR(200)
);

-- ============================================
-- TABLA: PEDIDOS
-- ============================================
CREATE TABLE Pedidos (
    IDPedido          INT PRIMARY KEY,
    FechaPedido       DATE,
    Direccion         NVARCHAR(200),
    DescripcionPedido NVARCHAR(300)
);

-- ============================================
-- TABLA: PROVEEDORES
-- ============================================
CREATE TABLE Proveedores (
    IDProveedor      INT PRIMARY KEY,
    NombreProveedor  NVARCHAR(100),
    Direccion        NVARCHAR(200),
    Telefono         INT
);

-- ============================================
-- TABLA: PRODUCTOS
-- ============================================
CREATE TABLE Productos (
    IDProducto       INT PRIMARY KEY,
    NombreProducto   NVARCHAR(100),
    Stock            INT,
    Precio           DECIMAL(10,2),
    IDProveedor      INT,
    CONSTRAINT FK_Productos_Proveedores 
        FOREIGN KEY (IDProveedor) REFERENCES Proveedores(IDProveedor)
);

-- ============================================
-- TABLA: COMPRA
-- ============================================
CREATE TABLE Compra (
    IDCompra     NVARCHAR(50) PRIMARY KEY,
    FechaCompra  DATE,
    DNI          INT,              -- FK hacia Clientes
    IDPedido     INT,              -- FK hacia Pedidos
    IDFactura    NVARCHAR(50),     -- FK hacia Factura (se agrega después)
    IDProducto   INT,              -- FK hacia Productos

    CONSTRAINT FK_Compra_Clientes 
        FOREIGN KEY (DNI) REFERENCES Clientes(DNI),

    CONSTRAINT FK_Compra_Pedidos 
        FOREIGN KEY (IDPedido) REFERENCES Pedidos(IDPedido),

    CONSTRAINT FK_Compra_Productos
        FOREIGN KEY (IDProducto) REFERENCES Productos(IDProducto)
);

-- ============================================
-- TABLA: FACTURA
-- ============================================
CREATE TABLE Factura (
    IDFactura     NVARCHAR(50) PRIMARY KEY,
    IDCompra      NVARCHAR(50),   -- FK hacia Compra
    FechaEmision  DATE,
    MontoTotal    DECIMAL(10,2),

    CONSTRAINT FK_Factura_Compra
        FOREIGN KEY (IDCompra) REFERENCES Compra(IDCompra)
);

-- ============================================
-- RELACIÓN CIRCULAR: Compra -> Factura
-- ============================================
-- Ahora que Factura está creada, podemos agregar la FK de Compra a Factura
ALTER TABLE Compra
ADD CONSTRAINT FK_Compra_Factura 
    FOREIGN KEY (IDFactura) REFERENCES Factura(IDFactura);
GO
