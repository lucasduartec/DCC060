/*LISTA DE CLIENTES JUNTO COM SEUS RESPECTIVOS PEDIDOS ORDENADOS*/
SELECT 
		c.nome || ' ' || c.sobrenome AS nome_cliente,
		p.id_pedido
FROM 
	cliente c
		inner join pedido p ON (c.id_cliente = p.id_cliente)
ORDER BY
		nome_cliente ASC,
		p.id_pedido;
		
		
/*LISTA DE PEDIDOS COM SEUS RESPECTIVOS VALORES TOTAIS*/
SELECT 
		p.id_pedido,
		SUM(pci.quantidade * i.preco_item) as total_pedido
FROM 
		pedido p 
			inner join pedido_contem_item pci ON (p.id_pedido = pci.id_pedido)
			inner join item i on (pci.id_item = i.id_item)
GROUP BY
		p.id_pedido
ORDER BY
		p.id_pedido;
			

/*LISTA PEDIDOS JUNTO DOS ITENS*/
SELECT 
		p.id_pedido, 
		i.nome_item, 
		pci.quantidade
FROM
		pedido_contem_item as pci
		INNER JOIN pedido as p ON (p.id_pedido = pci.id_pedido)
		INNER JOIN item as i ON (i.id_item = pci.id_item)
ORDER BY 
		p.id_pedido;
		
			
/* LISTA FUNCIONARIO DE ACORDO COM SEUS ATENDIMENTOS EM CADA MESA */
SELECT 
    f.nome || ' ' || f.sobrenome AS nome_funcionario,
    m.numero_mesa AS mesa_atendida,
    p.id_pedido,
	p.data_pedido
FROM
    pedido p
    INNER JOIN mesa m ON p.id_mesa = m.id_mesa
    INNER JOIN funcionario f ON p.id_funcionario = f.id_funcionario
ORDER BY 
    f.nome ASC,
    p.data_pedido;

/*LISTA OS CLIENTES E OS GASTOS TOTAIS NO RESTAURANTE COM TODOS OS PEDIDOS.*/
SELECT 
		c.nome || ' ' || c.sobrenome AS nome_cliente,
		SUM(i.preco_item * pci.quantidade) AS total_gasto
FROM 
		cliente as c
			INNER JOIN pedido p ON c.id_cliente = p.id_cliente
			INNER JOIN pedido_contem_item pci ON p.id_pedido = pci.id_pedido
			INNER JOIN item i ON pci.id_item = i.id_item
GROUP BY 
			nome_cliente;	
