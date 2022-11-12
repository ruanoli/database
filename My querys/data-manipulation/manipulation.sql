USE functionsdb

--criando uma tabela
CREATE TABLE Products(
	Id int IDENTITY(1,1) NOT NULL,
	Nome varchar(255) NOT NULL,
	Preco decimal(13,2) NOT NULL,
)

SELECT * FROM Products

--inserindo dados na tabe Products
INSERT INTO Products VALUES('Camisa Fluminense', 389.90)
INSERT INTO Products VALUES('Camisa Flamengo', 189.90)
INSERT INTO Products VALUES('Camisa Vasco', 59.90)
INSERT INTO Products VALUES('Camisa Botafogo', 19.90)
INSERT INTO Products VALUES('Camisa Grêmio', 89.90)
INSERT INTO Products VALUES('Camisa Bahia', 89.90)
INSERT INTO Products VALUES('Camisa Coritiba', 30.90)
INSERT INTO Products VALUES('Camisa Atlético Mg', 42.90)
INSERT INTO Products VALUES('Camisa Fluminense', 389.90, 'Tricolor', 1)
INSERT INTO Products VALUES('Camisa Barcelona', 289.90, 'Azul', 1, GETDATE())
INSERT INTO Products VALUES('Camisa Chelsea', 189.90, 'Branca', 1, GETDATE())

--adc +1 coluna
ALTER TABLE Products
ADD Cor VARCHAR(255) NULL, Disponivel bit NULL

--setando valores
SELECT * FROM Products 
UPDATE Products
SET Disponivel = 1

--soma
SELECT SUM(Preco) TotalFluminense FROM Products WHERE Nome = 'Camisa Fluminense'

--maior valor
SELECT MAX(Preco) CamisaMaisCara FROM Products

--menor valor
SELECT MIN(Preco) CamisaMaisBarata FROM Products

--méda
SELECT AVG(Preco) CamisaMaisBarata FROM Products

--adc uma nova coluna na table Products
ALTER TABLE Products 
ADD DataCadastro DATETIME2

--setando a data atual sem where na coluna DataCadastro
UPDATE Products
SET DataCadastro = GETDATE()

--formata datas
SELECT 
	*,
	FORMAT(DataCadastro, 'dd-MM-yyyy') DataCadastroFormatada
FROM Products

--concatenando strings
--nome em letras maiúsculas e cor em minúsculas
SELECT
	UPPER(Nome) + ' - ' + LOWER(Cor) NomeCor
FROM Products

--agrupando valores para saber a quantidade de cada cor, exceto valores nulos.
SELECT 
	COUNT(*) Quantidade,
	Cor
FROM Products
WHERE Cor != ''
GROUP BY Cor
ORDER BY Quantidade DESC --ordena do maior para o menor valor

--apagando uma coluna
ALTER TABLE Produtos
DROP COLUMN DataCompra 

--deleta um registro
DELETE Products 
WHERE Id = 4