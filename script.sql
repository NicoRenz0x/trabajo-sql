CREATE TABLE `usuarios` (
   `id` INT NOT NULL AUTO_INCREMENT,
   `nombre` TEXT NOT NULL,
   `email` TEXT NOT NULL,
   PRIMARY KEY (`id`)
);

CREATE TABLE `notas` (
   `id` INT NOT NULL AUTO_INCREMENT,
   `titulo` VARCHAR(100) NOT NULL,
   `creador` INT NOT NULL,
   `fechacreacion` DATE NOT NULL,
   `ultimamodificacion` datetime,
   `descripcion` LONGTEXT,
   `deleteable` BOOL NOT NULL,
   PRIMARY KEY (`id`)
);

CREATE TABLE `Categorias` (
   `id` INT NOT NULL AUTO_INCREMENT,
   `nombre` TINYTEXT NOT NULL,
   PRIMARY KEY (`id`)
);

CREATE TABLE `notas-categorias` (
   `idnota` int NOT NULL,
   `idcategoria` INT NOT NULL
);


ALTER TABLE `notas` ADD CONSTRAINT `FK_86a009b4-8ab4-46e4-93f1-0191d742c67e` FOREIGN KEY (`creador`) REFERENCES `usuarios`(`id`);

ALTER TABLE `notas-categorias` ADD CONSTRAINT `FK_719cc892-f2b8-4e7c-99a7-f5c4dee78dc3` FOREIGN KEY (`idnota`) REFERENCES `notas`(`id`);

ALTER TABLE `notas-categorias` ADD CONSTRAINT `FK_658f688a-59bb-4fe4-ad87-f6b2bc3e8e0f` FOREIGN KEY (`idcategoria`) REFERENCES `Categorias`(`id`);

insert into `usuarios` values
('1','Nicolas','nicolas@hotmail.com.ar'),
('2','Roberto','roberto@hotmail.com.ar'),
('3','Juan','juan@hotmail.com.ar'),
('4','Alberto','alberto@hotmail.com.ar'),
('5','Fabian','fabian@hotmail.com.ar'),
('6','Carlos','carlos@hotmail.com.ar'),
('7','Mariano','mariano@hotmail.com.ar'),
('8','Maria','maria@hotmail.com.ar'),
('9','Laura','laura@hotmail.com.ar'),
('10','Eugenia','eugenia@hotmail.com.ar');


insert into `categorias` values
('1','Ocio'),
('2','Trabajo'),
('3','Estudio'),
('4','Compras'),
('5','Recordatorios'),
('6','Proyectos'),
('7','Apuntes'),
('8','Finanzas'),
('9','Casa'),
('10','Auto');

insert into `notas` values
('1','Cena Familiar','1','22/10/2021','22/10/2021 17:35:00','Cena - Casa Hermano - Retirar picada','1'),
('2','Picada p/ cena','1','22/10/2021','22/10/2021 17:36:00','Retirar picada Av. Siempre Viva 123, de 09 a 18hs. - Resta pagar el 50% ($1150)','1'),
('3','Cobro Seguro Auto','2','23/10/2021','24/10/2021 17:33:00','Retirar Cheque compañia seguros - Av. Siempre Viva 321 - Llevar documentación','1'),
('4','Documentación Seguro','2','23/10/2021','23/10/2021 17:30:00','Preparar documentación solicitada via mail','0'),
('5','Alquiler','3','24/10/2021','24/10/2021 17:30:00','Llevar adelanto alquiler noviembre','0'),
('6','Impuestos','3','24/10/2021','24/10/2021 11:30:00','Pagar impuestos liq. MeLi','0'),
('7','Reunión Consultora','5','25/10/2021','25/10/2021 09:30:00','Presentar métricas mes de septiembre','1'),
('8','Notas Programación','5','23/10/2021','25/10/2021 12:30:00','En el SQL modificar la tabla usuarios aplicando los cambios pendientes.','10'),
('9','Compras Finde','7','21/10/2021','21/10/2021 17:30:00','Armar Lista de compras para el fin de semana','1'),
('10','Lista Compras - Finde','7','21/10/2021','21/10/2021 17:35:00','Carbon - Verduras - Bebida - Protector','1');
