CREATE DATABASE bdLojasRoupas

GO

USE bdLojasRoupas

CREATE TABLE tbfabricante(
	idFabricante INT PRIMARY KEY IDENTITY(1,1)
	, nomeFabricante VARCHAR(25) NOT NULL
)

CREATE TABLE tbFunc(
	idFunc INT PRIMARY KEY IDENTITY(1,1)
	, nomeFunc VARCHAR(50) NOT NULL
	, idadeFunc TINYINT NOT NULL
	, dataAdmissao SMALLDATETIME NOT NULL
	,salarioFunc SMALLMONEY NOT NULL
)

CREATE TABLE tbCliente(
	idCliente INT PRIMARY KEY IDENTITY(1,1)
	, nomeCliente VARCHAR(50) NOT NULL
	, idadeCliente TINYINT NOT NULL
)

CREATE TABLE tbVendedor (
	idVendedor INT PRIMARY KEY IDENTITY(1,1)
	, nomeVendedor VARCHAR(50) NOT NULL
)

CREATE TABLE tbVenda (
	idVenda INT PRIMARY KEY IDENTITY(1,1)
	, dataVenda SMALLDATETIME 
	, idCliente INT FOREIGN KEY REFERENCES tbCliente(idCliente)
	, idVendedor INT FOREIGN KEY REFERENCES tbVendedor(idVendedor)
)

CREATE TABLE tbProduto(
	idProduto INT PRIMARY KEY IDENTITY (1,1)
	, nomeProduto VARCHAR(50) NOT NULL
	, precoProduto   DECIMAL NOT NULL
	, dataEntadaProduto SMALLDATETIME
	, estoqueProduto INT NOT NULL
	, idFunc INT FOREIGN KEY REFERENCES tbFunc (idFunc)
	, idFabricante INT FOREIGN KEY REFERENCES tbFabricante(idFabricante)
)

CREATE TABLE tbItensVendas (
	idItensVendas INT PRIMARY KEY IDENTITY (1,1)
	, idVenda INT FOREIGN KEY REFERENCES tbVenda(idVenda)
	, idProduto INT FOREIGN KEY REFERENCES tbProduto(idProduto)
	, quantidadeItens SMALLINT NOT NULL
	, subtotal MONEY NOT NULL
)

/*DROP DATABASE bdLojasRoupas*/