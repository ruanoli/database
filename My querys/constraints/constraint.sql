USE functionsdb

--ALT+F1 mostra detalhes da minha tabela
SELECT * FROM Clientes

--Constraint NOT NULL não permite que colocamos valores nulos

--Constraint UNIQUE garante que o valor seja único
--transformando a coluna Sobrenome em UNIQUE
ALTER TABLE Clientes
ADD UNIQUE(Sobrenome)

SELECT * FROM Products

--Constraint CHECK verifica determinada condição
--só aceitará as cores que estão dentro da constraint CHECK
ALTER TABLE Products
ADD CONSTRAINT CHK_ColunaCor CHECK(Cor = 'Branca' OR Cor = 'Preta' OR Cor = 'Azul' OR Cor = 'Tricolor')

INSERT INTO Clientes (Nome,Sobrenome, Email, AceitaComunicados) VALUES('Dinah', 'Drake', 'dinah@email.com', 1)

--define um valos padrão para DataCadastro
--caso não seja definida nenhuma data em DataCadastro será definido por padrão o GETDATE()
ALTER TABLE Clientes
ADD DEFAULT GETDATE() FOR DataCadastro

SELECT * FROM Products

INSERT INTO Products (Nome, Preco, Cor, Disponivel) VALUES ('Camisa Inter de Milão', 45.78, 'Branca', 1)

ALTER TABLE Products
ADD DEFAULT GETDATE() FOR DataCadastro 

--removendo uma COINSTRAINT
ALTER TABLE Products
DROP CONSTRAINT CHK_ColunaCor
