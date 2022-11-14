USE functionsdb

--ALT+F1 mostra detalhes da minha tabela
SELECT * FROM Clientes

--Constraint NOT NULL n�o permite que colocamos valores nulos

--Constraint UNIQUE garante que o valor seja �nico
--transformando a coluna Sobrenome em UNIQUE
ALTER TABLE Clientes
ADD UNIQUE(Sobrenome)

SELECT * FROM Products

--Constraint CHECK verifica determinada condi��o
--s� aceitar� as cores que est�o dentro da constraint CHECK
ALTER TABLE Products
ADD CONSTRAINT CHK_ColunaCor CHECK(Cor = 'Branca' OR Cor = 'Preta' OR Cor = 'Azul' OR Cor = 'Tricolor')

INSERT INTO Clientes (Nome,Sobrenome, Email, AceitaComunicados) VALUES('Dinah', 'Drake', 'dinah@email.com', 1)

--define um valos padr�o para DataCadastro
--caso n�o seja definida nenhuma data em DataCadastro ser� definido por padr�o o GETDATE()
ALTER TABLE Clientes
ADD DEFAULT GETDATE() FOR DataCadastro

SELECT * FROM Products

INSERT INTO Products (Nome, Preco, Cor, Disponivel) VALUES ('Camisa Inter de Mil�o', 45.78, 'Branca', 1)

ALTER TABLE Products
ADD DEFAULT GETDATE() FOR DataCadastro 

--removendo uma COINSTRAINT
ALTER TABLE Products
DROP CONSTRAINT CHK_ColunaCor
