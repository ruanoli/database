USE functionsdb

CREATE TABLE Clientes(
	Id int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	Nome varchar(255) NOT NULL,
	Sobrenome varchar(255) NOT NULL,
	Email varchar(255) NOT NULL,
	AceitaComunicados bit NOT NULL,
	DataCadastro datetime2 NOT NULL
)
GO

CREATE TABLE Enderecos(
	Id int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	IdCliente int NULL,
	Bairro varchar(255) NULL,
	Rua varchar(255) NULL,
	Cidade varchar(255) NULL,
	Estado char(2) NULL

	CONSTRAINT FK_Enderecos_Clientes FOREIGN KEY(IdCliente)
	REFERENCES Clientes(Id)
)
GO

INSERT INTO Clientes VALUES ('Peter', 'Parker', 'peter@email.com', 1, GETDATE())
INSERT INTO Clientes VALUES ('Milles', 'Morales', 'milles@email.com', 1, GETDATE())
INSERT INTO Clientes VALUES ('Tony', 'Stark', 'tony@email.com', 1, GETDATE())
INSERT INTO Clientes VALUES ('Bruce', 'Benner', 'bruce@email.com', 1, GETDATE())
INSERT INTO Clientes VALUES ('Steve', 'Rogers', 'peter@email.com', 1, GETDATE())
INSERT INTO Clientes VALUES ('Naruto', 'Usumaki', 'peter@email.com', 1, GETDATE())
INSERT INTO Clientes VALUES ('Sasuke', 'Utchiha', 'peter@email.com', 0, GETDATE())
INSERT INTO Clientes VALUES ('Rick', 'Sanchez', 'peter@email.com', 0, GETDATE())
INSERT INTO Clientes VALUES ('Thor', 'Odinson', 'peter@email.com', 1, GETDATE())
INSERT INTO Clientes VALUES ('Natasha', 'Romanoff', 'peter@email.com', 1, GETDATE())
INSERT INTO Clientes VALUES ('Bruce', 'Wayne', 'peter@email.com', 0, GETDATE())
INSERT INTO Clientes VALUES('Clark', 'Kent','kent@email.com',1, GETDATE())
GO

INSERT INTO Enderecos VALUES(1, 'Brooklyn', 'Ingram', 'NY', 'NY')

SELECT 
	*
FROM Clientes
WHERE Id = 1

SELECT 
	*
FROM Enderecos
WHERE IdCliente =1

--juntando as tabelas Clientes e Endereco onde Clientes.Id e Endereco.IdCliente sejam iguais
SELECT 
	*
FROM Clientes
INNER JOIN Enderecos ON Clientes.Id = Enderecos.IdCliente
WHERE Clientes.Id = 1