/*LISTA DE CLIENTES JUNTO COM SEUS RESPECTIVOS PEDIDOS ORDENADOS PELOS CLIENTES EM ORDEM ALFABÉTICA E DEPOIS PELO PEDIDO*/
SELECT 
		c.nome as nome_cliente,
		c.sobrenome as sobrenome_cliente,
		p.id_pedido
FROM 
	cliente c
		inner join pedido p ON (c.id_cliente = p.id_cliente)
ORDER BY
		c.nome ASC,
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


/*LISTA CLIENTES COM SEUS RESPECTIVOS PEDIDOS E ITENS NOS PEDIDOS*/
SELECT 
		c.nome as nome_cliente,
		c.sobrenome as sobrenome_cliente,
		p.id_pedido, 
		i.nome_item, 
		pci.quantidade
FROM
		pedido_contem_item as pci
		INNER JOIN pedido as p ON (p.id_pedido = pci.id_pedido)
		INNER JOIN cliente as c ON (p.id_cliente = c.id_cliente)
		INNER JOIN item as i ON (i.id_item = pci.id_item)
ORDER BY 
		c.nome ASC;
			
/*LISTA FUNCIONARIO DE ACORDO COM SEUS ATENDIMENTOS EM CADA MESA*/
SELECT 
		f.nome as nome_funcionario,
		f.sobrenome as sobrenome_funcionario, 
		m.numero_mesa as mesa_atendida
FROM
		mesa_ocupa_pedido as mop
		INNER JOIN mesa as m ON (m.id_mesa = mop.id_mesa)
		INNER JOIN funcionario_atende_pedido as fap ON (mop.id_pedido = fap.id_pedido)
		INNER JOIN funcionario as f ON (f.id_funcionario = fap.id_funcionario)
ORDER BY 
		f.nome ASC,
		mesa_atendida;

/*LISTA OS ITENS E O PREÇO DE CADA PEDIDO ATENDIDO POR UM DETERMINADO FUNCIONARIO.*/
SELECT 
		f.nome AS nome_funcionario,
		p.id_pedido,
		i.nome_item, 
		i.preco_item
FROM 
		pedido p
			INNER JOIN pedido_contem_item pci ON p.id_pedido = pci.id_pedido
			INNER JOIN item i ON pci.id_item = i.id_item
			INNER JOIN funcionario_atende_pedido fa ON p.id_pedido = fa.id_pedido
			INNER JOIN funcionario f ON fa.id_funcionario = f.id_funcionario
ORDER BY 
		nome_funcionario ASC,
		p.id_pedido;
