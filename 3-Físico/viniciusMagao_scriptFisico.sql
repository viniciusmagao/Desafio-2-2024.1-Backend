/*
ENGNET - PROCESSO TRAINEE
BACKEND - DESAFIO 2
Vinicius Magao - VVAGA [SQUAD-4]

SCRIPT FISICO
*/

CREATE DATABASE Backend_Desafio2;
SHOW DATABASES;
USE Backend_Desafio2;
SHOW TABLES;

/* Lógico_1_v4: */
CREATE TABLE Veiculo (
    placa char(7) NOT NULL,
    chassi char(17) NOT NULL,
    cor_predominante varchar(300) NOT NULL,
    ano_fabricacao integer NOT NULL,
    categoria integer NOT NULL,
    modelo integer NOT NULL,
    proprietario char(11) NOT NULL,
    PRIMARY KEY (placa),
    CONSTRAINT Veiculo_Categoria FOREIGN KEY (categoria) REFERENCES Categoria (nr_categoria) ON DELETE NO ACTION,
    CONSTRAINT Veiculo_Modelo FOREIGN KEY (modelo) REFERENCES Modelo (nr_modelo) ON DELETE NO ACTION,
    CONSTRAINT Veiculo_Proprietario FOREIGN KEY (proprietario) REFERENCES Proprietario (cpf) ON DELETE NO ACTION
) ENGINE = InnoDB;
    
CREATE TABLE Modelo (
    nr_modelo integer NOT NULL AUTO_INCREMENT,
    nome_modelo varchar(300) NOT NULL,
    PRIMARY KEY (nr_modelo)
) ENGINE = InnoDB;
ALTER TABLE Modelo AUTO_INCREMENT=100000;

CREATE TABLE Categoria (
    nr_categoria integer NOT NULL AUTO_INCREMENT,
    nome_categoria varchar(300) NOT NULL,
    PRIMARY KEY (nr_categoria)
) ENGINE = InnoDB;
ALTER TABLE Categoria AUTO_INCREMENT=10;
SELECT * FROM Categoria;

CREATE TABLE Proprietario (
    cpf char(11) NOT NULL,
    nome varchar(300) NOT NULL,
    sexo char(1) NOT NULL,
    endereco varchar(300) NOT NULL,
	bairro varchar(300) NOT NULL,
    cidade varchar(300) NOT NULL,
    UF char(2) NOT NULL,
    telefone char(10) NOT NULL,
    data_nascimento date NOT NULL,
    PRIMARY KEY (cpf)
) ENGINE = InnoDB;

CREATE TABLE Infracao (
    nr_infracao integer NOT NULL AUTO_INCREMENT,
    data_hora datetime NOT NULL,
    veiculo varchar(7) NOT NULL,
    velocidade_verificada char(8) NOT NULL,
    tipo_infracao integer NOT NULL,
    agente integer NOT NULL,
    local_infracao integer NOT NULL,
    PRIMARY KEY (nr_infracao),
    CONSTRAINT Infracao_Veiculo FOREIGN KEY (veiculo) REFERENCES Veiculo (placa) ON DELETE NO ACTION,
    CONSTRAINT Infracao_Tipo FOREIGN KEY (tipo_infracao) REFERENCES Tipo_de_Infracao (nr_tipo_infracao) ON DELETE NO ACTION,
    CONSTRAINT Infracao_Agente FOREIGN KEY (agente) REFERENCES Agente_de_Transito (matricula) ON DELETE NO ACTION,
    CONSTRAINT Infracao_Local FOREIGN KEY (local_infracao) REFERENCES Local_Infracao (cd_local) ON DELETE NO ACTION
) ENGINE = InnoDB;
ALTER TABLE Infracao AUTO_INCREMENT=20240000;

CREATE TABLE Tipo_de_Infracao (
    nr_tipo_infracao integer AUTO_INCREMENT,
    descricao_infracacao varchar(300) NOT NULL,
    pontos_cnh integer NOT NULL,
    valor_infracao decimal(10,2),
    PRIMARY KEY (nr_tipo_infracao)
) ENGINE = InnoDB;

CREATE TABLE Agente_de_Transito (
    matricula integer NOT NULL AUTO_INCREMENT,
    nome varchar(300),
    data_contratacao date,
    tempo_de_servico integer,
    PRIMARY KEY (matricula)
) ENGINE = InnoDB;
ALTER TABLE Agente_de_Transito AUTO_INCREMENT=19800000;

CREATE TABLE Local_Infracao (
    cd_local integer NOT NULL AUTO_INCREMENT,
    municipio varchar(50) NOT NULL,
    latitude decimal(11,8) NOT NULL,
    longitude decimal(11,8) NOT NULL,
    velocidade_permitida char(8) NOT NULL,
    PRIMARY KEY (cd_local)
) ENGINE = InnoDB;