CREATE DATABASE estacionamento_db;
USE estacionamento_db;

CREATE TABLE Vagas (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    Numero VARCHAR(10) NOT NULL,
    Ocupada BOOLEAN NOT NULL DEFAULT FALSE
);

CREATE TABLE Veiculos (
	Id INT AUTO_INCREMENT PRIMARY KEY,
    Placa VARCHAR(10) NOT NULL,
    Modelo VARCHAR(50),
    Cor VARCHAR(30),
    IdVaga INT,
    Entrada DATETIME DEFAULT CURRENT_TIMESTAMP,
    Saida DATETIME NULL,
   constraint fk_vaga FOREIGN KEY (IdVaga) REFERENCES Vagas(Id)
);

select * from Veiculos
