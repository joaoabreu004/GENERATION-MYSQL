
-- 1. Crie um banco de dados para um e-commerce, onde o sistema trabalhará com as informações dos produtos deste e-commerce. 

CREATE DATABASE NETSHOES; 

USE NETSHOES;

-- 2. Crie uma tabela de produtos e determine 5 atributos relevantes dos produtos para se trabalhar com o serviço deste e-commerce.


CREATE TABLE TB_PRODUTOS (
ID_PRODUTO INTEGER auto_increment PRIMARY KEY,
NOME VARCHAR(100),
MARCA VARCHAR(50),
QTD_ESTOQUE INTEGER,
PRECO DECIMAL(8,2),
DT_LANC DATE
);


-- 3. Insira nesta tabela no mínimo 8 dados (registros).

INSERT INTO TB_PRODUTOS(ID_PRODUTO, NOME, MARCA, QTD_ESTOQUE, PRECO, DT_LANC) VALUES 
(DEFAULT, "CAMISA BRASIL I - VERSÃO JOGADOR", "NIKE", 500, 549.99, '2022-07-08'),
(DEFAULT, "CAMISA BARCELONA", "NIKE", 430, 349.99, '2022-05-01'),
(DEFAULT, "NIKE AIR FORCE ONE", "NIKE", 50, 849.99, '2005-02-10'),
(DEFAULT, "CAMISA FLAMENGO - TORCEDOR", "ADIDAS", 89, 249.99, '2021-06-25'),
(DEFAULT, "BONÉ POD-PAH", "NEW ERA", 25, 129.99, '2022-05-08'),
(DEFAULT, "ADIDAS GAZELLE", "ADIDAS", 125, 349.99, '1998-12-08'),
(DEFAULT, "SQUEZZE", "WATERDRINK", 200, 25.99, '2022-02-01'),
(DEFAULT, "CALÇA MOLETOM", "PUMA", 30, 279.99, '2021-10-10'),
(DEFAULT, "CAMISETA NIKE DRI-FIT", "NIKE", 99, 79.99, '2020-03-03'),
(DEFAULT, "CAMISA REAL MADRID - TORCEDOR", "ADIDAS", 200, 300.00, '2022-06-08');

-- 4. Faça um SELECT que retorne todes os produtos com o valor maior do que 500.
SELECT * FROM TB_PRODUTOS WHERE PRECO > 500; 

-- 5. Faça um SELECT que retorne todes os produtos com o valor menor do que 500.
SELECT * FROM TB_PRODUTOS WHERE PRECO < 500; 

-- 6. Ao término atualize um registro desta tabela através de uma query de atualização.

UPDATE TB_PRODUTOS 
SET NOME = "CAMISA REAL MADRID - VERSÃO JOGADOR", PRECO = 549.99  
WHERE ID_PRODUTO = 10; 







