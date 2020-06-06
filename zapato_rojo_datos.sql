SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Records of clientes
-- ----------------------------
BEGIN;
INSERT INTO `clientes` VALUES (1, 'JUAN', 'NAVARRO', 'LOPEZ', 'MEXICO');
INSERT INTO `clientes` VALUES (2, 'MARIA', 'GONZALEZ', 'FERNANDEZ', 'CHILE');
INSERT INTO `clientes` VALUES (3, 'RUBEN', 'HERNANDEZ', 'SUAREZ', 'COLOMBIA');
INSERT INTO `clientes` VALUES (4, 'CARLOS ANDRES', 'SANCHEZ', 'GONZALEZ', 'MEXICO');
INSERT INTO `clientes` VALUES (5, 'OSCAR', 'CALDERON', 'RUIZ', 'VENEZUELA');
COMMIT;

-- ----------------------------
-- Records of facturas
-- ----------------------------
BEGIN;
INSERT INTO `facturas` VALUES (1, 1, 1, 2, 0.16, 0.05, 96.70, '2020-06-01');
INSERT INTO `facturas` VALUES (2, 1, 3, 1, 0.16, 0.05, 24.60, '2020-06-01');
INSERT INTO `facturas` VALUES (3, 3, 4, 1, 0.16, 0.00, 45.90, '2020-06-02');
INSERT INTO `facturas` VALUES (4, 2, 1, 1, 0.16, 0.15, 43.27, '2020-06-03');
INSERT INTO `facturas` VALUES (5, 2, 2, 1, 0.16, 0.15, 26.27, '2020-06-03');
INSERT INTO `facturas` VALUES (6, 2, 3, 1, 0.16, 0.15, 22.02, '2020-06-03');
INSERT INTO `facturas` VALUES (7, 2, 4, 1, 0.16, 0.15, 39.02, '2020-06-03');
COMMIT;

-- ----------------------------
-- Records of inventario
-- ----------------------------
BEGIN;
INSERT INTO `inventario` VALUES (1, 1, 'ENTRADA', '2020-05-07', 50);
INSERT INTO `inventario` VALUES (2, 2, 'ENTRADA', '2020-05-07', 30);
INSERT INTO `inventario` VALUES (3, 3, 'ENTRADA', '2020-05-11', 30);
INSERT INTO `inventario` VALUES (4, 4, 'ENTRADA', '2020-05-11', 50);
INSERT INTO `inventario` VALUES (5, 1, 'SALIDA', '2020-06-01', 2);
INSERT INTO `inventario` VALUES (6, 3, 'SALIDA', '2020-06-01', 1);
INSERT INTO `inventario` VALUES (7, 4, 'SALIDA', '2020-06-02', 1);
INSERT INTO `inventario` VALUES (8, 1, 'SALIDA', '2020-06-03', 1);
INSERT INTO `inventario` VALUES (9, 2, 'SALIDA', '2020-06-03', 1);
INSERT INTO `inventario` VALUES (10, 3, 'SALIDA', '2020-06-03', 1);
INSERT INTO `inventario` VALUES (11, 4, 'SALIDA', '2020-06-03', 1);
COMMIT;

-- ----------------------------
-- Records of productos
-- ----------------------------
BEGIN;
INSERT INTO `productos` VALUES (1, 'NOVA FLOW', 'DEPORTIVO', 'URBANO', 'GRIS', 'ADIDAS', 50.90);
INSERT INTO `productos` VALUES (2, 'FLAT NEGRO', 'MOCASIN', 'FORMAL', 'NEGRO', 'FLEXI', 30.90);
INSERT INTO `productos` VALUES (3, 'STORM SPLASH', 'BOTA', 'LLUVIA', 'ROSA', 'ANDREA', 25.90);
INSERT INTO `productos` VALUES (4, 'ZAPATILLA STRAP', 'ZAPATILLA', 'FORMAL', 'BEIGE', 'FERRATO', 45.90);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
