CREATE TABLE cliente (
		id_cliente serial not null primary key,
		nome text not null, 
		sobrenome text not null, 
		telefone text not null, 
		email text not null
);

CREATE TABLE pedido (
		id_pedido serial not null primary key,
		id_cliente integer REFERENCES cliente(id_cliente) ON UPDATE CASCADE ON DELETE RESTRICT not null,	
		data_pedido date not null,
		estado_pedido text not null
);

CREATE TABLE item (
		id_item serial not null primary key,
		nome_item text not null,
		preco_item numeric (10,2) not null,
		categoria_item text not null
);

CREATE TABLE funcionario(
		id_funcionario serial not null primary key,
		nome text not null,
		sobrenome text not null,
		cargo text not null,
		salario numeric (10,2) not null
);

CREATE TABLE mesa (
		id_mesa serial not null primary key,
		numero_mesa integer not null,
		capacidade integer not null
);

CREATE TABLE pedido_contem_item (
		id_contem serial not null primary key,
		id_pedido integer REFERENCES pedido(id_pedido) ON UPDATE CASCADE ON DELETE RESTRICT not null, 
		id_item integer REFERENCES item(id_item) ON UPDATE CASCADE ON DELETE RESTRICT not null, 
		quantidade integer not null
);

CREATE TABLE funcionario_atende_pedido (
		id_atendimento serial not null primary key, 
		id_funcionario integer REFERENCES funcionario(id_funcionario) ON UPDATE CASCADE ON DELETE RESTRICT not null,
		id_pedido integer REFERENCES pedido(id_pedido) ON UPDATE CASCADE ON DELETE RESTRICT not null,
		hora_atendimento time not null
);

CREATE TABLE mesa_ocupa_pedido (
		id_ocupacao serial not null primary key,
		id_mesa integer REFERENCES mesa(id_mesa) ON UPDATE CASCADE ON DELETE RESTRICT not null, 
		id_pedido integer REFERENCES pedido(id_pedido) ON UPDATE CASCADE ON DELETE RESTRICT not null,
		hora_inicio time not null, 
		hora_fim time not null
);

/* Index */
CREATE INDEX idx_pedido_cliente ON pedido(id_cliente);
CREATE INDEX idx_pedido_contem_item_pedido ON pedido_contem_item(id_pedido);
CREATE INDEX idx_pedido_contem_item_item ON  pedido_contem_item(id_item);
CREATE INDEX idx_funcionario_atende_pedido_funcionario ON funcionario_atende_pedido(id_funcionario);
CREATE INDEX idx_funcionario_atende_pedido_pedido ON funcionario_atende_pedido(id_pedido);
CREATE INDEX idx_mesa_ocupa_pedido_mesa ON mesa_ocupa_pedido(id_mesa);
CREATE INDEX idx_mesa_ocupa_pedido_pedido ON mesa_ocupa_pedido(id_pedido);
