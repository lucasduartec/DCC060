/*CLIENTE*/

INSERT INTO cliente (nome, sobrenome, telefone, email)
VALUES 	('Rodrigo', 'Soares', '24988679969', 'rodrigo@gmail.com'),
		('Lucas', 'Duarte', '24999999991', 'lucasduarte@hotmail.com'),
		('Fabiana', 'Soares', '24999999992', 'fabiana@yahoo.com'),
		('Mariana', 'Gomes', '2199885544', 'mariana@email.com'),
		('Lucas', 'Pereira', '1199443322', 'lucas@email.com'),
		('Julia', 'Rodrigues', '1199228811', 'julia@email.com'),
		('Fernando', 'Oliveira', '2199771122', 'fernando@email.com'),
		('Camila', 'Almeida', '2199667788', 'camila@email.com'),
		('Gustavo', 'Santana', '1199553344', 'gustavo@email.com'),
		('Isabela', 'Martins', '1199881122', 'isabela@email.com'),
		('Rafael', 'Lima Pereira', '2199554433', 'rafael@email.com'),
		('Aline', 'Silva Santos', '3199776655', 'aline@email.com'),
		('Bruno', 'Ferreira Souza', '1199887766', 'bruno@email.com'),
		('Patrícia', 'Garcia Oliveira', '2199885544', 'patricia@email.com'),
		('Diego', 'Martins Almeida', '1199443322', 'diego@email.com'),
		('Larissa', 'Rodrigues Costa', '1199228811', 'larissa@email.com'),
		('Thiago', 'Pereira Lima', '2199771122', 'thiago@email.com'),
		('Cristina', 'Santos Costa', '2199667788', 'cristina@email.com'),
		('Felipe', 'Mendes Silva', '1199553344', 'felipe@email.com'),
		('Marina', 'Ribeiro Almeida', '1199881122', 'marina@email.com');


/*PEDIDO*/

INSERT INTO pedido (id_cliente, data_pedido, estado_pedido)
VALUES 	('1', '03/07/2023', 'Preparando'),
		('2', '02/08/2023', 'Pronto'),
		('3', '02/08/2023', 'Entregue'),
		('1', '02/10/2023', 'Preparando'),
		('2', '02/10/2023', 'Pronto'),
		('3', '02/10/2023', 'Entregue'),
		('4', '03/10/2023', 'Preparando'),
		('5', '03/10/2023', 'Pronto'),
		('6', '03/10/2023', 'Entregue'),
		('7', '04/10/2023', 'Preparando'),
		('8', '04/10/2023', 'Pronto'),
		('9', '04/10/2023', 'Entregue'),
		('10', '05/10/2023', 'Preparando'),
		('11', '05/10/2023', 'Pronto'),
		('12', '05/10/2023', 'Entregue'),
		('13', '06/10/2023', 'Preparando'),
		('14', '06/10/2023', 'Pronto'),
		('15', '06/10/2023', 'Entregue'),
		('16', '07/10/2023', 'Preparando'),
		('17', '07/10/2023', 'Pronto'),
		('18', '07/10/2023', 'Entregue'),
		('19', '08/10/2023', 'Preparando'),
		('20', '08/10/2023', 'Pronto'),
		('1', '09/10/2023', 'Preparando'),
		('2', '09/10/2023', 'Preparando'),
		('3', '09/10/2023', 'Preparando'),
		('4', '09/10/2023', 'Preparando'),
		('5', '09/10/2023', 'Preparando'),
		('6', '09/10/2023', 'Preparando'),
		('7', '09/10/2023', 'Preparando'),
		('8', '09/10/2023', 'Preparando'),
		('1', '10/10/2023', 'Pronto'),
		('2', '10/10/2023', 'Pronto'),
		('3', '10/10/2023', 'Pronto'),
		('4', '10/10/2023', 'Pronto'),
		('5', '10/10/2023', 'Pronto'),
		('6', '10/10/2023', 'Pronto'),
		('7', '10/10/2023', 'Pronto'),
		('8', '10/10/2023', 'Pronto'),
		('1', '11/10/2023', 'Entregue'),
		('2', '11/10/2023', 'Entregue'),
		('3', '11/10/2023', 'Entregue'),
		('4', '11/10/2023', 'Entregue'),
		('5', '11/10/2023', 'Entregue'),
		('6', '11/10/2023', 'Entregue'),
		('7', '11/10/2023', 'Entregue'),
		('8', '11/10/2023', 'Entregue'),
		('1', '12/10/2023', 'Preparando'),
		('2', '12/10/2023', 'Preparando'),
		('3', '12/10/2023', 'Preparando'),
		('4', '12/10/2023', 'Preparando'),
		('5', '12/10/2023', 'Preparando'),
		('6', '12/10/2023', 'Preparando'),
		('7', '12/10/2023', 'Preparando'),
		('8', '12/10/2023', 'Preparando'),
		('1', '13/10/2023', 'Pronto'),
		('2', '13/10/2023', 'Pronto'),
		('3', '13/10/2023', 'Pronto'),
		('4', '13/10/2023', 'Pronto'),
		('5', '13/10/2023', 'Pronto'),
		('6', '13/10/2023', 'Pronto'),
		('7', '13/10/2023', 'Pronto'),
		('8', '13/10/2023', 'Pronto'),
		('1', '14/10/2023', 'Entregue'),
		('2', '14/10/2023', 'Entregue'),
		('3', '14/10/2023', 'Entregue'),
		('4', '14/10/2023', 'Entregue'),
		('5', '14/10/2023', 'Entregue'),
		('6', '14/10/2023', 'Entregue'),
		('7', '14/10/2023', 'Entregue'),
		('8', '14/10/2023', 'Entregue');


