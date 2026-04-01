CREATE DATABASE consultas_m;
USE consultas_m;
CREATE TABLE usuario (idUsuario int8 primary key auto_increment, nombre varchar(30), apellido_p varchar(30),
apellido_m varchar(30), correo varchar(30), telefono int8(10));

CREATE TABLE categoria (idCategoria int8 primary key auto_increment, Nombre_catego varchar(50));

CREATE TABLE producto (idProducto int8 primary key auto_increment, nombre_p varchar(50), cantidad int8,
precio decimal(10,2), idCategoria int8, foreign key(idCategoria) references categoria(idCategoria) );

INSERT INTO categoria (nombre_catego) VALUES
('Electrónica'),
('Papelería'),
('Alimentos'),
('Herramientas'),
('Ropa');

INSERT INTO usuario (nombre, apellido_p, apellido_m, correo, telefono) VALUES
('Carlos', 'Ramírez', 'López', 'carlos.ramirez@gmail.com', '4771234567'),
('Ana', 'Martínez', 'Gómez', 'ana.martinez@gmail.com', '4772345678'),
('Luis', 'Hernández', 'Torres', 'luis.hernandez@gmail.com', '4773456789'),
('María', 'García', 'Flores', 'maria.garcia@gmail.com', '4774567890'),
('Jorge', 'Castillo', 'Ruiz', 'jorge.castillo@gmail.com', '4775678901');

INSERT INTO producto (nombre_p, cantidad, precio, idCategoria) VALUES
('Laptop HP', 10, 14500.00, 1),
('Mouse inalámbrico', 50, 350.00, 1),
('Cuaderno profesional', 100, 45.50, 2),
('Caja de plumas', 200, 75.00, 2),
('Galletas integrales', 80, 28.90, 3),
('Taladro eléctrico', 15, 2200.00, 4),
('Martillo', 40, 180.00, 4),
('Playera deportiva', 60, 250.00, 5);

select p.idProducto, p.nombre_p, p.precio, p.cantidad, c.nombre_catego
FROM producto p
INNER JOIN categoria c
on p.idCategoria = c.idCategoria;