/* Itens mais pedidos */
/* Com essa informação, podemos melhorar o abastecimento do estoque com os ingredientes usados nos pratos mais pedidos e criar promoções sobre os itens */

SELECT i.nome_item,
SUM(contem.quantidade) AS total_pedidos
FROM item i
INNER JOIN pedido_contem_item contem ON i.id_item = contem.id_item
GROUP BY i.nome_item
ORDER BY total_pedidos DESC;

/* Funcionário que atendeu a mais/menos pedidos */
/* A partir dessa informação, podemos saber qual funcionário que mais atende aos pedidos ou algum funcionário que está com rendimento baixo. */

SELECT f.nome,
COUNT(atend.id_pedido) AS total_pedidos_atendidos
FROM funcionario f
INNER JOIN funcionario_atende_pedido atend ON f.id_funcionario = atend.id_funcionario
GROUP BY f.nome
ORDER BY total_pedidos_atendidos DESC;

/* Mesas com mais/menos pedidos */
/* A partir dessa informação, podemos estudar quais mesas são mais requisitadas pelos clientes (devido a localização no restaurante, por ex.) e as que são
menos preferidas. Dessa forma, podemos observar pontos de melhoria nessas áreas. */

SELECT m.numero_mesa,
COUNT(mop.id_pedido) AS total_ocupacoes
FROM mesa m
INNER JOIN mesa_ocupa_pedido mop ON m.id_mesa = mop.id_mesa
GROUP BY m.numero_mesa
ORDER BY total_ocupacoes DESC;

/* Total de pedidos por cliente */
/* Esse dado pode ser útil para programas de fidelidade ou promoções direcionadas. */

SELECT c.nome || ' ' || c.sobrenome AS nome_cliente,
COUNT(p.id_pedido) AS total_pedidos
FROM cliente c
INNER JOIN pedido p ON c.id_cliente = p.id_cliente
GROUP BY nome_cliente
ORDER BY total_pedidos DESC;

/*  Quantidade total de itens vendidos em cada categoria */
/* Permite identificar quais categorias de itens são mais populares entre os clientes */

SELECT i.categoria_item,
SUM (contem.quantidade) AS total_itens_vendidos
FROM item i
INNER JOIN pedido_contem_item contem ON i.id_item = contem.id_item
GROUP BY i.categoria_item
ORDER BY total_itens_vendidos DESC;

