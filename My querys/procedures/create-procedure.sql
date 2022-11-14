USE functionsdb

SELECT * FROM Products

--criando uma procedure
CREATE PROCEDURE InserirNovoProduto
@Nome varchar(255),
@Preco decimal,
@Cor varchar(255),
@Disponivel bit

AS

INSERT INTO Products (Nome, Preco, Cor, Disponivel) 
VALUES (@Nome, @Preco, @Cor, @Disponivel)


--executando a procedure
EXEC InserirNovoProduto
'Camisa Real Madrid',
220.50,
Azul,
1

--Procedure para selecionar produtos de determinada cor
CREATE PROCEDURE ObterPorCor
@Cor VARCHAR(255)

AS

SELECT * FROM Products 
WHERE Cor = @Cor

--executando a procedure
EXEC ObterPorCor 'Branca'

--procedure para obter todos os produtos
CREATE PROCEDURE ObterTodosProdutos

AS

SELECT * FROM Products

EXEC ObterTodosProdutos