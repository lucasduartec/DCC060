/*LISTA DE CLIENTES JUNTO COM SEUS RESPECTIVOS PEDIDOS ORDENADOS PELOS CLIENTES EM ORDEM ALFABÉTICA E DEPOIS PELO PEDIDO*/
SELECT 
		c.nome || ' ' || c.sobrenome AS nome_cliente,
		p.id_pedido
FROM 
	cliente c
		inner join pedido p ON (c.id_cliente = p.id_cliente)
ORDER BY
		nome_cliente ASC,
		p.id_pedido;
		
		
/*LISTA DE PEDIDOS COM SEUS RESPECTIVOS CLIENTES E FUNCIONARIOS ORDENADOS PELO ID DO PEDIDO*/
SELECT 
    fp.id_pedido,
    f.nome AS nome_funcionario,
    c.nome AS nome_cliente
FROM 
    funcionario_atende_pedido fp
    INNER JOIN funcionario f ON fp.id_funcionario = f.id_funcionario
    INNER JOIN pedido p ON fp.id_pedido = p.id_pedido
    INNER JOIN cliente c ON p.id_cliente = c.id_cliente
ORDER BY
	fp.id_pedido;


/*LISTA PEDIDOS E ITENS*/
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
		
			
/*LISTA FUNCIONARIO DE ACORDO COM SEUS ATENDIMENTOS EM CADA MESA*/
SELECT 
		f.nome || ' ' || f.sobrenome AS nome_funcionario,
		p.data_pedido,
		m.numero_mesa as mesa_atendida,
		fap.id_pedido
FROM
		mesa_ocupa_pedido as mop
		INNER JOIN mesa as m ON (m.id_mesa = mop.id_mesa)
		INNER JOIN funcionario_atende_pedido as fap ON (mop.id_pedido = fap.id_pedido)
		INNER JOIN funcionario as f ON (f.id_funcionario = fap.id_funcionario)
		INNER JOIN pedido as p ON (p.id_pedido = fap.id_pedido)
ORDER BY 
		f.nome ASC,
		p.data_pedido,
		mesa_atendida;

/*LISTA OS CLIENTE E OS GASTOS TOTAIS NO RESTAURANTE COM TODOS OS PEDIDOS.*/
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
