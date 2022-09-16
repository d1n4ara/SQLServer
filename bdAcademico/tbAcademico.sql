CREATE DATABASE bdAcademico

USE bdAcademico

CREATE TABLE tbAluno(
	idAluno INT PRIMARY KEY IDENTITY(100,2)
	, nomeAluno VARCHAR(20) NOT NULL
	, dtNascAluno SMALLDATETIME NOT NULL
	, ruaAluno 	VARCHAR(40) NOT NULL
	,numcasaAluno SMALLINT NOT NULL
	,bairroAluno VARCHAR(25) NOT NULL
	,telefoneAluno	BIGINT(14) NOT NULL
)
CREATE TABLE tbPeriodo(
	idPeriodo INT PRIMARY KEY IDENTITY(1,1)
	, nomePeriodo VARCHAR(30) NOT NULL
)
CREATE TABLE tbCurso(
	idCurso INT PRIMARY KEY IDENTITY(1,1) 
	,nomeCurso VARCHAR(25) NOT NULL
	,cargaHoariaCurso DATETIME NOT NULL
	,idPeriodo INT FOREIGN KEY REFERENCES tbPeriodo(idPeriodo)
)

CREATE TABLE tbMatricula(
	idMatricula INT PRIMARY KEY IDENTITY(1,1)
	, idAluno INT FOREIGN KEY REFERENCES tbAluno(idAluno)
	, idCurso INT FOREIGN KEY REFERENCES tbCurso(idCurso)
	, dtMatricula SMALLDATETIME NOT NULL
)

