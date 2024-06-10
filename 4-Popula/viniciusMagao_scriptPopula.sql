/*
ENGNET - PROCESSO TRAINEE
BACKEND - DESAFIO 2
Vinicius Magao - VVAGA [SQUAD-4]

SCRIPT POPULA
*/

/*POPULA Veiculo*/
INSERT INTO Veiculo (placa, chassi, cor_predominante, ano_fabricacao, categoria, modelo, proprietario) VALUES
('AAA1A11','A111111111111111A','AZUL',2011,10,100000,'00200200202'),
('AAA2A22','A222222222222222A','BRANCA',2012,12,100002,'00300300303'),
('AAA3A33','A333333333333333A','MARROM',2013,13,100003,'00200200202'),
('AAA4A44','A444444444444444A','CINZA',2014,14,100004,'00500500505'),
('AAA5A55','A555555555555555A','VERDE',2015,11,100001,'00200200202');

INSERT INTO Veiculo (placa, chassi, cor_predominante, ano_fabricacao, categoria, modelo, proprietario) VALUES
('AAA6A66','A777777777777777A','VERDE',2015,11,100002,'00200200202'),
('AAA7A77','A777777777777777A','VERDE',2015,11,100004,'00500500505'),
('AAA8A88','A888888888888888A','VERDE',2015,11,100002,'00200200202');

/*POPULA Modelo*/
INSERT INTO Modelo (nome_modelo) VALUES ('Hyundai HB20 1.6'),('Chevrolet Onix 1.0'),('Fiat Uno 1.0'),('Volkswagen Gol 1.8'),('Ford Ka 1.0');

/*POPULA Categoria*/
INSERT INTO Categoria (nome_categoria) VALUES ('MOTOCICLETA'),('AUTOMOVEL'),('MICROONIBUS'),('ONIBUS'),('CAMINHAO');

/*POPULA Proprietario*/
INSERT INTO Proprietario (cpf, nome, sexo, endereco, bairro, cidade, UF, telefone, data_nascimento) VALUES 
('00100100101','Maria','F','Quadra 1 Rua 1','Bairro1','Cidade1','RJ','11111-1111','1991-01-01'),
('00200200202','Ana','F','Quadra 1 Rua 2','Bairro2','Cidade2','AM','22222-2222','1992-02-02'),
('00300300303','Joao','M','Quadra 1 Rua 3','Bairro3','Cidade3','AP','33333-3333','1993-03-03'),
('00400400404','Zeca','M','Quadra 1 Rua 4','Bairro4','Cidade4','RR','44444-4444','1994-04-04'),
('00500500505','Tales','M','Quadra 1 Rua 5','Bairro5','Cidade5','ES','55555-5555','1995-05-05');

/*POPULA Infracao*/
INSERT INTO Infracao (data_hora, veiculo, velocidade_verificada, tipo_infracao, agente, local_infracao) VALUES
('2024-01-03 22:10:11','AAA1A11','120 km/h',2,19800002,3),
('2024-03-11 12:50:54','AAA4A44','145 km/h',27,19800003,2),
('2024-06-01 22:16:37','AAA2A22','150 km/h',30,19800002,4),
('2024-05-30 09:05:10','AAA3A33','110 km/h',16,19800004,3),
('2024-02-21 20:54:54','AAA5A55','89 km/h',8,19800004,3);

/*POPULA Tipo_Infracao*/
INSERT INTO Tipo_de_Infracao (descricao_infracao, pontos_cnh, valor_infracao) VALUES
('Avançar no sinal vermelho do semáforo',7,293.47),
('Trafegar na contra mão',7,293.47),
('Trafegar na calçada',7,880.41),
('Dirigir pelo acostamento',7,880.41),
('Fazer retorno em local proibido',7,293.47),
('Avançar o sinal de Parada Obrigatória',7,293.47),
('Velocidade incompatível com grande circulação de pedestres',7,293.47),
('Dirigir sem CNH',7,880.41),
('Dirigir com CNH Vencida',7,293.47),
('Dirigir alcoolizado (Lei Seca)',7,2934.7),
('Levar menor de 10 anos no banco da frente',7,293.47),
('Disputar “racha”',7,880.41),
('Excesso de velocidade superior em 50%',7,880.41),
('Motorista envolvido em acidente não prestar socorro à vítima',7,880.41),
('Dirigir ameaçando os pedestres que estejam atravessando a rua',7,293.47),
('Dirigir na contramão em via de sentido duplo',7,195.23),
('Trafegar em marcha à ré',7,195.23),
('Estacionar afastado da calçada (+ de 1 metro)',7,195.23),
('Estacionar em local/horário com proibição de parar e estacionar',7,195.23),
('Não usar cinto de segurança (condutor e passageiros)',7,195.23),
('Trafegar com farol alto ofuscando os demais condutores',7,195.23),
('Excesso de velocidade  até 20%',7,195.23),
('Parar o veículo sobre a faixa de pedestres',4,130.16),
('Parar no cruzamento',4,130.16),
('Transitar em local/horários não permitidos',4,130.16),
('Veículo parado na via por falta de combustível',4,130.16),
('Estacionar em frente ao ponto de ônibus',4,130.16),
('Estacionar em local/horário proibido pela sinalização',4,130.16),
('Estacionar afastado da guia de 50 cm a 1 metro',3,130.16),
('Parar na calçada',3,130.16),
('Usar buzina prolongada e sucessivamente',3,130.16);

/*POPULA Agente_de_Transito*/
INSERT INTO Agente_de_Transito (nome, data_contratacao, tempo_de_servico) VALUES
('Alonso','1980-01-01',10),
('Mariano','1980-02-02',35),
('Jessica','1980-03-03',4),
('Alexa','1980-04-04',53),
('Joaquina','1980-05-05',7);

/*POPULA Local_Infracao*/
INSERT INTO Local_Infracao (municipio, latitude, longitude, velocidade_permitida) VALUES
('Sao Gonçalo-RJ',-22.817695,-43.079165,'100 km/h'),
('Itaborai-RJ',-22.809963,-43.068858,'100 km/h'),
('Rio das Ostras-RJ',-22.429729,-42.031134,'80 km/h'),
('Campos dos Goytacazes-RJ',-22.773498,-42.935548,'80 km/h'),
('Sao Gonçalo-RJ',-22.830783,-43.093638,'100 km/h');
