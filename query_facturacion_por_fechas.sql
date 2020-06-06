/*
Consulta para obtener la información de facturación de un rango de fechas
*/

-- Se asignan las variables @fecha_inicio y @fecha_fin
SET @fecha_inicio = '2020-06-01';
SET @fecha_fin = '2020-06-02';

-- Se busca en la tabla facturas la información por rango de fechas
SELECT
	CONCAT_WS( ' ', c.nombre, c.ap_paterno, c.ap_materno ) AS nombre_cliente,
	p.nombre AS nombre_producto,
	f.cantidad,
	f.impuesto,
	f.descuento,
	f.pago,
	f.fecha 
FROM
	facturas AS f
	LEFT JOIN clientes AS c ON c.id = f.id_cliente -- Se hace la relación con la tabla clientes para obtener el nombre del cliente
	LEFT JOIN productos AS p ON p.id = f.id_producto -- Se hace la relación con la tabla productos para obtener el nombre del producto
	
WHERE
	f.fecha BETWEEN @fecha_inicio AND @fecha_fin