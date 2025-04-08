
-- Insertar datos en Clientes
INSERT INTO Clientes (DNI, Nombres, Apellido, Telefono, Direccion) VALUES
(1001, 'Ana', 'P�rez', 987654321, 'Av. Per� 123'),
(1002, 'Luis', 'Ram�rez', 988112233, 'Calle Lima 456'),
(1003, 'Mar�a', 'G�mez', 944332211, 'Jr. Amazonas 789'),
(1004, 'Carlos', 'Torres', 933445566, 'Av. Grau 147'),
(1005, 'Luc�a', 'S�nchez', 955667788, 'Pasaje Olivos 33'),
(1006, 'Jorge', 'Mart�nez', 922334455, 'Av. El Sol 10'),
(1007, 'Camila', 'Flores', 911222333, 'Calle 5 Mz A Lote 6'),
(1008, 'Andr�s', 'Castro', 977889900, 'Jr. Hu�nuco 777'),
(1009, 'Valeria', 'R�os', 900111222, 'Av. Principal 100'),
(1010, 'Eduardo', 'Mendoza', 944556677, 'Urbanizaci�n Vista Alegre');

-- Insertar datos en Pedidos
INSERT INTO Pedidos (IDPedido, FechaPedido, Direccion, DescripcionPedido) VALUES
(1, '2025-04-01', 'Av. Per� 123', 'Pedido de productos varios'),
(2, '2025-04-01', 'Calle Lima 456', 'Pedido urgente'),
(3, '2025-04-02', 'Jr. Amazonas 789', 'Pedido est�ndar'),
(4, '2025-04-03', 'Av. Grau 147', 'Productos electr�nicos'),
(5, '2025-04-03', 'Pasaje Olivos 33', 'Art�culos escolares'),
(6, '2025-04-04', 'Av. El Sol 10', 'Productos para oficina'),
(7, '2025-04-05', 'Calle 5 Mz A Lote 6', 'Pedido con descuento'),
(8, '2025-04-05', 'Jr. Hu�nuco 777', 'Pedido al por mayor'),
(9, '2025-04-06', 'Av. Principal 100', 'Art�culos varios'),
(10, '2025-04-06', 'Urbanizaci�n Vista Alegre', 'Entrega especial');

-- Insertar datos en Proveedores
INSERT INTO Proveedores (IDProveedor, NombreProveedor, Direccion, Telefono) VALUES
(1, 'Distribuciones Global', 'Av. Central 999', 998877665),
(2, 'Proveedora Andes', 'Calle Comercio 111', 987123456),
(3, 'Mega Supply', 'Jr. Mercados 22', 955556677),
(4, 'ElectroPer� S.A.', 'Av. Electr�nica 404', 911223344),
(5, 'OfiProveedores', 'Pasaje Oficina 88', 944112233),
(6, 'Papeler�a Total', 'Calle Lapiceros 13', 922223344),
(7, 'ProveedorUno', 'Av. Alta 20', 900456789),
(8, 'Importaciones A&B', 'Jr. Arequipa 777', 933334455),
(9, 'PeruSupply', 'Calle Lima Norte', 977888999),
(10, 'SmartTech', 'Av. Sur 333', 911009988);

-- Insertar datos en Productos
INSERT INTO Productos (IDProducto, NombreProducto, Stock, Precio, IDProveedor) VALUES
(1, 'Laptop Lenovo', 10, 2500.00, 4),
(2, 'Mouse inal�mbrico', 50, 45.90, 3),
(3, 'Teclado mec�nico', 30, 89.99, 3),
(4, 'Monitor 24 pulgadas', 15, 650.00, 4),
(5, 'Silla ergon�mica', 20, 320.50, 5),
(6, 'Cuaderno A4', 100, 8.90, 6),
(7, 'Bol�grafo azul', 200, 1.20, 6),
(8, 'Router WiFi', 18, 120.00, 8),
(9, 'Aud�fonos', 40, 79.00, 4),
(10, 'Impresora HP', 12, 600.00, 2);

-- Insertar datos en Compra
INSERT INTO Compra (IDCompra, FechaCompra, DNI, IDPedido, IDFactura, IDProducto) VALUES
('C001', '2025-04-01', 1001, 1, 'F001', 1),
('C002', '2025-04-01', 1002, 2, 'F002', 2),
('C003', '2025-04-02', 1003, 3, 'F003', 4),
('C004', '2025-04-02', 1004, 4, 'F004', 6),
('C005', '2025-04-03', 1005, 5, 'F005', 5),
('C006', '2025-04-03', 1006, 6, 'F006', 3),
('C007', '2025-04-04', 1007, 7, 'F007', 7),
('C008', '2025-04-05', 1008, 8, 'F008', 8),
('C009', '2025-04-06', 1009, 9, 'F009', 9),
('C010', '2025-04-06', 1010, 10, 'F010', 10);

-- Insertar datos en Factura
INSERT INTO Factura (IDFactura, IDCompra, FechaEmision, MontoTotal) VALUES
('F001', 'C001', '2025-04-01', 2500.00),
('F002', 'C002', '2025-04-01', 45.90),
('F003', 'C003', '2025-04-02', 650.00),
('F004', 'C004', '2025-04-02', 8.90),
('F005', 'C005', '2025-04-03', 320.50),
('F006', 'C006', '2025-04-03', 89.99),
('F007', 'C007', '2025-04-04', 1.20),
('F008', 'C008', '2025-04-05', 120.00),
('F009', 'C009', '2025-04-06', 79.00),
('F010', 'C010', '2025-04-06', 600.00);