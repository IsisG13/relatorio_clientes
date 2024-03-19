CREATE DATABASE relatorio_clientes;

USE relatorio_clientes;

SELECT * FROM bairro, carro, casa, cliente;

SELECT * FROM bairro;
SELECT * FROM carro;
SELECT * FROM casa;
SELECT * from cliente;

SELECT cliente.id_cliente, 
cliente.nome,
cliente.sobrenome,
cliente.data_nascimento AS aniversario,
casa.cor AS cor_casa, 
bairro.nome AS nome_bairro, 
carro.modelo AS marca_carro
FROM cliente
INNER JOIN casa ON cliente.id_cliente = casa.fk_cliente
INNER JOIN bairro ON casa.fk_bairro = bairro.id_bairro
INNER JOIN carro ON cliente.id_cliente = carro.fk_cliente;
 