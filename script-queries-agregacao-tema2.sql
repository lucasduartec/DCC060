/* Mostra a quantidade total de vezes que cada item foi pedido */
/* Ao saber os itens mais pedidos, podemos melhorar o abastecimento do estoque com os ingredientes usados nesses pratos e criar promoções sobre produtos*/

SELECT i.nome_item,
SUM(contem.quantidade) AS total_pedidos
FROM item i
INNER JOIN pedido_contem_item contem ON i.id_item = contem.id_item
GROUP BY i.nome_item
ORDER BY total_pedidos DESC;

/* Mostra o total de pedidos atendidos por cada funcionário (garçom) */
/* A partir dessa informação, podemos saber qual funcionário mais atende aos pedidos, proporcionando um possível aumento salarial,
ou algum funcionário que está com rendimento baixo. */

SELECT f.nome AS nome_funcionario, COUNT(p.id_pedido) AS total_pedidos_atendidos
FROM pedido p
JOIN funcionario f ON p.id_funcionario = f.id_funcionario
GROUP BY f.nome
ORDER BY total_pedidos_atendidos DESC

/* Lista a quantidade total de pedidos por mesa */
/* A partir dessa informação, podemos estudar quais mesas são mais requisitadas pelos clientes (devido a localização no restaurante, por ex.) e as que são
menos preferidas. Dessa forma, podemos otimizar a disposição das mesas no restaurante. */

SELECT m.numero_mesa, COUNT(p.id_pedido) AS total_pedidos_na_mesa
FROM pedido p
JOIN mesa m ON p.id_mesa = m.id_mesa
GROUP BY m.numero_mesa
ORDER BY total_pedidos_na_mesa DESC

/* Lista o total de pedidos realizados por cada cliente */
/* Saber quais são os clientes mais frequentes pode ser útil para viabilizar programas de fidelidade ou promoções direcionadas. */

SELECT c.nome || ' ' || c.sobrenome AS nome_cliente,
COUNT(p.id_pedido) AS total_pedidos
FROM cliente c
INNER JOIN pedido p ON c.id_cliente = p.id_cliente
GROUP BY nome_cliente
ORDER BY total_pedidos DESC;

/*  Lista a quantidade total de itens vendidos em cada categoria */
/* Permite identificar quais categorias de itens são mais rentáveis e populares entre os clientes */

SELECT i.categoria_item,
SUM (contem.quantidade) AS total_itens_vendidos
FROM item i
INNER JOIN pedido_contem_item contem ON i.id_item = contem.id_item
GROUP BY i.categoria_item
ORDER BY total_itens_vendidos DESC;

