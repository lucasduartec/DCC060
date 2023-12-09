CREATE TABLE cliente (
		id_cliente serial not null primary key,
		nome text not null, 
		sobrenome text not null, 
		telefone text not null, 
		email text not null
);

CREATE TABLE pedido (
		id_pedido serial not null primary key,
		id_cliente integer REFERENCES cliente(id_cliente) not null,
		data_pedido date not null,
		estado_pedido text not null
);

CREATE TABLE item_menu (
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
