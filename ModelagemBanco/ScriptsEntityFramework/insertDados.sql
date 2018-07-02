SET schema 'dbo';
    
INSERT INTO Marca (idmarca, nome)
    VALUES  (1,'Nenhuma'),
		    (2,'Nestle'),
		    (3,'Sepé'),
		    (4,'Coca Cola'),
		    (5,'Unilever'),
		    (6,'Seara'),
		    (7,'Quero'),
		    (8,'PEPSI'),
		    (9,'SAMSUMG'),
		    (10,'Gillette');
		     SELECT setval(pg_get_serial_sequence('dbo.marca', 'idmarca'), coalesce(max(idmarca), 0)+1 , false) FROM dbo.marca; 
    
INSERT INTO medida (idmedida,descricao,tipomedida)
    VALUES  (1,'KG',1),
		(2,'Litro',2),
		(3,'Grama',3),
		(4,'UNIDADE',4),
		(5,'PACOTE',5),
		(6,'Seara',6),
		(7,'Watts',7),
		(8,'ML',8),
		(9,'CM',9),
		(10,'Gigas',10);
     SELECT setval(pg_get_serial_sequence('dbo.medida', 'idmedida'), coalesce(max(idmedida), 0)+1 , false) FROM dbo.medida;  
INSERT INTO estado (idestado, nome)
        VALUES  (1,  'Espirito Santo'    ),
        (2,  'São Paulo'         ),
        (3,  'Goias'             ),
        (4,  'Amazonas'          ),
        (5,  'Mato Grosso do Sul'),
        (6,  'Rio de Janeiro'    ),
        (7,  'Bahia'             ),
        (8,  'Rio de Janeiro'    ),
		(9,  'Texas'             ),
        (10, 'Califórnia'        ),
        (11, 'Flórida'           ),
        (12, 'Alasca'            );  SELECT setval(pg_get_serial_sequence('dbo.estado', 'idestado'), coalesce(max(idestado), 0)+1 , false) FROM dbo.estado;  
INSERT INTO cidade (idcidade,idestado, nome) VALUES  (1,1, 'Colina de Laranjeiras'),(2,3, 'Castro')
,(3,2, 'Aragão dos Dourados')
,(4,6, 'Moura')
,(5,1, 'Jesus da Mata')
,(6,8, 'Campos')
,(7,3, 'FariasFernandes da Prata')
,(8,6, 'Moura')
,(9,6, 'Cunha Verde')
,(10,5, 'Nascimento')
,(11,5, 'Oliveira de Goiás')
,(12,4, 'Moraes do Norte')
,(13,2, 'Souza')
,(14,6, 'Alves')
,(15,4, 'Peixoto')
,(16,1, 'da Cunha do Amparo')
,(17,6, 'da Luz')
,(18,5, 'Moraes')
,(19,3, 'Sales')
,(20,2, 'Cardoso, de Minas')
,(21,6, 'Rocha de Porto')
,(22,6, 'Rodrigues do Norte')
,(23,7, 'Rodrigues de Correia')
,(24,4, 'Ferreira')
,(25,5, 'Fogaça')
,(26,6, 'Carvalho da Serra')
,(27,1, 'Peixoto de Dias')
,(28,3, 'Rezende do Amparo')
,(29,2, 'Ramos')
,(30,1, 'Alves da Prata')
,(31,3, 'Nunes das Flores')
,(32,7, 'da Mata')
,(33,6, 'Viana')
,(34,3, 'Barbosa')
,(35,8, 'Cunha')
,(36,3, 'Souza')
,(37,3, 'da Cunha Paulista')
,(38,1, 'Costela')
,(39,6, 'Fogaça das Flores')
,(40,2, 'da Cruz')
,(41,8, 'Campos das Flores')
,(42,6, 'Carvalho')
,(43,2, 'da Mata dos Dourados')
,(44,2, 'Vieira de Campos')
,(45,8, 'Monteiro de da Paz')
,(46,8, 'Barbosa')
,(47,8, 'Silva de Minas')
,(48,5, 'Rezende')
,(49,8, 'Azevedo de Goiás')
,(50,1, 'Pinto das Flores')
,(51,8, 'Cardoso,')
,(52,8, 'Dias Paulista')
,(53,2, 'Moura da Praia')
,(54,4, 'Araújo')
,(55,5, 'Nogueira')
,(56,4, 'Silva do Norte')
,(57,5, 'Silva')
,(58,6, 'Monteiro dos Dourados')
,(59,2, 'Sales Paulista')
,(60,3, 'Barros')
,(61,8, 'Monteiro da Prata')
,(62,7, 'Moura da Prata')
,(63,4, 'Melo do Norte')
,(64,7, 'Nascimento de da Rosa')
,(65,8, 'Duarte das Pedras')
,(66,8, 'Nascimento')
,(67,3, 'Mendes dos Dourados')
,(68,8, 'da Cunha da Serra')
,(69,7, 'das Neves')
,(70,1, 'Cardoso')
,(71,6, 'Barros')
,(72,7, 'Castro')
,(73,7, 'Nunes')
,(74,2, 'Caldeira')
,(75,3, 'Almeida dos Dourados')
,(76,4, 'Fogaça')
,(77,3, 'da Costa')
,(78,1, 'da Luz da Prata')
,(79,3, 'Nascimento Alegre')
,(80,3, 'Barbosa')
,(81,3, 'Melo de Moreira')
,(82,7, 'Ribeiro de da Mata')
,(83,3, 'Rodrigues')
,(84,5, 'Pires da Serra')
,(85,4, 'Alves de Gonçalves')
,(86,3, 'Gonçalves do Amparo')
,(87,5, 'Mendes')
,(88,5, 'Monteiro da Mata')
,(89,7, 'Rodrigues')
,(90,4, 'Lima')
,(91,3, 'da Mota')
,(92,7, 'Aragão')
,(93,2, 'da Cunha')
,(94,7, 'Lopes')
,(95,1, 'da Cunha')
,(96,2, 'Moreira')
,(97,6, 'Nascimento do Norte')
,(98,3, 'Rocha')
,(99,8, 'Lopes')
; SELECT setval(pg_get_serial_sequence('dbo.cidade', 'idcidade'), coalesce(max(idcidade), 0)+1 , false) FROM dbo.cidade;  
INSERT INTO endereco (idendereco, idcidade, cep, logradouro, numero, complemento) VALUES  (1, 1,'29167081','Primeiro','371','proximo a nada'),(2, 89, '26753388','Setor Mendes','98','algum complemento')
,(3, 70, '96244237','Esplanada de da Paz','7416','algum complemento')
,(4, 9, '95860608','Avenida Melissa Carvalho','9075','algum complemento')
,(5, 57, '42952350','Distrito Costa','2696','algum complemento')
,(6, 44, '68262621','Morro Stella da Mata','337','algum complemento')
,(7, 96, '79552135','Colônia de FariasFernandes','2900','algum complemento')
,(8, 26, '69088070','Avenida Davi Lucas Souza','7742','algum complemento')
,(9, 13, '55678605','Feira Alícia Ribeiro','2172','algum complemento')
,(10, 88, '87196997','Alameda Gonçalves','5059','algum complemento')
,(11, 77, '40253572','Recanto Alícia da Rocha','2173','algum complemento')
,(12, 6, '87567551','Estrada de Correia','31','algum complemento')
,(13, 40, '58558003','Favela Bruno Moraes','7589','algum complemento')
,(14, 79, '89774869','Alameda Miguel Cunha','1904','algum complemento')
,(15, 98, '41968107','Lagoa Gustavo Henrique Mendes','8442','algum complemento')
,(16, 65, '65398592','Fazenda Maria Cecília Pereira','7186','algum complemento')
,(17, 11, '63912405','Vila de Cunha','3072','algum complemento')
,(18, 66, '56017243','Estação Gabrielly Campos','2458','algum complemento')
,(19, 31, '84390815','Recanto Vitor Gabriel Lopes','6256','algum complemento')
,(20, 59, '44013026','Via da Luz','970','algum complemento')
,(21, 90, '79342779','Esplanada de da Luz','9487','algum complemento')
,(22, 35, '29998659','Conjunto de Moraes','5096','algum complemento')
,(23, 81, '69528107','Estrada Campos','6525','algum complemento')
,(24, 5, '16206804','Sítio de Viana','440','algum complemento')
,(25, 30, '95947166','Lagoa Fernanda Rezende','4127','algum complemento')
,(26, 49, '83255718','Viaduto Barros','9919','algum complemento')
,(27, 55, '49684947','Lago de Vieira','5836','algum complemento')
,(28, 50, '32157706','Residencial Fogaça','3480','algum complemento')
,(29, 1, '91506626','Esplanada de Lima','4801','algum complemento')
,(30, 11, '91051852','Recanto Raul Duarte','2310','algum complemento')
,(31, 40, '63569502','Favela Gabrielly Duarte','7590','algum complemento')
,(32, 97, '38571691','Conjunto Aragão','8243','algum complemento')
,(33, 30, '79688756','Lago João Almeida','2607','algum complemento')
,(34, 33, '92987118','Travessa Danilo Caldeira','5844','algum complemento')
,(35, 83, '51162953','Ladeira de Sales','8608','algum complemento')
,(36, 98, '46016985','Loteamento de Alves','31','algum complemento')
,(37, 42, '32571581','Condomínio Vinicius Pires','7174','algum complemento')
,(38, 47, '62226327','Fazenda Rocha','6500','algum complemento')
,(39, 45, '93591126','Setor Alves','6650','algum complemento')
,(40, 22, '68736267','Fazenda Porto','7736','algum complemento')
,(41, 4, '92816369','Esplanada Bianca Melo','2086','algum complemento')
,(42, 83, '75890099','Esplanada de Costa','3215','algum complemento')
,(43, 74, '73873197','Distrito de Gonçalves','52','algum complemento')
,(44, 15, '49850186','Estação Carvalho','2586','algum complemento')
,(45, 49, '14603286','Morro Ryan Almeida','8689','algum complemento')
,(46, 45, '32119570','Feira Raul Almeida','3140','algum complemento')
,(47, 65, '89226127','Fazenda Daniel Duarte','6857','algum complemento')
,(48, 8, '82507787','Quadra de da Cruz','3718','algum complemento')
,(49, 31, '97531314','Rua Isabella Nogueira','5671','algum complemento')
,(50, 65, '42077513','Núcleo João Vitor Campos','8944','algum complemento')
,(51, 87, '39761964','Núcleo de Peixoto','2075','algum complemento')
,(52, 33, '82798242','Lago de Pereira','1917','algum complemento')
,(53, 73, '23754329','Praça Pinto','5151','algum complemento')
,(54, 91, '45376358','Trecho Rezende','9501','algum complemento')
,(55, 44, '44554331','Residencial de Araújo','5223','algum complemento')
,(56, 59, '15881929','Conjunto Gabriela Gomes','1632','algum complemento')
,(57, 80, '62209442','Chácara Olivia da Cunha','5554','algum complemento')
,(58, 35, '22814426','Estação das Neves','7358','algum complemento')
,(59, 63, '88571011','Ladeira Martins','1737','algum complemento')
,(60, 34, '23281967','Trecho Vitor Oliveira','9195','algum complemento')
,(61, 80, '83786976','Passarela Duarte','2063','algum complemento')
,(62, 15, '36797110','Conjunto Duarte','5338','algum complemento')
,(63, 7, '82982932','Fazenda Carvalho','1261','algum complemento')
,(64, 73, '43639022','Campo de Lopes','9528','algum complemento')
,(65, 70, '39290200','Via de Caldeira','3359','algum complemento')
,(66, 38, '88570651','Ladeira de Castro','6321','algum complemento')
,(67, 85, '33507356','Vereda Enzo Gabriel Correia','6923','algum complemento')
,(68, 86, '69355034','Feira Nunes','8746','algum complemento')
,(69, 88, '30540472','Área de Porto','9119','algum complemento')
,(70, 44, '25293986','Avenida de da Rosa','1310','algum complemento')
,(71, 71, '74423537','Vila Vitor Peixoto','4407','algum complemento')
,(72, 77, '31121058','Lago Lorena Melo','2589','algum complemento')
,(73, 51, '31332417','Via Barbosa','6050','algum complemento')
,(74, 47, '90710148','Residencial Aragão','8988','algum complemento')
,(75, 72, '80723736','Largo de Azevedo','7044','algum complemento')
,(76, 35, '40661805','Rodovia de Lopes','6855','algum complemento')
,(77, 42, '91486439','Aeroporto Leonardo Mendes','8441','algum complemento')
,(78, 5, '37439081','Lago Danilo Ribeiro','5849','algum complemento')
,(79, 59, '49673765','Loteamento de Lima','750','algum complemento')
,(80, 48, '38892893','Lago de da Paz','3920','algum complemento')
,(81, 28, '14115355','Passarela de Novaes','4684','algum complemento')
,(82, 98, '34949510','Chácara da Paz','2681','algum complemento')
,(83, 41, '36723125','Travessa de Correia','3887','algum complemento')
,(84, 31, '93420534','Avenida Bárbara Moraes','1532','algum complemento')
,(85, 55, '45613478','Favela Almeida','5552','algum complemento')
,(86, 10, '87992395','Favela Teixeira','2568','algum complemento')
,(87, 99, '88219742','Ladeira Pires','8881','algum complemento')
,(88, 48, '22672131','Vila Pinto','8767','algum complemento')
,(89, 43, '75342257','Trecho Agatha Viana','1672','algum complemento')
,(90, 84, '54534212','Recanto Campos','9276','algum complemento')
,(91, 43, '81344192','Condomínio da Cunha','5314','algum complemento')
,(92, 60, '83033508','Aeroporto de Nunes','6741','algum complemento')
,(93, 37, '34684128','Favela Camila da Cruz','9544','algum complemento')
,(94, 22, '51277785','Vale de Nascimento','601','algum complemento')
,(95, 21, '78094629','Núcleo Rezende','7903','algum complemento')
,(96, 4, '79602001','Campo de Cavalcanti','1443','algum complemento')
,(97, 29, '62791037','Loteamento Leonardo Castro','2376','algum complemento')
,(98, 29, '60979585','Pátio de Caldeira','7309','algum complemento')
,(99, 10, '86268374','Viaduto Alexandre da Luz','7593','algum complemento')
,(100, 73, '94682656','Rodovia Davi Lucca Ribeiro','9607','algum complemento')
,(101, 12, '17590098','Trecho de Costa','3792','algum complemento')
,(102, 7, '93629284','Feira Sabrina Nascimento','5297','algum complemento')
,(103, 4, '50649627','Vila de Silveira','1443','algum complemento')
,(104, 13, '89369509','Morro Enzo Fogaça','4316','algum complemento')
,(105, 4, '53502633','Pátio Silva','7560','algum complemento')
,(106, 87, '24131558','Condomínio de Barros','6557','algum complemento')
,(107, 51, '75052372','Ladeira Moraes','2074','algum complemento')
,(108, 9, '26900175','Estrada de Araújo','5690','algum complemento')
,(109, 8, '84015540','Jardim da Rosa','6073','algum complemento')
,(110, 54, '76527386','Trecho Davi Lucca Nogueira','5688','algum complemento')
,(111, 1, '71803939','Viaduto de Nogueira','877','algum complemento')
,(112, 59, '25847264','Campo das Neves','6199','algum complemento')
,(113, 25, '62484669','Praça Rezende','6572','algum complemento')
,(114, 34, '82131203','Distrito Aragão','6645','algum complemento')
,(115, 18, '85507093','Rua da Rocha','2588','algum complemento')
,(116, 82, '49039680','Aeroporto de Sales','8311','algum complemento')
,(117, 20, '89119977','Favela Luiz Miguel da Mota','8898','algum complemento')
,(118, 52, '93277487','Jardim da Conceição','1292','algum complemento')
,(119, 23, '37095831','Fazenda Maria Luiza Silveira','4003','algum complemento')
,(120, 69, '91416531','Fazenda de da Mota','4254','algum complemento')
,(121, 89, '32204475','Parque de Silva','8715','algum complemento')
,(122, 51, '94502248','Passarela de Rodrigues','1532','algum complemento')
,(123, 88, '52695587','Via Rodrigo da Luz','782','algum complemento')
,(124, 74, '83580966','Área de Peixoto','3664','algum complemento')
,(125, 80, '52843259','Vila Fogaça','5861','algum complemento')
,(126, 48, '57593190','Feira Emanuel Monteiro','4002','algum complemento')
,(127, 42, '14806483','Jardim Costa','7192','algum complemento')
,(128, 67, '89765847','Largo Guilherme Oliveira','2223','algum complemento')
,(129, 27, '46366869','Aeroporto Barros','8248','algum complemento')
,(130, 6, '18153658','Lago Nascimento','5745','algum complemento')
,(131, 64, '76824302','Esplanada da Mata','7214','algum complemento')
,(132, 42, '95488851','Via Bernardo Moraes','335','algum complemento')
,(133, 71, '57153433','Praça Vitória Gonçalves','1487','algum complemento')
,(134, 46, '24992524','Setor Leonardo Cardoso','3349','algum complemento')
,(135, 57, '74700854','Trecho Miguel Correia','2381','algum complemento')
,(136, 60, '86214763','Parque de Lima','9271','algum complemento')
,(137, 24, '10913404','Estação Peixoto','5489','algum complemento')
,(138, 22, '78586255','Condomínio de da Costa','5976','algum complemento')
,(139, 62, '33524128','Via Aragão','6524','algum complemento')
,(140, 43, '72385036','Distrito Ana Vitória Azevedo','3382','algum complemento')
,(141, 56, '93000994','Favela Gustavo Campos','2758','algum complemento')
,(142, 23, '83651219','Praça de Novaes','2958','algum complemento')
,(143, 58, '79850728','Quadra Evelyn Jesus','6424','algum complemento')
,(144, 72, '94553729','Ladeira Nina Silva','8962','algum complemento')
,(145, 2, '33066864','Conjunto Fernanda Moura','1851','algum complemento')
,(146, 37, '49308285','Distrito de Moreira','8480','algum complemento')
,(147, 94, '47854702','Viaduto Rodrigues','5539','algum complemento')
,(148, 34, '90158767','Fazenda Gomes','1904','algum complemento')
,(149, 78, '90163613','Estação da Rosa','8008','algum complemento')
; SELECT setval(pg_get_serial_sequence('dbo.endereco', 'idendereco'), coalesce(max(idendereco), 0)+1 , false) FROM dbo.endereco; 
INSERT INTO estabelecimento(idestabelecimento ,idendereco ,nome , unidade ,logo)
    VALUES  (1,  1, 'EPA PLUS',     'Serra',      'logo.jpg'),
	(2,  2, 'Extrabom',   'Serra',  'logo.jpg'),
	(3,  3, 'Wallmart',   'Vitória',    'logo.jpg'),
	(4,  4, 'Carone',     'Serra', 	    'logo.jpg'),
	(5,  5, 'Meridional', 'Aracruz',    'logo.jpg'),
	(6,  6, 'Devens',     'Aracruz',    'logo.jpg'),
	(7,  7, 'Carrefour',  'Serra', 'logo.jpg'),
	(8,  8, 'Extrabom',   'Vila Velha','logo.jpg'),
	(9,  9, 'Carrefour',  'Vitória', 'logo.jpg'),
	(10, 10, 'Wallmart',   'Linhares', 'logo.jpg'); SELECT setval(pg_get_serial_sequence('dbo.estabelecimento', 'idestabelecimento'), coalesce(max(idestabelecimento), 0)+1 , false) FROM dbo.estabelecimento;  
