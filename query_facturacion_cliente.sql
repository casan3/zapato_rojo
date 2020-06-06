/*
Consulta para obtener la información de facturación de un cliente en específico
*/

-- Se asigna a la variable @id_cliente el id del cliente a buscar
SET @id_cliente = 1;

-- Se busca en la tabla facturas la información del cliente con el id de @id_cliente
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
	f.id_cliente = @id_cliente