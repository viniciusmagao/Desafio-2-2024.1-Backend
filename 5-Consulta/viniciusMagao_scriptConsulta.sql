/*
ENGNET - PROCESSO TRAINEE
BACKEND - DESAFIO 2
Vinicius Magao - VVAGA [SQUAD-4]

SCRIPT CONSULTA
*/

/*
A) Apresentar todos os dados dos veículos de um determinado proprietário (informado pelo usuário através do CPF);
*/
SELECT * FROM Veiculo WHERE proprietario = '00500500505';

/*
B) Consultar proprietário(s) por qualquer parte do nome;
*/
SELECT * FROM Proprietario WHERE nome like '%Ma%';

/*
C) Mostrar os dados da infração e do veículo que tiveram infrações cadastradas no Detran em um período (ou data) no padrão DE... ATÉ...;
*/
SELECT 
	i.nr_infracao,
	i.data_hora,
	i.veiculo,
	i.velocidade_verificada,
	i.tipo_infracao,
	i.agente,
	i.local_infracao,
	v.placa,
	v.chassi,
	v.cor_predominante,
	v.ano_fabricacao,
	v.categoria,
	v.modelo,
	v.proprietario
FROM Veiculo v
INNER JOIN Infracao i ON v.placa = i.veiculo
WHERE DATE(data_hora) BETWEEN '2024-02-01' AND '2024-02-28';

/*
D) Pesquisar o número de veículos que foram cadastrados em cada modelo, ordenando pelo número de veículos em ordem decrescente;
*/
SELECT
v.modelo,
COUNT(v.placa) AS nr_veiculos
FROM Veiculo v
GROUP BY modelo
ORDER BY nr_veiculos DESC;