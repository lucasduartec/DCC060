/*SELECIONA TODOS OS CLIENTES QUE NÃO POSSUEM PEDIDO*/
SELECT 
		c.nome, c.id_cliente
FROM 
		cliente c
LEFT JOIN 
		pedido p ON c.id_cliente = p.id_cliente
WHERE 
		p.id_pedido IS NULL;
