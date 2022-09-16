CREATE DATABASE bdEscola1 

USE bdEscola1

CREATE TABLE tbPeriodo(
	idPeriodo INT PRIMARY KEY IDENTITY(1,1)
	, nomePeriodo VARCHAR(30) NOT NULL
)
CREATE TABLE tbCurso(
	idCurso INT PRIMARY KEY IDENTITY(1,1) 
	,nomeCurso VARCHAR(25) UNIQUE NOT NULL
	,cargaHoariaCurso DATETIME NOT NULL
	,idPeriodo INT FOREIGN KEY REFERENCES tbPeriodo(idPeriodo)
)
CREATE TABLE tbAluno(
	idAluno INT PRIMARY KEY IDENTITY(100,2) NOT NULL
	, nomeAluno VARCHAR(20) NOT NULL
	, dataNascAluno SMALLDATETIME CHECK(dataNascAluno < GETDATE()) NOT NULL
	, ruaAluno VARCHAR(40) NOT NULL
	, numCasaAluno INT NOT NULL
	, bairroAluno VARCHAR(25) NOT NULL
	, telefoneAluno	VARCHAR(14) NOT NULL
)

CREATE TABLE tbMatricula(
	idMatricula INT PRIMARY KEY IDENTITY(1,1)
	, idAluno INT FOREIGN KEY REFERENCES tbAluno(idAluno)
	, idCurso INT FOREIGN KEY REFERENCES tbCurso(idCurso)
	, dtMatricula SMALLDATETIME DEFAULT GETDATE() NOT NULL
)
