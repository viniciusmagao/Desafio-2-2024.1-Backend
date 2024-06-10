/* Lógico_1_v6: */

CREATE TABLE Veiculo (
    placa char(7) PRIMARY KEY,
    chassi char(17),
    cor_predominante varchar(300),
    ano_fabricacao integer,
    fk_Proprietario_cpf char(11),
    fk_Categoria_nr_categoria integer(2),
    fk_Modelo_nr_modelo integer(6)
);

CREATE TABLE Modelo (
    nr_modelo integer(6) PRIMARY KEY,
    nome_modelo varchar(300)
);

CREATE TABLE Categoria (
    nr_categoria integer(2) PRIMARY KEY,
    nome_categoria varchar(300)
);

CREATE TABLE Proprietario (
    cpf char(11) PRIMARY KEY,
    nome varchar(300),
    sexo char(1),
    endereco varchar(300),
    cidade varchar(300),
    UF char(2),
    telefone char(10),
    data_nascimento date
);

CREATE TABLE Infracao (
    nr_infracao integer PRIMARY KEY,
    veiculo varchar(7),
    data_hora datetime,
    velocidade_verificada char(8),
    tipo_Infracao integer,
    agente_transito integer,
    fk_Veiculo_placa char(7),
    fk_Tipo_de_Infracao_nr_tipo_infracao integer,
    fk_Agente_de_Transito_matricula integer,
    fk_Local_cd_local integer
);

CREATE TABLE Tipo_de_Infracao (
    nr_tipo_infracao integer PRIMARY KEY,
    descricao_infracao varchar(300),
    pontos_cnh integer,
    valor_infracao decimal(10,2)
);

CREATE TABLE Agente_de_Transito (
    matricula integer PRIMARY KEY,
    nome varchar(300),
    data_contratacao date,
    tempo_de_servico integer
);

CREATE TABLE Local (
    cd_local integer PRIMARY KEY,
    municipio_local varchar(50),
    latitude decimal(11,8),
    longitude decimal(11,8),
    velocidade_permitida char(8)
);
 
ALTER TABLE Veiculo ADD CONSTRAINT FK_Veiculo_2
    FOREIGN KEY (fk_Proprietario_cpf)
    REFERENCES Proprietario (cpf)
    ON DELETE CASCADE;
 
ALTER TABLE Veiculo ADD CONSTRAINT FK_Veiculo_3
    FOREIGN KEY (fk_Categoria_nr_categoria)
    REFERENCES Categoria (nr_categoria)
    ON DELETE CASCADE;
 
ALTER TABLE Veiculo ADD CONSTRAINT FK_Veiculo_4
    FOREIGN KEY (fk_Modelo_nr_modelo)
    REFERENCES Modelo (nr_modelo)
    ON DELETE CASCADE;
 
ALTER TABLE Infracao ADD CONSTRAINT FK_Infracao_2
    FOREIGN KEY (fk_Veiculo_placa)
    REFERENCES Veiculo (placa)
    ON DELETE RESTRICT;
 
ALTER TABLE Infracao ADD CONSTRAINT FK_Infracao_3
    FOREIGN KEY (fk_Tipo_de_Infracao_nr_tipo_infracao)
    REFERENCES Tipo_de_Infracao (nr_tipo_infracao)
    ON DELETE RESTRICT;
 
ALTER TABLE Infracao ADD CONSTRAINT FK_Infracao_4
    FOREIGN KEY (fk_Agente_de_Transito_matricula)
    REFERENCES Agente_de_Transito (matricula)
    ON DELETE RESTRICT;
 
ALTER TABLE Infracao ADD CONSTRAINT FK_Infracao_5
    FOREIGN KEY (fk_Local_cd_local)
    REFERENCES Local (cd_local)
    ON DELETE RESTRICT;