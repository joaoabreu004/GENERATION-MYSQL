/*
 1. Crie um banco de
 dados para um serviço de RH de uma empresa, 
 onde o sistema trabalhará com as informações dos 
 colaboradores desta empresa. 
*/


CREATE DATABASE RH_EMPRESA; 


USE RH_EMPRESA;

/* 
 2. Crie uma tabela de colaboradores e 
 determine 5 atributos relevantes dos colaboradores 
 para se trabalhar com o serviço deste RH.
*/


CREATE TABLE TB_FUNCIONARIOS (
ID_FUNC INTEGER auto_increment PRIMARY KEY,
NOME VARCHAR(50),
CPF VARCHAR(11),
SALARIO DECIMAL(8,2),
CARGO VARCHAR(50)
);



/*
 3.Insira nesta tabela no mínimo 5 dados (registros).
*/

INSERT INTO TB_FUNCIONARIOS(ID_FUNC, NOME, CPF, SALARIO, CARGO) VALUES 
(DEFAULT, "João Vitor de Abreu", "5555555555", 1980.00, "DEV.MOBILE"), 
(DEFAULT, "Rogério Oliveira", "11111111111", 5600.00, "LÍDER DE PROJETOS"), 
(DEFAULT, "Sandry Roberto", "22222111111", 4500.00, "DEV. FRONT-END"), 
(DEFAULT, "Larissa Almeida", "23242111111", 8500.00, "DIRETORA"), 
(DEFAULT, "Manoela Guimaraes", "23242111145", 4900.00, "DEV. BACK-END"),
(DEFAULT, "Jesus Santana" , "22242111145", 1800.00, "DESIGNER"), 
(DEFAULT, "Celina Silva", "92242111145", 10900.00, "DATA SCIENTIST");


SELECT * FROM TB_FUNCIONARIOS;


-- 4 - Faça um SELECT que retorne todes os colaboradores com o salário maior do que 2000.

SELECT * FROM TB_FUNCIONARIOS WHERE SALARIO > 2000; 

-- 5- Faça um SELECT que retorne todes os colaboradores com o salário menor do que 2000. 
SELECT * FROM TB_FUNCIONARIOS WHERE SALARIO < 2000; 

-- 6 Ao término atualize um registro desta tabela através de uma query de atualização.

UPDATE TB_FUNCIONARIOS 
SET SALARIO = 3500.00 
WHERE ID_FUNC = 1;