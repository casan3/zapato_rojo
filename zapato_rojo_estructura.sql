SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- Instrucción opcional para crear la base de datos.
-- CREATE DATABASE `zapato_rojo` CHARACTER SET 'latin1' COLLATE 'latin1_spanish_ci';
-- USE zapato_rojo;
-- -------------------------------------------------------------------------------


-- ----------------------------
-- Table structure for clientes
-- ----------------------------
DROP TABLE IF EXISTS `clientes`;
CREATE TABLE `clientes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `ap_paterno` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `ap_materno` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `pais` varchar(50) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- ----------------------------
-- Table structure for facturas
-- ----------------------------
DROP TABLE IF EXISTS `facturas`;
CREATE TABLE `facturas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_cliente` int(11) DEFAULT NULL,
  `id_producto` int(11) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `impuesto` float(4,2) DEFAULT NULL,
  `descuento` float(4,2) DEFAULT NULL,
  `pago` decimal(9,2) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_cliente` (`id_cliente`),
  KEY `id_producto` (`id_producto`),
  CONSTRAINT `facturas_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id`),
  CONSTRAINT `facturas_ibfk_2` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- ----------------------------
-- Table structure for inventario
-- ----------------------------
DROP TABLE IF EXISTS `inventario`;
CREATE TABLE `inventario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_producto` int(11) DEFAULT NULL,
  `tipo_de_movimiento` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_producto` (`id_producto`),
  CONSTRAINT `inventario_ibfk_1` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- ----------------------------
-- Table structure for productos
-- ----------------------------
DROP TABLE IF EXISTS `productos`;
CREATE TABLE `productos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) COLLATE latin1_spanish_ci DEFAULT NULL,
  `tipo` varchar(30) COLLATE latin1_spanish_ci DEFAULT NULL,
  `ocasion` varchar(30) COLLATE latin1_spanish_ci DEFAULT NULL,
  `color` varchar(30) COLLATE latin1_spanish_ci DEFAULT NULL,
  `marca` varchar(30) COLLATE latin1_spanish_ci DEFAULT NULL,
  `precio` decimal(6,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

SET FOREIGN_KEY_CHECKS = 1;
