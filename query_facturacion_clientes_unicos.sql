/*
Consulta para obtener la información de facturación de clientes únicos
*/

-- Se busca en la tabla facturas la información de los clientes que han comprado
SELECT
	CONCAT_WS( ' ', c.nombre, c.ap_paterno, c.ap_materno ) AS nombre_cliente,
	SUM(f.cantidad) AS total_productos_comprados, -- Se realiza la sumatoria de la cantidad de productos que ha comprado el cliente
	SUM(f.pago) AS total_pagado -- Se hace la sumatoria del total que ha pagado el cliente
FROM
	facturas AS f
	LEFT JOIN clientes AS c ON c.id = f.id_cliente -- Se hace la relación con la tabla clientes para obtener el nombre del cliente
	GROUP BY f.id_cliente -- Se agrupa por id_cliente para obtener todos los clientes que han comprado