/*ITEM */

INSERT INTO item (nome_item, preco_item, categoria_item)
VALUES 	('Paillard de filet', 89.90, 'Prato Principal'),
		('Steak tartare', 99.80, 'Prato Principal'),
		('Risoto de cogumelos com ancho', 110.90, 'Prato Principal'),
		('Filet Mignon ao Molho de Vinho Tinto', 79.90, 'Prato Principal'),
		('Salmão Grelhado com Molho de Maracujá', 69.90, 'Prato Principal'),
		('Pato Confit com Purê de Maçã', 59.90, 'Prato Principal'),
		('Tagliolini com Frutos do Mar Frescos', 49.90, 'Prato Principal'),
		('Linguado ao Beurre Blanc e Ervas Finas', 139.90, 'Prato Principal'),
		('Robalo Grelhado com Crosta de Castanhas', 129.90, 'Prato Principal'),
		('Medalhão de Lagosta ao Molho de Champagne', 119.90, 'Prato Principal'),

		('London Peperontino', 49.90, 'Entrada'),
		('Cordeiro marroquino', 39.90, 'Entrada'),
		('Carpaccio de Wagyu com Rúcula e Parmesão', 29.90, 'Entrada'),
		('Tartare de Salmão com Caviar', 19.90, 'Entrada'),
		('Ostras Frescas ao Natural', 59.90, 'Entrada'),
		('Terrine de Foie Gras com Geleia de Frutas Vermelhas', 69.90, 'Entrada'),
		('Camarões Grelhados ao Perfume de Limão Siciliano', 79.90, 'Entrada'),
		('Salada de Rúcula com Queijo de Cabra e Amêndoas Tostadas', 89.90, 'Entrada'),
		('Vieiras Grelhadas com Creme de Ervas', 99.90, 'Entrada'),
		('Carpaccio de Polvo com Vinagrete de Pimentões', 109.90, 'Entrada'),

		('Coca KS', 9.90, 'Bebida'),
		('Coca 310ml', 6.90, 'Bebida'),
		('Mojito de Maracujá com Manjericão', 4.90, 'Bebida'),
		('Caipirinha de Morango e Capim Limão', 3.90, 'Bebida'),
		('Bellini de Pêssego Branco', 8.90, 'Bebida'),
		('Gin Tônica de Pepino e Alecrim', 7.90, 'Bebida'),
		('Coquetel de Maracujá com Infusão de Baunilha', 5.90, 'Bebida'),
		('Mocktail de Framboesa e Hortelã', 2.90, 'Bebida'),
		('Spritz de Aperol com Laranja Siciliana', 10.90, 'Bebida'),
		('Sangria de Frutas Vermelhas e Cravo', 12.90, 'Bebida');

/*FUNCIONARIO */
INSERT INTO funcionario (nome, sobrenome, cargo, salario)
VALUES 	('Jorge', 'Remy', 'Chef', 3000.00),
		('Carlos', 'Oliveira', 'Garçom', 2500.00),
		('Mariana', 'Lima', 'Garçom', 1800.00),
		('Gabriel', 'Pereira', 'Garçom', 1800.00),
		('Ana', 'Santos', 'Cozinheiro', 2000.00),
		('Rafael', 'Martins', 'Cozinheiro', 2000.00),
		('Fernanda', 'Costa', 'Cozinheiro', 2000.00),
		('Eduardo', 'Alves', 'Cozinheiro', 2000.00),
		('Julia', 'Almeida', 'Cozinheiro', 2000.00),
		('Lucas', 'Rodrigues', 'Recepcionista', 1800.00),
		('Isabela', 'Ferreira', 'Recepcionista', 1800.00),
		('Vinícius', 'Santana', 'Faxineiro', 1500.00),
		('Carla', 'Oliveira', 'Faxineiro', 1500.00);		

/*MESA*/
INSERT INTO mesa (numero_mesa, capacidade)
VALUES 	(1, 2),
		(2, 4),
		(3, 2),
		(4, 4),
		(5, 2),
		(6, 4),
		(7, 2),
		(8, 4),
		(9, 2),
		(10, 4),
		(11, 2),
		(12, 4),
		(13, 2),
		(14, 4),
		(15, 2),
		(16, 4),
		(17, 2),
		(18, 4),
		(19, 2),
		(20, 4);

/*CLIENTE REALIZA PEDIDO*/


SELECT * from cliente;
SELECT * from pedido;
SELECT * from item;
SELECT * from funcionario;
SELECT * from mesa;
DELETE FROM mesa;

