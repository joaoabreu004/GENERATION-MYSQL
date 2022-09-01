

-- 1.Crie um banco de dados para um registro de uma escola, onde o sistema trabalhará com as informações dos estudantes deste registro dessa escola. 
create database SISTEMA_UNASP; 

USE SISTEMA_UNASP;
-- 2.Crie uma tabela estudantes e utilizando a habilidade de abstração e determine 5 atributos relevantes dos estudantes para se trabalhar com o serviço dessa escola.
CREATE TABLE TB_ALUNOS (
ID_ALUNO INTEGER auto_increment PRIMARY KEY,
NOME VARCHAR(50),
DT_NASCIMENTO VARCHAR(10),
TURMA VARCHAR(10),
MEDIA_NOTAS DECIMAL(2,2)
);


ALTER TABLE TB_ALUNOS
MODIFY MEDIA_NOTAS  DECIMAL(4,2); 

-- 3.Insira nesta tabela no mínimo 8 dados (registros).
INSERT INTO TB_ALUNOS(ID_ALUNO, NOME, DT_NASCIMENTO, TURMA, MEDIA_NOTAS) VALUES 
(DEFAULT, "Carlos Miguel", "2003-12-07", "3ºD", 8.9), 
(DEFAULT, "Carolina Vianna", "2004-04-02", "3ºF", 5.0), 
(DEFAULT, "Igor Fernandes", "2005-08-01", "3ºG", 9.7), 
(DEFAULT, "Carlos Miguel", "2003-12-07", "3ºA", 7.6), 
(DEFAULT, "João Pedro", "2005-03-02", "1ºB", 9.3), 
(DEFAULT, "Henrique Miranda", "2006-04-27", "1ºC", 7.4), 
(DEFAULT, "Stephany Lisboa", "2005-10-29", "2ºC", 7.9 ), 
(DEFAULT, "Paulo André", "2005-12-07", "1ºF", 8.9), 
(DEFAULT, "Anthony Fernado", "2003-12-12", "3ºD", 6.7), 
(DEFAULT, "Fernando Fernandes", "2003-12-07", "3ºD", 6.9 ), 
(DEFAULT, "Isabely Cristina", "2005-07-07", "1ºD", 9.6), 
(DEFAULT, "Maria Fernanda", "2005-11-20", "3ºD", 7.5); 


SELECT * FROM TB_ALUNOS;

-- 4.Faça um SELECT que retorne todes o/a(s) estudantes com a nota maior do que 7.0.
SELECT * FROM TB_ALUNOS WHERE MEDIA_NOTAS > 7.0;

-- 5. Faça um SELECT que retorne todes o/a(s) estudantes com a nota menor do que 7.0.
SELECT * FROM TB_ALUNOS WHERE MEDIA_NOTAS < 7.0; 

-- 6. Ao término atualize um registro desta tabela através de uma query de atualização.

UPDATE TB_ALUNOS SET 
MEDIA_NOTAS = 5.73  
WHERE ID_ALUNO = 5; 