INSERT INTO pessoa(idpessoa, idendereco, nome, sobrenome, email, dataNascimento) VALUES    (1,1, 'Eduardo','Couto','eduardo@email.com','1998/02/01') ,(2,122, 'Ana Lívia','Ramos','Ana Lívia@email.com','1984-09-21')
,(3,86, 'Eduarda','Ferreira','Eduarda@email.com','1988-12-04')
,(4,88, 'Ana Beatriz','Nunes','Ana Beatriz@email.com','1993-03-21')
,(5,74, 'Bruna','Almeida','Bruna@email.com','1985-11-09')
,(6,123, 'Lucca','da Cruz','Lucca@email.com','1998-01-18')
,(7,132, 'Nicolas','da Rocha','Nicolas@email.com','1976-09-10')
,(8,77, 'Ana Clara','Barbosa','Ana Clara@email.com','1996-08-27')
,(9,36, 'Marcelo','Jesus','Marcelo@email.com','2013-02-27')
,(10,59, 'Letícia','Nogueira','Letícia@email.com','2004-12-17')
,(11,6, 'Kevin','Rodrigues','Kevin@email.com','2013-09-21')
,(12,43, 'Ana Laura','da Rosa','Ana Laura@email.com','1997-08-23')
,(13,80, 'Clara','Costa','Clara@email.com','2011-12-23')
,(14,43, 'Giovanna','Araújo','Giovanna@email.com','1971-06-20')
,(15,92, 'Sarah','FariasFernandes','Sarah@email.com','1986-08-15')
,(16,95, 'Kamilly','das Neves','Kamilly@email.com','1992-12-15')
,(17,10, 'Camila','Ramos','Camila@email.com','1986-02-16')
,(18,42, 'Sabrina','da Paz','Sabrina@email.com','1981-08-31')
,(19,32, 'João Miguel','Lopes','João Miguel@email.com','1978-05-19')
,(20,136, 'Carlos Eduardo','Rezende','Carlos Eduardo@email.com','2002-07-28')
,(21,85, 'Pedro Lucas','da Conceição','Pedro Lucas@email.com','2000-04-14')
,(22,43, 'Elisa','Santos','Elisa@email.com','2013-06-22')
,(23,116, 'Sarah','Duarte','Sarah@email.com','1996-06-18')
,(24,118, 'Danilo','Cavalcanti','Danilo@email.com','1983-06-13')
,(25,23, 'Davi Luiz','da Cunha','Davi Luiz@email.com','1972-03-16')
,(26,63, 'Beatriz','da Mata','Beatriz@email.com','2009-07-21')
,(27,39, 'Joaquim','Sales','Joaquim@email.com','2008-03-21')
,(28,43, 'João Pedro','Nunes','João Pedro@email.com','1993-11-05')
,(29,114, 'Henrique','da Conceição','Henrique@email.com','1987-03-29')
,(30,47, 'Raquel','da Cunha','Raquel@email.com','1989-01-06')
,(31,6, 'Renan','Silva','Renan@email.com','2011-02-11')
,(32,133, 'Lucas','Souza','Lucas@email.com','2010-06-07')
,(33,63, 'André','Almeida','André@email.com','2007-03-21')
,(34,113, 'Gabriela','Lopes','Gabriela@email.com','1976-04-15')
,(35,16, 'Benício','Pinto','Benício@email.com','1977-08-15')
,(36,133, 'Kevin','Lopes','Kevin@email.com','1992-05-10')
,(37,88, 'Davi','Carvalho','Davi@email.com','1981-05-18')
,(38,61, 'Augusto','Nogueira','Augusto@email.com','1976-04-13')
,(39,119, 'Letícia','Ramos','Letícia@email.com','1983-11-14')
,(40,27, 'Enzo','Rocha','Enzo@email.com','1976-06-10')
,(41,74, 'Eloah','Castro','Eloah@email.com','1975-01-12')
,(42,80, 'Vinicius','Ribeiro','Vinicius@email.com','2003-09-10')
,(43,87, 'Maria Fernanda','Correia','Maria Fernanda@email.com','1990-09-14')
,(44,106, 'Eloah','da Luz','Eloah@email.com','1971-01-22')
,(45,34, 'Julia','FariasFernandes','Julia@email.com','1971-02-07')
,(46,49, 'Clara','Martins','Clara@email.com','1990-04-02')
,(47,1, 'Isabelly','Cardoso,','Isabelly@email.com','1987-07-25')
,(48,112, 'João Guilherme','Viana','João Guilherme@email.com','1982-02-16')
,(49,11, 'Pedro Lucas','Ramos','Pedro Lucas@email.com','1974-06-24')
,(50,119, 'Benjamin','da Mota','Benjamin@email.com','2006-02-25')
,(51,77, 'Gabriel','Rezende','Gabriel@email.com','2012-10-08')
,(52,73, 'Lucas Gabriel','Duarte','Lucas Gabriel@email.com','2001-04-30')
,(53,30, 'Matheus','Araújo','Matheus@email.com','2011-10-13')
,(54,82, 'Sophia','Gomes','Sophia@email.com','2016-10-27')
,(55,78, 'Maysa','Costa','Maysa@email.com','1974-10-11')
,(56,86, 'Bianca','Porto','Bianca@email.com','1980-02-17')
,(57,106, 'Davi Lucas','Cavalcanti','Davi Lucas@email.com','2011-01-14')
,(58,58, 'Yago','Castro','Yago@email.com','2012-04-26')
,(59,108, 'Esther','Caldeira','Esther@email.com','1998-07-08')
,(60,103, 'Luiz Otávio','Costela','Luiz Otávio@email.com','1994-12-28')
,(61,36, 'Bruna','Moraes','Bruna@email.com','1988-08-06')
,(62,48, 'Raquel','Novaes','Raquel@email.com','2014-07-01')
,(63,88, 'Ana Luiza','Silva','Ana Luiza@email.com','2005-09-10')
,(64,45, 'Thomas','Porto','Thomas@email.com','2016-10-02')
,(65,18, 'Raquel','Souza','Raquel@email.com','1974-06-18')
,(66,142, 'Maria Fernanda','Araújo','Maria Fernanda@email.com','2006-02-28')
,(67,118, 'Isadora','Campos','Isadora@email.com','1987-04-06')
,(68,79, 'Ana Vitória','Santos','Ana Vitória@email.com','1999-07-11')
,(69,65, 'Daniel','Castro','Daniel@email.com','1982-05-21')
,(70,32, 'Vinicius','da Costa','Vinicius@email.com','1985-02-19')
,(71,45, 'Júlia','Ribeiro','Júlia@email.com','2014-10-03')
,(72,16, 'Clarice','Lima','Clarice@email.com','2010-03-15')
,(73,43, 'Luiza','Pinto','Luiza@email.com','1981-11-03')
,(74,39, 'Rafael','Silva','Rafael@email.com','2008-11-18')
,(75,35, 'Fernando','Cavalcanti','Fernando@email.com','1999-08-15')
,(76,80, 'Luiz Henrique','Pinto','Luiz Henrique@email.com','1996-12-10')
,(77,43, 'Fernando','Pires','Fernando@email.com','2017-09-05')
,(78,18, 'Julia','da Luz','Julia@email.com','2016-06-23')
,(79,12, 'Luiza','Almeida','Luiza@email.com','1982-02-11')
,(80,139, 'Vitória','Dias','Vitória@email.com','2012-01-23')
,(81,7, 'Luna','Sales','Luna@email.com','2016-06-23')
,(82,123, 'Isaac','Correia','Isaac@email.com','1997-05-11')
,(83,140, 'Eduardo','da Mata','Eduardo@email.com','2016-02-18')
,(84,65, 'Antônio','da Paz','Antônio@email.com','1986-02-06')
,(85,33, 'Olivia','FariasFernandes','Olivia@email.com','1999-10-30')
,(86,14, 'Maria Clara','Jesus','Maria Clara@email.com','1985-09-25')
,(87,76, 'Ian','Gomes','Ian@email.com','1991-08-05')
,(88,75, 'Leonardo','Mendes','Leonardo@email.com','1998-03-13')
,(89,92, 'João Lucas','Silveira','João Lucas@email.com','2006-11-19')
,(90,28, 'Eloah','da Conceição','Eloah@email.com','1986-01-09')
,(91,68, 'Ana Julia','Carvalho','Ana Julia@email.com','1975-10-09')
,(92,44, 'Manuela','Jesus','Manuela@email.com','1972-10-07')
,(93,76, 'João','da Costa','João@email.com','1988-07-29')
,(94,98, 'Beatriz','Pinto','Beatriz@email.com','1984-10-30')
,(95,86, 'Maria Clara','Silveira','Maria Clara@email.com','1998-09-13')
,(96,37, 'Sophia','Campos','Sophia@email.com','1999-12-06')
,(97,76, 'Ian','Peixoto','Ian@email.com','1973-10-12')
,(98,142, 'Enzo Gabriel','Barbosa','Enzo Gabriel@email.com','1983-09-15')
,(99,61, 'Erick','Caldeira','Erick@email.com','1974-11-16')
; SELECT setval(pg_get_serial_sequence('dbo.pessoa', 'idpessoa'), coalesce(max(idpessoa), 0)+1 , false) FROM dbo.pessoa;  
INSERT INTO consumidor(idconsumidor, idpessoa, login, senha, nivel, datacadastro) VALUES    (1, 1, 'educouto', '$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1, '2018/02/01') ,(2,2, 'Ana Beatriz','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1989-10-12')
,(3,3, 'Valentina','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1971-02-13')
,(4,4, 'Isabel','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2007-03-04')
,(5,5, 'Julia','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2010-04-08')
,(6,6, 'Felipe','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1988-06-25')
,(7,7, 'Emanuella','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2004-07-07')
,(8,8, 'Sophia','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1975-02-21')
,(9,9, 'Ana Laura','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1999-11-21')
,(10,10, 'Vicente','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1993-09-02')
,(11,11, 'Benício','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1998-10-09')
,(12,12, 'Emanuelly','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2014-04-12')
,(13,13, 'Luiz Fernando','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2003-03-17')
,(14,14, 'Emilly','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1997-02-23')
,(15,15, 'Esther','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1996-05-07')
,(16,16, 'Paulo','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1980-01-12')
,(17,17, 'Carolina','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1988-05-08')
,(18,18, 'Rafael','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1974-01-14')
,(19,19, 'Ana','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1987-04-02')
,(20,20, 'Pedro Lucas','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1985-05-17')
,(21,21, 'Davi Luiz','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2015-05-05')
,(22,22, 'Leonardo','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1988-08-28')
,(23,23, 'Caroline','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2009-02-10')
,(24,24, 'Ana Julia','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1984-01-09')
,(25,25, 'Thiago','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1971-01-09')
,(26,26, 'Maria Julia','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1983-07-20')
,(27,27, 'Nathan','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2000-03-15')
,(28,28, 'Lucas','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1994-05-21')
,(29,29, 'Maria Eduarda','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2006-03-15')
,(30,30, 'Vinicius','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2003-05-06')
,(31,31, 'Eloah','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1983-09-03')
,(32,32, 'Augusto','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1998-02-26')
,(33,33, 'Luna','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2005-04-09')
,(34,34, 'João Pedro','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1981-07-18')
,(35,35, 'Matheus','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1973-03-25')
,(36,36, 'Heitor','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2004-05-18')
,(37,37, 'Letícia','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2017-03-17')
,(38,38, 'Gabriel','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1992-09-21')
,(39,39, 'Davi Lucas','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1993-01-27')
,(40,40, 'Alexandre','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2010-08-10')
,(41,41, 'Maria Luiza','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1972-06-29')
,(42,42, 'Manuela','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1998-06-24')
,(43,43, 'Elisa','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1978-02-03')
,(44,44, 'Bernardo','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2013-06-26')
,(45,45, 'Kaique','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1998-12-23')
,(46,46, 'Davi','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2014-02-22')
,(47,47, 'Gabrielly','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1975-04-23')
,(48,48, 'Sofia','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1971-10-03')
,(49,49, 'Stella','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1971-07-25')
,(50,50, 'Sofia','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1975-01-14')
,(51,51, 'Maitê','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2004-06-07')
,(52,52, 'Luana','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2012-04-27')
,(53,53, 'Ryan','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2003-07-19')
,(54,54, 'Paulo','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1993-05-19')
,(55,55, 'Danilo','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2011-02-21')
,(56,56, 'Caio','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1997-08-16')
,(57,57, 'Pedro Miguel','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1999-03-29')
,(58,58, 'Diego','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2010-08-20')
,(59,59, 'Larissa','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1986-06-23')
,(60,60, 'Agatha','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1992-09-23')
,(61,61, 'Sophie','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1994-07-14')
,(62,62, 'Murilo','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1993-09-28')
,(63,63, 'Giovanna','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2015-05-08')
,(64,64, 'Stella','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1995-05-14')
,(65,65, 'Levi','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1971-08-18')
,(66,66, 'Davi Lucas','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2008-06-21')
,(67,67, 'Isabella','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1987-05-23')
,(68,68, 'Ian','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1998-10-18')
,(69,69, 'Elisa','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1973-11-11')
,(70,70, 'Marcela','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1993-02-16')
,(71,71, 'Ian','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1971-11-09')
,(72,72, 'Joana','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1991-11-30')
,(73,73, 'Gabrielly','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1976-04-19')
,(74,74, 'Joana','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1998-09-23')
,(75,75, 'Luiz Miguel','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1997-09-02')
,(76,76, 'Bruno','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1989-01-01')
,(77,77, 'Matheus','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2016-05-30')
,(78,78, 'Vinicius','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2015-02-20')
,(79,79, 'Raquel','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1986-11-25')
,(80,80, 'Yuri','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2000-03-26')
,(81,81, 'Ana Sophia','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1988-08-04')
,(82,82, 'Esther','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1978-09-13')
,(83,83, 'Lívia','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2003-04-05')
,(84,84, 'Mariane','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2004-05-11')
,(85,85, 'Lívia','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1972-12-14')
,(86,86, 'Marina','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1990-07-20')
,(87,87, 'Rafael','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1988-03-14')
,(88,88, 'Nina','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2003-08-13')
,(89,89, 'Samuel','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1980-09-21')
,(90,90, 'Pietro','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1995-01-16')
,(91,91, 'Danilo','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2003-10-31')
,(92,92, 'Thomas','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1974-09-15')
,(93,93, 'Isadora','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2012-04-05')
,(94,94, 'Ana Carolina','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2011-08-26')
,(95,95, 'Rafael','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1996-03-17')
,(96,96, 'Emilly','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1997-01-30')
,(97,97, 'Eloah','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1982-09-08')
,(98,98, 'Ana Clara','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2017-10-12')
,(99,99, 'Maria Cecília','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1999-10-03')
; SELECT setval(pg_get_serial_sequence('dbo.consumidor', 'idconsumidor'), coalesce(max(idconsumidor), 0)+1 , false) FROM dbo.consumidor;  
INSERT INTO listaCompra (idlistaCompra, idconsumidor, nome, dataultimamodificacao) VALUES    (1, 1, 'Primeira Lista', '2018/06/03') ,(2, 2,'Compras da feira','1993-03-18')
,(3, 3,'Compra de 30 dias','2013-10-12')
,(4, 4,'Churas da turma','1987-02-27')
,(5, 5,'Compra de 30 dias','1981-06-04')
,(6, 6,'Compras da feira','2010-06-10')
,(7, 7,'Compras da feira','2014-12-20')
,(8, 8,'Compra de 30 dias','2011-06-18')
,(9, 9,'Compra de 30 dias','1993-06-20')
,(10, 10,'Compra de 15 dias','1995-06-07')
,(11, 11,'Compras da feira','2011-06-05')
,(12, 12,'Compra de 15 dias','2004-12-08')
,(13, 13,'Compra de 30 dias','1998-03-23')
,(14, 14,'Compra de 15 dias','1990-09-10')
,(15, 15,'Compra de 15 dias','1984-12-03')
,(16, 16,'Compra de 30 dias','1970-03-22')
,(17, 17,'Churas da turma','1996-03-27')
,(18, 18,'Compra de 30 dias','1970-07-16')
,(19, 19,'Compra de 15 dias','2002-06-26')
,(20, 20,'Compras da feira','1997-08-19')
,(21, 21,'Compra de 30 dias','2014-08-31')
,(22, 22,'Compra de 15 dias','2009-05-31')
,(23, 23,'Compras da feira','1989-08-19')
,(24, 24,'Churas da turma','1983-02-16')
,(25, 25,'Churas da turma','1992-01-17')
,(26, 26,'Compra de 30 dias','1982-06-20')
,(27, 27,'Compras da feira','1977-02-09')
,(28, 28,'Compras da feira','2005-05-13')
,(29, 29,'Compra de 15 dias','2007-05-06')
,(30, 30,'Compra de 15 dias','2011-06-19')
,(31, 31,'Compra de 30 dias','1996-01-31')
,(32, 32,'Compras da feira','2002-07-01')
,(33, 33,'Compra de 15 dias','1994-11-06')
,(34, 34,'Compras da feira','1977-04-18')
,(35, 35,'Churas da turma','2017-12-26')
,(36, 36,'Compra de 15 dias','1983-10-11')
,(37, 37,'Churas da turma','2009-04-24')
,(38, 38,'Compra de 15 dias','1995-04-21')
,(39, 39,'Compra de 30 dias','2011-05-20')
,(40, 40,'Compra de 15 dias','2003-10-07')
,(41, 41,'Churas da turma','1974-12-14')
,(42, 42,'Compras da feira','2006-03-25')
,(43, 43,'Compra de 15 dias','1986-06-27')
,(44, 44,'Churas da turma','1979-05-21')
,(45, 45,'Compra de 30 dias','1974-01-15')
,(46, 46,'Compra de 15 dias','2017-06-05')
,(47, 47,'Churas da turma','2015-06-28')
,(48, 48,'Compra de 30 dias','2003-01-11')
,(49, 49,'Compra de 30 dias','2003-04-07')
,(50, 50,'Compra de 30 dias','1971-08-01')
,(51, 51,'Compras da feira','1970-04-12')
,(52, 52,'Churas da turma','1978-01-30')
,(53, 53,'Compra de 15 dias','1980-05-16')
,(54, 54,'Compra de 15 dias','2000-02-26')
,(55, 55,'Churas da turma','1998-11-06')
,(56, 56,'Churas da turma','1983-06-02')
,(57, 57,'Compras da feira','1976-10-17')
,(58, 58,'Compras da feira','1981-02-09')
,(59, 59,'Compras da feira','1974-08-31')
,(60, 60,'Compra de 30 dias','2009-09-02')
,(61, 61,'Compras da feira','1984-09-13')
,(62, 62,'Compra de 30 dias','2010-05-28')
,(63, 63,'Compra de 30 dias','1988-01-21')
,(64, 64,'Compra de 30 dias','1986-10-20')
,(65, 65,'Churas da turma','1981-06-21')
,(66, 66,'Compra de 30 dias','1996-06-21')
,(67, 67,'Compra de 30 dias','1984-03-20')
,(68, 68,'Compra de 15 dias','2005-07-08')
,(69, 69,'Churas da turma','2008-09-23')
,(70, 70,'Compra de 30 dias','2001-08-24')
,(71, 71,'Churas da turma','2000-09-07')
,(72, 72,'Churas da turma','2004-03-10')
,(73, 73,'Compra de 15 dias','2012-03-25')
,(74, 74,'Churas da turma','2007-03-03')
,(75, 75,'Compra de 15 dias','1975-08-28')
,(76, 76,'Compra de 30 dias','2016-03-06')
,(77, 77,'Churas da turma','1991-08-10')
,(78, 78,'Compra de 30 dias','1992-04-16')
,(79, 79,'Compra de 15 dias','1997-10-18')
,(80, 80,'Churas da turma','2003-03-21')
,(81, 81,'Compras da feira','1976-11-30')
,(82, 82,'Compra de 30 dias','1980-02-01')
,(83, 83,'Compras da feira','2007-08-28')
,(84, 84,'Churas da turma','2012-05-13')
,(85, 85,'Churas da turma','2004-02-06')
,(86, 86,'Compras da feira','1971-05-25')
,(87, 87,'Compras da feira','1990-10-12')
,(88, 88,'Compra de 30 dias','1985-11-20')
,(89, 89,'Compra de 30 dias','1995-12-11')
,(90, 90,'Compras da feira','2005-06-11')
,(91, 91,'Compra de 30 dias','2009-12-10')
,(92, 92,'Churas da turma','1973-04-13')
,(93, 93,'Compras da feira','2007-05-06')
,(94, 94,'Churas da turma','1993-01-12')
,(95, 95,'Churas da turma','1995-10-06')
,(96, 96,'Compra de 30 dias','2010-11-17')
,(97, 97,'Churas da turma','1990-01-01')
,(98, 98,'Compras da feira','2000-04-23')
,(99, 99,'Compra de 15 dias','1988-08-03')
; SELECT setval(pg_get_serial_sequence('dbo.listacompra', 'idlistacompra'), coalesce(max(idlistacompra), 0)+1 , false) FROM dbo.listacompra;  
INSERT INTO produto (idproduto, nome, idmedida, idmarca, unidade, valido) VALUES    (1, 'Biscoito Mabel', 1, 1,280,1) ,(2, 'Banana',1,1,1,1)
,(3, 'Maça',1,1,1,1)
,(4, 'Peira',1,1,1,1)
,(5, 'Arroz',1,1,1,1)
,(6, 'Feijão',1,1,1,1)
,(7, 'Suco de Caju',1,1,1,1)
,(8, 'Coca-Cola',1,1,1,1)
,(9, 'Milho',1,1,1,1)
,(10, 'Miojo',1,1,1,1)
,(11, 'Queijo',1,1,1,1)
,(12, 'Requijão',1,1,1,1)
,(13, 'Vinagre',1,1,1,1)
,(14, 'Sal Grosso',1,1,1,1)
,(15, 'Pão Fracês',1,1,1,1)
,(16, 'Suco de Macarujá',1,1,1,1)
,(17, 'Jiló',1,1,1,1)
,(18, 'Fanta Uva',1,1,1,1)
; SELECT setval(pg_get_serial_sequence('dbo.produto', 'idproduto'), coalesce(max(idproduto), 0)+1 , false) FROM dbo.produto; 
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(1,1,'1978-05-04 14:47:36',174,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (8,1,1,14,1),
(16,1,1,24,1),
(10,1,1,19,1),
(14,1,1,5,1),
(15,1,1,30,1),
(1,1,1,40,1),
(11,1,1,23,1),
(17,1,1,19,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(2,1,'1995-07-23 15:07:36',143,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (10,2,1,50,1),
(2,2,1,8,1),
(7,2,1,6,1),
(8,2,1,42,1),
(1,2,1,13,1),
(13,2,1,11,1),
(6,2,1,13,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(3,1,'1997-11-15 10:05:43',103,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (8,3,1,31,1),
(9,3,1,23,1),
(2,3,1,49,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(4,1,'1995-09-11 07:59:58',178,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (4,4,1,38,1),
(7,4,1,10,1),
(1,4,1,18,1),
(11,4,1,28,1),
(17,4,1,49,1),
(6,4,1,35,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(5,1,'1997-11-05 13:09:07',97,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (14,5,1,35,1),
(18,5,1,7,1),
(16,5,1,22,1),
(12,5,1,3,1),
(13,5,1,30,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(6,2,'1983-08-10 14:48:01',311,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (18,6,1,33,1),
(8,6,1,39,1),
(4,6,1,24,1),
(6,6,1,50,1),
(11,6,1,3,1),
(1,6,1,33,1),
(13,6,1,4,1),
(14,6,1,24,1),
(7,6,1,30,1),
(16,6,1,40,1),
(10,6,1,31,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(7,2,'1977-05-01 20:10:58',321,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (3,7,1,30,1),
(4,7,1,46,1),
(13,7,1,41,1),
(11,7,1,24,1),
(8,7,1,32,1),
(5,7,1,6,1),
(14,7,1,30,1),
(2,7,1,38,1),
(15,7,1,4,1),
(1,7,1,33,1),
(6,7,1,37,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(8,2,'1992-04-19 03:59:01',339,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (8,8,1,32,1),
(15,8,1,1,1),
(12,8,1,18,1),
(11,8,1,49,1),
(10,8,1,23,1),
(17,8,1,48,1),
(3,8,1,9,1),
(4,8,1,48,1),
(9,8,1,49,1),
(14,8,1,9,1),
(2,8,1,40,1),
(13,8,1,13,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(9,2,'2001-05-04 23:49:05',198,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (18,9,1,37,1),
(8,9,1,6,1),
(9,9,1,25,1),
(7,9,1,23,1),
(12,9,1,30,1),
(16,9,1,35,1),
(10,9,1,42,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(10,2,'1983-02-02 10:50:35',348,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (13,10,1,40,1),
(2,10,1,1,1),
(4,10,1,32,1),
(3,10,1,33,1),
(18,10,1,38,1),
(8,10,1,17,1),
(14,10,1,14,1),
(15,10,1,17,1),
(5,10,1,39,1),
(1,10,1,13,1),
(7,10,1,35,1),
(17,10,1,40,1),
(6,10,1,12,1),
(10,10,1,17,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(11,3,'1974-05-24 09:27:15',122,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (7,11,1,44,1),
(13,11,1,45,1),
(8,11,1,33,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(12,3,'2011-06-21 18:28:41',233,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (8,12,1,41,1),
(7,12,1,22,1),
(9,12,1,12,1),
(6,12,1,4,1),
(17,12,1,36,1),
(13,12,1,43,1),
(18,12,1,3,1),
(16,12,1,27,1),
(3,12,1,15,1),
(11,12,1,21,1),
(14,12,1,9,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(13,3,'2011-04-02 02:33:19',185,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (12,13,1,48,1),
(10,13,1,8,1),
(8,13,1,29,1),
(4,13,1,39,1),
(11,13,1,31,1),
(2,13,1,21,1),
(9,13,1,9,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(14,3,'1975-03-11 12:31:18',63,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (9,14,1,4,1),
(2,14,1,16,1),
(1,14,1,19,1),
(17,14,1,24,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(15,3,'1970-12-20 23:22:24',193,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (6,15,1,8,1),
(15,15,1,31,1),
(14,15,1,34,1),
(2,15,1,15,1),
(12,15,1,5,1),
(1,15,1,14,1),
(13,15,1,31,1),
(10,15,1,18,1),
(3,15,1,37,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(16,4,'1980-10-26 13:14:17',351,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (4,16,1,40,1),
(5,16,1,49,1),
(13,16,1,17,1),
(10,16,1,14,1),
(1,16,1,10,1),
(6,16,1,5,1),
(14,16,1,11,1),
(11,16,1,36,1),
(17,16,1,38,1),
(12,16,1,28,1),
(15,16,1,41,1),
(2,16,1,37,1),
(7,16,1,25,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(17,4,'2002-10-22 15:35:34',320,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (17,17,1,12,1),
(12,17,1,14,1),
(15,17,1,32,1),
(18,17,1,29,1),
(10,17,1,14,1),
(13,17,1,29,1),
(9,17,1,33,1),
(6,17,1,18,1),
(11,17,1,17,1),
(5,17,1,27,1),
(4,17,1,22,1),
(3,17,1,26,1),
(16,17,1,31,1),
(8,17,1,15,1),
(7,17,1,1,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(18,4,'1995-12-29 00:33:05',264,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (6,18,1,41,1),
(10,18,1,19,1),
(4,18,1,41,1),
(7,18,1,33,1),
(14,18,1,25,1),
(13,18,1,14,1),
(2,18,1,42,1),
(9,18,1,49,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(19,4,'2009-06-19 08:15:23',244,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (13,19,1,16,1),
(7,19,1,39,1),
(17,19,1,37,1),
(4,19,1,29,1),
(18,19,1,49,1),
(1,19,1,11,1),
(8,19,1,37,1),
(11,19,1,13,1),
(16,19,1,13,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(20,4,'1993-06-24 15:01:10',209,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (2,20,1,41,1),
(16,20,1,32,1),
(15,20,1,49,1),
(11,20,1,25,1),
(5,20,1,46,1),
(17,20,1,16,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(21,5,'2006-11-15 15:06:40',129,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (4,21,1,38,1),
(3,21,1,12,1),
(2,21,1,11,1),
(6,21,1,36,1),
(15,21,1,32,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(22,5,'2014-11-16 22:33:29',197,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (13,22,1,39,1),
(5,22,1,34,1),
(9,22,1,1,1),
(6,22,1,50,1),
(11,22,1,36,1),
(17,22,1,1,1),
(8,22,1,36,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(23,5,'1994-04-12 21:33:42',112,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (1,23,1,6,1),
(4,23,1,47,1),
(14,23,1,11,1),
(7,23,1,40,1),
(11,23,1,6,1),
(10,23,1,2,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(24,5,'1980-08-18 15:30:18',144,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (7,24,1,8,1),
(15,24,1,34,1),
(4,24,1,1,1),
(16,24,1,12,1),
(17,24,1,38,1),
(3,24,1,2,1),
(12,24,1,16,1),
(10,24,1,33,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(25,5,'2005-04-11 20:12:14',173,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (9,25,1,35,1),
(3,25,1,13,1),
(6,25,1,9,1),
(18,25,1,41,1),
(11,25,1,30,1),
(15,25,1,15,1),
(1,25,1,30,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(26,6,'1997-06-01 22:31:33',145,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (1,26,1,29,1),
(9,26,1,5,1),
(3,26,1,39,1),
(4,26,1,7,1),
(15,26,1,25,1),
(5,26,1,40,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(27,6,'1995-03-16 15:18:06',274,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (14,27,1,41,1),
(2,27,1,34,1),
(9,27,1,44,1),
(12,27,1,35,1),
(5,27,1,2,1),
(16,27,1,38,1),
(13,27,1,17,1),
(15,27,1,5,1),
(17,27,1,30,1),
(3,27,1,28,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(28,6,'1975-08-04 17:55:33',308,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (3,28,1,11,1),
(6,28,1,26,1),
(4,28,1,8,1),
(12,28,1,7,1),
(8,28,1,44,1),
(5,28,1,12,1),
(15,28,1,1,1),
(17,28,1,16,1),
(10,28,1,13,1),
(14,28,1,48,1),
(11,28,1,29,1),
(9,28,1,16,1),
(13,28,1,43,1),
(1,28,1,15,1),
(16,28,1,19,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(29,6,'1974-03-06 10:16:23',143,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (9,29,1,34,1),
(8,29,1,16,1),
(14,29,1,10,1),
(11,29,1,28,1),
(6,29,1,6,1),
(18,29,1,43,1),
(17,29,1,6,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(30,6,'1972-09-28 08:50:59',442,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (10,30,1,23,1),
(7,30,1,2,1),
(9,30,1,28,1),
(5,30,1,34,1),
(15,30,1,47,1),
(14,30,1,42,1),
(17,30,1,17,1),
(3,30,1,47,1),
(6,30,1,32,1),
(2,30,1,35,1),
(4,30,1,26,1),
(18,30,1,35,1),
(1,30,1,49,1),
(12,30,1,25,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(31,7,'1977-12-30 05:52:59',83,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (16,31,1,30,1),
(9,31,1,17,1),
(11,31,1,21,1),
(2,31,1,15,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(32,7,'2002-10-07 11:49:37',317,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (8,32,1,5,1),
(9,32,1,22,1),
(16,32,1,1,1),
(14,32,1,39,1),
(7,32,1,44,1),
(12,32,1,3,1),
(1,32,1,42,1),
(10,32,1,27,1),
(15,32,1,34,1),
(18,32,1,8,1),
(17,32,1,3,1),
(6,32,1,41,1),
(2,32,1,14,1),
(5,32,1,28,1),
(11,32,1,6,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(33,7,'2014-10-14 11:56:39',104,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (1,33,1,41,1),
(3,33,1,40,1),
(17,33,1,23,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(34,7,'1975-01-10 12:46:52',241,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (11,34,1,26,1),
(3,34,1,22,1),
(2,34,1,50,1),
(13,34,1,48,1),
(14,34,1,48,1),
(8,34,1,47,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(35,7,'1970-03-31 15:45:21',167,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (12,35,1,11,1),
(18,35,1,28,1),
(8,35,1,34,1),
(1,35,1,4,1),
(3,35,1,43,1),
(9,35,1,47,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(36,8,'1988-01-02 08:58:01',110,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (1,36,1,38,1),
(11,36,1,28,1),
(18,36,1,17,1),
(3,36,1,27,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(37,8,'2012-10-29 08:27:08',408,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (9,37,1,32,1),
(12,37,1,24,1),
(8,37,1,5,1),
(13,37,1,38,1),
(15,37,1,40,1),
(18,37,1,28,1),
(5,37,1,47,1),
(16,37,1,40,1),
(17,37,1,22,1),
(2,37,1,25,1),
(10,37,1,35,1),
(11,37,1,26,1),
(6,37,1,34,1),
(3,37,1,12,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(38,8,'2006-08-16 05:21:50',412,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (14,38,1,34,1),
(11,38,1,36,1),
(9,38,1,50,1),
(6,38,1,39,1),
(12,38,1,25,1),
(17,38,1,46,1),
(10,38,1,31,1),
(8,38,1,24,1),
(1,38,1,7,1),
(13,38,1,46,1),
(16,38,1,13,1),
(7,38,1,37,1),
(4,38,1,24,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(39,8,'1975-10-04 03:14:59',354,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (16,39,1,16,1),
(3,39,1,11,1),
(18,39,1,25,1),
(8,39,1,14,1),
(5,39,1,34,1),
(2,39,1,37,1),
(1,39,1,30,1),
(4,39,1,29,1),
(15,39,1,33,1),
(14,39,1,40,1),
(7,39,1,35,1),
(6,39,1,6,1),
(9,39,1,44,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(40,8,'1977-03-26 05:01:02',172,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (14,40,1,20,1),
(16,40,1,15,1),
(4,40,1,25,1),
(5,40,1,34,1),
(18,40,1,38,1),
(17,40,1,4,1),
(1,40,1,36,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(41,9,'1995-04-01 14:53:17',184,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (10,41,1,41,1),
(15,41,1,40,1),
(9,41,1,46,1),
(2,41,1,6,1),
(14,41,1,15,1),
(3,41,1,5,1),
(4,41,1,3,1),
(1,41,1,28,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(42,9,'1976-10-18 00:39:26',100,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (4,42,1,40,1),
(1,42,1,40,1),
(13,42,1,20,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(43,9,'2013-07-23 11:54:59',289,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (18,43,1,11,1),
(17,43,1,31,1),
(4,43,1,25,1),
(13,43,1,38,1),
(14,43,1,23,1),
(7,43,1,50,1),
(11,43,1,35,1),
(15,43,1,43,1),
(3,43,1,23,1),
(1,43,1,10,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(44,9,'1993-02-15 12:09:13',369,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (13,44,1,47,1),
(12,44,1,15,1),
(3,44,1,6,1),
(2,44,1,20,1),
(4,44,1,23,1),
(16,44,1,1,1),
(1,44,1,10,1),
(9,44,1,28,1),
(18,44,1,27,1),
(11,44,1,43,1),
(14,44,1,30,1),
(7,44,1,30,1),
(5,44,1,29,1),
(17,44,1,11,1),
(15,44,1,49,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(45,9,'1993-03-04 02:55:25',289,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (17,45,1,31,1),
(7,45,1,33,1),
(4,45,1,32,1),
(2,45,1,28,1),
(9,45,1,11,1),
(6,45,1,42,1),
(15,45,1,2,1),
(3,45,1,6,1),
(12,45,1,9,1),
(13,45,1,39,1),
(18,45,1,30,1),
(14,45,1,26,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(46,10,'1973-03-05 07:18:55',282,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (11,46,1,36,1),
(18,46,1,50,1),
(6,46,1,47,1),
(4,46,1,47,1),
(5,46,1,17,1),
(9,46,1,17,1),
(17,46,1,44,1),
(1,46,1,3,1),
(14,46,1,5,1),
(2,46,1,16,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(47,10,'1997-09-30 11:04:28',139,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (9,47,1,40,1),
(12,47,1,15,1),
(1,47,1,1,1),
(11,47,1,27,1),
(14,47,1,38,1),
(5,47,1,11,1),
(8,47,1,7,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(48,10,'2018-03-15 11:12:32',124,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (18,48,1,22,1),
(16,48,1,28,1),
(9,48,1,18,1),
(8,48,1,35,1),
(4,48,1,21,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(49,10,'1991-09-11 10:14:30',179,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (15,49,1,16,1),
(4,49,1,7,1),
(10,49,1,9,1),
(3,49,1,27,1),
(17,49,1,14,1),
(12,49,1,27,1),
(11,49,1,6,1),
(13,49,1,36,1),
(7,49,1,37,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(50,10,'1984-03-19 21:55:17',310,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (15,50,1,24,1),
(16,50,1,16,1),
(4,50,1,50,1),
(18,50,1,36,1),
(1,50,1,6,1),
(17,50,1,2,1),
(13,50,1,50,1),
(14,50,1,34,1),
(7,50,1,26,1),
(12,50,1,39,1),
(2,50,1,24,1),
(6,50,1,3,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(51,11,'1999-04-01 08:27:40',102,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (7,51,1,1,1),
(4,51,1,39,1),
(2,51,1,10,1),
(17,51,1,47,1),
(8,51,1,5,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(52,11,'1995-10-07 02:58:27',339,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (4,52,1,36,1),
(9,52,1,18,1),
(11,52,1,47,1),
(16,52,1,25,1),
(10,52,1,26,1),
(18,52,1,3,1),
(13,52,1,46,1),
(2,52,1,27,1),
(15,52,1,40,1),
(8,52,1,49,1),
(7,52,1,22,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(53,11,'2003-12-31 05:35:34',180,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (14,53,1,46,1),
(2,53,1,1,1),
(12,53,1,8,1),
(5,53,1,48,1),
(13,53,1,36,1),
(7,53,1,9,1),
(10,53,1,25,1),
(18,53,1,7,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(54,11,'2017-12-08 01:21:11',251,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (18,54,1,21,1),
(14,54,1,2,1),
(15,54,1,21,1),
(7,54,1,24,1),
(12,54,1,33,1),
(10,54,1,7,1),
(16,54,1,10,1),
(5,54,1,16,1),
(4,54,1,20,1),
(8,54,1,2,1),
(17,54,1,42,1),
(3,54,1,10,1),
(2,54,1,19,1),
(6,54,1,24,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(55,11,'2018-05-21 15:26:20',295,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (5,55,1,10,1),
(16,55,1,8,1),
(7,55,1,20,1),
(10,55,1,8,1),
(4,55,1,6,1),
(17,55,1,47,1),
(2,55,1,15,1),
(3,55,1,41,1),
(13,55,1,15,1),
(15,55,1,18,1),
(6,55,1,40,1),
(12,55,1,48,1),
(8,55,1,19,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(56,12,'1980-02-27 08:00:29',300,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (2,56,1,20,1),
(4,56,1,15,1),
(11,56,1,32,1),
(10,56,1,40,1),
(18,56,1,36,1),
(17,56,1,10,1),
(9,56,1,27,1),
(8,56,1,23,1),
(12,56,1,31,1),
(3,56,1,3,1),
(13,56,1,6,1),
(15,56,1,14,1),
(1,56,1,43,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(57,12,'1971-05-08 08:31:43',58,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (8,57,1,46,1),
(1,57,1,12,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(58,12,'2005-06-05 19:27:31',342,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (12,58,1,4,1),
(5,58,1,22,1),
(2,58,1,35,1),
(8,58,1,45,1),
(11,58,1,38,1),
(13,58,1,14,1),
(14,58,1,49,1),
(1,58,1,15,1),
(17,58,1,18,1),
(7,58,1,6,1),
(16,58,1,19,1),
(18,58,1,8,1),
(3,58,1,13,1),
(10,58,1,46,1),
(4,58,1,10,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(59,12,'1998-03-09 02:36:09',123,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (2,59,1,47,1),
(10,59,1,11,1),
(18,59,1,8,1),
(11,59,1,9,1),
(13,59,1,8,1),
(8,59,1,40,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(60,12,'1971-01-03 12:08:26',374,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (15,60,1,43,1),
(14,60,1,42,1),
(6,60,1,21,1),
(16,60,1,48,1),
(1,60,1,21,1),
(12,60,1,9,1),
(11,60,1,21,1),
(17,60,1,2,1),
(5,60,1,10,1),
(8,60,1,44,1),
(9,60,1,16,1),
(7,60,1,16,1),
(3,60,1,21,1),
(10,60,1,33,1),
(13,60,1,27,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(61,13,'1993-08-31 22:25:31',156,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (11,61,1,14,1),
(12,61,1,25,1),
(14,61,1,7,1),
(5,61,1,4,1),
(10,61,1,41,1),
(2,61,1,46,1),
(7,61,1,19,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(62,13,'2017-04-30 01:25:12',247,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (5,62,1,40,1),
(14,62,1,8,1),
(17,62,1,1,1),
(11,62,1,17,1),
(16,62,1,40,1),
(2,62,1,21,1),
(6,62,1,5,1),
(10,62,1,26,1),
(12,62,1,28,1),
(8,62,1,26,1),
(7,62,1,35,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(63,13,'1997-01-27 05:31:39',295,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (11,63,1,8,1),
(2,63,1,25,1),
(12,63,1,32,1),
(3,63,1,28,1),
(15,63,1,45,1),
(6,63,1,1,1),
(17,63,1,35,1),
(16,63,1,35,1),
(10,63,1,44,1),
(8,63,1,42,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(64,13,'1973-02-23 14:19:42',327,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (11,64,1,22,1),
(10,64,1,22,1),
(7,64,1,40,1),
(6,64,1,13,1),
(16,64,1,23,1),
(12,64,1,39,1),
(13,64,1,45,1),
(2,64,1,27,1),
(15,64,1,43,1),
(8,64,1,9,1),
(3,64,1,44,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(65,13,'1998-09-20 10:20:19',255,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (14,65,1,36,1),
(3,65,1,10,1),
(9,65,1,46,1),
(10,65,1,27,1),
(7,65,1,29,1),
(18,65,1,40,1),
(13,65,1,15,1),
(11,65,1,8,1),
(4,65,1,2,1),
(2,65,1,42,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(66,14,'2015-02-26 20:00:47',146,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (13,66,1,31,1),
(4,66,1,15,1),
(8,66,1,31,1),
(12,66,1,5,1),
(18,66,1,36,1),
(7,66,1,28,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(67,14,'1977-05-27 02:29:01',166,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (8,67,1,35,1),
(2,67,1,34,1),
(4,67,1,10,1),
(6,67,1,27,1),
(9,67,1,42,1),
(18,67,1,18,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(68,14,'1999-08-08 10:01:35',254,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (17,68,1,41,1),
(6,68,1,46,1),
(2,68,1,31,1),
(13,68,1,49,1),
(12,68,1,7,1),
(18,68,1,2,1),
(9,68,1,8,1),
(10,68,1,31,1),
(7,68,1,39,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(69,14,'1971-04-08 00:39:48',174,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (5,69,1,2,1),
(3,69,1,29,1),
(8,69,1,47,1),
(4,69,1,26,1),
(9,69,1,15,1),
(6,69,1,33,1),
(16,69,1,22,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(70,14,'2012-05-08 01:37:01',115,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (9,70,1,39,1),
(12,70,1,48,1),
(15,70,1,28,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(71,15,'1995-12-17 17:11:06',150,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (14,71,1,39,1),
(5,71,1,14,1),
(9,71,1,26,1),
(10,71,1,31,1),
(2,71,1,12,1),
(12,71,1,28,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(72,15,'2004-10-02 21:47:39',102,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (3,72,1,49,1),
(16,72,1,9,1),
(2,72,1,44,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(73,15,'2001-03-21 01:30:35',88,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (4,73,1,49,1),
(10,73,1,39,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(74,15,'1985-07-17 21:19:39',234,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (17,74,1,40,1),
(8,74,1,2,1),
(13,74,1,32,1),
(4,74,1,42,1),
(16,74,1,48,1),
(2,74,1,30,1),
(3,74,1,40,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(75,15,'1975-09-02 07:17:07',80,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (17,75,1,24,1),
(14,75,1,7,1),
(10,75,1,49,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(76,16,'1990-11-10 15:15:52',284,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (10,76,1,48,1),
(16,76,1,8,1),
(6,76,1,29,1),
(9,76,1,29,1),
(15,76,1,35,1),
(17,76,1,45,1),
(5,76,1,42,1),
(1,76,1,47,1),
(13,76,1,1,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(77,16,'1993-10-25 16:12:14',310,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (9,77,1,46,1),
(12,77,1,45,1),
(3,77,1,1,1),
(16,77,1,48,1),
(8,77,1,34,1),
(10,77,1,25,1),
(11,77,1,31,1),
(5,77,1,49,1),
(1,77,1,31,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(78,16,'1970-10-13 08:38:13',221,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (6,78,1,9,1),
(9,78,1,21,1),
(1,78,1,36,1),
(13,78,1,30,1),
(18,78,1,44,1),
(8,78,1,20,1),
(4,78,1,25,1),
(5,78,1,36,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(79,16,'1979-09-15 10:28:14',115,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (4,79,1,16,1),
(14,79,1,14,1),
(16,79,1,35,1),
(13,79,1,34,1),
(7,79,1,16,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(80,16,'1999-07-07 19:05:04',77,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (16,80,1,22,1),
(17,80,1,30,1),
(14,80,1,25,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(81,17,'1998-05-17 18:26:25',85,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (9,81,1,13,1),
(13,81,1,21,1),
(14,81,1,12,1),
(6,81,1,12,1),
(4,81,1,12,1),
(12,81,1,1,1),
(18,81,1,14,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(82,17,'2014-12-17 19:21:39',345,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (6,82,1,23,1),
(1,82,1,24,1),
(8,82,1,31,1),
(11,82,1,11,1),
(9,82,1,48,1),
(2,82,1,17,1),
(10,82,1,44,1),
(13,82,1,8,1),
(14,82,1,3,1),
(4,82,1,48,1),
(17,82,1,46,1),
(3,82,1,42,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(83,17,'2001-04-21 03:43:04',235,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (8,83,1,30,1),
(6,83,1,8,1),
(7,83,1,45,1),
(1,83,1,44,1),
(9,83,1,27,1),
(15,83,1,14,1),
(13,83,1,15,1),
(17,83,1,48,1),
(16,83,1,2,1),
(10,83,1,2,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(84,17,'2001-01-15 02:32:39',171,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (18,84,1,10,1),
(10,84,1,10,1),
(1,84,1,41,1),
(17,84,1,37,1),
(6,84,1,21,1),
(15,84,1,1,1),
(11,84,1,10,1),
(16,84,1,6,1),
(3,84,1,28,1),
(9,84,1,7,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(85,17,'2000-07-05 01:36:34',88,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (1,85,1,4,1),
(13,85,1,27,1),
(11,85,1,13,1),
(16,85,1,44,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(86,18,'1980-08-25 09:57:12',137,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (17,86,1,29,1),
(2,86,1,37,1),
(6,86,1,2,1),
(18,86,1,4,1),
(4,86,1,4,1),
(1,86,1,6,1),
(11,86,1,47,1),
(14,86,1,8,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(87,18,'1992-10-13 02:31:55',414,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (16,87,1,23,1),
(14,87,1,23,1),
(3,87,1,45,1),
(13,87,1,15,1),
(11,87,1,22,1),
(1,87,1,47,1),
(2,87,1,42,1),
(15,87,1,25,1),
(17,87,1,28,1),
(10,87,1,35,1),
(4,87,1,44,1),
(18,87,1,19,1),
(8,87,1,39,1),
(9,87,1,7,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(88,18,'2015-11-19 18:20:14',229,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (4,88,1,23,1),
(14,88,1,25,1),
(12,88,1,20,1),
(15,88,1,50,1),
(18,88,1,26,1),
(7,88,1,6,1),
(16,88,1,26,1),
(5,88,1,1,1),
(1,88,1,18,1),
(17,88,1,19,1),
(6,88,1,6,1),
(10,88,1,9,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(89,18,'2005-10-07 03:28:32',165,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (4,89,1,41,1),
(13,89,1,34,1),
(15,89,1,2,1),
(17,89,1,13,1),
(3,89,1,22,1),
(16,89,1,7,1),
(9,89,1,18,1),
(14,89,1,6,1),
(6,89,1,3,1),
(11,89,1,19,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(90,18,'1984-04-16 06:39:24',327,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (2,90,1,32,1),
(1,90,1,26,1),
(5,90,1,50,1),
(14,90,1,8,1),
(18,90,1,21,1),
(8,90,1,3,1),
(12,90,1,11,1),
(13,90,1,41,1),
(9,90,1,46,1),
(16,90,1,44,1),
(10,90,1,25,1),
(3,90,1,20,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(91,19,'2014-08-09 04:20:15',149,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (13,91,1,16,1),
(2,91,1,3,1),
(7,91,1,10,1),
(11,91,1,25,1),
(16,91,1,39,1),
(14,91,1,32,1),
(18,91,1,24,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(92,19,'2017-11-21 21:30:41',148,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (17,92,1,10,1),
(4,92,1,35,1),
(13,92,1,11,1),
(16,92,1,11,1),
(1,92,1,46,1),
(6,92,1,35,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(93,19,'1977-07-26 16:16:30',265,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (1,93,1,7,1),
(18,93,1,14,1),
(17,93,1,25,1),
(7,93,1,38,1),
(3,93,1,50,1),
(5,93,1,38,1),
(2,93,1,21,1),
(6,93,1,3,1),
(13,93,1,21,1),
(12,93,1,1,1),
(14,93,1,47,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(94,19,'1973-06-29 12:29:35',189,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (6,94,1,44,1),
(17,94,1,1,1),
(4,94,1,45,1),
(10,94,1,10,1),
(3,94,1,25,1),
(7,94,1,26,1),
(18,94,1,12,1),
(16,94,1,22,1),
(9,94,1,4,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(95,19,'1988-02-13 04:20:43',27,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (11,95,1,10,1),
(3,95,1,17,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(96,20,'2016-08-17 10:36:56',315,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (13,96,1,21,1),
(9,96,1,23,1),
(14,96,1,45,1),
(12,96,1,39,1),
(16,96,1,38,1),
(5,96,1,31,1),
(3,96,1,27,1),
(1,96,1,16,1),
(17,96,1,3,1),
(15,96,1,8,1),
(18,96,1,48,1),
(6,96,1,16,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(97,20,'2011-08-17 17:28:16',152,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (10,97,1,19,1),
(12,97,1,49,1),
(6,97,1,35,1),
(15,97,1,49,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(98,20,'1982-08-16 20:30:48',332,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (14,98,1,31,1),
(2,98,1,5,1),
(1,98,1,42,1),
(5,98,1,36,1),
(16,98,1,23,1),
(12,98,1,34,1),
(6,98,1,32,1),
(17,98,1,21,1),
(13,98,1,22,1),
(11,98,1,2,1),
(9,98,1,47,1),
(18,98,1,17,1),
(3,98,1,20,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(99,20,'2001-04-30 05:08:32',297,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (15,99,1,26,1),
(2,99,1,36,1),
(7,99,1,40,1),
(11,99,1,38,1),
(13,99,1,25,1),
(1,99,1,4,1),
(18,99,1,24,1),
(4,99,1,50,1),
(5,99,1,48,1),
(3,99,1,6,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(100,20,'1974-11-03 13:18:03',222,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (15,100,1,3,1),
(17,100,1,24,1),
(2,100,1,21,1),
(18,100,1,13,1),
(11,100,1,25,1),
(7,100,1,42,1),
(14,100,1,33,1),
(16,100,1,34,1),
(12,100,1,2,1),
(6,100,1,25,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(101,21,'2008-05-29 03:36:58',280,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (7,101,1,11,1),
(12,101,1,32,1),
(10,101,1,22,1),
(2,101,1,32,1),
(4,101,1,30,1),
(3,101,1,10,1),
(13,101,1,23,1),
(1,101,1,35,1),
(18,101,1,4,1),
(11,101,1,49,1),
(6,101,1,4,1),
(9,101,1,28,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(102,21,'1995-03-19 12:43:36',145,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (3,102,1,18,1),
(5,102,1,24,1),
(15,102,1,10,1),
(4,102,1,44,1),
(9,102,1,25,1),
(16,102,1,24,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(103,21,'1994-11-04 09:14:26',425,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (6,103,1,39,1),
(17,103,1,45,1),
(4,103,1,17,1),
(18,103,1,35,1),
(15,103,1,18,1),
(13,103,1,16,1),
(8,103,1,42,1),
(10,103,1,45,1),
(1,103,1,44,1),
(5,103,1,17,1),
(3,103,1,9,1),
(12,103,1,11,1),
(11,103,1,46,1),
(16,103,1,6,1),
(2,103,1,35,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(104,21,'1976-10-01 20:20:31',342,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (7,104,1,34,1),
(9,104,1,50,1),
(10,104,1,28,1),
(16,104,1,28,1),
(2,104,1,23,1),
(14,104,1,48,1),
(8,104,1,12,1),
(1,104,1,12,1),
(15,104,1,33,1),
(5,104,1,23,1),
(17,104,1,27,1),
(11,104,1,24,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(105,21,'2009-10-23 14:06:30',116,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (1,105,1,30,1),
(11,105,1,4,1),
(14,105,1,23,1),
(9,105,1,17,1),
(13,105,1,40,1),
(4,105,1,2,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(106,22,'1973-12-11 00:06:51',172,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (3,106,1,12,1),
(6,106,1,4,1),
(15,106,1,34,1),
(17,106,1,34,1),
(11,106,1,13,1),
(18,106,1,33,1),
(5,106,1,39,1),
(12,106,1,3,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(107,22,'1996-06-19 07:13:23',186,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (9,107,1,41,1),
(15,107,1,38,1),
(3,107,1,34,1),
(11,107,1,11,1),
(12,107,1,17,1),
(8,107,1,45,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(108,22,'1994-01-16 18:24:58',241,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (14,108,1,10,1),
(11,108,1,15,1),
(4,108,1,3,1),
(6,108,1,5,1),
(10,108,1,18,1),
(1,108,1,28,1),
(5,108,1,41,1),
(2,108,1,13,1),
(17,108,1,26,1),
(13,108,1,35,1),
(7,108,1,47,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(109,22,'2010-12-28 18:36:38',151,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (9,109,1,7,1),
(6,109,1,14,1),
(10,109,1,46,1),
(7,109,1,40,1),
(13,109,1,7,1),
(2,109,1,19,1),
(15,109,1,12,1),
(18,109,1,6,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(110,22,'1997-08-09 10:46:19',223,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (15,110,1,22,1),
(5,110,1,44,1),
(16,110,1,34,1),
(18,110,1,12,1),
(17,110,1,17,1),
(2,110,1,22,1),
(6,110,1,15,1),
(7,110,1,31,1),
(10,110,1,4,1),
(4,110,1,22,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(111,23,'1993-12-10 14:18:18',129,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (5,111,1,47,1),
(15,111,1,7,1),
(11,111,1,45,1),
(18,111,1,30,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(112,23,'2008-04-07 01:04:14',213,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (10,112,1,44,1),
(6,112,1,45,1),
(9,112,1,27,1),
(5,112,1,17,1),
(8,112,1,25,1),
(7,112,1,17,1),
(4,112,1,21,1),
(1,112,1,17,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(113,23,'2011-01-20 16:57:51',21,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (5,113,1,16,1),
(8,113,1,5,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(114,23,'2001-10-26 13:24:24',291,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (12,114,1,7,1),
(1,114,1,26,1),
(9,114,1,41,1),
(4,114,1,11,1),
(8,114,1,9,1),
(17,114,1,47,1),
(16,114,1,1,1),
(18,114,1,30,1),
(2,114,1,40,1),
(14,114,1,33,1),
(10,114,1,46,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(115,23,'1996-02-14 09:55:02',189,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (8,115,1,43,1),
(5,115,1,21,1),
(2,115,1,14,1),
(12,115,1,22,1),
(7,115,1,26,1),
(14,115,1,50,1),
(16,115,1,7,1),
(18,115,1,6,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(116,24,'1973-10-06 05:28:53',219,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (4,116,1,30,1),
(5,116,1,24,1),
(8,116,1,6,1),
(7,116,1,9,1),
(12,116,1,20,1),
(2,116,1,28,1),
(9,116,1,35,1),
(17,116,1,24,1),
(6,116,1,20,1),
(13,116,1,5,1),
(3,116,1,18,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(117,24,'1993-11-01 17:48:59',173,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (14,117,1,45,1),
(6,117,1,33,1),
(9,117,1,40,1),
(2,117,1,42,1),
(7,117,1,1,1),
(5,117,1,1,1),
(8,117,1,11,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(118,24,'1976-11-06 10:43:12',121,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (17,118,1,2,1),
(10,118,1,6,1),
(14,118,1,1,1),
(1,118,1,40,1),
(4,118,1,2,1),
(9,118,1,16,1),
(16,118,1,49,1),
(2,118,1,5,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(119,24,'1972-12-18 13:08:14',320,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (3,119,1,22,1),
(5,119,1,14,1),
(1,119,1,27,1),
(2,119,1,31,1),
(14,119,1,41,1),
(12,119,1,31,1),
(11,119,1,6,1),
(17,119,1,11,1),
(18,119,1,11,1),
(9,119,1,27,1),
(15,119,1,48,1),
(8,119,1,2,1),
(4,119,1,49,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(120,24,'1997-10-10 02:25:48',126,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (3,120,1,26,1),
(5,120,1,11,1),
(18,120,1,4,1),
(11,120,1,27,1),
(13,120,1,28,1),
(17,120,1,30,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(121,25,'2002-02-02 04:32:01',188,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (2,121,1,34,1),
(1,121,1,24,1),
(13,121,1,11,1),
(6,121,1,9,1),
(14,121,1,35,1),
(10,121,1,32,1),
(8,121,1,29,1),
(16,121,1,3,1),
(9,121,1,11,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(122,25,'2004-07-19 09:56:09',36,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (1,122,1,5,1),
(11,122,1,28,1),
(13,122,1,3,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(123,25,'2003-11-07 19:23:21',15,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (4,123,1,13,1),
(7,123,1,2,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(124,25,'1998-10-14 09:23:31',58,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (17,124,1,45,1),
(3,124,1,8,1),
(15,124,1,2,1),
(18,124,1,3,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(125,25,'1980-09-03 09:56:53',87,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (1,125,1,44,1),
(7,125,1,43,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(126,26,'2013-08-18 13:08:24',150,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (15,126,1,35,1),
(3,126,1,29,1),
(13,126,1,17,1),
(18,126,1,6,1),
(16,126,1,10,1),
(1,126,1,38,1),
(14,126,1,15,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(127,26,'1971-05-18 12:46:50',320,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (13,127,1,37,1),
(15,127,1,6,1),
(5,127,1,38,1),
(1,127,1,49,1),
(9,127,1,47,1),
(14,127,1,30,1),
(8,127,1,34,1),
(16,127,1,4,1),
(18,127,1,1,1),
(11,127,1,15,1),
(12,127,1,30,1),
(4,127,1,29,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(128,26,'1975-05-05 01:01:10',346,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (4,128,1,25,1),
(9,128,1,33,1),
(10,128,1,18,1),
(7,128,1,44,1),
(11,128,1,13,1),
(8,128,1,37,1),
(14,128,1,5,1),
(16,128,1,22,1),
(12,128,1,12,1),
(2,128,1,50,1),
(17,128,1,26,1),
(1,128,1,26,1),
(13,128,1,35,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(129,26,'1978-07-14 23:46:01',347,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (18,129,1,6,1),
(13,129,1,15,1),
(3,129,1,23,1),
(10,129,1,43,1),
(7,129,1,43,1),
(5,129,1,24,1),
(17,129,1,2,1),
(8,129,1,50,1),
(9,129,1,14,1),
(16,129,1,10,1),
(12,129,1,31,1),
(4,129,1,38,1),
(11,129,1,27,1),
(14,129,1,21,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(130,26,'2010-06-18 08:20:51',261,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (2,130,1,28,1),
(16,130,1,5,1),
(18,130,1,46,1),
(12,130,1,18,1),
(11,130,1,47,1),
(9,130,1,3,1),
(17,130,1,44,1),
(1,130,1,23,1),
(8,130,1,47,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(131,27,'2000-11-03 00:45:39',168,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (12,131,1,35,1),
(2,131,1,30,1),
(8,131,1,30,1),
(18,131,1,41,1),
(9,131,1,32,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(132,27,'1997-05-21 02:25:42',50,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (9,132,1,2,1),
(14,132,1,27,1),
(16,132,1,21,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(133,27,'2001-09-21 07:17:42',148,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (11,133,1,3,1),
(4,133,1,22,1),
(3,133,1,47,1),
(1,133,1,42,1),
(8,133,1,1,1),
(5,133,1,33,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(134,27,'2005-05-03 12:40:32',190,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (15,134,1,5,1),
(10,134,1,23,1),
(13,134,1,9,1),
(18,134,1,1,1),
(6,134,1,28,1),
(3,134,1,29,1),
(16,134,1,5,1),
(4,134,1,36,1),
(14,134,1,10,1),
(7,134,1,44,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(135,27,'1992-10-21 22:05:55',388,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (16,135,1,18,1),
(13,135,1,37,1),
(2,135,1,23,1),
(3,135,1,15,1),
(6,135,1,31,1),
(10,135,1,28,1),
(12,135,1,22,1),
(4,135,1,21,1),
(14,135,1,35,1),
(9,135,1,12,1),
(7,135,1,24,1),
(11,135,1,2,1),
(18,135,1,50,1),
(8,135,1,37,1),
(1,135,1,33,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(136,28,'2007-03-24 01:15:00',188,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (7,136,1,21,1),
(10,136,1,37,1),
(1,136,1,40,1),
(5,136,1,40,1),
(12,136,1,50,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(137,28,'2012-11-14 16:04:34',147,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (2,137,1,8,1),
(15,137,1,31,1),
(16,137,1,19,1),
(4,137,1,20,1),
(12,137,1,21,1),
(13,137,1,48,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(138,28,'1981-11-26 17:11:24',196,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (8,138,1,48,1),
(11,138,1,11,1),
(14,138,1,47,1),
(16,138,1,9,1),
(7,138,1,3,1),
(2,138,1,42,1),
(13,138,1,36,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(139,28,'1981-06-24 20:29:15',421,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (1,139,1,25,1),
(9,139,1,4,1),
(8,139,1,31,1),
(3,139,1,47,1),
(14,139,1,14,1),
(15,139,1,35,1),
(12,139,1,42,1),
(11,139,1,18,1),
(16,139,1,43,1),
(4,139,1,15,1),
(7,139,1,40,1),
(18,139,1,37,1),
(5,139,1,18,1),
(17,139,1,27,1),
(10,139,1,25,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(140,28,'2013-09-11 08:04:13',343,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (8,140,1,40,1),
(7,140,1,36,1),
(14,140,1,6,1),
(16,140,1,30,1),
(1,140,1,18,1),
(4,140,1,49,1),
(12,140,1,42,1),
(5,140,1,29,1),
(6,140,1,12,1),
(17,140,1,36,1),
(2,140,1,31,1),
(11,140,1,14,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(141,29,'2009-04-21 11:51:04',142,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (8,141,1,25,1),
(3,141,1,25,1),
(16,141,1,23,1),
(5,141,1,17,1),
(6,141,1,2,1),
(10,141,1,29,1),
(18,141,1,21,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(142,29,'1977-08-17 06:12:51',101,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (5,142,1,20,1),
(16,142,1,23,1),
(15,142,1,37,1),
(1,142,1,11,1),
(13,142,1,10,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(143,29,'1979-11-18 04:31:42',308,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (10,143,1,15,1),
(18,143,1,6,1),
(6,143,1,43,1),
(4,143,1,6,1),
(11,143,1,50,1),
(16,143,1,23,1),
(2,143,1,2,1),
(5,143,1,19,1),
(17,143,1,9,1),
(3,143,1,38,1),
(7,143,1,43,1),
(8,143,1,16,1),
(15,143,1,38,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(144,29,'2006-07-08 22:06:05',158,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (12,144,1,3,1),
(6,144,1,1,1),
(9,144,1,44,1),
(11,144,1,22,1),
(13,144,1,2,1),
(15,144,1,26,1),
(16,144,1,5,1),
(10,144,1,6,1),
(17,144,1,2,1),
(18,144,1,27,1),
(1,144,1,20,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(145,29,'1992-10-24 14:48:26',92,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (2,145,1,1,1),
(16,145,1,3,1),
(9,145,1,19,1),
(3,145,1,5,1),
(1,145,1,23,1),
(15,145,1,8,1),
(5,145,1,33,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(146,30,'1991-11-14 05:57:17',190,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (13,146,1,7,1),
(5,146,1,7,1),
(4,146,1,21,1),
(2,146,1,10,1),
(17,146,1,38,1),
(7,146,1,34,1),
(12,146,1,33,1),
(16,146,1,2,1),
(8,146,1,34,1),
(10,146,1,4,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(147,30,'1988-10-23 22:37:58',294,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (16,147,1,22,1),
(9,147,1,9,1),
(4,147,1,23,1),
(7,147,1,36,1),
(12,147,1,5,1),
(18,147,1,47,1),
(11,147,1,24,1),
(10,147,1,45,1),
(6,147,1,44,1),
(15,147,1,8,1),
(13,147,1,31,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(148,30,'1987-01-27 14:56:22',271,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (5,148,1,21,1),
(2,148,1,26,1),
(7,148,1,35,1),
(11,148,1,32,1),
(12,148,1,38,1),
(14,148,1,11,1),
(1,148,1,32,1),
(17,148,1,44,1),
(6,148,1,32,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(149,30,'1988-08-13 11:03:17',263,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (18,149,1,44,1),
(14,149,1,21,1),
(13,149,1,48,1),
(4,149,1,32,1),
(2,149,1,36,1),
(5,149,1,40,1),
(7,149,1,42,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(150,30,'2016-01-07 18:11:25',364,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (15,150,1,34,1),
(5,150,1,36,1),
(18,150,1,49,1),
(9,150,1,23,1),
(17,150,1,13,1),
(1,150,1,19,1),
(10,150,1,5,1),
(7,150,1,34,1),
(3,150,1,13,1),
(14,150,1,21,1),
(6,150,1,8,1),
(8,150,1,46,1),
(13,150,1,39,1),
(16,150,1,12,1),
(12,150,1,12,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(151,31,'1981-03-08 16:41:53',166,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (11,151,1,33,1),
(18,151,1,29,1),
(7,151,1,21,1),
(16,151,1,45,1),
(13,151,1,38,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(152,31,'2004-02-22 05:51:46',305,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (12,152,1,15,1),
(18,152,1,41,1),
(17,152,1,15,1),
(2,152,1,23,1),
(7,152,1,31,1),
(8,152,1,41,1),
(9,152,1,46,1),
(11,152,1,45,1),
(3,152,1,6,1),
(14,152,1,23,1),
(10,152,1,8,1),
(13,152,1,11,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(153,31,'2010-11-29 04:01:05',335,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (17,153,1,47,1),
(2,153,1,42,1),
(8,153,1,11,1),
(1,153,1,24,1),
(5,153,1,47,1),
(10,153,1,43,1),
(4,153,1,36,1),
(14,153,1,24,1),
(18,153,1,31,1),
(7,153,1,21,1),
(3,153,1,9,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(154,31,'1971-10-02 17:57:33',164,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (2,154,1,37,1),
(14,154,1,30,1),
(6,154,1,27,1),
(17,154,1,12,1),
(10,154,1,32,1),
(9,154,1,26,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(155,31,'1999-09-13 15:33:19',291,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (1,155,1,32,1),
(10,155,1,22,1),
(6,155,1,31,1),
(4,155,1,6,1),
(5,155,1,34,1),
(15,155,1,44,1),
(16,155,1,7,1),
(8,155,1,38,1),
(9,155,1,28,1),
(17,155,1,24,1),
(3,155,1,22,1),
(2,155,1,3,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(156,32,'1972-04-29 07:18:15',226,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (10,156,1,25,1),
(2,156,1,19,1),
(7,156,1,24,1),
(16,156,1,29,1),
(18,156,1,24,1),
(9,156,1,46,1),
(1,156,1,6,1),
(17,156,1,17,1),
(12,156,1,36,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(157,32,'2008-02-21 07:57:08',304,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (14,157,1,34,1),
(5,157,1,7,1),
(15,157,1,41,1),
(3,157,1,35,1),
(2,157,1,46,1),
(9,157,1,11,1),
(1,157,1,47,1),
(12,157,1,27,1),
(10,157,1,24,1),
(17,157,1,32,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(158,32,'1988-01-16 18:19:17',159,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (2,158,1,47,1),
(3,158,1,40,1),
(6,158,1,3,1),
(11,158,1,16,1),
(15,158,1,17,1),
(9,158,1,9,1),
(12,158,1,7,1),
(13,158,1,20,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(159,32,'1987-10-29 20:14:16',38,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (3,159,1,2,1),
(5,159,1,36,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(160,32,'2016-06-24 12:20:21',215,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (16,160,1,34,1),
(3,160,1,21,1),
(6,160,1,28,1),
(12,160,1,33,1),
(7,160,1,19,1),
(2,160,1,4,1),
(5,160,1,40,1),
(13,160,1,3,1),
(8,160,1,22,1),
(4,160,1,11,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(161,33,'1972-10-31 10:29:01',151,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (6,161,1,11,1),
(13,161,1,3,1),
(17,161,1,42,1),
(16,161,1,45,1),
(12,161,1,9,1),
(5,161,1,41,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(162,33,'1975-01-18 12:57:10',304,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (10,162,1,13,1),
(12,162,1,8,1),
(1,162,1,15,1),
(8,162,1,16,1),
(5,162,1,4,1),
(11,162,1,23,1),
(17,162,1,1,1),
(15,162,1,39,1),
(18,162,1,15,1),
(9,162,1,30,1),
(7,162,1,27,1),
(2,162,1,17,1),
(13,162,1,27,1),
(16,162,1,37,1),
(3,162,1,32,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(163,33,'1986-05-10 10:19:28',96,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (10,163,1,16,1),
(15,163,1,6,1),
(14,163,1,28,1),
(8,163,1,46,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(164,33,'1997-07-14 17:47:24',242,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (17,164,1,11,1),
(9,164,1,44,1),
(18,164,1,39,1),
(13,164,1,14,1),
(5,164,1,1,1),
(8,164,1,17,1),
(16,164,1,18,1),
(7,164,1,23,1),
(15,164,1,32,1),
(11,164,1,35,1),
(12,164,1,8,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(165,33,'1991-06-05 11:40:43',99,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (2,165,1,24,1),
(15,165,1,34,1),
(13,165,1,33,1),
(11,165,1,8,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(166,34,'1988-05-26 03:23:45',313,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (6,166,1,45,1),
(14,166,1,29,1),
(3,166,1,8,1),
(13,166,1,25,1),
(8,166,1,48,1),
(5,166,1,43,1),
(7,166,1,7,1),
(2,166,1,22,1),
(9,166,1,26,1),
(11,166,1,15,1),
(16,166,1,45,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(167,34,'2013-03-21 09:58:41',75,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (1,167,1,46,1),
(13,167,1,9,1),
(11,167,1,20,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(168,34,'1994-06-11 12:51:45',149,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (1,168,1,42,1),
(2,168,1,19,1),
(12,168,1,18,1),
(18,168,1,27,1),
(6,168,1,43,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(169,34,'2011-12-30 21:25:17',400,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (7,169,1,26,1),
(4,169,1,31,1),
(18,169,1,30,1),
(8,169,1,7,1),
(12,169,1,33,1),
(6,169,1,1,1),
(11,169,1,49,1),
(9,169,1,49,1),
(13,169,1,25,1),
(3,169,1,2,1),
(1,169,1,35,1),
(14,169,1,49,1),
(10,169,1,40,1),
(2,169,1,23,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(170,34,'1970-07-26 10:33:59',383,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (6,170,1,30,1),
(5,170,1,30,1),
(3,170,1,39,1),
(14,170,1,15,1),
(9,170,1,12,1),
(2,170,1,44,1),
(12,170,1,27,1),
(8,170,1,4,1),
(10,170,1,24,1),
(13,170,1,43,1),
(18,170,1,26,1),
(16,170,1,28,1),
(7,170,1,26,1),
(15,170,1,35,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(171,35,'1992-05-24 07:22:35',252,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (18,171,1,11,1),
(5,171,1,16,1),
(11,171,1,37,1),
(1,171,1,7,1),
(6,171,1,3,1),
(13,171,1,22,1),
(10,171,1,1,1),
(14,171,1,31,1),
(7,171,1,19,1),
(3,171,1,2,1),
(2,171,1,5,1),
(12,171,1,28,1),
(9,171,1,21,1),
(8,171,1,49,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(172,35,'1994-12-08 03:09:24',388,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (7,172,1,35,1),
(17,172,1,4,1),
(3,172,1,34,1),
(16,172,1,39,1),
(11,172,1,35,1),
(12,172,1,28,1),
(2,172,1,10,1),
(10,172,1,30,1),
(1,172,1,43,1),
(6,172,1,3,1),
(18,172,1,4,1),
(4,172,1,34,1),
(9,172,1,22,1),
(5,172,1,19,1),
(15,172,1,48,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(173,35,'1992-07-10 20:26:37',74,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (10,173,1,3,1),
(12,173,1,46,1),
(3,173,1,25,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(174,35,'1998-10-24 19:15:04',428,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (6,174,1,35,1),
(14,174,1,46,1),
(11,174,1,4,1),
(5,174,1,8,1),
(13,174,1,47,1),
(9,174,1,7,1),
(16,174,1,48,1),
(15,174,1,37,1),
(12,174,1,48,1),
(2,174,1,31,1),
(1,174,1,25,1),
(8,174,1,43,1),
(7,174,1,19,1),
(10,174,1,22,1),
(3,174,1,8,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(175,35,'1979-04-01 03:25:39',33,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (14,175,1,7,1),
(13,175,1,13,1),
(9,175,1,13,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(176,36,'1985-11-25 16:33:30',162,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (18,176,1,4,1),
(7,176,1,47,1),
(15,176,1,30,1),
(4,176,1,23,1),
(6,176,1,16,1),
(8,176,1,32,1),
(5,176,1,10,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(177,36,'2012-04-16 06:40:03',252,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (5,177,1,36,1),
(11,177,1,10,1),
(8,177,1,21,1),
(12,177,1,20,1),
(17,177,1,4,1),
(10,177,1,38,1),
(3,177,1,18,1),
(15,177,1,35,1),
(13,177,1,49,1),
(16,177,1,7,1),
(7,177,1,14,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(178,36,'1985-08-29 20:26:50',399,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (18,178,1,42,1),
(16,178,1,41,1),
(11,178,1,1,1),
(7,178,1,7,1),
(17,178,1,26,1),
(12,178,1,15,1),
(5,178,1,30,1),
(1,178,1,37,1),
(14,178,1,35,1),
(13,178,1,34,1),
(3,178,1,48,1),
(10,178,1,29,1),
(15,178,1,9,1),
(8,178,1,45,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(179,36,'1970-03-31 04:56:06',269,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (1,179,1,37,1),
(8,179,1,6,1),
(9,179,1,26,1),
(18,179,1,12,1),
(17,179,1,38,1),
(5,179,1,4,1),
(6,179,1,16,1),
(7,179,1,30,1),
(4,179,1,11,1),
(15,179,1,36,1),
(16,179,1,5,1),
(2,179,1,48,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(180,36,'1998-09-11 06:41:20',167,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (3,180,1,30,1),
(14,180,1,37,1),
(18,180,1,28,1),
(8,180,1,20,1),
(10,180,1,32,1),
(11,180,1,4,1),
(15,180,1,16,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(181,37,'2010-04-16 05:01:08',227,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (7,181,1,11,1),
(9,181,1,5,1),
(6,181,1,49,1),
(14,181,1,4,1),
(10,181,1,20,1),
(5,181,1,39,1),
(2,181,1,43,1),
(4,181,1,49,1),
(8,181,1,7,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(182,37,'1980-10-05 11:26:22',153,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (12,182,1,25,1),
(18,182,1,44,1),
(15,182,1,36,1),
(2,182,1,48,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(183,37,'1976-11-06 16:40:36',276,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (10,183,1,38,1),
(8,183,1,29,1),
(16,183,1,34,1),
(1,183,1,11,1),
(6,183,1,7,1),
(17,183,1,35,1),
(7,183,1,34,1),
(18,183,1,7,1),
(14,183,1,27,1),
(12,183,1,25,1),
(13,183,1,1,1),
(15,183,1,18,1),
(3,183,1,5,1),
(5,183,1,5,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(184,37,'2003-06-16 07:02:10',257,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (6,184,1,9,1),
(5,184,1,44,1),
(17,184,1,44,1),
(14,184,1,20,1),
(11,184,1,19,1),
(2,184,1,2,1),
(15,184,1,40,1),
(4,184,1,48,1),
(1,184,1,31,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(185,37,'1986-10-25 18:11:02',107,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (13,185,1,49,1),
(4,185,1,16,1),
(9,185,1,42,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(186,38,'2008-03-28 11:27:15',303,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (1,186,1,35,1),
(13,186,1,20,1),
(4,186,1,38,1),
(5,186,1,20,1),
(8,186,1,2,1),
(16,186,1,5,1),
(18,186,1,38,1),
(14,186,1,27,1),
(3,186,1,35,1),
(15,186,1,15,1),
(17,186,1,48,1),
(11,186,1,20,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(187,38,'2002-10-19 18:12:25',104,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (2,187,1,38,1),
(5,187,1,27,1),
(4,187,1,31,1),
(13,187,1,8,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(188,38,'1988-09-07 08:09:08',55,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (3,188,1,22,1),
(6,188,1,5,1),
(5,188,1,28,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(189,38,'1986-03-31 06:28:44',381,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (16,189,1,15,1),
(10,189,1,27,1),
(3,189,1,28,1),
(11,189,1,37,1),
(12,189,1,35,1),
(13,189,1,20,1),
(6,189,1,33,1),
(7,189,1,27,1),
(14,189,1,38,1),
(4,189,1,25,1),
(9,189,1,23,1),
(8,189,1,9,1),
(1,189,1,46,1),
(2,189,1,18,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(190,38,'1977-08-31 21:51:47',143,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (17,190,1,39,1),
(1,190,1,43,1),
(4,190,1,47,1),
(9,190,1,14,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(191,39,'1992-12-19 09:50:11',181,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (4,191,1,25,1),
(9,191,1,4,1),
(7,191,1,11,1),
(14,191,1,48,1),
(8,191,1,11,1),
(2,191,1,6,1),
(15,191,1,42,1),
(16,191,1,29,1),
(13,191,1,5,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(192,39,'1998-12-08 17:30:50',151,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (4,192,1,30,1),
(17,192,1,9,1),
(10,192,1,50,1),
(18,192,1,5,1),
(5,192,1,30,1),
(12,192,1,27,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(193,39,'1988-05-23 12:21:29',177,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (2,193,1,37,1),
(15,193,1,3,1),
(17,193,1,34,1),
(11,193,1,40,1),
(10,193,1,16,1),
(16,193,1,29,1),
(8,193,1,18,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(194,39,'2006-12-23 00:32:16',286,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (6,194,1,30,1),
(9,194,1,21,1),
(15,194,1,6,1),
(7,194,1,27,1),
(4,194,1,22,1),
(16,194,1,42,1),
(8,194,1,50,1),
(10,194,1,21,1),
(13,194,1,21,1),
(3,194,1,33,1),
(12,194,1,13,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(195,39,'1991-12-17 17:48:36',61,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (1,195,1,35,1),
(17,195,1,23,1),
(10,195,1,3,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(196,40,'2006-04-06 22:11:59',187,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (18,196,1,47,1),
(2,196,1,1,1),
(13,196,1,6,1),
(4,196,1,18,1),
(6,196,1,43,1),
(8,196,1,20,1),
(10,196,1,15,1),
(15,196,1,2,1),
(1,196,1,35,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(197,40,'2002-09-19 08:16:52',109,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (15,197,1,12,1),
(16,197,1,31,1),
(8,197,1,17,1),
(11,197,1,42,1),
(6,197,1,7,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(198,40,'2001-03-17 13:37:00',36,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (11,198,1,22,1),
(18,198,1,14,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(199,40,'1977-06-19 01:35:15',265,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (7,199,1,32,1),
(10,199,1,49,1),
(4,199,1,13,1),
(1,199,1,3,1),
(11,199,1,3,1),
(3,199,1,36,1),
(15,199,1,11,1),
(18,199,1,7,1),
(17,199,1,48,1),
(13,199,1,24,1),
(9,199,1,39,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(200,40,'2017-05-15 19:34:02',251,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (6,200,1,20,1),
(8,200,1,35,1),
(9,200,1,42,1),
(2,200,1,1,1),
(1,200,1,35,1),
(18,200,1,32,1),
(17,200,1,26,1),
(15,200,1,24,1),
(10,200,1,18,1),
(7,200,1,2,1),
(12,200,1,16,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(201,41,'1990-06-03 19:52:22',153,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (5,201,1,22,1),
(7,201,1,42,1),
(14,201,1,43,1),
(9,201,1,46,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(202,41,'1976-01-09 22:31:38',303,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (2,202,1,16,1),
(17,202,1,47,1),
(8,202,1,33,1),
(6,202,1,25,1),
(15,202,1,41,1),
(12,202,1,21,1),
(3,202,1,22,1),
(16,202,1,14,1),
(14,202,1,12,1),
(7,202,1,34,1),
(10,202,1,38,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(203,41,'2006-02-10 20:07:15',147,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (10,203,1,13,1),
(14,203,1,8,1),
(15,203,1,35,1),
(18,203,1,16,1),
(8,203,1,2,1),
(4,203,1,34,1),
(3,203,1,36,1),
(16,203,1,3,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(204,41,'1993-11-24 22:15:29',358,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (13,204,1,5,1),
(2,204,1,43,1),
(1,204,1,34,1),
(6,204,1,22,1),
(5,204,1,49,1),
(7,204,1,13,1),
(15,204,1,2,1),
(11,204,1,38,1),
(14,204,1,47,1),
(4,204,1,21,1),
(3,204,1,9,1),
(16,204,1,27,1),
(9,204,1,19,1),
(10,204,1,29,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(205,41,'1975-06-20 21:52:23',190,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (6,205,1,10,1),
(3,205,1,9,1),
(1,205,1,6,1),
(12,205,1,24,1),
(9,205,1,42,1),
(4,205,1,22,1),
(17,205,1,30,1),
(14,205,1,36,1),
(5,205,1,11,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(206,42,'2009-04-09 15:18:23',187,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (16,206,1,2,1),
(14,206,1,8,1),
(6,206,1,8,1),
(17,206,1,29,1),
(12,206,1,21,1),
(3,206,1,40,1),
(7,206,1,24,1),
(8,206,1,16,1),
(18,206,1,19,1),
(11,206,1,7,1),
(9,206,1,13,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(207,42,'1977-12-12 17:42:23',278,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (16,207,1,1,1),
(13,207,1,5,1),
(4,207,1,41,1),
(3,207,1,34,1),
(10,207,1,27,1),
(17,207,1,24,1),
(2,207,1,34,1),
(5,207,1,8,1),
(18,207,1,8,1),
(12,207,1,37,1),
(7,207,1,29,1),
(15,207,1,30,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(208,42,'2005-02-02 10:38:33',175,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (8,208,1,45,1),
(10,208,1,18,1),
(6,208,1,24,1),
(9,208,1,24,1),
(3,208,1,46,1),
(4,208,1,18,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(209,42,'2013-08-19 22:29:58',157,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (5,209,1,36,1),
(4,209,1,10,1),
(14,209,1,40,1),
(10,209,1,19,1),
(2,209,1,10,1),
(12,209,1,22,1),
(16,209,1,20,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(210,42,'1991-10-25 14:31:46',150,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (10,210,1,49,1),
(15,210,1,28,1),
(7,210,1,22,1),
(8,210,1,35,1),
(4,210,1,16,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(211,43,'1994-01-28 08:12:49',249,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (1,211,1,21,1),
(14,211,1,24,1),
(7,211,1,21,1),
(18,211,1,3,1),
(13,211,1,11,1),
(9,211,1,30,1),
(3,211,1,48,1),
(17,211,1,10,1),
(15,211,1,39,1),
(4,211,1,26,1),
(12,211,1,16,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(212,43,'2001-11-12 19:34:12',251,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (15,212,1,15,1),
(6,212,1,3,1),
(10,212,1,19,1),
(2,212,1,36,1),
(16,212,1,38,1),
(12,212,1,28,1),
(1,212,1,42,1),
(7,212,1,4,1),
(5,212,1,38,1),
(3,212,1,1,1),
(13,212,1,27,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(213,43,'1995-09-29 08:45:02',139,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (1,213,1,31,1),
(15,213,1,8,1),
(7,213,1,47,1),
(2,213,1,11,1),
(3,213,1,42,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(214,43,'1983-02-13 17:44:56',44,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (18,214,1,19,1),
(10,214,1,23,1),
(15,214,1,2,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(215,43,'1986-03-21 09:29:01',149,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (11,215,1,18,1),
(15,215,1,50,1),
(13,215,1,42,1),
(2,215,1,5,1),
(5,215,1,34,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(216,44,'1977-05-02 19:17:24',275,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (6,216,1,24,1),
(5,216,1,49,1),
(11,216,1,45,1),
(1,216,1,14,1),
(4,216,1,2,1),
(14,216,1,27,1),
(17,216,1,50,1),
(3,216,1,30,1),
(18,216,1,7,1),
(2,216,1,1,1),
(13,216,1,26,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(217,44,'1978-11-07 03:43:30',410,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (1,217,1,39,1),
(7,217,1,26,1),
(10,217,1,18,1),
(4,217,1,28,1),
(11,217,1,50,1),
(16,217,1,33,1),
(12,217,1,15,1),
(5,217,1,41,1),
(17,217,1,18,1),
(8,217,1,32,1),
(14,217,1,36,1),
(9,217,1,29,1),
(3,217,1,45,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(218,44,'1997-09-04 19:42:04',84,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (7,218,1,43,1),
(14,218,1,16,1),
(4,218,1,25,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(219,44,'1984-04-14 11:02:14',419,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (1,219,1,36,1),
(6,219,1,30,1),
(14,219,1,27,1),
(8,219,1,50,1),
(11,219,1,33,1),
(2,219,1,33,1),
(7,219,1,34,1),
(10,219,1,10,1),
(17,219,1,16,1),
(13,219,1,48,1),
(4,219,1,49,1),
(9,219,1,44,1),
(12,219,1,9,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(220,44,'1997-10-11 22:58:21',132,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (2,220,1,17,1),
(4,220,1,38,1),
(14,220,1,18,1),
(17,220,1,10,1),
(5,220,1,39,1),
(13,220,1,6,1),
(16,220,1,4,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(221,45,'1975-11-12 15:25:31',45,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (18,221,1,12,1),
(1,221,1,33,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(222,45,'2007-07-28 04:13:55',102,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (7,222,1,6,1),
(8,222,1,10,1),
(10,222,1,23,1),
(9,222,1,36,1),
(14,222,1,27,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(223,45,'2008-11-09 07:35:23',336,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (17,223,1,16,1),
(12,223,1,39,1),
(18,223,1,8,1),
(1,223,1,24,1),
(9,223,1,29,1),
(5,223,1,29,1),
(13,223,1,30,1),
(7,223,1,24,1),
(6,223,1,13,1),
(8,223,1,25,1),
(3,223,1,49,1),
(11,223,1,44,1),
(14,223,1,6,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(224,45,'1988-04-19 23:49:38',393,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (16,224,1,7,1),
(5,224,1,50,1),
(6,224,1,46,1),
(13,224,1,42,1),
(1,224,1,30,1),
(11,224,1,50,1),
(12,224,1,18,1),
(14,224,1,21,1),
(17,224,1,23,1),
(9,224,1,4,1),
(15,224,1,23,1),
(10,224,1,35,1),
(7,224,1,44,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(225,45,'2014-11-07 00:30:37',119,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (1,225,1,42,1),
(11,225,1,7,1),
(17,225,1,42,1),
(10,225,1,28,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(226,46,'2001-04-09 03:48:16',222,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (3,226,1,28,1),
(12,226,1,19,1),
(4,226,1,25,1),
(16,226,1,21,1),
(13,226,1,45,1),
(7,226,1,9,1),
(10,226,1,50,1),
(5,226,1,25,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(227,46,'2001-12-18 06:13:44',307,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (7,227,1,27,1),
(1,227,1,41,1),
(4,227,1,44,1),
(13,227,1,22,1),
(16,227,1,33,1),
(10,227,1,35,1),
(12,227,1,46,1),
(6,227,1,20,1),
(14,227,1,28,1),
(15,227,1,11,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(228,46,'1976-09-06 21:31:51',94,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (7,228,1,30,1),
(12,228,1,1,1),
(1,228,1,1,1),
(13,228,1,19,1),
(11,228,1,23,1),
(10,228,1,14,1),
(6,228,1,6,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(229,46,'2011-01-25 01:36:11',238,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (11,229,1,42,1),
(2,229,1,16,1),
(15,229,1,16,1),
(14,229,1,21,1),
(5,229,1,11,1),
(18,229,1,18,1),
(4,229,1,37,1),
(7,229,1,42,1),
(1,229,1,35,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(230,46,'2006-09-08 12:25:18',417,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (18,230,1,41,1),
(14,230,1,25,1),
(13,230,1,50,1),
(5,230,1,27,1),
(11,230,1,13,1),
(6,230,1,33,1),
(4,230,1,34,1),
(17,230,1,9,1),
(7,230,1,49,1),
(2,230,1,34,1),
(10,230,1,14,1),
(1,230,1,16,1),
(9,230,1,36,1),
(12,230,1,7,1),
(3,230,1,29,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(231,47,'1970-12-22 17:55:51',343,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (13,231,1,30,1),
(6,231,1,5,1),
(12,231,1,15,1),
(7,231,1,49,1),
(3,231,1,12,1),
(16,231,1,37,1),
(10,231,1,30,1),
(15,231,1,14,1),
(11,231,1,28,1),
(8,231,1,13,1),
(2,231,1,9,1),
(1,231,1,43,1),
(17,231,1,30,1),
(14,231,1,28,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(232,47,'2005-09-08 04:26:46',238,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (17,232,1,2,1),
(6,232,1,24,1),
(5,232,1,45,1),
(12,232,1,26,1),
(14,232,1,40,1),
(13,232,1,37,1),
(3,232,1,28,1),
(7,232,1,18,1),
(8,232,1,18,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(233,47,'2006-12-04 23:40:30',74,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (10,233,1,29,1),
(9,233,1,45,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(234,47,'1995-08-14 13:08:48',91,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (3,234,1,23,1),
(12,234,1,45,1),
(7,234,1,23,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(235,47,'1970-11-18 01:12:06',297,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (7,235,1,4,1),
(13,235,1,22,1),
(17,235,1,27,1),
(11,235,1,30,1),
(2,235,1,9,1),
(9,235,1,9,1),
(8,235,1,9,1),
(3,235,1,26,1),
(15,235,1,49,1),
(18,235,1,27,1),
(5,235,1,50,1),
(10,235,1,35,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(236,48,'1998-10-07 06:00:27',271,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (4,236,1,40,1),
(18,236,1,36,1),
(11,236,1,16,1),
(17,236,1,32,1),
(14,236,1,46,1),
(8,236,1,17,1),
(13,236,1,31,1),
(2,236,1,41,1),
(6,236,1,12,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(237,48,'2000-05-08 13:34:41',334,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (12,237,1,48,1),
(6,237,1,37,1),
(4,237,1,3,1),
(15,237,1,34,1),
(17,237,1,17,1),
(11,237,1,32,1),
(8,237,1,47,1),
(5,237,1,35,1),
(2,237,1,21,1),
(16,237,1,4,1),
(10,237,1,8,1),
(1,237,1,19,1),
(3,237,1,29,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(238,48,'1983-06-09 10:55:36',63,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (8,238,1,37,1),
(7,238,1,16,1),
(18,238,1,10,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(239,48,'2016-06-25 14:13:25',249,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (6,239,1,30,1),
(3,239,1,31,1),
(7,239,1,28,1),
(18,239,1,14,1),
(1,239,1,43,1),
(12,239,1,9,1),
(13,239,1,20,1),
(14,239,1,36,1),
(10,239,1,38,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(240,48,'2009-04-25 14:57:00',244,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (18,240,1,44,1),
(2,240,1,50,1),
(7,240,1,24,1),
(13,240,1,2,1),
(16,240,1,16,1),
(15,240,1,44,1),
(12,240,1,5,1),
(4,240,1,27,1),
(11,240,1,32,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(241,49,'2010-11-22 21:34:45',220,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (6,241,1,3,1),
(13,241,1,34,1),
(16,241,1,9,1),
(5,241,1,1,1),
(10,241,1,30,1),
(7,241,1,8,1),
(14,241,1,11,1),
(11,241,1,35,1),
(17,241,1,10,1),
(1,241,1,13,1),
(2,241,1,40,1),
(18,241,1,26,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(242,49,'1994-03-13 18:34:36',283,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (12,242,1,47,1),
(2,242,1,1,1),
(9,242,1,37,1),
(18,242,1,27,1),
(4,242,1,37,1),
(6,242,1,38,1),
(17,242,1,4,1),
(10,242,1,27,1),
(14,242,1,20,1),
(16,242,1,44,1),
(5,242,1,1,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(243,49,'1973-08-17 07:29:39',161,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (6,243,1,4,1),
(3,243,1,38,1),
(4,243,1,16,1),
(18,243,1,32,1),
(16,243,1,43,1),
(1,243,1,28,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(244,49,'2004-09-11 12:01:22',35,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (12,244,1,3,1),
(14,244,1,32,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(245,49,'1983-02-09 17:32:38',211,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (15,245,1,29,1),
(8,245,1,42,1),
(12,245,1,29,1),
(18,245,1,25,1),
(7,245,1,41,1),
(10,245,1,45,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(246,50,'1999-09-13 10:13:39',83,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (1,246,1,38,1),
(15,246,1,25,1),
(2,246,1,20,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(247,50,'1981-11-22 16:11:29',86,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (5,247,1,47,1),
(7,247,1,31,1),
(10,247,1,2,1),
(2,247,1,6,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(248,50,'1994-11-17 19:22:43',65,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (10,248,1,49,1),
(6,248,1,16,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(249,50,'1986-01-11 15:01:39',175,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (5,249,1,22,1),
(8,249,1,22,1),
(10,249,1,42,1),
(6,249,1,20,1),
(1,249,1,38,1),
(13,249,1,31,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(250,50,'2007-12-09 10:58:51',217,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (13,250,1,37,1),
(1,250,1,44,1),
(16,250,1,7,1),
(18,250,1,3,1),
(8,250,1,38,1),
(12,250,1,46,1),
(3,250,1,38,1),
(9,250,1,4,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(251,51,'1975-09-04 03:59:00',170,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (6,251,1,42,1),
(16,251,1,45,1),
(7,251,1,24,1),
(13,251,1,10,1),
(12,251,1,8,1),
(1,251,1,41,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(252,51,'1971-06-28 07:32:09',64,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (9,252,1,2,1),
(11,252,1,15,1),
(4,252,1,47,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(253,51,'2005-02-28 09:37:28',430,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (9,253,1,9,1),
(14,253,1,29,1),
(16,253,1,2,1),
(10,253,1,43,1),
(11,253,1,40,1),
(6,253,1,17,1),
(3,253,1,49,1),
(2,253,1,34,1),
(12,253,1,37,1),
(7,253,1,22,1),
(1,253,1,31,1),
(5,253,1,45,1),
(13,253,1,26,1),
(8,253,1,17,1),
(18,253,1,29,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(254,51,'1997-03-03 06:21:40',348,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (12,254,1,14,1),
(16,254,1,48,1),
(6,254,1,24,1),
(4,254,1,25,1),
(11,254,1,27,1),
(14,254,1,28,1),
(18,254,1,35,1),
(2,254,1,32,1),
(9,254,1,3,1),
(3,254,1,1,1),
(15,254,1,34,1),
(5,254,1,4,1),
(17,254,1,20,1),
(7,254,1,32,1),
(10,254,1,21,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(255,51,'2011-03-02 20:07:34',346,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (3,255,1,41,1),
(1,255,1,14,1),
(4,255,1,17,1),
(9,255,1,27,1),
(13,255,1,36,1),
(15,255,1,17,1),
(17,255,1,15,1),
(7,255,1,32,1),
(6,255,1,7,1),
(10,255,1,46,1),
(8,255,1,14,1),
(16,255,1,34,1),
(2,255,1,25,1),
(14,255,1,21,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(256,52,'1995-03-20 13:11:20',31,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (16,256,1,21,1),
(1,256,1,10,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(257,52,'1972-08-23 09:41:54',356,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (11,257,1,17,1),
(15,257,1,50,1),
(16,257,1,20,1),
(2,257,1,27,1),
(9,257,1,2,1),
(3,257,1,1,1),
(4,257,1,17,1),
(10,257,1,46,1),
(5,257,1,34,1),
(1,257,1,12,1),
(6,257,1,46,1),
(17,257,1,35,1),
(7,257,1,49,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(258,52,'1996-06-04 12:43:44',167,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (15,258,1,46,1),
(10,258,1,4,1),
(8,258,1,43,1),
(5,258,1,25,1),
(3,258,1,6,1),
(14,258,1,43,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(259,52,'1984-07-11 17:23:27',334,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (7,259,1,47,1),
(11,259,1,33,1),
(14,259,1,44,1),
(3,259,1,8,1),
(6,259,1,33,1),
(18,259,1,43,1),
(8,259,1,39,1),
(5,259,1,9,1),
(17,259,1,38,1),
(1,259,1,10,1),
(16,259,1,30,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(260,52,'1984-07-09 23:09:10',40,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (8,260,1,4,1),
(12,260,1,34,1),
(14,260,1,2,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(261,53,'1977-07-30 12:29:36',179,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (8,261,1,16,1),
(16,261,1,2,1),
(12,261,1,19,1),
(17,261,1,2,1),
(11,261,1,22,1),
(1,261,1,24,1),
(14,261,1,35,1),
(9,261,1,3,1),
(15,261,1,7,1),
(3,261,1,49,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(262,53,'1972-06-14 21:19:10',291,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (2,262,1,21,1),
(12,262,1,3,1),
(1,262,1,36,1),
(13,262,1,50,1),
(7,262,1,33,1),
(10,262,1,45,1),
(14,262,1,36,1),
(15,262,1,5,1),
(4,262,1,22,1),
(8,262,1,40,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(263,53,'2005-11-22 16:53:26',242,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (17,263,1,17,1),
(5,263,1,43,1),
(18,263,1,34,1),
(4,263,1,4,1),
(16,263,1,13,1),
(10,263,1,26,1),
(12,263,1,34,1),
(1,263,1,1,1),
(2,263,1,26,1),
(9,263,1,42,1),
(11,263,1,1,1),
(6,263,1,1,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(264,53,'1985-05-30 11:43:35',146,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (9,264,1,19,1),
(4,264,1,29,1),
(1,264,1,39,1),
(5,264,1,27,1),
(10,264,1,32,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(265,53,'1970-03-16 21:34:16',321,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (5,265,1,25,1),
(11,265,1,28,1),
(13,265,1,42,1),
(7,265,1,47,1),
(4,265,1,6,1),
(2,265,1,46,1),
(9,265,1,29,1),
(3,265,1,28,1),
(16,265,1,6,1),
(8,265,1,39,1),
(17,265,1,25,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(266,54,'2010-06-04 15:36:22',154,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (5,266,1,49,1),
(3,266,1,18,1),
(9,266,1,33,1),
(16,266,1,16,1),
(1,266,1,5,1),
(4,266,1,18,1),
(18,266,1,15,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(267,54,'1980-04-29 07:38:36',367,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (10,267,1,3,1),
(17,267,1,26,1),
(12,267,1,42,1),
(4,267,1,33,1),
(9,267,1,26,1),
(2,267,1,14,1),
(7,267,1,18,1),
(6,267,1,47,1),
(11,267,1,35,1),
(14,267,1,13,1),
(3,267,1,24,1),
(8,267,1,35,1),
(18,267,1,6,1),
(15,267,1,4,1),
(16,267,1,41,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(268,54,'1974-04-06 21:51:34',138,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (8,268,1,14,1),
(15,268,1,34,1),
(11,268,1,22,1),
(17,268,1,5,1),
(16,268,1,27,1),
(5,268,1,36,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(269,54,'1970-08-30 19:02:50',324,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (10,269,1,14,1),
(5,269,1,43,1),
(6,269,1,39,1),
(17,269,1,5,1),
(3,269,1,24,1),
(12,269,1,40,1),
(11,269,1,23,1),
(9,269,1,47,1),
(16,269,1,48,1),
(14,269,1,14,1),
(4,269,1,27,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(270,54,'2010-10-15 04:56:10',472,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (8,270,1,50,1),
(4,270,1,47,1),
(12,270,1,28,1),
(14,270,1,23,1),
(1,270,1,19,1),
(18,270,1,35,1),
(5,270,1,34,1),
(13,270,1,16,1),
(2,270,1,39,1),
(3,270,1,20,1),
(10,270,1,20,1),
(6,270,1,29,1),
(17,270,1,23,1),
(7,270,1,43,1),
(15,270,1,46,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(271,55,'1978-01-20 17:08:28',163,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (7,271,1,4,1),
(15,271,1,3,1),
(8,271,1,32,1),
(10,271,1,30,1),
(12,271,1,26,1),
(16,271,1,25,1),
(13,271,1,43,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(272,55,'1987-03-18 00:44:02',350,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (15,272,1,14,1),
(17,272,1,9,1),
(5,272,1,40,1),
(16,272,1,31,1),
(3,272,1,43,1),
(2,272,1,38,1),
(13,272,1,24,1),
(4,272,1,21,1),
(11,272,1,33,1),
(9,272,1,45,1),
(8,272,1,28,1),
(1,272,1,6,1),
(7,272,1,18,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(273,55,'1991-07-08 06:39:48',253,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (12,273,1,48,1),
(10,273,1,28,1),
(17,273,1,14,1),
(13,273,1,7,1),
(2,273,1,33,1),
(14,273,1,29,1),
(5,273,1,7,1),
(7,273,1,13,1),
(9,273,1,10,1),
(16,273,1,21,1),
(1,273,1,43,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(274,55,'2002-06-24 05:45:29',191,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (10,274,1,35,1),
(3,274,1,31,1),
(13,274,1,45,1),
(7,274,1,32,1),
(6,274,1,4,1),
(16,274,1,6,1),
(5,274,1,38,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(275,55,'1990-04-30 08:14:54',150,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (5,275,1,5,1),
(12,275,1,1,1),
(2,275,1,15,1),
(3,275,1,32,1),
(18,275,1,13,1),
(17,275,1,26,1),
(4,275,1,23,1),
(16,275,1,35,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(276,56,'1991-08-16 08:25:08',307,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (9,276,1,40,1),
(5,276,1,34,1),
(11,276,1,43,1),
(18,276,1,12,1),
(14,276,1,39,1),
(8,276,1,44,1),
(17,276,1,25,1),
(2,276,1,33,1),
(10,276,1,29,1),
(13,276,1,8,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(277,56,'2007-05-12 05:36:40',233,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (16,277,1,27,1),
(12,277,1,2,1),
(1,277,1,7,1),
(10,277,1,34,1),
(17,277,1,25,1),
(3,277,1,10,1),
(11,277,1,28,1),
(15,277,1,5,1),
(18,277,1,42,1),
(9,277,1,8,1),
(14,277,1,45,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(278,56,'1996-12-15 20:08:08',81,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (8,278,1,29,1),
(3,278,1,15,1),
(11,278,1,3,1),
(4,278,1,34,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(279,56,'2010-05-02 10:24:51',194,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (14,279,1,23,1),
(11,279,1,37,1),
(12,279,1,12,1),
(7,279,1,46,1),
(10,279,1,40,1),
(2,279,1,36,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(280,56,'1990-06-14 12:18:45',246,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (16,280,1,3,1),
(7,280,1,23,1),
(2,280,1,11,1),
(4,280,1,11,1),
(6,280,1,41,1),
(15,280,1,42,1),
(9,280,1,16,1),
(14,280,1,39,1),
(11,280,1,20,1),
(17,280,1,18,1),
(1,280,1,13,1),
(5,280,1,9,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(281,57,'1972-04-11 22:07:41',49,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (11,281,1,30,1),
(4,281,1,19,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(282,57,'1989-12-09 03:37:18',299,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (2,282,1,30,1),
(13,282,1,47,1),
(15,282,1,30,1),
(7,282,1,50,1),
(18,282,1,14,1),
(9,282,1,35,1),
(17,282,1,24,1),
(1,282,1,32,1),
(5,282,1,12,1),
(8,282,1,7,1),
(12,282,1,1,1),
(6,282,1,17,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(283,57,'2007-11-16 04:55:44',220,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (10,283,1,22,1),
(14,283,1,25,1),
(6,283,1,29,1),
(7,283,1,5,1),
(15,283,1,24,1),
(8,283,1,49,1),
(18,283,1,15,1),
(9,283,1,7,1),
(4,283,1,10,1),
(2,283,1,10,1),
(5,283,1,24,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(284,57,'2006-09-02 08:41:09',161,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (5,284,1,50,1),
(12,284,1,45,1),
(16,284,1,6,1),
(9,284,1,14,1),
(14,284,1,2,1),
(10,284,1,2,1),
(13,284,1,3,1),
(1,284,1,39,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(285,57,'1996-05-26 21:25:21',62,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (15,285,1,9,1),
(18,285,1,29,1),
(10,285,1,12,1),
(8,285,1,12,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(286,58,'2001-06-21 00:06:12',281,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (8,286,1,13,1),
(13,286,1,29,1),
(6,286,1,25,1),
(9,286,1,5,1),
(7,286,1,41,1),
(14,286,1,14,1),
(18,286,1,41,1),
(4,286,1,38,1),
(17,286,1,48,1),
(3,286,1,27,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(287,58,'2001-11-03 07:23:23',230,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (13,287,1,12,1),
(9,287,1,6,1),
(3,287,1,36,1),
(17,287,1,20,1),
(16,287,1,32,1),
(5,287,1,1,1),
(7,287,1,6,1),
(11,287,1,19,1),
(15,287,1,2,1),
(18,287,1,18,1),
(6,287,1,30,1),
(12,287,1,20,1),
(14,287,1,28,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(288,58,'1986-01-09 05:22:44',371,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (16,288,1,34,1),
(6,288,1,34,1),
(2,288,1,42,1),
(11,288,1,27,1),
(15,288,1,35,1),
(8,288,1,27,1),
(14,288,1,20,1),
(10,288,1,20,1),
(18,288,1,8,1),
(4,288,1,39,1),
(7,288,1,19,1),
(9,288,1,13,1),
(5,288,1,14,1),
(13,288,1,39,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(289,58,'1984-07-19 17:42:03',482,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (3,289,1,34,1),
(16,289,1,25,1),
(6,289,1,37,1),
(2,289,1,23,1),
(10,289,1,34,1),
(14,289,1,26,1),
(8,289,1,26,1),
(5,289,1,35,1),
(1,289,1,34,1),
(15,289,1,30,1),
(11,289,1,50,1),
(18,289,1,41,1),
(13,289,1,47,1),
(17,289,1,19,1),
(7,289,1,21,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(290,58,'2007-08-02 17:52:35',211,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (18,290,1,33,1),
(14,290,1,27,1),
(12,290,1,1,1),
(13,290,1,31,1),
(3,290,1,9,1),
(15,290,1,26,1),
(11,290,1,32,1),
(10,290,1,15,1),
(7,290,1,4,1),
(16,290,1,33,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(291,59,'1988-11-04 05:35:42',140,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (13,291,1,29,1),
(5,291,1,48,1),
(2,291,1,19,1),
(17,291,1,36,1),
(16,291,1,8,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(292,59,'1995-10-03 18:22:44',261,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (5,292,1,32,1),
(17,292,1,23,1),
(1,292,1,33,1),
(3,292,1,5,1),
(15,292,1,33,1),
(11,292,1,48,1),
(7,292,1,5,1),
(6,292,1,8,1),
(14,292,1,15,1),
(9,292,1,14,1),
(2,292,1,45,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(293,59,'1996-10-14 02:42:38',415,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (5,293,1,33,1),
(11,293,1,32,1),
(10,293,1,20,1),
(3,293,1,30,1),
(6,293,1,43,1),
(12,293,1,43,1),
(8,293,1,24,1),
(1,293,1,21,1),
(15,293,1,15,1),
(14,293,1,21,1),
(4,293,1,19,1),
(18,293,1,48,1),
(7,293,1,6,1),
(2,293,1,37,1),
(9,293,1,23,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(294,59,'1972-11-23 07:39:17',341,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (9,294,1,47,1),
(11,294,1,20,1),
(8,294,1,5,1),
(3,294,1,36,1),
(14,294,1,2,1),
(10,294,1,43,1),
(7,294,1,4,1),
(16,294,1,15,1),
(12,294,1,7,1),
(4,294,1,10,1),
(18,294,1,32,1),
(1,294,1,13,1),
(2,294,1,42,1),
(6,294,1,35,1),
(5,294,1,30,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(295,59,'2017-12-29 08:19:16',193,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (9,295,1,19,1),
(10,295,1,16,1),
(16,295,1,17,1),
(7,295,1,49,1),
(13,295,1,29,1),
(2,295,1,31,1),
(12,295,1,9,1),
(1,295,1,23,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(296,60,'1997-09-24 17:59:33',381,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (14,296,1,48,1),
(17,296,1,46,1),
(11,296,1,42,1),
(8,296,1,20,1),
(7,296,1,41,1),
(13,296,1,24,1),
(2,296,1,31,1),
(10,296,1,24,1),
(6,296,1,21,1),
(3,296,1,48,1),
(4,296,1,36,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(297,60,'2011-10-24 04:21:18',134,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (17,297,1,39,1),
(1,297,1,20,1),
(13,297,1,42,1),
(2,297,1,33,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(298,60,'1992-05-14 06:50:43',101,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (16,298,1,1,1),
(2,298,1,40,1),
(17,298,1,13,1),
(4,298,1,18,1),
(6,298,1,7,1),
(13,298,1,8,1),
(14,298,1,14,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(299,60,'2009-06-05 23:56:19',248,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (16,299,1,7,1),
(17,299,1,17,1),
(1,299,1,20,1),
(12,299,1,5,1),
(5,299,1,41,1),
(2,299,1,4,1),
(10,299,1,12,1),
(8,299,1,12,1),
(3,299,1,4,1),
(6,299,1,8,1),
(9,299,1,35,1),
(7,299,1,11,1),
(15,299,1,25,1),
(18,299,1,47,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(300,60,'1996-10-21 22:49:58',292,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (9,300,1,20,1),
(14,300,1,6,1),
(13,300,1,2,1),
(3,300,1,32,1),
(16,300,1,10,1),
(15,300,1,2,1),
(8,300,1,39,1),
(18,300,1,36,1),
(4,300,1,2,1),
(6,300,1,49,1),
(1,300,1,9,1),
(2,300,1,1,1),
(11,300,1,40,1),
(5,300,1,29,1),
(7,300,1,15,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(301,61,'1998-08-05 23:36:51',234,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (11,301,1,27,1),
(7,301,1,40,1),
(10,301,1,17,1),
(6,301,1,44,1),
(9,301,1,6,1),
(12,301,1,44,1),
(4,301,1,22,1),
(5,301,1,9,1),
(17,301,1,10,1),
(13,301,1,15,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(302,61,'1972-02-27 03:37:36',53,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (11,302,1,20,1),
(6,302,1,33,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(303,61,'2017-08-13 06:00:15',175,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (1,303,1,7,1),
(8,303,1,36,1),
(7,303,1,6,1),
(6,303,1,42,1),
(11,303,1,41,1),
(18,303,1,43,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(304,61,'1999-01-05 03:20:19',44,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (9,304,1,20,1),
(5,304,1,24,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(305,61,'1995-02-23 05:17:31',363,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (4,305,1,45,1),
(7,305,1,1,1),
(18,305,1,10,1),
(5,305,1,47,1),
(15,305,1,4,1),
(6,305,1,22,1),
(17,305,1,33,1),
(12,305,1,17,1),
(8,305,1,35,1),
(14,305,1,48,1),
(2,305,1,41,1),
(13,305,1,3,1),
(9,305,1,45,1),
(3,305,1,12,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(306,62,'1999-06-22 18:30:53',299,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (4,306,1,29,1),
(8,306,1,4,1),
(3,306,1,38,1),
(7,306,1,15,1),
(16,306,1,41,1),
(17,306,1,30,1),
(6,306,1,26,1),
(5,306,1,47,1),
(9,306,1,25,1),
(11,306,1,44,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(307,62,'1979-05-07 02:08:29',321,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (15,307,1,49,1),
(16,307,1,26,1),
(2,307,1,11,1),
(6,307,1,3,1),
(7,307,1,21,1),
(9,307,1,9,1),
(3,307,1,34,1),
(5,307,1,6,1),
(1,307,1,41,1),
(17,307,1,39,1),
(10,307,1,37,1),
(8,307,1,45,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(308,62,'1995-08-30 11:29:11',139,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (12,308,1,6,1),
(3,308,1,22,1),
(4,308,1,28,1),
(13,308,1,13,1),
(7,308,1,41,1),
(9,308,1,29,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(309,62,'1984-05-27 07:23:05',193,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (8,309,1,10,1),
(15,309,1,45,1),
(17,309,1,33,1),
(7,309,1,29,1),
(13,309,1,6,1),
(5,309,1,42,1),
(16,309,1,4,1),
(3,309,1,24,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(310,62,'1989-11-30 17:52:27',125,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (4,310,1,50,1),
(14,310,1,50,1),
(15,310,1,25,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(311,63,'1996-04-01 12:55:33',254,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (4,311,1,7,1),
(14,311,1,17,1),
(11,311,1,2,1),
(3,311,1,30,1),
(13,311,1,43,1),
(7,311,1,25,1),
(16,311,1,48,1),
(17,311,1,5,1),
(9,311,1,45,1),
(10,311,1,2,1),
(1,311,1,4,1),
(6,311,1,26,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(312,63,'1994-09-09 22:29:40',258,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (13,312,1,8,1),
(17,312,1,29,1),
(16,312,1,33,1),
(5,312,1,49,1),
(18,312,1,33,1),
(14,312,1,14,1),
(9,312,1,24,1),
(11,312,1,9,1),
(12,312,1,47,1),
(6,312,1,12,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(313,63,'2007-04-12 00:28:41',243,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (1,313,1,13,1),
(2,313,1,38,1),
(10,313,1,23,1),
(18,313,1,50,1),
(11,313,1,46,1),
(13,313,1,14,1),
(12,313,1,3,1),
(6,313,1,28,1),
(8,313,1,12,1),
(9,313,1,16,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(314,63,'2018-03-16 14:16:43',411,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (11,314,1,9,1),
(16,314,1,26,1),
(15,314,1,42,1),
(6,314,1,43,1),
(2,314,1,33,1),
(4,314,1,3,1),
(7,314,1,40,1),
(17,314,1,27,1),
(18,314,1,2,1),
(9,314,1,46,1),
(3,314,1,36,1),
(14,314,1,21,1),
(1,314,1,40,1),
(12,314,1,43,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(315,63,'1970-02-18 02:06:08',111,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (5,315,1,6,1),
(15,315,1,5,1),
(11,315,1,50,1),
(12,315,1,31,1),
(10,315,1,19,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(316,64,'1977-10-25 16:35:50',355,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (16,316,1,26,1),
(12,316,1,14,1),
(6,316,1,7,1),
(3,316,1,32,1),
(4,316,1,29,1),
(18,316,1,47,1),
(11,316,1,32,1),
(17,316,1,7,1),
(14,316,1,1,1),
(2,316,1,47,1),
(1,316,1,25,1),
(9,316,1,48,1),
(15,316,1,35,1),
(8,316,1,5,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(317,64,'2007-05-30 01:20:28',100,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (18,317,1,37,1),
(10,317,1,14,1),
(2,317,1,49,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(318,64,'1978-08-15 09:01:19',167,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (4,318,1,50,1),
(11,318,1,36,1),
(5,318,1,7,1),
(8,318,1,18,1),
(1,318,1,20,1),
(16,318,1,36,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(319,64,'1995-11-01 18:34:15',224,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (16,319,1,28,1),
(11,319,1,27,1),
(10,319,1,27,1),
(17,319,1,14,1),
(7,319,1,19,1),
(18,319,1,25,1),
(15,319,1,23,1),
(4,319,1,10,1),
(9,319,1,15,1),
(2,319,1,36,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(320,64,'1976-06-26 06:18:04',163,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (6,320,1,32,1),
(12,320,1,19,1),
(11,320,1,17,1),
(18,320,1,24,1),
(3,320,1,18,1),
(14,320,1,32,1),
(16,320,1,15,1),
(5,320,1,6,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(321,65,'1984-01-06 17:34:14',107,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (13,321,1,11,1),
(12,321,1,19,1),
(8,321,1,11,1),
(5,321,1,38,1),
(15,321,1,28,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(322,65,'2007-12-28 02:59:14',88,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (11,322,1,10,1),
(14,322,1,25,1),
(17,322,1,14,1),
(16,322,1,21,1),
(2,322,1,18,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(323,65,'1998-05-14 01:12:35',394,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (16,323,1,48,1),
(1,323,1,50,1),
(4,323,1,14,1),
(8,323,1,43,1),
(14,323,1,23,1),
(17,323,1,17,1),
(18,323,1,37,1),
(9,323,1,33,1),
(11,323,1,41,1),
(6,323,1,16,1),
(2,323,1,29,1),
(15,323,1,20,1),
(7,323,1,23,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(324,65,'2001-04-23 09:10:54',232,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (9,324,1,35,1),
(11,324,1,25,1),
(13,324,1,26,1),
(5,324,1,14,1),
(12,324,1,43,1),
(8,324,1,1,1),
(1,324,1,46,1),
(17,324,1,27,1),
(4,324,1,15,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(325,65,'1984-07-05 22:53:39',369,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (18,325,1,15,1),
(6,325,1,28,1),
(13,325,1,21,1),
(9,325,1,39,1),
(11,325,1,3,1),
(15,325,1,50,1),
(2,325,1,23,1),
(12,325,1,5,1),
(17,325,1,11,1),
(8,325,1,39,1),
(5,325,1,50,1),
(16,325,1,25,1),
(3,325,1,9,1),
(7,325,1,38,1),
(1,325,1,13,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(326,66,'1984-11-14 14:13:48',191,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (3,326,1,14,1),
(16,326,1,8,1),
(11,326,1,50,1),
(18,326,1,42,1),
(17,326,1,28,1),
(13,326,1,49,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(327,66,'1994-12-03 05:24:49',246,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (5,327,1,2,1),
(11,327,1,16,1),
(3,327,1,45,1),
(14,327,1,28,1),
(10,327,1,38,1),
(1,327,1,15,1),
(7,327,1,13,1),
(2,327,1,17,1),
(16,327,1,34,1),
(15,327,1,38,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(328,66,'1990-07-29 00:00:08',300,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (7,328,1,38,1),
(9,328,1,33,1),
(2,328,1,19,1),
(12,328,1,36,1),
(13,328,1,20,1),
(5,328,1,9,1),
(14,328,1,39,1),
(4,328,1,38,1),
(3,328,1,47,1),
(11,328,1,17,1),
(18,328,1,4,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(329,66,'1998-04-30 07:37:56',81,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (5,329,1,3,1),
(4,329,1,1,1),
(13,329,1,1,1),
(3,329,1,18,1),
(8,329,1,34,1),
(1,329,1,24,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(330,66,'2003-09-19 19:46:04',84,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (9,330,1,50,1),
(3,330,1,34,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(331,67,'1980-03-14 16:33:26',131,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (18,331,1,5,1),
(10,331,1,30,1),
(7,331,1,37,1),
(2,331,1,34,1),
(4,331,1,25,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(332,67,'1977-01-27 19:00:20',135,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (14,332,1,7,1),
(12,332,1,42,1),
(9,332,1,3,1),
(18,332,1,31,1),
(10,332,1,30,1),
(13,332,1,20,1),
(1,332,1,2,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(333,67,'2002-04-11 11:09:19',153,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (18,333,1,39,1),
(14,333,1,2,1),
(10,333,1,7,1),
(13,333,1,9,1),
(7,333,1,26,1),
(5,333,1,50,1),
(8,333,1,20,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(334,67,'1977-02-17 14:52:32',319,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (17,334,1,7,1),
(8,334,1,4,1),
(14,334,1,44,1),
(7,334,1,19,1),
(9,334,1,48,1),
(2,334,1,30,1),
(11,334,1,8,1),
(5,334,1,42,1),
(15,334,1,48,1),
(6,334,1,18,1),
(18,334,1,11,1),
(3,334,1,20,1),
(12,334,1,17,1),
(10,334,1,3,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(335,67,'1989-06-03 01:19:21',306,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (6,335,1,25,1),
(16,335,1,47,1),
(2,335,1,38,1),
(18,335,1,46,1),
(8,335,1,10,1),
(1,335,1,39,1),
(10,335,1,44,1),
(9,335,1,26,1),
(17,335,1,31,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(336,68,'1986-06-07 03:19:34',139,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (9,336,1,48,1),
(6,336,1,41,1),
(7,336,1,50,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(337,68,'1995-05-25 03:00:37',417,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (16,337,1,40,1),
(18,337,1,35,1),
(6,337,1,11,1),
(15,337,1,12,1),
(5,337,1,8,1),
(14,337,1,23,1),
(8,337,1,13,1),
(12,337,1,38,1),
(3,337,1,32,1),
(13,337,1,38,1),
(10,337,1,41,1),
(4,337,1,43,1),
(1,337,1,32,1),
(17,337,1,44,1),
(9,337,1,7,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(338,68,'2006-01-18 04:24:40',325,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (12,338,1,25,1),
(10,338,1,50,1),
(13,338,1,15,1),
(2,338,1,7,1),
(8,338,1,40,1),
(4,338,1,27,1),
(7,338,1,42,1),
(16,338,1,14,1),
(3,338,1,19,1),
(6,338,1,7,1),
(11,338,1,42,1),
(1,338,1,6,1),
(9,338,1,5,1),
(17,338,1,26,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(339,68,'2005-04-01 00:40:11',13,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (10,339,1,5,1),
(15,339,1,8,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(340,68,'2012-12-01 02:08:32',120,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (5,340,1,16,1),
(17,340,1,35,1),
(4,340,1,38,1),
(16,340,1,13,1),
(11,340,1,18,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(341,69,'2004-04-17 14:57:17',181,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (4,341,1,1,1),
(13,341,1,19,1),
(10,341,1,30,1),
(18,341,1,29,1),
(12,341,1,37,1),
(17,341,1,16,1),
(9,341,1,49,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(342,69,'2003-04-24 19:27:57',301,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (2,342,1,27,1),
(4,342,1,14,1),
(5,342,1,36,1),
(15,342,1,48,1),
(10,342,1,21,1),
(16,342,1,9,1),
(3,342,1,1,1),
(18,342,1,24,1),
(12,342,1,32,1),
(7,342,1,44,1),
(8,342,1,45,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(343,69,'2008-04-30 17:22:21',236,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (18,343,1,32,1),
(17,343,1,36,1),
(3,343,1,15,1),
(2,343,1,39,1),
(9,343,1,26,1),
(10,343,1,15,1),
(5,343,1,42,1),
(16,343,1,3,1),
(15,343,1,28,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(344,69,'2003-06-04 00:29:36',287,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (11,344,1,49,1),
(2,344,1,24,1),
(10,344,1,18,1),
(12,344,1,36,1),
(1,344,1,27,1),
(9,344,1,19,1),
(6,344,1,22,1),
(5,344,1,43,1),
(4,344,1,10,1),
(14,344,1,39,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(345,69,'2000-09-08 17:53:59',394,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (15,345,1,36,1),
(16,345,1,36,1),
(8,345,1,45,1),
(17,345,1,43,1),
(5,345,1,30,1),
(14,345,1,17,1),
(9,345,1,38,1),
(13,345,1,6,1),
(10,345,1,39,1),
(1,345,1,9,1),
(11,345,1,30,1),
(12,345,1,9,1),
(18,345,1,25,1),
(3,345,1,31,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(346,70,'1986-09-27 06:49:24',322,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (10,346,1,23,1),
(2,346,1,10,1),
(15,346,1,38,1),
(3,346,1,13,1),
(4,346,1,8,1),
(13,346,1,44,1),
(14,346,1,20,1),
(16,346,1,23,1),
(1,346,1,29,1),
(18,346,1,38,1),
(9,346,1,43,1),
(11,346,1,33,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(347,70,'2001-01-01 00:57:22',335,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (14,347,1,31,1),
(12,347,1,46,1),
(10,347,1,26,1),
(3,347,1,6,1),
(7,347,1,44,1),
(4,347,1,3,1),
(16,347,1,40,1),
(1,347,1,13,1),
(6,347,1,24,1),
(11,347,1,27,1),
(2,347,1,41,1),
(18,347,1,4,1),
(8,347,1,19,1),
(17,347,1,11,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(348,70,'1974-05-31 02:11:27',215,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (17,348,1,43,1),
(15,348,1,8,1),
(10,348,1,13,1),
(3,348,1,48,1),
(13,348,1,36,1),
(6,348,1,12,1),
(14,348,1,32,1),
(16,348,1,23,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(349,70,'2016-01-17 17:56:25',244,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (3,349,1,28,1),
(7,349,1,27,1),
(13,349,1,24,1),
(4,349,1,43,1),
(1,349,1,19,1),
(12,349,1,25,1),
(17,349,1,42,1),
(16,349,1,36,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(350,70,'1973-04-03 20:28:58',177,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (7,350,1,24,1),
(17,350,1,50,1),
(8,350,1,26,1),
(6,350,1,35,1),
(16,350,1,40,1),
(9,350,1,2,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(351,71,'1993-08-01 19:13:22',154,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (3,351,1,26,1),
(10,351,1,34,1),
(18,351,1,12,1),
(16,351,1,12,1),
(12,351,1,45,1),
(8,351,1,1,1),
(4,351,1,24,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(352,71,'1983-05-08 12:17:49',232,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (3,352,1,40,1),
(18,352,1,25,1),
(15,352,1,28,1),
(10,352,1,18,1),
(12,352,1,30,1),
(1,352,1,46,1),
(13,352,1,45,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(353,71,'1972-12-16 20:43:05',110,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (15,353,1,23,1),
(7,353,1,42,1),
(11,353,1,45,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(354,71,'2014-07-13 09:35:20',408,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (17,354,1,3,1),
(16,354,1,5,1),
(2,354,1,37,1),
(8,354,1,24,1),
(6,354,1,47,1),
(15,354,1,28,1),
(5,354,1,2,1),
(1,354,1,28,1),
(13,354,1,35,1),
(12,354,1,29,1),
(10,354,1,26,1),
(7,354,1,38,1),
(14,354,1,37,1),
(9,354,1,44,1),
(18,354,1,25,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(355,71,'1981-04-12 16:27:18',328,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (2,355,1,10,1),
(5,355,1,28,1),
(18,355,1,8,1),
(6,355,1,39,1),
(3,355,1,44,1),
(1,355,1,37,1),
(17,355,1,11,1),
(7,355,1,40,1),
(10,355,1,46,1),
(4,355,1,10,1),
(16,355,1,36,1),
(15,355,1,14,1),
(12,355,1,5,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(356,72,'1991-09-05 11:34:29',194,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (17,356,1,28,1),
(16,356,1,21,1),
(6,356,1,18,1),
(10,356,1,10,1),
(5,356,1,36,1),
(9,356,1,27,1),
(3,356,1,11,1),
(4,356,1,43,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(357,72,'1971-03-28 10:26:58',361,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (13,357,1,2,1),
(9,357,1,33,1),
(4,357,1,5,1),
(17,357,1,30,1),
(2,357,1,6,1),
(11,357,1,29,1),
(12,357,1,24,1),
(5,357,1,44,1),
(15,357,1,33,1),
(14,357,1,33,1),
(1,357,1,4,1),
(8,357,1,30,1),
(16,357,1,48,1),
(6,357,1,22,1),
(18,357,1,18,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(358,72,'1991-04-14 00:38:30',236,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (16,358,1,41,1),
(1,358,1,20,1),
(14,358,1,24,1),
(4,358,1,2,1),
(8,358,1,42,1),
(6,358,1,23,1),
(12,358,1,24,1),
(15,358,1,34,1),
(7,358,1,7,1),
(2,358,1,1,1),
(3,358,1,18,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(359,72,'1995-04-25 21:50:45',372,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (15,359,1,44,1),
(5,359,1,18,1),
(3,359,1,50,1),
(10,359,1,14,1),
(2,359,1,24,1),
(17,359,1,20,1),
(18,359,1,32,1),
(1,359,1,42,1),
(4,359,1,29,1),
(8,359,1,16,1),
(9,359,1,36,1),
(13,359,1,29,1),
(16,359,1,18,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(360,72,'2004-09-11 18:31:47',19,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (7,360,1,9,1),
(13,360,1,10,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(361,73,'1977-02-13 15:05:52',347,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (9,361,1,4,1),
(16,361,1,6,1),
(3,361,1,5,1),
(6,361,1,33,1),
(15,361,1,13,1),
(13,361,1,31,1),
(7,361,1,29,1),
(18,361,1,42,1),
(4,361,1,3,1),
(12,361,1,39,1),
(5,361,1,50,1),
(17,361,1,8,1),
(10,361,1,42,1),
(1,361,1,23,1),
(11,361,1,19,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(362,73,'1980-05-12 05:28:22',115,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (13,362,1,50,1),
(17,362,1,3,1),
(12,362,1,49,1),
(4,362,1,13,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(363,73,'1986-05-23 09:34:40',42,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (9,363,1,9,1),
(14,363,1,33,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(364,73,'1990-08-06 21:29:52',86,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (8,364,1,1,1),
(5,364,1,47,1),
(11,364,1,24,1),
(12,364,1,14,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(365,73,'1971-06-11 18:01:02',282,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (18,365,1,5,1),
(14,365,1,3,1),
(12,365,1,5,1),
(8,365,1,46,1),
(4,365,1,31,1),
(2,365,1,37,1),
(15,365,1,14,1),
(13,365,1,46,1),
(10,365,1,30,1),
(16,365,1,46,1),
(3,365,1,19,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(366,74,'2013-09-30 09:06:05',243,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (16,366,1,28,1),
(18,366,1,18,1),
(7,366,1,9,1),
(17,366,1,37,1),
(15,366,1,17,1),
(1,366,1,24,1),
(5,366,1,42,1),
(6,366,1,20,1),
(14,366,1,48,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(367,74,'1980-07-06 08:36:14',370,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (11,367,1,9,1),
(17,367,1,35,1),
(8,367,1,46,1),
(9,367,1,8,1),
(12,367,1,49,1),
(1,367,1,38,1),
(7,367,1,42,1),
(5,367,1,49,1),
(16,367,1,35,1),
(18,367,1,3,1),
(10,367,1,12,1),
(3,367,1,44,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(368,74,'1989-09-09 08:52:50',90,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (18,368,1,6,1),
(16,368,1,16,1),
(1,368,1,48,1),
(17,368,1,3,1),
(11,368,1,17,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(369,74,'1994-10-01 09:32:37',236,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (12,369,1,18,1),
(7,369,1,16,1),
(1,369,1,34,1),
(15,369,1,37,1),
(5,369,1,24,1),
(3,369,1,43,1),
(8,369,1,48,1),
(10,369,1,14,1),
(16,369,1,2,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(370,74,'1977-08-10 16:18:35',93,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (10,370,1,43,1),
(12,370,1,23,1),
(9,370,1,27,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(371,75,'2018-01-10 03:27:34',310,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (16,371,1,33,1),
(1,371,1,46,1),
(17,371,1,7,1),
(12,371,1,14,1),
(6,371,1,30,1),
(18,371,1,40,1),
(8,371,1,49,1),
(5,371,1,35,1),
(2,371,1,24,1),
(14,371,1,16,1),
(13,371,1,16,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(372,75,'1980-02-29 00:28:09',332,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (6,372,1,49,1),
(4,372,1,25,1),
(8,372,1,31,1),
(3,372,1,26,1),
(15,372,1,44,1),
(10,372,1,14,1),
(2,372,1,11,1),
(7,372,1,13,1),
(14,372,1,9,1),
(18,372,1,29,1),
(5,372,1,36,1),
(11,372,1,11,1),
(1,372,1,16,1),
(13,372,1,15,1),
(16,372,1,3,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(373,75,'2002-11-27 11:29:33',161,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (15,373,1,17,1),
(11,373,1,14,1),
(14,373,1,20,1),
(17,373,1,50,1),
(16,373,1,49,1),
(12,373,1,2,1),
(2,373,1,9,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(374,75,'1983-11-18 13:56:40',356,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (14,374,1,3,1),
(9,374,1,25,1),
(2,374,1,39,1),
(11,374,1,42,1),
(5,374,1,5,1),
(6,374,1,41,1),
(12,374,1,36,1),
(10,374,1,40,1),
(16,374,1,45,1),
(13,374,1,9,1),
(17,374,1,30,1),
(3,374,1,13,1),
(15,374,1,22,1),
(4,374,1,6,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(375,75,'1990-03-17 11:58:50',151,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (9,375,1,33,1),
(13,375,1,33,1),
(7,375,1,27,1),
(12,375,1,27,1),
(17,375,1,7,1),
(8,375,1,24,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(376,76,'1984-04-10 02:06:27',98,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (17,376,1,50,1),
(16,376,1,48,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(377,76,'1976-07-23 04:17:00',54,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (18,377,1,4,1),
(13,377,1,50,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(378,76,'2004-02-22 13:34:23',310,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (15,378,1,28,1),
(2,378,1,27,1),
(12,378,1,38,1),
(7,378,1,25,1),
(1,378,1,2,1),
(13,378,1,18,1),
(4,378,1,44,1),
(14,378,1,29,1),
(9,378,1,41,1),
(5,378,1,29,1),
(3,378,1,2,1),
(10,378,1,27,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(379,76,'1973-03-11 09:17:46',222,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (14,379,1,12,1),
(6,379,1,38,1),
(11,379,1,43,1),
(8,379,1,50,1),
(16,379,1,34,1),
(12,379,1,37,1),
(18,379,1,8,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(380,76,'1976-02-13 01:27:22',137,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (2,380,1,32,1),
(15,380,1,7,1),
(17,380,1,9,1),
(11,380,1,24,1),
(13,380,1,3,1),
(10,380,1,21,1),
(14,380,1,22,1),
(7,380,1,19,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(381,77,'1995-11-26 22:47:22',220,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (3,381,1,20,1),
(15,381,1,19,1),
(1,381,1,47,1),
(10,381,1,27,1),
(11,381,1,46,1),
(9,381,1,34,1),
(4,381,1,27,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(382,77,'1976-01-15 18:35:01',291,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (12,382,1,21,1),
(8,382,1,3,1),
(11,382,1,22,1),
(9,382,1,31,1),
(1,382,1,38,1),
(13,382,1,13,1),
(10,382,1,44,1),
(16,382,1,20,1),
(5,382,1,29,1),
(7,382,1,37,1),
(17,382,1,32,1),
(6,382,1,1,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(383,77,'1974-03-15 01:40:35',257,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (3,383,1,41,1),
(5,383,1,17,1),
(1,383,1,4,1),
(2,383,1,34,1),
(8,383,1,16,1),
(18,383,1,36,1),
(16,383,1,45,1),
(15,383,1,29,1),
(13,383,1,35,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(384,77,'2010-04-09 13:20:38',167,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (16,384,1,17,1),
(1,384,1,28,1),
(17,384,1,11,1),
(2,384,1,48,1),
(5,384,1,17,1),
(18,384,1,41,1),
(14,384,1,5,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(385,77,'2001-01-20 18:07:52',259,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (14,385,1,17,1),
(4,385,1,44,1),
(3,385,1,24,1),
(17,385,1,39,1),
(7,385,1,14,1),
(5,385,1,30,1),
(2,385,1,8,1),
(1,385,1,36,1),
(15,385,1,14,1),
(8,385,1,12,1),
(13,385,1,21,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(386,78,'2013-09-21 00:46:41',173,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (18,386,1,17,1),
(12,386,1,4,1),
(15,386,1,23,1),
(6,386,1,29,1),
(7,386,1,26,1),
(8,386,1,33,1),
(14,386,1,41,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(387,78,'1981-03-27 21:22:54',318,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (18,387,1,21,1),
(2,387,1,32,1),
(9,387,1,14,1),
(15,387,1,27,1),
(5,387,1,36,1),
(3,387,1,16,1),
(8,387,1,12,1),
(13,387,1,49,1),
(17,387,1,43,1),
(10,387,1,17,1),
(7,387,1,8,1),
(12,387,1,43,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(388,78,'2011-01-25 06:44:34',190,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (10,388,1,25,1),
(17,388,1,45,1),
(2,388,1,44,1),
(8,388,1,6,1),
(3,388,1,1,1),
(15,388,1,24,1),
(5,388,1,45,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(389,78,'1979-12-03 18:18:06',314,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (18,389,1,34,1),
(3,389,1,14,1),
(5,389,1,5,1),
(17,389,1,48,1),
(4,389,1,40,1),
(2,389,1,49,1),
(16,389,1,15,1),
(14,389,1,37,1),
(13,389,1,12,1),
(10,389,1,4,1),
(8,389,1,41,1),
(1,389,1,1,1),
(6,389,1,14,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(390,78,'2003-11-02 12:34:12',171,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (15,390,1,21,1),
(8,390,1,49,1),
(2,390,1,11,1),
(3,390,1,25,1),
(11,390,1,39,1),
(14,390,1,26,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(391,79,'2010-11-11 12:17:31',252,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (9,391,1,13,1),
(8,391,1,13,1),
(18,391,1,32,1),
(15,391,1,3,1),
(6,391,1,44,1),
(12,391,1,32,1),
(1,391,1,26,1),
(5,391,1,19,1),
(16,391,1,7,1),
(4,391,1,19,1),
(17,391,1,44,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(392,79,'1979-07-28 09:19:47',187,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (11,392,1,47,1),
(16,392,1,19,1),
(9,392,1,38,1),
(1,392,1,14,1),
(3,392,1,19,1),
(2,392,1,50,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(393,79,'1974-12-07 03:47:17',197,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (11,393,1,45,1),
(10,393,1,41,1),
(4,393,1,16,1),
(3,393,1,46,1),
(12,393,1,17,1),
(13,393,1,32,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(394,79,'2016-08-17 19:54:23',295,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (13,394,1,22,1),
(2,394,1,44,1),
(6,394,1,26,1),
(12,394,1,22,1),
(4,394,1,6,1),
(18,394,1,28,1),
(15,394,1,17,1),
(11,394,1,19,1),
(3,394,1,11,1),
(14,394,1,34,1),
(1,394,1,17,1),
(9,394,1,2,1),
(17,394,1,45,1),
(7,394,1,2,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(395,79,'1994-10-11 22:21:35',119,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (14,395,1,16,1),
(4,395,1,39,1),
(5,395,1,26,1),
(3,395,1,38,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(396,80,'2009-11-08 08:07:28',226,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (6,396,1,30,1),
(10,396,1,1,1),
(14,396,1,46,1),
(4,396,1,37,1),
(16,396,1,24,1),
(3,396,1,5,1),
(13,396,1,33,1),
(18,396,1,50,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(397,80,'2010-10-04 20:56:40',222,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (2,397,1,50,1),
(8,397,1,13,1),
(12,397,1,13,1),
(16,397,1,31,1),
(4,397,1,14,1),
(13,397,1,49,1),
(15,397,1,36,1),
(7,397,1,14,1),
(5,397,1,2,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(398,80,'1980-01-02 02:23:11',351,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (10,398,1,10,1),
(17,398,1,37,1),
(16,398,1,44,1),
(4,398,1,35,1),
(3,398,1,45,1),
(15,398,1,48,1),
(11,398,1,18,1),
(2,398,1,7,1),
(7,398,1,34,1),
(6,398,1,22,1),
(12,398,1,21,1),
(5,398,1,30,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(399,80,'1977-06-24 20:22:55',292,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (15,399,1,22,1),
(4,399,1,43,1),
(16,399,1,30,1),
(11,399,1,29,1),
(6,399,1,23,1),
(17,399,1,35,1),
(14,399,1,5,1),
(10,399,1,5,1),
(3,399,1,13,1),
(1,399,1,16,1),
(18,399,1,8,1),
(13,399,1,15,1),
(2,399,1,48,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(400,80,'1981-11-09 20:00:21',69,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (1,400,1,10,1),
(4,400,1,17,1),
(11,400,1,11,1),
(17,400,1,9,1),
(12,400,1,8,1),
(16,400,1,14,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(401,81,'2003-02-21 13:01:27',382,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (2,401,1,40,1),
(6,401,1,13,1),
(9,401,1,31,1),
(11,401,1,36,1),
(5,401,1,46,1),
(12,401,1,49,1),
(10,401,1,6,1),
(7,401,1,31,1),
(13,401,1,13,1),
(1,401,1,34,1),
(17,401,1,16,1),
(8,401,1,16,1),
(15,401,1,10,1),
(16,401,1,41,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(402,81,'2010-10-30 21:00:07',134,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (14,402,1,12,1),
(15,402,1,11,1),
(13,402,1,21,1),
(1,402,1,34,1),
(16,402,1,11,1),
(9,402,1,45,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(403,81,'2015-08-16 20:34:03',44,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (4,403,1,2,1),
(9,403,1,6,1),
(18,403,1,36,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(404,81,'1986-04-21 20:56:13',81,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (17,404,1,44,1),
(18,404,1,36,1),
(4,404,1,1,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(405,81,'1979-10-25 07:41:33',307,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (13,405,1,47,1),
(7,405,1,47,1),
(9,405,1,48,1),
(6,405,1,45,1),
(14,405,1,48,1),
(4,405,1,27,1),
(8,405,1,5,1),
(2,405,1,35,1),
(3,405,1,5,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(406,82,'1978-04-26 20:34:41',105,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (11,406,1,19,1),
(7,406,1,32,1),
(15,406,1,20,1),
(9,406,1,8,1),
(6,406,1,26,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(407,82,'1990-10-14 16:23:22',381,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (17,407,1,11,1),
(5,407,1,33,1),
(4,407,1,36,1),
(18,407,1,26,1),
(15,407,1,49,1),
(11,407,1,23,1),
(16,407,1,34,1),
(3,407,1,27,1),
(13,407,1,42,1),
(2,407,1,6,1),
(9,407,1,9,1),
(6,407,1,17,1),
(12,407,1,23,1),
(10,407,1,44,1),
(7,407,1,1,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(408,82,'1978-06-29 01:01:50',289,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (1,408,1,43,1),
(14,408,1,35,1),
(2,408,1,4,1),
(8,408,1,50,1),
(7,408,1,20,1),
(13,408,1,48,1),
(11,408,1,12,1),
(12,408,1,24,1),
(5,408,1,28,1),
(17,408,1,6,1),
(10,408,1,19,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(409,82,'1975-05-01 11:38:54',223,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (10,409,1,18,1),
(1,409,1,25,1),
(4,409,1,4,1),
(18,409,1,7,1),
(13,409,1,29,1),
(9,409,1,30,1),
(3,409,1,38,1),
(5,409,1,49,1),
(6,409,1,23,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(410,82,'1985-07-28 23:44:37',101,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (16,410,1,26,1),
(10,410,1,35,1),
(17,410,1,19,1),
(8,410,1,21,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(411,83,'2013-07-02 15:10:10',422,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (12,411,1,9,1),
(2,411,1,48,1),
(8,411,1,46,1),
(6,411,1,29,1),
(10,411,1,30,1),
(4,411,1,41,1),
(18,411,1,35,1),
(7,411,1,36,1),
(1,411,1,28,1),
(15,411,1,11,1),
(9,411,1,47,1),
(3,411,1,20,1),
(14,411,1,42,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(412,83,'1985-01-15 11:39:27',275,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (6,412,1,43,1),
(17,412,1,37,1),
(12,412,1,27,1),
(7,412,1,24,1),
(1,412,1,34,1),
(18,412,1,25,1),
(16,412,1,7,1),
(5,412,1,23,1),
(4,412,1,35,1),
(13,412,1,2,1),
(10,412,1,18,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(413,83,'1988-12-09 16:17:02',348,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (5,413,1,50,1),
(3,413,1,44,1),
(6,413,1,19,1),
(18,413,1,35,1),
(14,413,1,28,1),
(1,413,1,21,1),
(12,413,1,49,1),
(9,413,1,33,1),
(17,413,1,7,1),
(7,413,1,5,1),
(13,413,1,42,1),
(10,413,1,15,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(414,83,'2012-06-14 01:00:44',341,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (5,414,1,49,1),
(6,414,1,42,1),
(2,414,1,20,1),
(1,414,1,46,1),
(8,414,1,34,1),
(15,414,1,44,1),
(9,414,1,8,1),
(16,414,1,15,1),
(3,414,1,10,1),
(7,414,1,44,1),
(10,414,1,20,1),
(17,414,1,9,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(415,83,'1990-01-28 00:21:35',127,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (13,415,1,17,1),
(1,415,1,9,1),
(17,415,1,21,1),
(7,415,1,13,1),
(12,415,1,37,1),
(8,415,1,30,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(416,84,'1983-05-28 11:35:18',320,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (9,416,1,47,1),
(14,416,1,2,1),
(11,416,1,25,1),
(7,416,1,26,1),
(6,416,1,27,1),
(1,416,1,35,1),
(2,416,1,36,1),
(4,416,1,6,1),
(12,416,1,6,1),
(8,416,1,27,1),
(10,416,1,22,1),
(15,416,1,37,1),
(18,416,1,24,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(417,84,'2017-03-25 03:00:55',183,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (1,417,1,36,1),
(4,417,1,31,1),
(2,417,1,22,1),
(15,417,1,18,1),
(9,417,1,37,1),
(11,417,1,39,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(418,84,'1972-09-21 19:06:55',162,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (15,418,1,32,1),
(8,418,1,42,1),
(13,418,1,2,1),
(9,418,1,3,1),
(10,418,1,11,1),
(4,418,1,49,1),
(16,418,1,23,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(419,84,'1976-11-23 11:58:59',223,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (4,419,1,38,1),
(11,419,1,15,1),
(5,419,1,6,1),
(14,419,1,40,1),
(1,419,1,45,1),
(13,419,1,28,1),
(3,419,1,19,1),
(18,419,1,32,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(420,84,'1992-06-20 22:20:47',62,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (10,420,1,23,1),
(15,420,1,39,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(421,85,'1990-11-08 10:56:19',206,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (7,421,1,37,1),
(4,421,1,17,1),
(13,421,1,33,1),
(16,421,1,21,1),
(3,421,1,47,1),
(8,421,1,23,1),
(1,421,1,28,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(422,85,'2006-05-08 00:11:56',212,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (18,422,1,19,1),
(2,422,1,1,1),
(7,422,1,47,1),
(13,422,1,43,1),
(5,422,1,26,1),
(1,422,1,20,1),
(4,422,1,46,1),
(16,422,1,10,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(423,85,'2008-04-05 04:41:45',213,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (2,423,1,38,1),
(11,423,1,48,1),
(10,423,1,7,1),
(14,423,1,4,1),
(4,423,1,17,1),
(6,423,1,26,1),
(13,423,1,48,1),
(16,423,1,6,1),
(8,423,1,14,1),
(18,423,1,5,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(424,85,'2009-09-04 12:00:32',138,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (5,424,1,33,1),
(2,424,1,4,1),
(16,424,1,12,1),
(14,424,1,1,1),
(17,424,1,28,1),
(4,424,1,1,1),
(1,424,1,28,1),
(18,424,1,31,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(425,85,'2009-07-28 15:50:41',61,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (18,425,1,36,1),
(2,425,1,25,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(426,86,'1989-07-11 01:24:59',263,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (13,426,1,35,1),
(3,426,1,34,1),
(8,426,1,3,1),
(6,426,1,27,1),
(4,426,1,42,1),
(12,426,1,42,1),
(2,426,1,17,1),
(9,426,1,41,1),
(16,426,1,5,1),
(15,426,1,17,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(427,86,'2005-02-13 02:03:38',152,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (5,427,1,22,1),
(14,427,1,43,1),
(17,427,1,38,1),
(9,427,1,1,1),
(16,427,1,48,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(428,86,'2017-04-12 12:19:19',326,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (7,428,1,20,1),
(4,428,1,37,1),
(12,428,1,48,1),
(15,428,1,37,1),
(5,428,1,6,1),
(9,428,1,49,1),
(10,428,1,42,1),
(18,428,1,11,1),
(6,428,1,22,1),
(14,428,1,45,1),
(8,428,1,9,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(429,86,'1987-05-04 23:25:43',45,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (3,429,1,32,1),
(14,429,1,13,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(430,86,'1986-10-20 13:33:57',197,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (8,430,1,35,1),
(2,430,1,10,1),
(6,430,1,50,1),
(13,430,1,37,1),
(17,430,1,28,1),
(12,430,1,37,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(431,87,'1993-09-10 14:39:03',35,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (5,431,1,18,1),
(14,431,1,17,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(432,87,'1974-03-05 04:46:02',118,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (1,432,1,14,1),
(5,432,1,16,1),
(6,432,1,2,1),
(9,432,1,36,1),
(3,432,1,45,1),
(15,432,1,5,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(433,87,'1989-12-27 04:15:13',269,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (13,433,1,1,1),
(17,433,1,5,1),
(4,433,1,26,1),
(10,433,1,12,1),
(14,433,1,33,1),
(15,433,1,34,1),
(7,433,1,21,1),
(5,433,1,22,1),
(8,433,1,34,1),
(3,433,1,49,1),
(6,433,1,32,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(434,87,'2017-02-10 00:06:21',221,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (10,434,1,26,1),
(9,434,1,7,1),
(15,434,1,42,1),
(13,434,1,49,1),
(4,434,1,23,1),
(11,434,1,25,1),
(16,434,1,1,1),
(1,434,1,48,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(435,87,'2016-04-14 07:53:05',177,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (17,435,1,35,1),
(9,435,1,15,1),
(10,435,1,4,1),
(7,435,1,4,1),
(5,435,1,37,1),
(6,435,1,32,1),
(1,435,1,43,1),
(8,435,1,7,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(436,88,'1977-02-17 13:08:58',206,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (3,436,1,5,1),
(1,436,1,39,1),
(18,436,1,1,1),
(15,436,1,14,1),
(9,436,1,40,1),
(11,436,1,43,1),
(7,436,1,22,1),
(14,436,1,2,1),
(2,436,1,40,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(437,88,'1974-05-02 01:20:28',252,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (1,437,1,3,1),
(12,437,1,33,1),
(8,437,1,11,1),
(3,437,1,49,1),
(11,437,1,37,1),
(16,437,1,29,1),
(15,437,1,34,1),
(6,437,1,12,1),
(4,437,1,44,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(438,88,'1995-11-01 18:52:54',438,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (3,438,1,36,1),
(17,438,1,28,1),
(6,438,1,28,1),
(11,438,1,34,1),
(14,438,1,33,1),
(8,438,1,29,1),
(5,438,1,40,1),
(18,438,1,11,1),
(9,438,1,28,1),
(10,438,1,46,1),
(4,438,1,1,1),
(15,438,1,20,1),
(7,438,1,42,1),
(2,438,1,15,1),
(1,438,1,47,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(439,88,'2016-02-04 08:54:30',197,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (12,439,1,42,1),
(18,439,1,30,1),
(6,439,1,44,1),
(7,439,1,19,1),
(13,439,1,12,1),
(16,439,1,50,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(440,88,'1999-12-23 12:16:49',159,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (13,440,1,48,1),
(3,440,1,8,1),
(5,440,1,39,1),
(15,440,1,35,1),
(2,440,1,12,1),
(1,440,1,17,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(441,89,'1970-07-22 11:18:58',326,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (7,441,1,31,1),
(3,441,1,24,1),
(8,441,1,5,1),
(18,441,1,25,1),
(17,441,1,18,1),
(10,441,1,28,1),
(4,441,1,4,1),
(14,441,1,14,1),
(12,441,1,14,1),
(6,441,1,49,1),
(15,441,1,28,1),
(9,441,1,19,1),
(16,441,1,37,1),
(11,441,1,8,1),
(1,441,1,22,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(442,89,'1990-06-20 00:01:17',138,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (18,442,1,18,1),
(9,442,1,1,1),
(6,442,1,21,1),
(13,442,1,48,1),
(11,442,1,25,1),
(3,442,1,25,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(443,89,'1985-01-18 16:12:27',204,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (18,443,1,4,1),
(14,443,1,31,1),
(10,443,1,40,1),
(8,443,1,36,1),
(16,443,1,40,1),
(9,443,1,45,1),
(11,443,1,8,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(444,89,'2003-09-26 01:27:18',164,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (3,444,1,39,1),
(15,444,1,26,1),
(6,444,1,9,1),
(9,444,1,46,1),
(7,444,1,14,1),
(16,444,1,24,1),
(11,444,1,6,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(445,89,'2011-09-08 12:31:42',355,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (5,445,1,8,1),
(9,445,1,14,1),
(17,445,1,42,1),
(15,445,1,22,1),
(4,445,1,33,1),
(10,445,1,33,1),
(16,445,1,3,1),
(8,445,1,23,1),
(6,445,1,7,1),
(11,445,1,13,1),
(3,445,1,37,1),
(14,445,1,32,1),
(12,445,1,2,1),
(2,445,1,43,1),
(1,445,1,43,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(446,90,'2007-08-18 00:05:57',300,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (8,446,1,26,1),
(2,446,1,39,1),
(12,446,1,9,1),
(1,446,1,48,1),
(9,446,1,31,1),
(7,446,1,20,1),
(18,446,1,39,1),
(13,446,1,34,1),
(15,446,1,21,1),
(17,446,1,19,1),
(16,446,1,14,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(447,90,'1980-05-12 19:50:49',116,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (10,447,1,21,1),
(2,447,1,33,1),
(5,447,1,44,1),
(15,447,1,18,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(448,90,'1998-08-26 11:36:11',26,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (13,448,1,22,1),
(6,448,1,4,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(449,90,'1994-05-09 21:54:18',371,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (8,449,1,18,1),
(13,449,1,1,1),
(6,449,1,49,1),
(12,449,1,36,1),
(11,449,1,12,1),
(17,449,1,1,1),
(15,449,1,50,1),
(3,449,1,47,1),
(4,449,1,19,1),
(16,449,1,5,1),
(7,449,1,36,1),
(5,449,1,46,1),
(1,449,1,38,1),
(9,449,1,13,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(450,90,'2002-01-23 08:50:57',215,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (6,450,1,50,1),
(12,450,1,42,1),
(7,450,1,19,1),
(14,450,1,43,1),
(17,450,1,15,1),
(3,450,1,31,1),
(8,450,1,15,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(451,91,'1972-05-02 09:31:11',236,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (10,451,1,25,1),
(14,451,1,25,1),
(6,451,1,37,1),
(4,451,1,20,1),
(12,451,1,18,1),
(16,451,1,44,1),
(8,451,1,17,1),
(13,451,1,46,1),
(3,451,1,4,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(452,91,'1975-06-20 04:22:05',287,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (8,452,1,41,1),
(15,452,1,16,1),
(3,452,1,7,1),
(16,452,1,49,1),
(10,452,1,4,1),
(1,452,1,12,1),
(17,452,1,20,1),
(13,452,1,3,1),
(11,452,1,24,1),
(12,452,1,42,1),
(14,452,1,35,1),
(7,452,1,34,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(453,91,'1983-12-27 15:16:50',294,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (9,453,1,9,1),
(4,453,1,29,1),
(17,453,1,3,1),
(6,453,1,34,1),
(3,453,1,2,1),
(14,453,1,23,1),
(1,453,1,21,1),
(12,453,1,8,1),
(10,453,1,5,1),
(5,453,1,48,1),
(7,453,1,32,1),
(11,453,1,15,1),
(15,453,1,32,1),
(8,453,1,18,1),
(16,453,1,15,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(454,91,'2015-02-24 08:42:35',149,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (14,454,1,8,1),
(12,454,1,23,1),
(7,454,1,14,1),
(18,454,1,12,1),
(5,454,1,2,1),
(15,454,1,4,1),
(2,454,1,35,1),
(1,454,1,10,1),
(17,454,1,25,1),
(10,454,1,16,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(455,91,'1984-04-09 21:08:43',132,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (1,455,1,33,1),
(5,455,1,7,1),
(18,455,1,25,1),
(6,455,1,33,1),
(16,455,1,2,1),
(9,455,1,27,1),
(15,455,1,5,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(456,92,'1973-08-20 11:54:00',501,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (13,456,1,17,1),
(2,456,1,44,1),
(12,456,1,45,1),
(11,456,1,36,1),
(8,456,1,43,1),
(18,456,1,30,1),
(6,456,1,42,1),
(10,456,1,46,1),
(3,456,1,22,1),
(7,456,1,40,1),
(1,456,1,48,1),
(4,456,1,6,1),
(9,456,1,34,1),
(5,456,1,48,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(457,92,'1985-04-02 03:54:02',391,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (4,457,1,42,1),
(2,457,1,47,1),
(10,457,1,29,1),
(6,457,1,35,1),
(14,457,1,11,1),
(9,457,1,47,1),
(12,457,1,39,1),
(16,457,1,9,1),
(13,457,1,24,1),
(5,457,1,32,1),
(11,457,1,12,1),
(7,457,1,38,1),
(15,457,1,26,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(458,92,'1970-04-14 23:34:09',79,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (10,458,1,50,1),
(8,458,1,29,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(459,92,'2018-05-20 05:00:04',459,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (3,459,1,44,1),
(8,459,1,1,1),
(11,459,1,42,1),
(10,459,1,24,1),
(14,459,1,31,1),
(5,459,1,29,1),
(1,459,1,47,1),
(13,459,1,12,1),
(6,459,1,29,1),
(18,459,1,20,1),
(12,459,1,46,1),
(9,459,1,15,1),
(16,459,1,31,1),
(2,459,1,41,1),
(7,459,1,47,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(460,92,'1982-08-01 09:44:09',112,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (14,460,1,34,1),
(10,460,1,18,1),
(2,460,1,47,1),
(16,460,1,3,1),
(4,460,1,10,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(461,93,'1999-12-12 18:06:23',381,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (15,461,1,26,1),
(16,461,1,44,1),
(1,461,1,20,1),
(9,461,1,46,1),
(18,461,1,30,1),
(4,461,1,46,1),
(5,461,1,33,1),
(13,461,1,3,1),
(12,461,1,14,1),
(3,461,1,10,1),
(17,461,1,44,1),
(10,461,1,23,1),
(6,461,1,42,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(462,93,'2012-09-01 15:15:32',65,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (8,462,1,45,1),
(14,462,1,14,1),
(12,462,1,6,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(463,93,'1994-09-30 07:51:21',187,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (8,463,1,36,1),
(2,463,1,16,1),
(3,463,1,49,1),
(10,463,1,17,1),
(11,463,1,18,1),
(9,463,1,32,1),
(13,463,1,19,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(464,93,'1994-03-07 20:56:14',90,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (12,464,1,5,1),
(11,464,1,10,1),
(4,464,1,22,1),
(14,464,1,36,1),
(2,464,1,6,1),
(5,464,1,11,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(465,93,'1980-01-09 21:55:04',325,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (3,465,1,3,1),
(13,465,1,3,1),
(1,465,1,34,1),
(14,465,1,8,1),
(4,465,1,34,1),
(12,465,1,46,1),
(2,465,1,46,1),
(6,465,1,19,1),
(11,465,1,45,1),
(10,465,1,13,1),
(15,465,1,2,1),
(9,465,1,16,1),
(17,465,1,33,1),
(7,465,1,23,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(466,94,'1974-03-29 01:44:31',227,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (18,466,1,13,1),
(10,466,1,7,1),
(11,466,1,12,1),
(9,466,1,39,1),
(3,466,1,39,1),
(13,466,1,4,1),
(4,466,1,16,1),
(17,466,1,50,1),
(2,466,1,7,1),
(7,466,1,11,1),
(16,466,1,29,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(467,94,'1986-04-01 05:43:48',123,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (13,467,1,6,1),
(7,467,1,30,1),
(15,467,1,8,1),
(3,467,1,9,1),
(14,467,1,2,1),
(16,467,1,33,1),
(8,467,1,35,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(468,94,'1992-03-04 11:37:19',172,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (17,468,1,37,1),
(5,468,1,1,1),
(16,468,1,8,1),
(10,468,1,39,1),
(4,468,1,48,1),
(12,468,1,39,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(469,94,'1995-08-01 14:27:53',234,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (3,469,1,22,1),
(15,469,1,45,1),
(6,469,1,31,1),
(2,469,1,13,1),
(11,469,1,8,1),
(17,469,1,46,1),
(4,469,1,2,1),
(12,469,1,11,1),
(10,469,1,13,1),
(18,469,1,12,1),
(8,469,1,31,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(470,94,'2012-10-07 10:48:37',170,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (1,470,1,6,1),
(3,470,1,2,1),
(2,470,1,31,1),
(13,470,1,5,1),
(9,470,1,40,1),
(17,470,1,9,1),
(16,470,1,44,1),
(12,470,1,33,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(471,95,'1994-12-29 00:56:12',68,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (8,471,1,19,1),
(10,471,1,20,1),
(11,471,1,25,1),
(18,471,1,4,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(472,95,'1980-01-05 13:45:08',62,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (9,472,1,31,1),
(18,472,1,31,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(473,95,'1999-03-09 00:33:21',285,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (1,473,1,50,1),
(10,473,1,50,1),
(5,473,1,30,1),
(3,473,1,25,1),
(7,473,1,1,1),
(11,473,1,2,1),
(13,473,1,28,1),
(18,473,1,41,1),
(9,473,1,12,1),
(14,473,1,46,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(474,95,'1971-08-16 22:16:03',189,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (5,474,1,26,1),
(1,474,1,10,1),
(8,474,1,44,1),
(16,474,1,8,1),
(12,474,1,48,1),
(10,474,1,5,1),
(18,474,1,48,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(475,95,'2004-01-12 04:39:40',292,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (18,475,1,21,1),
(15,475,1,42,1),
(2,475,1,27,1),
(9,475,1,47,1),
(3,475,1,17,1),
(6,475,1,27,1),
(4,475,1,16,1),
(1,475,1,8,1),
(17,475,1,5,1),
(11,475,1,7,1),
(12,475,1,29,1),
(7,475,1,46,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(476,96,'1984-10-24 07:03:23',339,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (8,476,1,11,1),
(17,476,1,14,1),
(7,476,1,19,1),
(13,476,1,28,1),
(16,476,1,38,1),
(12,476,1,29,1),
(2,476,1,42,1),
(14,476,1,46,1),
(5,476,1,43,1),
(1,476,1,17,1),
(11,476,1,2,1),
(15,476,1,27,1),
(9,476,1,23,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(477,96,'1993-02-23 07:47:48',128,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (10,477,1,14,1),
(5,477,1,50,1),
(7,477,1,30,1),
(11,477,1,17,1),
(3,477,1,14,1),
(15,477,1,3,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(478,96,'2002-12-04 03:14:54',268,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (7,478,1,35,1),
(17,478,1,47,1),
(3,478,1,26,1),
(1,478,1,27,1),
(9,478,1,50,1),
(8,478,1,47,1),
(16,478,1,10,1),
(18,478,1,26,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(479,96,'1971-12-20 10:46:39',423,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (14,479,1,46,1),
(4,479,1,4,1),
(18,479,1,39,1),
(8,479,1,49,1),
(2,479,1,24,1),
(7,479,1,34,1),
(11,479,1,49,1),
(13,479,1,25,1),
(12,479,1,10,1),
(10,479,1,2,1),
(1,479,1,13,1),
(6,479,1,10,1),
(9,479,1,25,1),
(15,479,1,49,1),
(16,479,1,44,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(480,96,'2005-05-14 00:41:42',292,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (10,480,1,48,1),
(17,480,1,4,1),
(12,480,1,22,1),
(15,480,1,3,1),
(9,480,1,33,1),
(11,480,1,35,1),
(6,480,1,34,1),
(5,480,1,48,1),
(2,480,1,2,1),
(16,480,1,21,1),
(18,480,1,23,1),
(3,480,1,19,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(481,97,'2007-10-25 16:07:34',140,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (17,481,1,9,1),
(7,481,1,10,1),
(18,481,1,43,1),
(13,481,1,48,1),
(9,481,1,30,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(482,97,'1975-09-03 03:56:20',108,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (11,482,1,7,1),
(17,482,1,35,1),
(15,482,1,4,1),
(8,482,1,39,1),
(5,482,1,5,1),
(14,482,1,18,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(483,97,'1990-02-17 23:07:52',163,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (15,483,1,13,1),
(10,483,1,39,1),
(8,483,1,33,1),
(2,483,1,49,1),
(4,483,1,29,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(484,97,'2017-11-03 01:33:56',262,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (10,484,1,41,1),
(9,484,1,3,1),
(15,484,1,28,1),
(3,484,1,6,1),
(18,484,1,44,1),
(17,484,1,5,1),
(1,484,1,30,1),
(6,484,1,46,1),
(13,484,1,4,1),
(16,484,1,21,1),
(8,484,1,16,1),
(12,484,1,18,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(485,97,'1977-04-28 19:44:56',162,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (14,485,1,17,1),
(17,485,1,5,1),
(5,485,1,22,1),
(10,485,1,34,1),
(4,485,1,44,1),
(11,485,1,40,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(486,98,'1973-04-30 09:16:18',124,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (17,486,1,7,1),
(18,486,1,2,1),
(2,486,1,32,1),
(13,486,1,2,1),
(8,486,1,39,1),
(14,486,1,42,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(487,98,'1993-05-19 14:51:53',230,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (3,487,1,2,1),
(8,487,1,18,1),
(15,487,1,19,1),
(17,487,1,24,1),
(12,487,1,9,1),
(9,487,1,44,1),
(4,487,1,1,1),
(5,487,1,22,1),
(6,487,1,48,1),
(14,487,1,43,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(488,98,'2006-10-15 05:50:30',202,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (8,488,1,39,1),
(7,488,1,17,1),
(4,488,1,43,1),
(11,488,1,13,1),
(17,488,1,50,1),
(15,488,1,33,1),
(9,488,1,7,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(489,98,'2016-12-31 07:21:47',222,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (1,489,1,47,1),
(4,489,1,45,1),
(16,489,1,35,1),
(18,489,1,43,1),
(14,489,1,42,1),
(7,489,1,10,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(490,98,'2009-05-13 19:42:44',134,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (1,490,1,29,1),
(7,490,1,39,1),
(2,490,1,40,1),
(6,490,1,26,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(491,99,'1984-09-12 13:24:47',363,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (11,491,1,5,1),
(5,491,1,45,1),
(15,491,1,16,1),
(4,491,1,19,1),
(16,491,1,8,1),
(2,491,1,28,1),
(14,491,1,21,1),
(8,491,1,2,1),
(3,491,1,48,1),
(13,491,1,10,1),
(6,491,1,45,1),
(1,491,1,41,1),
(7,491,1,6,1),
(10,491,1,20,1),
(9,491,1,49,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(492,99,'1984-12-16 16:48:49',224,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (12,492,1,29,1),
(16,492,1,37,1),
(10,492,1,36,1),
(18,492,1,23,1),
(5,492,1,2,1),
(14,492,1,3,1),
(11,492,1,39,1),
(17,492,1,22,1),
(4,492,1,33,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(493,99,'1988-11-23 13:47:25',91,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (17,493,1,43,1),
(2,493,1,12,1),
(15,493,1,36,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(494,99,'1975-10-21 00:43:36',481,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (18,494,1,37,1),
(7,494,1,42,1),
(2,494,1,6,1),
(10,494,1,40,1),
(1,494,1,18,1),
(3,494,1,39,1),
(14,494,1,47,1),
(4,494,1,45,1),
(8,494,1,14,1),
(5,494,1,32,1),
(6,494,1,36,1),
(11,494,1,38,1),
(9,494,1,50,1),
(13,494,1,20,1),
(12,494,1,17,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(495,99,'1989-06-12 18:41:41',199,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (10,495,1,13,1),
(5,495,1,10,1),
(8,495,1,9,1),
(7,495,1,36,1),
(3,495,1,45,1),
(16,495,1,17,1),
(12,495,1,28,1),
(6,495,1,9,1),
(1,495,1,32,1);
 SELECT setval(pg_get_serial_sequence('dbo.compra', 'idcompra'), coalesce(max(idcompra), 0)+1 , false) FROM dbo.compra;  SELECT setval(pg_get_serial_sequence('dbo.itemcompra', 'iditemcompra'), coalesce(max(iditemcompra), 0)+1 , false) FROM dbo.itemcompra; 