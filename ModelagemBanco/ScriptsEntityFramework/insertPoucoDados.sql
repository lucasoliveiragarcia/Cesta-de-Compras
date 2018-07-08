SET schema 'dbo';
    
INSERT INTO Marca (idmarca, nome)
    VALUES  (1,'Nenhuma'),
		    (2,'Nestle'),
		    (3,'Tigre'),
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
        (2,  'Sao Paulo'         ),
        (3,  'Goias'             ),
        (4,  'Amazonas'          ),
        (5,  'Mato Grosso do Sul'),
        (6,  'Rio de Janeiro'    ),
        (7,  'Bahia'             ),
        (8,  'Rio de Janeiro'    ),
		(9,  'Texas'             ),
        (10, 'California'        ),
        (11, 'Florida'           ),
        (12, 'Alasca'            );  SELECT setval(pg_get_serial_sequence('dbo.estado', 'idestado'), coalesce(max(idestado), 0)+1 , false) FROM dbo.estado;  
INSERT INTO cidade (idcidade,idestado, nome) VALUES  (1,1, 'Colina de Laranjeiras'),(2,1, 'Dias das Flores')
,(3,3, 'Fogaça Paulista')
,(4,2, 'Lopes Verde')
,(5,4, 'FariasFernandes das Pedras')
,(6,5, 'Pires de Nascimento')
,(7,8, 'Pires Paulista')
,(8,1, 'Cardoso, de Ribeiro')
,(9,8, 'Costela Alegre')
,(10,1, 'Aragão de Ribeiro')
,(11,3, 'Gonçalves do Norte')
,(12,1, 'da Cruz Paulista')
,(13,3, 'da Mota')
,(14,5, 'Porto')
,(15,6, 'Silveira de Goiás')
,(16,8, 'Cardoso, do Amparo')
,(17,5, 'Freitas das Pedras')
,(18,4, 'Duarte')
,(19,3, 'Fogaça')
,(20,1, 'da Luz Paulista')
,(21,8, 'da Cruz')
,(22,6, 'Nascimento')
,(23,5, 'Teixeira')
,(24,3, 'Souza de Costa')
,(25,5, 'Peixoto')
,(26,8, 'Carvalho do Norte')
,(27,1, 'da Mata Alegre')
,(28,7, 'Azevedo')
,(29,4, 'Silveira de das Neves')
,(30,1, 'Rocha')
,(31,5, 'Pereira')
,(32,7, 'Nunes')
,(33,1, 'Silveira')
,(34,8, 'Monteiro')
,(35,2, 'Carvalho Grande')
,(36,5, 'da Costa')
,(37,2, 'da Cunha')
,(38,6, 'Freitas de Jesus')
,(39,7, 'Araújo')
,(40,2, 'Barbosa')
,(41,6, 'Freitas do Oeste')
,(42,3, 'da Paz')
,(43,8, 'Cavalcanti da Serra')
,(44,6, 'da Cruz Grande')
,(45,8, 'Melo do Amparo')
,(46,3, 'Campos da Praia')
,(47,8, 'Pinto Verde')
,(48,1, 'Araújo')
,(49,5, 'da Cunha de da Rosa')
,(50,2, 'Freitas Grande')
,(51,5, 'Monteiro da Praia')
,(52,7, 'da Luz de Goiás')
,(53,6, 'Correia')
,(54,8, 'Novaes')
,(55,4, 'Moraes de da Conceição')
,(56,2, 'Melo')
,(57,8, 'Aragão')
,(58,3, 'Silva da Mata')
,(59,7, 'Martins da Prata')
,(60,2, 'Silva')
,(61,6, 'Gomes de Melo')
,(62,2, 'Silveira do Amparo')
,(63,1, 'Alves Alegre')
,(64,7, 'Gomes da Serra')
,(65,8, 'Moura')
,(66,5, 'Gomes')
,(67,3, 'Porto Alegre')
,(68,7, 'Teixeira')
,(69,3, 'das Neves')
,(70,7, 'Souza dos Dourados')
,(71,4, 'Ramos da Praia')
,(72,7, 'Cunha')
,(73,5, 'Rodrigues')
,(74,4, 'da Cunha')
,(75,3, 'Oliveira')
,(76,8, 'Fogaça do Norte')
,(77,7, 'Rocha')
,(78,5, 'Barbosa do Oeste')
,(79,7, 'da Paz')
,(80,2, 'Monteiro Paulista')
,(81,8, 'Barbosa')
,(82,5, 'da Mata')
,(83,6, 'Novaes do Norte')
,(84,2, 'Souza de Moreira')
,(85,7, 'Mendes de Gomes')
,(86,4, 'Rodrigues')
,(87,4, 'das Neves')
,(88,4, 'Rodrigues')
,(89,1, 'Porto')
,(90,2, 'Gomes')
,(91,7, 'Caldeira dos Dourados')
,(92,4, 'Aragão')
,(93,7, 'Novaes das Flores')
,(94,3, 'Peixoto')
,(95,3, 'da Rosa')
,(96,2, 'Duarte')
,(97,3, 'Fogaça de Goiás')
,(98,6, 'Nunes de da Paz')
,(99,4, 'Cunha')
; SELECT setval(pg_get_serial_sequence('dbo.cidade', 'idcidade'), coalesce(max(idcidade), 0)+1 , false) FROM dbo.cidade;  
INSERT INTO endereco (idendereco, idcidade, cep, logradouro, numero, complemento) VALUES  (1, 1,'29167081','Primeiro','371','proximo a nada'),(2, 19, '98797688','Núcleo Barbosa','9259','algum complemento')
,(3, 32, '34741197','Alameda da Cruz','1345','algum complemento')
,(4, 47, '80499889','Lagoa Nogueira','7496','algum complemento')
,(5, 96, '32731738','Setor Bernardo Gomes','4658','algum complemento')
,(6, 5, '36435185','Lagoa de Moura','9846','algum complemento')
,(7, 2, '68185024','Fazenda Luna da Mota','5274','algum complemento')
,(8, 88, '43219393','Parque da Paz','1574','algum complemento')
,(9, 60, '79758697','Setor Luiz Fernando Nunes','3975','algum complemento')
,(10, 73, '35793539','Distrito Moura','775','algum complemento')
,(11, 95, '54100286','Viaduto Alexandre Araújo','1955','algum complemento')
,(12, 71, '50525783','Jardim Nascimento','8165','algum complemento')
,(13, 39, '30334154','Viela Samuel das Neves','6061','algum complemento')
,(14, 12, '45708124','Vale Vieira','3594','algum complemento')
,(15, 89, '89310981','Favela Pietra Lopes','3632','algum complemento')
,(16, 81, '67108858','Avenida Manuela da Luz','6658','algum complemento')
,(17, 54, '50345995','Trecho Nascimento','2124','algum complemento')
,(18, 21, '81460733','Viaduto Laura Cardoso,','4954','algum complemento')
,(19, 98, '53774551','Recanto João Felipe Dias','9637','algum complemento')
,(20, 26, '38942490','Campo de Dias','2246','algum complemento')
,(21, 10, '55788766','Avenida Letícia FariasFernandes','2755','algum complemento')
,(22, 21, '37200777','Pátio de Rezende','4154','algum complemento')
,(23, 32, '89314323','Viaduto de Gonçalves','1326','algum complemento')
,(24, 86, '61957277','Viaduto Nunes','6172','algum complemento')
,(25, 57, '34544163','Favela Caroline Pires','5902','algum complemento')
,(26, 92, '36761030','Jardim de Caldeira','4695','algum complemento')
,(27, 2, '90572134','Rua Ferreira','7602','algum complemento')
,(28, 19, '10397315','Travessa das Neves','8292','algum complemento')
,(29, 83, '87932863','Núcleo de Viana','9412','algum complemento')
,(30, 97, '75898021','Morro de da Paz','5573','algum complemento')
,(31, 37, '15369988','Rua de Nunes','5395','algum complemento')
,(32, 6, '56400775','Distrito de Melo','7131','algum complemento')
,(33, 48, '63260172','Lagoa da Luz','7446','algum complemento')
,(34, 50, '83043623','Aeroporto Nascimento','9533','algum complemento')
,(35, 89, '79309668','Setor Bárbara Costa','5988','algum complemento')
,(36, 10, '19675557','Campo Moreira','4453','algum complemento')
,(37, 27, '42646163','Largo de Teixeira','4546','algum complemento')
,(38, 41, '32359583','Loteamento Silva','2458','algum complemento')
,(39, 27, '88172845','Trevo de Campos','926','algum complemento')
,(40, 68, '22249117','Rodovia de da Rocha','2915','algum complemento')
,(41, 90, '24761713','Chácara da Mata','3769','algum complemento')
,(42, 83, '26855806','Parque Cardoso','8071','algum complemento')
,(43, 3, '17668694','Estação Gonçalves','2235','algum complemento')
,(44, 79, '71813521','Residencial Alice da Rosa','7475','algum complemento')
,(45, 10, '17377971','Alameda Campos','2526','algum complemento')
,(46, 13, '82933983','Núcleo FariasFernandes','4890','algum complemento')
,(47, 29, '86903605','Recanto de Souza','2553','algum complemento')
,(48, 63, '41060509','Via de Caldeira','9638','algum complemento')
,(49, 85, '27165297','Viaduto Bruna Alves','3026','algum complemento')
,(50, 58, '36591884','Condomínio de Pinto','5721','algum complemento')
,(51, 93, '62779661','Avenida Cauê Lima','6368','algum complemento')
,(52, 76, '10539761','Rua de da Paz','5231','algum complemento')
,(53, 46, '15550161','Pátio Larissa Jesus','7164','algum complemento')
,(54, 56, '10480957','Parque Nascimento','4024','algum complemento')
,(55, 20, '34401848','Feira Levi Costela','8167','algum complemento')
,(56, 13, '25681701','Sítio Campos','6598','algum complemento')
,(57, 87, '61240364','Trecho de Alves','4124','algum complemento')
,(58, 55, '49075386','Trevo de Silveira','6921','algum complemento')
,(59, 82, '83418261','Rodovia Monteiro','2062','algum complemento')
,(60, 20, '19789871','Trevo de Jesus','4768','algum complemento')
,(61, 8, '79328215','Colônia da Cunha','664','algum complemento')
,(62, 79, '42967621','Morro das Neves','5271','algum complemento')
,(63, 45, '32555751','Viaduto de Cardoso,','5121','algum complemento')
,(64, 72, '96781504','Vereda de da Conceição','1305','algum complemento')
,(65, 25, '74192696','Pátio Azevedo','5235','algum complemento')
,(66, 10, '80486896','Favela de Castro','6651','algum complemento')
,(67, 4, '48020736','Rua Bruno Freitas','5268','algum complemento')
,(68, 2, '88079552','Esplanada Cauã Jesus','2231','algum complemento')
,(69, 80, '68213891','Fazenda Lima','3503','algum complemento')
,(70, 47, '30654316','Estrada de Cardoso,','3060','algum complemento')
,(71, 12, '20498733','Esplanada Carvalho','5979','algum complemento')
,(72, 99, '54632720','Condomínio Nina Ramos','1577','algum complemento')
,(73, 63, '89545823','Parque Moreira','5705','algum complemento')
,(74, 79, '36905579','Estação Cardoso','2876','algum complemento')
,(75, 18, '80162427','Residencial de Gomes','3416','algum complemento')
,(76, 95, '60198199','Colônia Araújo','464','algum complemento')
,(77, 91, '97456964','Condomínio de Silva','7953','algum complemento')
,(78, 2, '29777435','Morro de Moreira','8398','algum complemento')
,(79, 40, '67319244','Chácara Diego Aragão','8219','algum complemento')
,(80, 5, '61916932','Estrada Peixoto','4805','algum complemento')
,(81, 15, '22681591','Lago Yuri da Rosa','183','algum complemento')
,(82, 53, '52529006','Largo Helena Monteiro','8459','algum complemento')
,(83, 36, '69729552','Fazenda de Cavalcanti','4505','algum complemento')
,(84, 32, '52634089','Parque Monteiro','5597','algum complemento')
,(85, 75, '88091417','Via Araújo','1409','algum complemento')
,(86, 48, '46208539','Lagoa de da Rocha','9298','algum complemento')
,(87, 9, '39042271','Recanto de da Conceição','8755','algum complemento')
,(88, 85, '68548077','Trevo de Novaes','7267','algum complemento')
,(89, 79, '59651369','Praça Gomes','3824','algum complemento')
,(90, 15, '90413388','Feira Almeida','1881','algum complemento')
,(91, 81, '84969412','Vila de Azevedo','6048','algum complemento')
,(92, 56, '91753736','Aeroporto de Souza','7543','algum complemento')
,(93, 70, '34134054','Viela Eloah Teixeira','7900','algum complemento')
,(94, 44, '21500631','Rua Lucas da Rocha','9265','algum complemento')
,(95, 72, '18852694','Lagoa Nogueira','8515','algum complemento')
,(96, 13, '63458990','Colônia de Porto','8282','algum complemento')
,(97, 59, '95523695','Colônia de Duarte','8347','algum complemento')
,(98, 80, '46928508','Parque de Mendes','7909','algum complemento')
,(99, 5, '76467041','Sítio de Ferreira','367','algum complemento')
,(100, 58, '97960919','Passarela Olivia Cunha','881','algum complemento')
,(101, 15, '83532211','Área Castro','6016','algum complemento')
,(102, 97, '37068713','Quadra Cunha','6427','algum complemento')
,(103, 56, '83027505','Parque de Castro','265','algum complemento')
,(104, 66, '55351828','Aeroporto Alves','5249','algum complemento')
,(105, 19, '70225288','Campo Catarina Correia','4631','algum complemento')
,(106, 64, '45721953','Residencial Isis das Neves','1478','algum complemento')
,(107, 72, '44176668','Travessa Carvalho','8274','algum complemento')
,(108, 58, '32953353','Via Levi Viana','546','algum complemento')
,(109, 76, '72446927','Conjunto Valentina Rocha','1260','algum complemento')
,(110, 27, '36099328','Vale de Nascimento','143','algum complemento')
,(111, 45, '82457185','Trevo de Costa','5302','algum complemento')
,(112, 43, '30566327','Loteamento de da Rosa','9087','algum complemento')
,(113, 83, '90177546','Colônia Pietra Gomes','7017','algum complemento')
,(114, 45, '27948562','Favela Rocha','9583','algum complemento')
,(115, 53, '41604642','Residencial Marcelo Costela','5637','algum complemento')
,(116, 28, '37314686','Alameda Moraes','9930','algum complemento')
,(117, 50, '45698440','Setor Sabrina Cavalcanti','3835','algum complemento')
,(118, 81, '48495584','Loteamento Almeida','3797','algum complemento')
,(119, 17, '25419049','Morro Juliana Campos','4068','algum complemento')
,(120, 11, '50790249','Vale Moura','8214','algum complemento')
,(121, 11, '63102960','Recanto da Mata','2626','algum complemento')
,(122, 46, '72850722','Passarela Nunes','112','algum complemento')
,(123, 68, '23710208','Avenida de Jesus','501','algum complemento')
,(124, 82, '37611971','Sítio Moreira','9405','algum complemento')
,(125, 52, '47707246','Setor Duarte','450','algum complemento')
,(126, 18, '43654266','Área de Rocha','1769','algum complemento')
,(127, 61, '23723542','Distrito Pedro Lucas Jesus','1987','algum complemento')
,(128, 4, '11474217','Aeroporto Esther Nogueira','2897','algum complemento')
,(129, 7, '90709980','Colônia Mirella Azevedo','4363','algum complemento')
,(130, 79, '47978338','Colônia de Rezende','97','algum complemento')
,(131, 85, '11093819','Loteamento Melo','1745','algum complemento')
,(132, 18, '77780848','Ladeira Pedro Henrique Rezende','290','algum complemento')
,(133, 53, '40301333','Sítio Araújo','4718','algum complemento')
,(134, 98, '70482984','Parque Maria Fernanda Mendes','6983','algum complemento')
,(135, 67, '94696069','Pátio de Moura','7615','algum complemento')
,(136, 97, '26958880','Conjunto Lucca Moura','3667','algum complemento')
,(137, 37, '42395304','Distrito Enzo Gabriel Gonçalves','7670','algum complemento')
,(138, 40, '50966942','Morro Bianca da Cunha','2178','algum complemento')
,(139, 93, '85129890','Praça de Silveira','2595','algum complemento')
,(140, 48, '96306146','Loteamento da Conceição','8794','algum complemento')
,(141, 52, '82880210','Conjunto de Viana','8556','algum complemento')
,(142, 50, '79699469','Rua Araújo','4323','algum complemento')
,(143, 34, '27516713','Aeroporto de da Mata','9662','algum complemento')
,(144, 99, '36208392','Estrada de da Paz','7339','algum complemento')
,(145, 83, '28134342','Núcleo de Azevedo','5589','algum complemento')
,(146, 25, '25243745','Viela Davi Lucca Rocha','503','algum complemento')
,(147, 30, '90121256','Lagoa de Ribeiro','6533','algum complemento')
,(148, 21, '56180620','Rodovia Stella Correia','2928','algum complemento')
,(149, 48, '20675477','Ladeira Santos','2456','algum complemento')
; SELECT setval(pg_get_serial_sequence('dbo.endereco', 'idendereco'), coalesce(max(idendereco), 0)+1 , false) FROM dbo.endereco; 
INSERT INTO estabelecimento(idestabelecimento ,idendereco ,nome , unidade ,logo)
    VALUES  (1,  1, 'EPA PLUS',     'Serra',      'logo.jpg'),
	(2,  2, 'Extrabom',   'Serra',  'logo.jpg'),
	(3,  3, 'Wallmart',   'Vitoria',    'logo.jpg'),
	(4,  4, 'Carone',     'Serra', 	    'logo.jpg'),
	(5,  5, 'Meridional', 'Aracruz',    'logo.jpg'),
	(6,  6, 'Devens',     'Aracruz',    'logo.jpg'),
	(7,  7, 'Carrefour',  'Serra', 'logo.jpg'),
	(8,  8, 'Extrabom',   'Vila Velha','logo.jpg'),
	(9,  9, 'Carrefour',  'Vitoria', 'logo.jpg'),
	(10, 10, 'Wallmart',   'Linhares', 'logo.jpg'); SELECT setval(pg_get_serial_sequence('dbo.estabelecimento', 'idestabelecimento'), coalesce(max(idestabelecimento), 0)+1 , false) FROM dbo.estabelecimento;  
INSERT INTO pessoa(idpessoa, idendereco, nome, sobrenome, email, dataNascimento) VALUES    (1,1, 'Eduardo','Couto','eduardo@email.com','1998/02/01') ,(2,13, 'Laís','Cardoso,','Laís@email.com','1990-08-15')
,(3,46, 'Maria Vitória','Melo','Maria Vitória@email.com','2006-07-07')
,(4,44, 'Caio','Caldeira','Caio@email.com','2014-11-30')
,(5,77, 'Rebeca','da Cruz','Rebeca@email.com','2004-04-10')
,(6,46, 'Levi','da Cunha','Levi@email.com','1983-01-03')
,(7,138, 'Yago','da Mata','Yago@email.com','2000-01-13')
,(8,29, 'Theo','Araújo','Theo@email.com','1998-08-22')
,(9,116, 'Antônio','Pires','Antônio@email.com','2010-02-24')
,(10,128, 'Lucca','Campos','Lucca@email.com','1984-07-05')
,(11,133, 'Carolina','Cardoso','Carolina@email.com','1981-12-18')
,(12,140, 'Ana Clara','Lopes','Ana Clara@email.com','1993-09-01')
,(13,142, 'Luiz Gustavo','Pires','Luiz Gustavo@email.com','2006-09-19')
,(14,123, 'Rafael','Melo','Rafael@email.com','1999-03-18')
,(15,96, 'Igor','Porto','Igor@email.com','2007-11-27')
,(16,19, 'Maria Julia','Nascimento','Maria Julia@email.com','2006-04-17')
,(17,49, 'Eduardo','Alves','Eduardo@email.com','2004-04-13')
,(18,25, 'Noah','da Mota','Noah@email.com','1995-12-08')
,(19,105, 'Sophia','Mendes','Sophia@email.com','2013-01-27')
,(20,7, 'Ana','Mendes','Ana@email.com','1991-05-17')
,(21,132, 'Bryan','Moura','Bryan@email.com','2002-10-06')
,(22,40, 'Emanuella','da Cruz','Emanuella@email.com','1987-06-24')
,(23,46, 'Kevin','Freitas','Kevin@email.com','1991-08-15')
,(24,73, 'Fernanda','Teixeira','Fernanda@email.com','1999-06-04')
,(25,117, 'Luana','Pires','Luana@email.com','1988-02-03')
,(26,44, 'Bárbara','da Costa','Bárbara@email.com','1994-05-12')
,(27,121, 'Laís','Alves','Laís@email.com','2006-09-08')
,(28,10, 'Vitor Gabriel','Vieira','Vitor Gabriel@email.com','2017-05-10')
,(29,19, 'Davi Lucca','Moraes','Davi Lucca@email.com','2002-05-19')
,(30,126, 'Guilherme','das Neves','Guilherme@email.com','2002-08-27')
,(31,18, 'Danilo','Barros','Danilo@email.com','1998-02-28')
,(32,109, 'Enzo','Alves','Enzo@email.com','1985-04-09')
,(33,33, 'Rafaela','da Cunha','Rafaela@email.com','1973-05-13')
,(34,103, 'Pietra','Castro','Pietra@email.com','2014-09-27')
,(35,50, 'Ana Vitória','Rezende','Ana Vitória@email.com','1992-01-26')
,(36,107, 'Noah','Nunes','Noah@email.com','2006-07-15')
,(37,13, 'Manuela','Nogueira','Manuela@email.com','1991-09-05')
,(38,63, 'João Pedro','Duarte','João Pedro@email.com','1977-07-20')
,(39,100, 'Thales','Silveira','Thales@email.com','1971-12-10')
,(40,53, 'Thomas','Costela','Thomas@email.com','1986-03-23')
,(41,39, 'João Vitor','Caldeira','João Vitor@email.com','1973-10-13')
,(42,10, 'Giovanna','Rocha','Giovanna@email.com','2009-12-08')
,(43,87, 'Luiz Henrique','Cunha','Luiz Henrique@email.com','2008-10-27')
,(44,129, 'Bernardo','Rodrigues','Bernardo@email.com','2008-05-22')
,(45,52, 'Felipe','Costa','Felipe@email.com','1980-05-15')
,(46,4, 'Isabella','Souza','Isabella@email.com','1986-06-07')
,(47,124, 'Rafael','Barros','Rafael@email.com','1992-05-24')
,(48,141, 'Vicente','Jesus','Vicente@email.com','2000-10-20')
,(49,127, 'Amanda','da Rosa','Amanda@email.com','2010-04-02')
,(50,129, 'Emanuelly','Barros','Emanuelly@email.com','2004-03-15')
,(51,120, 'Letícia','Ribeiro','Letícia@email.com','1982-09-16')
,(52,73, 'Emilly','Moraes','Emilly@email.com','2000-05-05')
,(53,2, 'Bruno','Ramos','Bruno@email.com','1999-10-14')
,(54,56, 'Cecília','Jesus','Cecília@email.com','1979-12-23')
,(55,56, 'Benício','da Cunha','Benício@email.com','2009-08-28')
,(56,63, 'Heitor','Gomes','Heitor@email.com','2004-02-28')
,(57,83, 'Marcela','Azevedo','Marcela@email.com','2015-10-30')
,(58,9, 'Otávio','Pinto','Otávio@email.com','1996-01-23')
,(59,13, 'Catarina','da Mota','Catarina@email.com','1976-06-21')
,(60,42, 'Lorenzo','da Rocha','Lorenzo@email.com','2003-06-13')
,(61,49, 'Yago','Alves','Yago@email.com','2017-01-15')
,(62,101, 'Clara','Santos','Clara@email.com','2008-03-12')
,(63,45, 'Calebe','da Rosa','Calebe@email.com','2009-09-21')
,(64,92, 'Thiago','da Paz','Thiago@email.com','2011-03-28')
,(65,36, 'Cauê','Campos','Cauê@email.com','2017-01-15')
,(66,105, 'Nicole','Carvalho','Nicole@email.com','2014-01-20')
,(67,5, 'Renan','Caldeira','Renan@email.com','1992-12-14')
,(68,73, 'Vitória','das Neves','Vitória@email.com','2016-10-26')
,(69,115, 'Nicolas','Melo','Nicolas@email.com','2000-01-31')
,(70,128, 'Eloah','Pires','Eloah@email.com','1993-07-16')
,(71,61, 'Noah','Moura','Noah@email.com','2007-01-17')
,(72,59, 'Marcos Vinicius','Costela','Marcos Vinicius@email.com','2016-12-24')
,(73,23, 'Ana Vitória','Carvalho','Ana Vitória@email.com','2005-03-29')
,(74,43, 'Emanuella','da Rosa','Emanuella@email.com','1999-11-02')
,(75,9, 'Esther','Aragão','Esther@email.com','1988-11-08')
,(76,138, 'Natália','Duarte','Natália@email.com','1980-06-13')
,(77,83, 'Daniel','Lima','Daniel@email.com','1990-07-03')
,(78,26, 'Maria Alice','Teixeira','Maria Alice@email.com','1992-08-11')
,(79,9, 'Bárbara','da Mata','Bárbara@email.com','2001-04-17')
,(80,36, 'João Guilherme','Cunha','João Guilherme@email.com','2010-09-02')
,(81,114, 'Olivia','Barros','Olivia@email.com','1982-06-29')
,(82,71, 'Davi Lucas','Mendes','Davi Lucas@email.com','2002-12-20')
,(83,4, 'Lara','Monteiro','Lara@email.com','1986-01-16')
,(84,96, 'Diego','da Luz','Diego@email.com','2010-06-18')
,(85,120, 'Davi Lucas','Novaes','Davi Lucas@email.com','1972-03-14')
,(86,43, 'Catarina','Lopes','Catarina@email.com','1992-12-06')
,(87,29, 'Isabella','da Conceição','Isabella@email.com','2002-04-18')
,(88,30, 'Camila','Lima','Camila@email.com','2015-07-21')
,(89,31, 'Maria Alice','Duarte','Maria Alice@email.com','2009-03-31')
,(90,96, 'Joana','Sales','Joana@email.com','1983-02-20')
,(91,109, 'Maria Vitória','Almeida','Maria Vitória@email.com','1983-08-17')
,(92,71, 'Ana Luiza','Nogueira','Ana Luiza@email.com','2015-09-06')
,(93,94, 'Kaique','Gonçalves','Kaique@email.com','2012-11-22')
,(94,24, 'Thomas','da Mota','Thomas@email.com','1973-05-15')
,(95,62, 'Kamilly','Vieira','Kamilly@email.com','1994-07-21')
,(96,22, 'Eduardo','Dias','Eduardo@email.com','1986-07-20')
,(97,81, 'Bernardo','Pereira','Bernardo@email.com','2017-09-25')
,(98,136, 'Vitor Gabriel','Moraes','Vitor Gabriel@email.com','1981-05-14')
,(99,12, 'Maria Luiza','Costa','Maria Luiza@email.com','1990-02-10')
; SELECT setval(pg_get_serial_sequence('dbo.pessoa', 'idpessoa'), coalesce(max(idpessoa), 0)+1 , false) FROM dbo.pessoa;  
INSERT INTO consumidor(idconsumidor, idpessoa, login, senha, nivel, datacadastro) VALUES    (1, 1, 'educouto', '$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1, '2018/02/01') ,(2,2, 'Ana Clara','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1985-01-25')
,(3,3, 'Miguel','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2000-12-21')
,(4,4, 'Raquel','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1984-07-22')
,(5,5, 'Paulo','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1978-06-30')
,(6,6, 'Emanuel','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2009-10-31')
,(7,7, 'Thiago','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1977-05-09')
,(8,8, 'Heloísa','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2001-04-17')
,(9,9, 'Pedro Miguel','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2005-07-03')
,(10,10, 'Marcos Vinicius','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1987-02-02')
,(11,11, 'Augusto','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1994-02-05')
,(12,12, 'Daniela','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1987-08-28')
,(13,13, 'Otávio','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2000-02-19')
,(14,14, 'Danilo','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2006-03-22')
,(15,15, 'Ana Júlia','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1993-11-30')
,(16,16, 'Amanda','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1989-07-25')
,(17,17, 'Augusto','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1995-05-11')
,(18,18, 'Eduarda','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2004-07-16')
,(19,19, 'Agatha','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2003-02-11')
,(20,20, 'Eduardo','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1974-01-23')
,(21,21, 'Esther','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1997-02-23')
,(22,22, 'Rodrigo','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1998-02-04')
,(23,23, 'Luiz Henrique','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1986-10-04')
,(24,24, 'Ana Júlia','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1980-04-17')
,(25,25, 'Lucca','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2016-06-11')
,(26,26, 'Rodrigo','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2007-10-02')
,(27,27, 'Bianca','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2006-11-27')
,(28,28, 'Isabelly','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1973-03-16')
,(29,29, 'Maria Alice','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1979-09-21')
,(30,30, 'Gabriel','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2002-04-10')
,(31,31, 'Vitor','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1994-09-06')
,(32,32, 'Maria Julia','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1975-05-03')
,(33,33, 'Ana','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2017-05-17')
,(34,34, 'Catarina','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1976-08-20')
,(35,35, 'Rebeca','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1975-04-25')
,(36,36, 'Alice','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2016-06-21')
,(37,37, 'Caroline','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1995-04-26')
,(38,38, 'João Guilherme','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2017-02-13')
,(39,39, 'Marina','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2002-09-25')
,(40,40, 'Davi Lucas','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1973-09-19')
,(41,41, 'Lucas Gabriel','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1978-07-18')
,(42,42, 'Melissa','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2018-04-08')
,(43,43, 'Gabriel','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1976-09-17')
,(44,44, 'Rafaela','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1988-12-18')
,(45,45, 'Gustavo','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1986-01-01')
,(46,46, 'Nicolas','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1972-12-13')
,(47,47, 'Maria Luiza','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1970-12-17')
,(48,48, 'Daniel','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2010-01-12')
,(49,49, 'Valentina','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1998-07-24')
,(50,50, 'Gabriela','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2008-02-15')
,(51,51, 'Alexandre','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1980-07-09')
,(52,52, 'Júlia','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2010-08-14')
,(53,53, 'Pietra','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2015-08-25')
,(54,54, 'Paulo','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2013-11-03')
,(55,55, 'Luana','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2010-08-17')
,(56,56, 'Maria Clara','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1991-05-14')
,(57,57, 'Diego','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1996-07-02')
,(58,58, 'Clarice','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1992-12-29')
,(59,59, 'Isabel','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2011-12-09')
,(60,60, 'Pedro Henrique','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1982-09-14')
,(61,61, 'Carolina','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1991-10-12')
,(62,62, 'Matheus','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2005-10-09')
,(63,63, 'Laís','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1976-04-25')
,(64,64, 'Nicolas','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2005-05-01')
,(65,65, 'Davi','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1978-10-09')
,(66,66, 'Gabriela','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1985-03-24')
,(67,67, 'Yuri','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1976-06-21')
,(68,68, 'Enzo','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2016-01-17')
,(69,69, 'Maria Fernanda','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1981-12-15')
,(70,70, 'Leandro','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1971-01-17')
,(71,71, 'Rafaela','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1982-03-26')
,(72,72, 'Emanuel','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1997-10-02')
,(73,73, 'Paulo','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1980-05-28')
,(74,74, 'Nathan','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2018-02-18')
,(75,75, 'Pedro Lucas','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2008-06-29')
,(76,76, 'Nina','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1990-12-21')
,(77,77, 'Enzo Gabriel','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2009-11-01')
,(78,78, 'Bruno','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1995-12-24')
,(79,79, 'Stephany','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2005-12-26')
,(80,80, 'Isabelly','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1972-03-01')
,(81,81, 'Evelyn','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1971-10-09')
,(82,82, 'Luiz Miguel','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2008-01-08')
,(83,83, 'Olivia','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2008-04-07')
,(84,84, 'Mariana','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2009-08-21')
,(85,85, 'Cauã','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2008-09-03')
,(86,86, 'Lara','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1999-05-28')
,(87,87, 'Levi','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1977-11-01')
,(88,88, 'Eduarda','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1978-11-23')
,(89,89, 'Isis','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1995-07-28')
,(90,90, 'Joaquim','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1976-05-21')
,(91,91, 'Luna','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1977-11-25')
,(92,92, 'Raul','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1988-12-05')
,(93,93, 'Thales','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2016-10-10')
,(94,94, 'João Felipe','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2012-09-02')
,(95,95, 'Bianca','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2014-02-26')
,(96,96, 'Bruno','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1979-05-22')
,(97,97, 'Yasmin','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1987-10-09')
,(98,98, 'Marcos Vinicius','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2008-08-22')
,(99,99, 'Marina','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1974-10-06')
; SELECT setval(pg_get_serial_sequence('dbo.consumidor', 'idconsumidor'), coalesce(max(idconsumidor), 0)+1 , false) FROM dbo.consumidor;  
INSERT INTO listaCompra (idlistaCompra, idconsumidor, nome, dataultimamodificacao) VALUES    (1, 1, 'Primeira Lista', '2018/06/03') ,(2, 2,'Compra de 15 dias','2011-11-13')
,(3, 3,'Churas da turma','1997-04-16')
,(4, 4,'Compra de 30 dias','1996-09-11')
,(5, 5,'Compras da feira','2003-03-22')
,(6, 6,'Compra de 30 dias','2013-11-15')
,(7, 7,'Compras da feira','1975-09-18')
,(8, 8,'Churas da turma','1982-05-26')
,(9, 9,'Compra de 30 dias','1983-04-24')
,(10, 10,'Churas da turma','1999-08-15')
,(11, 11,'Compra de 15 dias','1985-06-27')
,(12, 12,'Compra de 15 dias','1987-08-29')
,(13, 13,'Compra de 15 dias','1977-05-10')
,(14, 14,'Compra de 15 dias','1994-01-08')
,(15, 15,'Churas da turma','1996-08-11')
,(16, 16,'Churas da turma','1997-04-12')
,(17, 17,'Compra de 15 dias','1999-12-29')
,(18, 18,'Compra de 30 dias','1977-09-08')
,(19, 19,'Churas da turma','1981-11-30')
,(20, 20,'Compra de 30 dias','2012-07-19')
,(21, 21,'Compra de 30 dias','2014-03-03')
,(22, 22,'Compra de 30 dias','1983-12-16')
,(23, 23,'Churas da turma','1973-09-10')
,(24, 24,'Churas da turma','2018-05-07')
,(25, 25,'Compra de 30 dias','2005-09-22')
,(26, 26,'Compra de 15 dias','1989-06-18')
,(27, 27,'Compra de 30 dias','1984-09-03')
,(28, 28,'Compra de 15 dias','1985-09-26')
,(29, 29,'Compras da feira','1982-05-10')
,(30, 30,'Compra de 30 dias','1991-12-12')
,(31, 31,'Compra de 15 dias','2005-11-24')
,(32, 32,'Churas da turma','2003-03-17')
,(33, 33,'Compra de 15 dias','2004-09-29')
,(34, 34,'Compra de 15 dias','2010-10-28')
,(35, 35,'Churas da turma','1976-07-19')
,(36, 36,'Compras da feira','1997-08-24')
,(37, 37,'Churas da turma','2012-05-15')
,(38, 38,'Compra de 30 dias','1976-04-03')
,(39, 39,'Compras da feira','1975-07-29')
,(40, 40,'Churas da turma','1984-10-21')
,(41, 41,'Compras da feira','1995-09-18')
,(42, 42,'Compra de 30 dias','1996-10-05')
,(43, 43,'Compra de 30 dias','1993-04-11')
,(44, 44,'Compra de 30 dias','1996-05-14')
,(45, 45,'Compras da feira','2002-09-26')
,(46, 46,'Churas da turma','1989-01-17')
,(47, 47,'Churas da turma','1990-10-29')
,(48, 48,'Compra de 30 dias','1973-02-27')
,(49, 49,'Compras da feira','1984-04-07')
,(50, 50,'Compra de 30 dias','1998-06-05')
,(51, 51,'Compra de 15 dias','1985-11-30')
,(52, 52,'Compras da feira','1970-12-01')
,(53, 53,'Compras da feira','2000-06-15')
,(54, 54,'Compras da feira','1972-02-11')
,(55, 55,'Compra de 30 dias','2006-11-20')
,(56, 56,'Compra de 15 dias','1990-11-25')
,(57, 57,'Compras da feira','1995-07-02')
,(58, 58,'Compra de 15 dias','1973-08-27')
,(59, 59,'Compra de 30 dias','1992-08-13')
,(60, 60,'Churas da turma','2012-06-29')
,(61, 61,'Churas da turma','1970-11-20')
,(62, 62,'Compras da feira','1974-06-13')
,(63, 63,'Compras da feira','1981-05-01')
,(64, 64,'Churas da turma','2009-09-07')
,(65, 65,'Compras da feira','1982-10-29')
,(66, 66,'Compras da feira','2012-05-28')
,(67, 67,'Compras da feira','2004-12-28')
,(68, 68,'Compra de 30 dias','2012-01-04')
,(69, 69,'Compra de 15 dias','2003-05-13')
,(70, 70,'Churas da turma','2004-10-21')
,(71, 71,'Compras da feira','1979-01-31')
,(72, 72,'Churas da turma','1976-04-17')
,(73, 73,'Compra de 30 dias','2005-05-08')
,(74, 74,'Compra de 15 dias','1970-01-10')
,(75, 75,'Churas da turma','1977-07-10')
,(76, 76,'Compra de 15 dias','1998-03-10')
,(77, 77,'Compras da feira','2007-04-27')
,(78, 78,'Compras da feira','2017-05-19')
,(79, 79,'Compra de 30 dias','1985-09-25')
,(80, 80,'Compra de 30 dias','1977-12-22')
,(81, 81,'Compra de 30 dias','2013-08-14')
,(82, 82,'Compra de 30 dias','2008-07-12')
,(83, 83,'Compra de 30 dias','2014-04-10')
,(84, 84,'Compra de 15 dias','2013-07-02')
,(85, 85,'Compras da feira','1993-10-07')
,(86, 86,'Compras da feira','2003-05-18')
,(87, 87,'Churas da turma','1972-09-28')
,(88, 88,'Compra de 15 dias','1995-01-08')
,(89, 89,'Churas da turma','1988-01-25')
,(90, 90,'Compras da feira','1985-09-06')
,(91, 91,'Compra de 15 dias','1993-08-28')
,(92, 92,'Compras da feira','1981-07-18')
,(93, 93,'Churas da turma','2017-05-24')
,(94, 94,'Compras da feira','1976-05-30')
,(95, 95,'Compras da feira','2000-06-28')
,(96, 96,'Churas da turma','1991-06-05')
,(97, 97,'Churas da turma','1977-09-28')
,(98, 98,'Compra de 30 dias','2013-01-30')
,(99, 99,'Compras da feira','2011-11-26')
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
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(1,1,'1971-05-23 09:08:48',371,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (3,1,1,43,1),
(12,1,1,27,1),
(6,1,1,34,1),
(4,1,1,6,1),
(11,1,1,30,1),
(14,1,1,35,1),
(15,1,1,50,1),
(18,1,1,4,1),
(9,1,1,29,1),
(8,1,1,27,1),
(16,1,1,45,1),
(17,1,1,41,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(2,1,'2016-09-19 03:10:36',303,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (9,2,1,48,1),
(7,2,1,13,1),
(17,2,1,18,1),
(8,2,1,35,1),
(13,2,1,1,1),
(18,2,1,14,1),
(4,2,1,1,1),
(11,2,1,48,1),
(5,2,1,41,1),
(6,2,1,29,1),
(2,2,1,16,1),
(14,2,1,1,1),
(15,2,1,38,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(3,1,'1978-04-07 05:44:32',117,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (15,3,1,31,1),
(11,3,1,33,1),
(14,3,1,23,1),
(18,3,1,30,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(4,1,'2010-03-09 09:51:40',331,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (12,4,1,15,1),
(10,4,1,44,1),
(1,4,1,40,1),
(3,4,1,6,1),
(8,4,1,13,1),
(5,4,1,4,1),
(7,4,1,9,1),
(17,4,1,15,1),
(18,4,1,49,1),
(6,4,1,50,1),
(2,4,1,28,1),
(14,4,1,2,1),
(9,4,1,38,1),
(11,4,1,9,1),
(16,4,1,9,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(5,1,'1984-03-24 12:03:10',369,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (1,5,1,44,1),
(10,5,1,18,1),
(2,5,1,27,1),
(14,5,1,11,1),
(5,5,1,4,1),
(12,5,1,46,1),
(17,5,1,3,1),
(15,5,1,19,1),
(16,5,1,21,1),
(11,5,1,25,1),
(8,5,1,47,1),
(6,5,1,30,1),
(3,5,1,49,1),
(18,5,1,20,1),
(13,5,1,5,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(6,2,'1985-12-24 23:13:15',369,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (5,6,1,45,1),
(18,6,1,29,1),
(17,6,1,11,1),
(12,6,1,1,1),
(11,6,1,41,1),
(4,6,1,39,1),
(3,6,1,50,1),
(7,6,1,41,1),
(10,6,1,5,1),
(6,6,1,35,1),
(13,6,1,1,1),
(15,6,1,11,1),
(2,6,1,41,1),
(8,6,1,19,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(7,2,'1974-08-23 20:49:22',221,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (18,7,1,17,1),
(14,7,1,37,1),
(9,7,1,19,1),
(16,7,1,25,1),
(8,7,1,21,1),
(5,7,1,27,1),
(2,7,1,40,1),
(1,7,1,35,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(8,2,'2010-01-02 06:48:12',426,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (8,8,1,35,1),
(13,8,1,38,1),
(1,8,1,43,1),
(18,8,1,34,1),
(4,8,1,37,1),
(15,8,1,41,1),
(2,8,1,39,1),
(5,8,1,9,1),
(10,8,1,13,1),
(11,8,1,20,1),
(16,8,1,22,1),
(12,8,1,21,1),
(3,8,1,37,1),
(7,8,1,37,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(9,2,'1999-05-18 09:49:02',13,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (8,9,1,9,1),
(17,9,1,4,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(10,2,'2010-02-01 17:52:01',158,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (18,10,1,11,1),
(7,10,1,18,1),
(17,10,1,4,1),
(6,10,1,23,1),
(2,10,1,39,1),
(4,10,1,49,1),
(3,10,1,14,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(11,3,'1972-02-02 12:55:11',246,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (3,11,1,14,1),
(11,11,1,33,1),
(5,11,1,5,1),
(17,11,1,14,1),
(12,11,1,38,1),
(8,11,1,26,1),
(7,11,1,9,1),
(15,11,1,33,1),
(6,11,1,8,1),
(9,11,1,10,1),
(1,11,1,34,1),
(16,11,1,22,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(12,3,'2004-05-19 21:35:45',57,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (6,12,1,11,1),
(7,12,1,46,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(13,3,'1991-11-03 01:22:51',177,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (5,13,1,34,1),
(6,13,1,45,1),
(13,13,1,12,1),
(2,13,1,6,1),
(10,13,1,33,1),
(18,13,1,1,1),
(16,13,1,46,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(14,3,'1985-02-18 10:28:00',367,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (5,14,1,41,1),
(1,14,1,26,1),
(3,14,1,33,1),
(8,14,1,34,1),
(18,14,1,39,1),
(7,14,1,45,1),
(15,14,1,9,1),
(11,14,1,19,1),
(2,14,1,26,1),
(17,14,1,5,1),
(12,14,1,22,1),
(9,14,1,41,1),
(13,14,1,12,1),
(10,14,1,15,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(15,3,'2008-12-11 09:19:38',292,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (5,15,1,31,1),
(12,15,1,10,1),
(15,15,1,1,1),
(18,15,1,2,1),
(2,15,1,28,1),
(10,15,1,6,1),
(3,15,1,42,1),
(6,15,1,2,1),
(13,15,1,43,1),
(7,15,1,10,1),
(17,15,1,39,1),
(14,15,1,35,1),
(8,15,1,33,1),
(1,15,1,10,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(16,4,'1989-07-15 08:06:54',115,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (15,16,1,39,1),
(13,16,1,6,1),
(12,16,1,2,1),
(18,16,1,20,1),
(1,16,1,48,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(17,4,'2000-11-04 22:05:17',167,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (1,17,1,28,1),
(17,17,1,48,1),
(2,17,1,36,1),
(7,17,1,11,1),
(18,17,1,44,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(18,4,'2012-06-26 21:06:38',195,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (8,18,1,25,1),
(15,18,1,23,1),
(10,18,1,17,1),
(13,18,1,28,1),
(14,18,1,34,1),
(9,18,1,50,1),
(2,18,1,18,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(19,4,'1991-06-20 14:13:20',308,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (12,19,1,30,1),
(3,19,1,22,1),
(16,19,1,25,1),
(6,19,1,38,1),
(14,19,1,35,1),
(1,19,1,46,1),
(11,19,1,25,1),
(2,19,1,42,1),
(15,19,1,20,1),
(10,19,1,25,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(20,4,'1980-09-05 10:45:27',64,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (7,20,1,39,1),
(2,20,1,14,1),
(8,20,1,11,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(21,5,'1992-02-18 05:33:21',269,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (2,21,1,20,1),
(16,21,1,26,1),
(15,21,1,37,1),
(10,21,1,48,1),
(11,21,1,16,1),
(7,21,1,41,1),
(9,21,1,8,1),
(5,21,1,15,1),
(4,21,1,18,1),
(1,21,1,40,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(22,5,'1972-11-01 03:35:05',154,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (6,22,1,44,1),
(5,22,1,20,1),
(17,22,1,10,1),
(10,22,1,1,1),
(11,22,1,9,1),
(7,22,1,23,1),
(13,22,1,47,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(23,5,'2015-02-23 15:12:06',135,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (13,23,1,14,1),
(8,23,1,2,1),
(15,23,1,25,1),
(4,23,1,2,1),
(9,23,1,19,1),
(16,23,1,36,1),
(7,23,1,16,1),
(11,23,1,21,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(24,5,'1979-09-10 14:16:20',223,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (11,24,1,44,1),
(5,24,1,31,1),
(18,24,1,7,1),
(16,24,1,19,1),
(7,24,1,14,1),
(9,24,1,34,1),
(2,24,1,16,1),
(10,24,1,9,1),
(8,24,1,49,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(25,5,'1977-01-01 21:09:58',194,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (15,25,1,18,1),
(8,25,1,25,1),
(17,25,1,5,1),
(10,25,1,33,1),
(14,25,1,2,1),
(4,25,1,16,1),
(3,25,1,18,1),
(7,25,1,50,1),
(5,25,1,27,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(26,6,'2018-06-15 04:12:55',45,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (3,26,1,15,1),
(2,26,1,30,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(27,6,'1995-03-03 20:42:58',270,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (11,27,1,21,1),
(17,27,1,33,1),
(5,27,1,37,1),
(8,27,1,29,1),
(14,27,1,50,1),
(1,27,1,17,1),
(18,27,1,12,1),
(2,27,1,36,1),
(13,27,1,35,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(28,6,'2012-05-20 08:48:11',276,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (4,28,1,43,1),
(8,28,1,6,1),
(17,28,1,38,1),
(1,28,1,24,1),
(15,28,1,29,1),
(12,28,1,12,1),
(10,28,1,13,1),
(6,28,1,48,1),
(13,28,1,28,1),
(3,28,1,35,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(29,6,'1985-12-09 06:00:48',162,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (15,29,1,38,1),
(4,29,1,18,1),
(1,29,1,19,1),
(6,29,1,14,1),
(3,29,1,36,1),
(17,29,1,37,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(30,6,'1987-12-24 05:02:06',161,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (13,30,1,7,1),
(14,30,1,11,1),
(15,30,1,34,1),
(8,30,1,12,1),
(11,30,1,28,1),
(4,30,1,12,1),
(1,30,1,5,1),
(9,30,1,41,1),
(17,30,1,6,1),
(6,30,1,5,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(31,7,'1972-10-18 02:21:51',304,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (7,31,1,26,1),
(10,31,1,6,1),
(1,31,1,32,1),
(5,31,1,48,1),
(4,31,1,28,1),
(18,31,1,1,1),
(3,31,1,9,1),
(14,31,1,20,1),
(11,31,1,11,1),
(8,31,1,26,1),
(15,31,1,46,1),
(12,31,1,24,1),
(2,31,1,9,1),
(16,31,1,18,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(32,7,'2018-03-06 01:57:35',225,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (12,32,1,35,1),
(17,32,1,14,1),
(9,32,1,11,1),
(11,32,1,47,1),
(14,32,1,42,1),
(10,32,1,26,1),
(16,32,1,49,1),
(1,32,1,1,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(33,7,'2016-12-03 20:34:14',237,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (16,33,1,7,1),
(13,33,1,8,1),
(9,33,1,34,1),
(1,33,1,45,1),
(5,33,1,49,1),
(6,33,1,28,1),
(18,33,1,22,1),
(2,33,1,41,1),
(4,33,1,3,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(34,7,'1987-06-28 21:34:09',232,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (8,34,1,45,1),
(12,34,1,44,1),
(3,34,1,8,1),
(4,34,1,32,1),
(17,34,1,20,1),
(6,34,1,43,1),
(5,34,1,40,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(35,7,'2007-08-12 04:28:05',196,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (6,35,1,43,1),
(8,35,1,35,1),
(5,35,1,29,1),
(18,35,1,50,1),
(9,35,1,17,1),
(11,35,1,22,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(36,8,'2013-11-20 01:14:14',290,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (13,36,1,48,1),
(17,36,1,33,1),
(4,36,1,22,1),
(8,36,1,29,1),
(3,36,1,29,1),
(7,36,1,50,1),
(1,36,1,27,1),
(2,36,1,43,1),
(10,36,1,9,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(37,8,'1976-05-05 14:21:33',134,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (18,37,1,12,1),
(2,37,1,1,1),
(13,37,1,12,1),
(1,37,1,6,1),
(8,37,1,17,1),
(4,37,1,1,1),
(12,37,1,15,1),
(16,37,1,24,1),
(7,37,1,20,1),
(9,37,1,26,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(38,8,'1976-04-08 00:18:41',145,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (14,38,1,29,1),
(17,38,1,25,1),
(2,38,1,18,1),
(6,38,1,35,1),
(3,38,1,38,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(39,8,'1981-03-11 04:15:55',491,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (13,39,1,16,1),
(6,39,1,48,1),
(4,39,1,8,1),
(15,39,1,8,1),
(2,39,1,4,1),
(7,39,1,35,1),
(3,39,1,48,1),
(8,39,1,42,1),
(5,39,1,40,1),
(16,39,1,47,1),
(18,39,1,29,1),
(14,39,1,50,1),
(1,39,1,34,1),
(10,39,1,42,1),
(9,39,1,40,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(40,8,'1983-10-23 06:17:04',36,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (16,40,1,26,1),
(18,40,1,10,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(41,9,'2015-09-03 13:17:07',100,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (9,41,1,28,1),
(4,41,1,24,1),
(7,41,1,13,1),
(3,41,1,35,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(42,9,'1996-02-26 17:23:53',370,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (4,42,1,44,1),
(17,42,1,19,1),
(11,42,1,36,1),
(10,42,1,6,1),
(2,42,1,1,1),
(3,42,1,50,1),
(5,42,1,46,1),
(12,42,1,39,1),
(15,42,1,47,1),
(8,42,1,33,1),
(16,42,1,14,1),
(18,42,1,35,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(43,9,'1978-08-25 03:17:42',474,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (18,43,1,20,1),
(16,43,1,19,1),
(5,43,1,45,1),
(3,43,1,44,1),
(13,43,1,34,1),
(12,43,1,33,1),
(14,43,1,50,1),
(8,43,1,2,1),
(7,43,1,39,1),
(11,43,1,36,1),
(2,43,1,22,1),
(9,43,1,33,1),
(15,43,1,48,1),
(1,43,1,49,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(44,9,'1989-06-20 04:27:05',220,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (6,44,1,29,1),
(3,44,1,48,1),
(12,44,1,21,1),
(11,44,1,26,1),
(10,44,1,50,1),
(17,44,1,46,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(45,9,'1990-09-08 00:48:17',304,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (6,45,1,49,1),
(4,45,1,12,1),
(18,45,1,21,1),
(14,45,1,5,1),
(12,45,1,37,1),
(1,45,1,32,1),
(5,45,1,37,1),
(8,45,1,26,1),
(16,45,1,31,1),
(15,45,1,38,1),
(13,45,1,16,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(46,10,'1972-05-28 10:43:20',296,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (9,46,1,23,1),
(5,46,1,28,1),
(17,46,1,31,1),
(3,46,1,27,1),
(7,46,1,44,1),
(14,46,1,25,1),
(1,46,1,37,1),
(8,46,1,46,1),
(11,46,1,27,1),
(12,46,1,8,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(47,10,'1980-06-12 08:31:57',127,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (18,47,1,9,1),
(10,47,1,17,1),
(3,47,1,1,1),
(11,47,1,45,1),
(13,47,1,45,1),
(12,47,1,10,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(48,10,'2013-12-24 03:39:06',93,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (5,48,1,47,1),
(1,48,1,33,1),
(16,48,1,13,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(49,10,'2001-05-20 15:17:50',30,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (12,49,1,8,1),
(3,49,1,22,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(50,10,'1986-10-10 09:32:08',342,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (11,50,1,24,1),
(15,50,1,43,1),
(7,50,1,43,1),
(1,50,1,22,1),
(13,50,1,49,1),
(3,50,1,12,1),
(14,50,1,11,1),
(12,50,1,43,1),
(8,50,1,47,1),
(9,50,1,7,1),
(4,50,1,34,1),
(18,50,1,7,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(51,11,'1994-12-10 09:21:25',347,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (13,51,1,9,1),
(11,51,1,25,1),
(2,51,1,31,1),
(16,51,1,3,1),
(5,51,1,38,1),
(10,51,1,31,1),
(18,51,1,16,1),
(4,51,1,18,1),
(12,51,1,31,1),
(1,51,1,35,1),
(8,51,1,16,1),
(14,51,1,50,1),
(3,51,1,44,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(52,11,'1991-10-22 15:59:11',298,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (13,52,1,12,1),
(9,52,1,17,1),
(1,52,1,11,1),
(6,52,1,22,1),
(12,52,1,16,1),
(10,52,1,28,1),
(7,52,1,41,1),
(15,52,1,12,1),
(16,52,1,35,1),
(11,52,1,6,1),
(3,52,1,25,1),
(14,52,1,9,1),
(5,52,1,17,1),
(17,52,1,47,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(53,11,'1997-07-27 23:40:12',161,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (4,53,1,19,1),
(15,53,1,19,1),
(10,53,1,14,1),
(2,53,1,49,1),
(11,53,1,32,1),
(17,53,1,12,1),
(6,53,1,9,1),
(7,53,1,1,1),
(9,53,1,6,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(54,11,'2012-10-01 16:32:26',245,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (9,54,1,18,1),
(5,54,1,44,1),
(7,54,1,38,1),
(10,54,1,11,1),
(3,54,1,47,1),
(4,54,1,22,1),
(11,54,1,37,1),
(16,54,1,28,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(55,11,'1990-08-12 14:26:36',222,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (18,55,1,36,1),
(10,55,1,50,1),
(2,55,1,48,1),
(16,55,1,40,1),
(4,55,1,7,1),
(17,55,1,28,1),
(3,55,1,3,1),
(8,55,1,10,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(56,12,'1975-02-24 07:30:19',102,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (13,56,1,37,1),
(12,56,1,33,1),
(1,56,1,32,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(57,12,'2015-12-21 21:30:34',78,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (17,57,1,21,1),
(9,57,1,14,1),
(2,57,1,1,1),
(15,57,1,2,1),
(10,57,1,40,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(58,12,'2009-08-04 21:04:50',66,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (10,58,1,41,1),
(13,58,1,25,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(59,12,'1994-08-12 02:44:55',82,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (10,59,1,19,1),
(5,59,1,34,1),
(2,59,1,8,1),
(18,59,1,21,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(60,12,'2010-01-06 20:40:58',337,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (7,60,1,13,1),
(10,60,1,35,1),
(12,60,1,36,1),
(13,60,1,29,1),
(3,60,1,44,1),
(11,60,1,22,1),
(14,60,1,23,1),
(4,60,1,6,1),
(5,60,1,26,1),
(6,60,1,27,1),
(9,60,1,41,1),
(8,60,1,35,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(61,13,'1970-01-25 19:56:30',47,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (16,61,1,2,1),
(17,61,1,30,1),
(8,61,1,8,1),
(2,61,1,7,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(62,13,'1981-09-02 02:21:29',360,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (18,62,1,14,1),
(14,62,1,40,1),
(17,62,1,27,1),
(7,62,1,25,1),
(6,62,1,16,1),
(15,62,1,34,1),
(16,62,1,32,1),
(11,62,1,4,1),
(2,62,1,16,1),
(10,62,1,29,1),
(8,62,1,40,1),
(4,62,1,3,1),
(1,62,1,12,1),
(12,62,1,39,1),
(5,62,1,29,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(63,13,'2007-06-13 23:46:31',394,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (17,63,1,38,1),
(3,63,1,45,1),
(11,63,1,16,1),
(8,63,1,34,1),
(6,63,1,5,1),
(13,63,1,27,1),
(15,63,1,49,1),
(5,63,1,1,1),
(9,63,1,34,1),
(1,63,1,7,1),
(18,63,1,36,1),
(10,63,1,34,1),
(14,63,1,8,1),
(12,63,1,23,1),
(4,63,1,37,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(64,13,'2005-11-22 12:33:17',173,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (5,64,1,40,1),
(2,64,1,36,1),
(13,64,1,38,1),
(7,64,1,6,1),
(14,64,1,31,1),
(6,64,1,22,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(65,13,'1974-01-08 11:31:54',235,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (6,65,1,34,1),
(8,65,1,28,1),
(15,65,1,4,1),
(17,65,1,15,1),
(11,65,1,33,1),
(16,65,1,40,1),
(10,65,1,21,1),
(1,65,1,15,1),
(5,65,1,45,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(66,14,'2017-02-22 09:30:36',154,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (3,66,1,6,1),
(18,66,1,33,1),
(4,66,1,13,1),
(17,66,1,5,1),
(5,66,1,15,1),
(10,66,1,48,1),
(1,66,1,34,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(67,14,'2007-01-18 16:38:09',332,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (8,67,1,5,1),
(4,67,1,1,1),
(12,67,1,41,1),
(17,67,1,42,1),
(18,67,1,6,1),
(3,67,1,2,1),
(2,67,1,20,1),
(10,67,1,50,1),
(16,67,1,13,1),
(7,67,1,1,1),
(14,67,1,46,1),
(6,67,1,4,1),
(5,67,1,7,1),
(1,67,1,50,1),
(13,67,1,44,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(68,14,'1986-11-11 01:14:02',66,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (3,68,1,23,1),
(10,68,1,39,1),
(13,68,1,4,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(69,14,'2011-09-02 04:59:12',311,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (3,69,1,44,1),
(7,69,1,33,1),
(9,69,1,41,1),
(16,69,1,18,1),
(12,69,1,17,1),
(4,69,1,11,1),
(5,69,1,41,1),
(2,69,1,13,1),
(1,69,1,28,1),
(6,69,1,5,1),
(15,69,1,33,1),
(14,69,1,27,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(70,14,'2007-04-18 20:11:43',157,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (6,70,1,4,1),
(14,70,1,20,1),
(15,70,1,41,1),
(17,70,1,7,1),
(7,70,1,7,1),
(12,70,1,3,1),
(13,70,1,37,1),
(2,70,1,38,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(71,15,'1990-08-08 20:51:42',357,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (14,71,1,41,1),
(6,71,1,26,1),
(18,71,1,41,1),
(15,71,1,40,1),
(11,71,1,47,1),
(4,71,1,31,1),
(9,71,1,39,1),
(10,71,1,11,1),
(3,71,1,50,1),
(12,71,1,25,1),
(16,71,1,6,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(72,15,'2017-07-07 09:10:49',329,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (17,72,1,14,1),
(15,72,1,27,1),
(16,72,1,1,1),
(3,72,1,21,1),
(7,72,1,31,1),
(4,72,1,1,1),
(11,72,1,23,1),
(2,72,1,7,1),
(1,72,1,48,1),
(10,72,1,22,1),
(18,72,1,49,1),
(14,72,1,12,1),
(6,72,1,21,1),
(12,72,1,10,1),
(9,72,1,42,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(73,15,'1978-07-11 05:26:41',221,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (9,73,1,23,1),
(3,73,1,46,1),
(11,73,1,3,1),
(16,73,1,4,1),
(13,73,1,7,1),
(10,73,1,17,1),
(5,73,1,31,1),
(2,73,1,9,1),
(18,73,1,12,1),
(4,73,1,1,1),
(14,73,1,31,1),
(15,73,1,37,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(74,15,'1998-10-09 19:44:31',57,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (3,74,1,24,1),
(16,74,1,10,1),
(15,74,1,5,1),
(10,74,1,4,1),
(12,74,1,3,1),
(18,74,1,5,1),
(2,74,1,6,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(75,15,'1982-08-20 15:13:01',181,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (8,75,1,14,1),
(18,75,1,35,1),
(13,75,1,24,1),
(10,75,1,34,1),
(2,75,1,34,1),
(15,75,1,3,1),
(12,75,1,37,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(76,16,'1988-04-01 07:25:40',244,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (17,76,1,18,1),
(6,76,1,23,1),
(8,76,1,10,1),
(7,76,1,33,1),
(5,76,1,19,1),
(3,76,1,27,1),
(16,76,1,19,1),
(4,76,1,48,1),
(1,76,1,31,1),
(11,76,1,7,1),
(18,76,1,9,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(77,16,'2012-10-18 05:22:00',230,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (9,77,1,10,1),
(3,77,1,24,1),
(2,77,1,42,1),
(7,77,1,48,1),
(4,77,1,18,1),
(14,77,1,13,1),
(6,77,1,25,1),
(10,77,1,50,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(78,16,'1975-02-20 15:36:07',124,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (12,78,1,45,1),
(15,78,1,16,1),
(17,78,1,12,1),
(6,78,1,4,1),
(3,78,1,47,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(79,16,'2002-10-01 06:01:13',222,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (1,79,1,44,1),
(18,79,1,7,1),
(13,79,1,14,1),
(12,79,1,49,1),
(8,79,1,16,1),
(17,79,1,32,1),
(5,79,1,1,1),
(6,79,1,19,1),
(2,79,1,27,1),
(14,79,1,13,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(80,16,'2012-12-18 01:48:53',225,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (14,80,1,30,1),
(3,80,1,31,1),
(10,80,1,21,1),
(18,80,1,49,1),
(15,80,1,38,1),
(11,80,1,16,1),
(7,80,1,36,1),
(9,80,1,4,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(81,17,'1998-11-30 19:38:32',62,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (1,81,1,34,1),
(3,81,1,5,1),
(9,81,1,23,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(82,17,'2016-10-24 11:00:46',93,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (10,82,1,10,1),
(8,82,1,36,1),
(18,82,1,47,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(83,17,'1995-11-24 23:54:34',25,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (15,83,1,19,1),
(2,83,1,6,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(84,17,'1976-10-08 13:23:00',404,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (3,84,1,10,1),
(9,84,1,36,1),
(16,84,1,41,1),
(18,84,1,20,1),
(5,84,1,40,1),
(1,84,1,29,1),
(14,84,1,18,1),
(13,84,1,37,1),
(7,84,1,32,1),
(4,84,1,32,1),
(15,84,1,43,1),
(17,84,1,47,1),
(2,84,1,19,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(85,17,'1982-09-25 23:06:02',324,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (3,85,1,28,1),
(15,85,1,3,1),
(5,85,1,21,1),
(6,85,1,36,1),
(4,85,1,29,1),
(12,85,1,43,1),
(10,85,1,37,1),
(1,85,1,16,1),
(13,85,1,48,1),
(8,85,1,20,1),
(7,85,1,43,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(86,18,'2008-12-28 23:19:35',89,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (5,86,1,2,1),
(6,86,1,1,1),
(14,86,1,44,1),
(18,86,1,42,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(87,18,'1980-03-08 19:23:03',516,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (2,87,1,26,1),
(6,87,1,3,1),
(11,87,1,41,1),
(13,87,1,33,1),
(15,87,1,42,1),
(1,87,1,50,1),
(12,87,1,16,1),
(5,87,1,34,1),
(17,87,1,31,1),
(10,87,1,48,1),
(18,87,1,22,1),
(4,87,1,46,1),
(7,87,1,48,1),
(8,87,1,42,1),
(9,87,1,34,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(88,18,'1992-12-03 01:43:03',81,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (3,88,1,42,1),
(11,88,1,29,1),
(8,88,1,10,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(89,18,'2001-02-25 00:15:09',152,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (1,89,1,44,1),
(12,89,1,23,1),
(14,89,1,17,1),
(4,89,1,45,1),
(7,89,1,23,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(90,18,'1970-03-11 01:33:40',132,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (7,90,1,33,1),
(3,90,1,34,1),
(5,90,1,31,1),
(4,90,1,26,1),
(12,90,1,4,1),
(2,90,1,4,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(91,19,'2016-11-06 05:31:21',193,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (6,91,1,20,1),
(9,91,1,28,1),
(14,91,1,31,1),
(8,91,1,40,1),
(10,91,1,5,1),
(15,91,1,5,1),
(1,91,1,39,1),
(18,91,1,25,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(92,19,'2014-06-24 07:28:06',388,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (12,92,1,20,1),
(9,92,1,33,1),
(6,92,1,3,1),
(7,92,1,41,1),
(3,92,1,33,1),
(10,92,1,47,1),
(18,92,1,37,1),
(4,92,1,31,1),
(15,92,1,27,1),
(14,92,1,27,1),
(2,92,1,36,1),
(13,92,1,18,1),
(8,92,1,35,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(93,19,'1988-03-01 09:17:54',281,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (16,93,1,41,1),
(3,93,1,9,1),
(2,93,1,12,1),
(17,93,1,6,1),
(8,93,1,3,1),
(5,93,1,50,1),
(1,93,1,20,1),
(14,93,1,9,1),
(7,93,1,40,1),
(13,93,1,34,1),
(11,93,1,41,1),
(6,93,1,16,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(94,19,'2001-09-17 15:09:08',124,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (3,94,1,2,1),
(4,94,1,27,1),
(5,94,1,21,1),
(2,94,1,30,1),
(16,94,1,44,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(95,19,'1988-08-18 19:48:20',51,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (11,95,1,3,1),
(8,95,1,14,1),
(10,95,1,34,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(96,20,'1999-12-29 03:43:01',192,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (8,96,1,14,1),
(18,96,1,7,1),
(10,96,1,17,1),
(6,96,1,43,1),
(7,96,1,16,1),
(9,96,1,35,1),
(4,96,1,3,1),
(15,96,1,22,1),
(14,96,1,35,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(97,20,'1973-12-23 20:35:17',131,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (11,97,1,4,1),
(2,97,1,28,1),
(14,97,1,44,1),
(5,97,1,11,1),
(12,97,1,44,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(98,20,'1980-01-09 19:17:29',443,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (3,98,1,16,1),
(8,98,1,11,1),
(9,98,1,49,1),
(16,98,1,19,1),
(12,98,1,41,1),
(13,98,1,5,1),
(10,98,1,18,1),
(14,98,1,47,1),
(1,98,1,46,1),
(18,98,1,49,1),
(17,98,1,39,1),
(7,98,1,32,1),
(6,98,1,43,1),
(4,98,1,28,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(99,20,'2005-11-06 21:18:48',83,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (2,99,1,14,1),
(7,99,1,30,1),
(6,99,1,14,1),
(14,99,1,25,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(100,20,'1988-09-28 20:46:21',104,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (9,100,1,15,1),
(13,100,1,50,1),
(11,100,1,17,1),
(14,100,1,18,1),
(17,100,1,4,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(101,21,'1993-04-05 00:57:05',401,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (8,101,1,18,1),
(14,101,1,48,1),
(3,101,1,49,1),
(12,101,1,45,1),
(17,101,1,11,1),
(7,101,1,35,1),
(5,101,1,35,1),
(18,101,1,12,1),
(6,101,1,34,1),
(13,101,1,20,1),
(4,101,1,7,1),
(9,101,1,29,1),
(11,101,1,46,1),
(16,101,1,12,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(102,21,'1992-09-12 11:43:20',306,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (17,102,1,1,1),
(12,102,1,34,1),
(14,102,1,33,1),
(10,102,1,10,1),
(5,102,1,36,1),
(4,102,1,50,1),
(2,102,1,35,1),
(7,102,1,46,1),
(6,102,1,26,1),
(13,102,1,35,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(103,21,'1997-06-09 06:00:20',260,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (6,103,1,34,1),
(1,103,1,46,1),
(15,103,1,17,1),
(7,103,1,43,1),
(10,103,1,21,1),
(3,103,1,9,1),
(18,103,1,34,1),
(2,103,1,19,1),
(16,103,1,37,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(104,21,'1970-01-23 16:45:58',188,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (14,104,1,46,1),
(12,104,1,14,1),
(13,104,1,42,1),
(18,104,1,38,1),
(9,104,1,9,1),
(7,104,1,32,1),
(2,104,1,7,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(105,21,'2005-08-25 09:50:21',362,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (12,105,1,19,1),
(14,105,1,18,1),
(5,105,1,49,1),
(11,105,1,6,1),
(13,105,1,23,1),
(10,105,1,46,1),
(6,105,1,17,1),
(8,105,1,46,1),
(3,105,1,20,1),
(9,105,1,24,1),
(18,105,1,12,1),
(15,105,1,40,1),
(4,105,1,5,1),
(7,105,1,10,1),
(16,105,1,27,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(106,22,'1979-05-16 18:35:48',268,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (13,106,1,14,1),
(15,106,1,35,1),
(11,106,1,39,1),
(8,106,1,13,1),
(6,106,1,1,1),
(9,106,1,4,1),
(12,106,1,40,1),
(14,106,1,15,1),
(5,106,1,11,1),
(1,106,1,46,1),
(16,106,1,27,1),
(17,106,1,5,1),
(10,106,1,18,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(107,22,'2015-01-12 12:47:51',459,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (13,107,1,36,1),
(1,107,1,41,1),
(16,107,1,37,1),
(3,107,1,14,1),
(15,107,1,42,1),
(8,107,1,9,1),
(7,107,1,12,1),
(17,107,1,41,1),
(14,107,1,27,1),
(10,107,1,49,1),
(2,107,1,43,1),
(5,107,1,49,1),
(12,107,1,23,1),
(6,107,1,36,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(108,22,'1988-12-27 00:55:41',101,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (10,108,1,33,1),
(9,108,1,45,1),
(13,108,1,16,1),
(5,108,1,7,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(109,22,'1985-04-03 09:40:45',91,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (13,109,1,11,1),
(1,109,1,8,1),
(17,109,1,20,1),
(3,109,1,11,1),
(2,109,1,41,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(110,22,'1978-08-05 04:58:14',295,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (14,110,1,37,1),
(16,110,1,18,1),
(2,110,1,24,1),
(7,110,1,44,1),
(10,110,1,18,1),
(4,110,1,17,1),
(12,110,1,32,1),
(8,110,1,9,1),
(6,110,1,46,1),
(15,110,1,8,1),
(11,110,1,42,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(111,23,'1989-05-20 23:44:39',166,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (4,111,1,12,1),
(15,111,1,2,1),
(18,111,1,34,1),
(3,111,1,21,1),
(10,111,1,25,1),
(7,111,1,29,1),
(9,111,1,22,1),
(6,111,1,21,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(112,23,'1972-12-23 14:18:21',54,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (14,112,1,30,1),
(13,112,1,16,1),
(5,112,1,8,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(113,23,'1998-04-18 16:30:22',437,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (11,113,1,39,1),
(1,113,1,22,1),
(16,113,1,22,1),
(18,113,1,46,1),
(10,113,1,26,1),
(14,113,1,50,1),
(9,113,1,16,1),
(6,113,1,47,1),
(15,113,1,15,1),
(2,113,1,37,1),
(5,113,1,23,1),
(7,113,1,48,1),
(12,113,1,46,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(114,23,'2004-07-31 00:12:16',281,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (11,114,1,42,1),
(10,114,1,24,1),
(6,114,1,8,1),
(17,114,1,34,1),
(15,114,1,2,1),
(3,114,1,38,1),
(1,114,1,32,1),
(7,114,1,49,1),
(4,114,1,4,1),
(5,114,1,44,1),
(9,114,1,4,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(115,23,'1991-03-06 12:31:57',39,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (1,115,1,13,1),
(9,115,1,26,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(116,24,'1984-01-15 16:38:39',427,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (18,116,1,31,1),
(5,116,1,31,1),
(10,116,1,41,1),
(7,116,1,38,1),
(9,116,1,50,1),
(12,116,1,41,1),
(13,116,1,10,1),
(6,116,1,31,1),
(14,116,1,6,1),
(3,116,1,48,1),
(15,116,1,25,1),
(11,116,1,6,1),
(16,116,1,15,1),
(2,116,1,20,1),
(1,116,1,34,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(117,24,'1976-09-07 10:07:45',188,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (1,117,1,24,1),
(14,117,1,32,1),
(7,117,1,21,1),
(6,117,1,15,1),
(2,117,1,1,1),
(3,117,1,16,1),
(8,117,1,2,1),
(15,117,1,35,1),
(16,117,1,42,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(118,24,'1972-02-03 07:04:22',123,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (4,118,1,45,1),
(12,118,1,20,1),
(17,118,1,24,1),
(5,118,1,34,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(119,24,'1970-04-04 23:01:02',159,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (1,119,1,24,1),
(3,119,1,22,1),
(4,119,1,18,1),
(17,119,1,46,1),
(12,119,1,49,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(120,24,'2010-04-21 15:14:43',177,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (14,120,1,8,1),
(17,120,1,32,1),
(7,120,1,35,1),
(11,120,1,34,1),
(8,120,1,14,1),
(10,120,1,2,1),
(1,120,1,10,1),
(5,120,1,29,1),
(3,120,1,13,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(121,25,'1990-08-28 16:39:21',251,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (12,121,1,45,1),
(6,121,1,24,1),
(11,121,1,18,1),
(2,121,1,5,1),
(3,121,1,41,1),
(18,121,1,33,1),
(13,121,1,8,1),
(5,121,1,30,1),
(4,121,1,8,1),
(1,121,1,32,1),
(10,121,1,7,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(122,25,'1983-12-20 21:01:49',239,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (1,122,1,15,1),
(6,122,1,21,1),
(11,122,1,25,1),
(12,122,1,42,1),
(3,122,1,50,1),
(7,122,1,27,1),
(17,122,1,47,1),
(16,122,1,12,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(123,25,'1997-02-23 13:13:52',78,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (3,123,1,18,1),
(17,123,1,1,1),
(14,123,1,18,1),
(16,123,1,41,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(124,25,'2003-05-07 02:42:05',47,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (7,124,1,35,1),
(1,124,1,12,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(125,25,'1973-10-06 16:14:23',533,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (13,125,1,42,1),
(16,125,1,39,1),
(6,125,1,40,1),
(12,125,1,43,1),
(7,125,1,33,1),
(8,125,1,35,1),
(11,125,1,50,1),
(5,125,1,33,1),
(14,125,1,5,1),
(1,125,1,47,1),
(15,125,1,27,1),
(3,125,1,44,1),
(4,125,1,45,1),
(17,125,1,35,1),
(10,125,1,15,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(126,26,'1984-07-13 20:07:07',267,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (18,126,1,32,1),
(5,126,1,23,1),
(12,126,1,1,1),
(16,126,1,31,1),
(11,126,1,11,1),
(8,126,1,10,1),
(15,126,1,44,1),
(9,126,1,7,1),
(2,126,1,8,1),
(7,126,1,46,1),
(6,126,1,29,1),
(4,126,1,25,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(127,26,'1986-03-05 18:17:46',282,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (1,127,1,45,1),
(9,127,1,1,1),
(8,127,1,46,1),
(16,127,1,1,1),
(18,127,1,50,1),
(12,127,1,13,1),
(5,127,1,35,1),
(6,127,1,22,1),
(17,127,1,8,1),
(11,127,1,45,1),
(13,127,1,16,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(128,26,'1998-02-13 01:10:45',206,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (18,128,1,2,1),
(13,128,1,18,1),
(8,128,1,38,1),
(17,128,1,6,1),
(14,128,1,48,1),
(15,128,1,4,1),
(4,128,1,39,1),
(16,128,1,37,1),
(6,128,1,14,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(129,26,'2003-09-08 21:28:35',221,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (13,129,1,40,1),
(4,129,1,24,1),
(8,129,1,34,1),
(6,129,1,36,1),
(3,129,1,6,1),
(12,129,1,8,1),
(7,129,1,28,1),
(15,129,1,23,1),
(11,129,1,10,1),
(16,129,1,12,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(130,26,'1972-01-27 05:06:05',242,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (4,130,1,24,1),
(16,130,1,3,1),
(12,130,1,34,1),
(14,130,1,20,1),
(10,130,1,27,1),
(11,130,1,34,1),
(6,130,1,13,1),
(3,130,1,5,1),
(18,130,1,19,1),
(8,130,1,41,1),
(5,130,1,15,1),
(17,130,1,7,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(131,27,'1972-07-17 22:02:13',73,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (16,131,1,40,1),
(5,131,1,33,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(132,27,'1991-08-27 23:28:57',217,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (12,132,1,44,1),
(10,132,1,4,1),
(8,132,1,12,1),
(9,132,1,50,1),
(2,132,1,10,1),
(6,132,1,4,1),
(5,132,1,8,1),
(7,132,1,10,1),
(16,132,1,34,1),
(15,132,1,19,1),
(14,132,1,21,1),
(18,132,1,1,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(133,27,'2000-01-04 16:22:40',380,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (13,133,1,38,1),
(8,133,1,25,1),
(10,133,1,29,1),
(7,133,1,24,1),
(3,133,1,17,1),
(16,133,1,27,1),
(6,133,1,10,1),
(14,133,1,47,1),
(15,133,1,45,1),
(9,133,1,7,1),
(11,133,1,3,1),
(18,133,1,20,1),
(4,133,1,38,1),
(12,133,1,50,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(134,27,'2013-08-23 06:32:59',306,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (2,134,1,22,1),
(4,134,1,23,1),
(18,134,1,41,1),
(14,134,1,17,1),
(7,134,1,39,1),
(17,134,1,30,1),
(10,134,1,6,1),
(15,134,1,15,1),
(1,134,1,43,1),
(9,134,1,40,1),
(5,134,1,30,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(135,27,'1999-09-27 12:36:10',93,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (18,135,1,46,1),
(5,135,1,47,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(136,28,'1983-04-29 03:54:02',214,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (10,136,1,47,1),
(15,136,1,10,1),
(17,136,1,1,1),
(9,136,1,21,1),
(13,136,1,3,1),
(16,136,1,22,1),
(8,136,1,22,1),
(11,136,1,2,1),
(14,136,1,38,1),
(12,136,1,40,1),
(18,136,1,6,1),
(4,136,1,2,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(137,28,'2014-06-20 13:33:30',198,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (15,137,1,25,1),
(8,137,1,36,1),
(7,137,1,28,1),
(5,137,1,7,1),
(18,137,1,40,1),
(3,137,1,26,1),
(14,137,1,20,1),
(2,137,1,6,1),
(11,137,1,5,1),
(10,137,1,5,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(138,28,'1984-02-20 05:29:45',236,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (10,138,1,45,1),
(7,138,1,16,1),
(5,138,1,36,1),
(12,138,1,15,1),
(3,138,1,30,1),
(6,138,1,2,1),
(15,138,1,48,1),
(11,138,1,44,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(139,28,'1994-02-13 21:23:23',372,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (1,139,1,48,1),
(18,139,1,43,1),
(5,139,1,9,1),
(17,139,1,35,1),
(13,139,1,30,1),
(3,139,1,16,1),
(11,139,1,35,1),
(4,139,1,27,1),
(8,139,1,45,1),
(2,139,1,39,1),
(12,139,1,45,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(140,28,'1990-09-28 04:19:54',235,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (9,140,1,36,1),
(18,140,1,20,1),
(15,140,1,35,1),
(11,140,1,38,1),
(8,140,1,10,1),
(1,140,1,25,1),
(3,140,1,16,1),
(17,140,1,20,1),
(2,140,1,15,1),
(6,140,1,20,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(141,29,'1982-10-11 15:53:58',444,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (5,141,1,25,1),
(16,141,1,29,1),
(6,141,1,47,1),
(17,141,1,36,1),
(2,141,1,11,1),
(12,141,1,23,1),
(7,141,1,46,1),
(9,141,1,44,1),
(15,141,1,34,1),
(14,141,1,48,1),
(4,141,1,31,1),
(18,141,1,41,1),
(1,141,1,6,1),
(13,141,1,23,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(142,29,'2001-05-21 17:21:31',146,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (15,142,1,33,1),
(4,142,1,43,1),
(12,142,1,23,1),
(2,142,1,47,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(143,29,'1992-12-18 15:37:06',247,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (17,143,1,19,1),
(6,143,1,35,1),
(3,143,1,5,1),
(4,143,1,7,1),
(12,143,1,6,1),
(11,143,1,28,1),
(5,143,1,16,1),
(16,143,1,23,1),
(8,143,1,27,1),
(14,143,1,32,1),
(9,143,1,49,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(144,29,'2016-10-19 17:28:21',237,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (15,144,1,20,1),
(16,144,1,13,1),
(5,144,1,8,1),
(3,144,1,12,1),
(14,144,1,9,1),
(1,144,1,16,1),
(12,144,1,31,1),
(17,144,1,22,1),
(6,144,1,45,1),
(9,144,1,16,1),
(7,144,1,14,1),
(18,144,1,31,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(145,29,'2017-09-28 20:55:58',209,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (4,145,1,43,1),
(1,145,1,25,1),
(13,145,1,33,1),
(3,145,1,3,1),
(6,145,1,18,1),
(12,145,1,49,1),
(17,145,1,38,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(146,30,'2008-03-26 04:53:22',148,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (7,146,1,46,1),
(3,146,1,49,1),
(13,146,1,3,1),
(17,146,1,4,1),
(16,146,1,46,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(147,30,'1989-07-15 23:50:17',259,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (12,147,1,26,1),
(13,147,1,46,1),
(9,147,1,36,1),
(1,147,1,34,1),
(16,147,1,48,1),
(18,147,1,15,1),
(5,147,1,1,1),
(6,147,1,9,1),
(3,147,1,2,1),
(15,147,1,37,1),
(7,147,1,5,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(148,30,'1997-07-18 23:56:37',33,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (17,148,1,9,1),
(10,148,1,11,1),
(18,148,1,13,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(149,30,'2012-06-29 05:23:34',82,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (16,149,1,11,1),
(13,149,1,6,1),
(14,149,1,47,1),
(8,149,1,18,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(150,30,'1992-10-05 07:31:01',37,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (13,150,1,11,1),
(18,150,1,26,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(151,31,'1981-12-03 22:01:52',423,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (4,151,1,36,1),
(11,151,1,34,1),
(1,151,1,8,1),
(2,151,1,45,1),
(13,151,1,34,1),
(10,151,1,21,1),
(16,151,1,43,1),
(6,151,1,4,1),
(15,151,1,47,1),
(17,151,1,8,1),
(9,151,1,10,1),
(3,151,1,25,1),
(12,151,1,41,1),
(18,151,1,39,1),
(14,151,1,28,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(152,31,'2014-02-09 00:02:41',205,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (15,152,1,45,1),
(4,152,1,21,1),
(11,152,1,24,1),
(1,152,1,29,1),
(12,152,1,37,1),
(9,152,1,29,1),
(5,152,1,20,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(153,31,'1971-08-12 17:05:28',179,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (7,153,1,50,1),
(11,153,1,3,1),
(13,153,1,42,1),
(4,153,1,7,1),
(10,153,1,13,1),
(16,153,1,32,1),
(3,153,1,32,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(154,31,'1970-02-04 02:30:33',165,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (1,154,1,8,1),
(11,154,1,29,1),
(13,154,1,2,1),
(4,154,1,1,1),
(16,154,1,17,1),
(18,154,1,27,1),
(8,154,1,25,1),
(6,154,1,29,1),
(17,154,1,3,1),
(9,154,1,14,1),
(15,154,1,10,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(155,31,'2004-09-16 04:50:52',209,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (3,155,1,3,1),
(12,155,1,35,1),
(14,155,1,36,1),
(8,155,1,38,1),
(4,155,1,25,1),
(1,155,1,42,1),
(13,155,1,30,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(156,32,'1973-06-06 21:49:02',84,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (1,156,1,10,1),
(14,156,1,11,1),
(15,156,1,22,1),
(16,156,1,41,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(157,32,'1994-10-13 20:28:16',35,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (17,157,1,5,1),
(5,157,1,30,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(158,32,'2005-04-12 16:22:46',40,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (4,158,1,22,1),
(1,158,1,18,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(159,32,'1992-12-10 08:21:09',241,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (6,159,1,19,1),
(15,159,1,35,1),
(4,159,1,40,1),
(14,159,1,17,1),
(1,159,1,35,1),
(11,159,1,44,1),
(13,159,1,8,1),
(9,159,1,21,1),
(12,159,1,22,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(160,32,'2007-02-26 21:56:14',138,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (2,160,1,14,1),
(1,160,1,19,1),
(16,160,1,36,1),
(5,160,1,32,1),
(8,160,1,37,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(161,33,'1983-10-04 21:33:54',111,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (1,161,1,38,1),
(14,161,1,48,1),
(2,161,1,25,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(162,33,'1993-02-02 22:24:38',219,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (9,162,1,40,1),
(15,162,1,28,1),
(1,162,1,5,1),
(17,162,1,50,1),
(13,162,1,41,1),
(11,162,1,6,1),
(18,162,1,3,1),
(14,162,1,46,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(163,33,'2009-04-26 07:25:48',425,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (4,163,1,20,1),
(14,163,1,39,1),
(5,163,1,36,1),
(8,163,1,19,1),
(15,163,1,50,1),
(2,163,1,39,1),
(10,163,1,47,1),
(11,163,1,1,1),
(18,163,1,46,1),
(6,163,1,30,1),
(3,163,1,7,1),
(1,163,1,25,1),
(13,163,1,41,1),
(16,163,1,4,1),
(17,163,1,21,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(164,33,'1973-01-12 12:55:35',301,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (6,164,1,36,1),
(15,164,1,17,1),
(3,164,1,25,1),
(14,164,1,21,1),
(17,164,1,37,1),
(12,164,1,33,1),
(8,164,1,35,1),
(16,164,1,29,1),
(11,164,1,25,1),
(7,164,1,13,1),
(18,164,1,30,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(165,33,'2009-06-17 10:55:33',123,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (12,165,1,20,1),
(17,165,1,36,1),
(10,165,1,36,1),
(11,165,1,29,1),
(5,165,1,2,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(166,34,'2005-06-18 11:15:13',61,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (2,166,1,38,1),
(12,166,1,23,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(167,34,'2007-10-17 06:25:19',35,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (14,167,1,14,1),
(2,167,1,2,1),
(18,167,1,19,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(168,34,'2004-01-09 11:47:57',237,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (18,168,1,46,1),
(15,168,1,48,1),
(12,168,1,10,1),
(10,168,1,3,1),
(14,168,1,31,1),
(7,168,1,33,1),
(1,168,1,9,1),
(8,168,1,10,1),
(16,168,1,47,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(169,34,'2004-04-01 03:05:15',78,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (12,169,1,43,1),
(16,169,1,35,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(170,34,'1977-07-07 11:49:50',175,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (3,170,1,24,1),
(16,170,1,45,1),
(14,170,1,46,1),
(18,170,1,28,1),
(12,170,1,6,1),
(10,170,1,23,1),
(13,170,1,3,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(171,35,'2001-01-28 07:57:46',100,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (7,171,1,12,1),
(8,171,1,43,1),
(3,171,1,45,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(172,35,'1994-01-03 02:16:39',333,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (12,172,1,22,1),
(5,172,1,47,1),
(2,172,1,34,1),
(13,172,1,20,1),
(14,172,1,46,1),
(17,172,1,14,1),
(6,172,1,33,1),
(7,172,1,9,1),
(10,172,1,46,1),
(4,172,1,25,1),
(1,172,1,15,1),
(18,172,1,2,1),
(9,172,1,20,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(173,35,'1978-04-24 12:56:32',360,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (14,173,1,23,1),
(4,173,1,43,1),
(12,173,1,31,1),
(3,173,1,44,1),
(6,173,1,42,1),
(10,173,1,8,1),
(16,173,1,15,1),
(11,173,1,18,1),
(1,173,1,5,1),
(17,173,1,44,1),
(2,173,1,42,1),
(8,173,1,45,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(174,35,'2014-02-26 00:24:03',115,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (18,174,1,33,1),
(11,174,1,20,1),
(1,174,1,9,1),
(10,174,1,27,1),
(7,174,1,26,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(175,35,'1998-01-15 01:04:03',410,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (7,175,1,48,1),
(8,175,1,43,1),
(17,175,1,20,1),
(13,175,1,18,1),
(9,175,1,48,1),
(2,175,1,31,1),
(1,175,1,27,1),
(12,175,1,17,1),
(6,175,1,32,1),
(4,175,1,17,1),
(11,175,1,8,1),
(14,175,1,37,1),
(18,175,1,21,1),
(15,175,1,13,1),
(10,175,1,30,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(176,36,'1993-11-09 05:48:46',79,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (18,176,1,21,1),
(8,176,1,4,1),
(15,176,1,7,1),
(4,176,1,24,1),
(11,176,1,23,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(177,36,'1979-03-19 20:18:15',175,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (15,177,1,50,1),
(13,177,1,16,1),
(6,177,1,6,1),
(16,177,1,22,1),
(12,177,1,48,1),
(11,177,1,33,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(178,36,'2006-08-25 09:14:30',337,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (8,178,1,1,1),
(18,178,1,27,1),
(15,178,1,9,1),
(10,178,1,45,1),
(9,178,1,3,1),
(3,178,1,50,1),
(6,178,1,40,1),
(16,178,1,43,1),
(11,178,1,25,1),
(4,178,1,31,1),
(1,178,1,21,1),
(2,178,1,1,1),
(13,178,1,5,1),
(7,178,1,36,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(179,36,'2017-04-12 02:45:31',347,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (15,179,1,49,1),
(11,179,1,37,1),
(10,179,1,15,1),
(13,179,1,35,1),
(4,179,1,36,1),
(18,179,1,45,1),
(14,179,1,42,1),
(9,179,1,4,1),
(8,179,1,48,1),
(2,179,1,9,1),
(6,179,1,27,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(180,36,'2013-06-02 01:41:35',164,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (2,180,1,33,1),
(11,180,1,23,1),
(18,180,1,25,1),
(7,180,1,5,1),
(12,180,1,35,1),
(14,180,1,42,1),
(17,180,1,1,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(181,37,'1976-02-12 04:46:33',258,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (10,181,1,29,1),
(3,181,1,16,1),
(5,181,1,9,1),
(2,181,1,8,1),
(16,181,1,31,1),
(8,181,1,31,1),
(4,181,1,22,1),
(12,181,1,37,1),
(14,181,1,13,1),
(1,181,1,25,1),
(18,181,1,37,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(182,37,'2015-05-12 19:17:43',144,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (17,182,1,48,1),
(8,182,1,35,1),
(16,182,1,42,1),
(6,182,1,19,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(183,37,'2015-08-11 13:10:31',436,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (5,183,1,38,1),
(18,183,1,17,1),
(15,183,1,44,1),
(11,183,1,32,1),
(9,183,1,41,1),
(17,183,1,29,1),
(3,183,1,6,1),
(14,183,1,45,1),
(12,183,1,28,1),
(4,183,1,33,1),
(10,183,1,24,1),
(8,183,1,39,1),
(13,183,1,23,1),
(6,183,1,14,1),
(1,183,1,23,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(184,37,'2018-05-07 19:16:03',323,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (10,184,1,2,1),
(17,184,1,31,1),
(5,184,1,11,1),
(8,184,1,23,1),
(9,184,1,48,1),
(18,184,1,34,1),
(12,184,1,43,1),
(13,184,1,29,1),
(3,184,1,19,1),
(16,184,1,28,1),
(7,184,1,21,1),
(4,184,1,34,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(185,37,'2011-04-07 01:40:18',173,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (3,185,1,2,1),
(1,185,1,22,1),
(5,185,1,46,1),
(13,185,1,12,1),
(8,185,1,3,1),
(7,185,1,2,1),
(4,185,1,32,1),
(6,185,1,4,1),
(15,185,1,50,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(186,38,'2013-04-06 00:45:19',72,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (18,186,1,44,1),
(13,186,1,28,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(187,38,'1995-08-07 22:02:55',158,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (6,187,1,5,1),
(4,187,1,24,1),
(14,187,1,40,1),
(18,187,1,9,1),
(9,187,1,45,1),
(3,187,1,27,1),
(8,187,1,8,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(188,38,'1974-10-12 06:49:26',82,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (2,188,1,18,1),
(8,188,1,11,1),
(13,188,1,6,1),
(18,188,1,8,1),
(16,188,1,39,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(189,38,'2007-12-24 21:22:43',102,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (16,189,1,50,1),
(10,189,1,11,1),
(5,189,1,15,1),
(14,189,1,2,1),
(18,189,1,24,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(190,38,'1997-02-27 21:05:26',131,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (1,190,1,9,1),
(12,190,1,12,1),
(7,190,1,10,1),
(13,190,1,13,1),
(17,190,1,17,1),
(11,190,1,16,1),
(16,190,1,17,1),
(3,190,1,37,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(191,39,'1987-01-27 03:55:27',175,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (11,191,1,49,1),
(7,191,1,16,1),
(8,191,1,47,1),
(2,191,1,46,1),
(18,191,1,17,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(192,39,'2008-08-08 08:12:27',251,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (10,192,1,14,1),
(12,192,1,1,1),
(1,192,1,6,1),
(8,192,1,14,1),
(9,192,1,50,1),
(4,192,1,21,1),
(16,192,1,45,1),
(5,192,1,46,1),
(18,192,1,38,1),
(6,192,1,16,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(193,39,'1988-09-04 03:13:38',14,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (13,193,1,11,1),
(8,193,1,3,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(194,39,'2001-02-21 05:30:14',71,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (4,194,1,37,1),
(16,194,1,34,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(195,39,'2012-03-24 14:16:37',308,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (10,195,1,30,1),
(5,195,1,24,1),
(2,195,1,29,1),
(6,195,1,45,1),
(9,195,1,7,1),
(7,195,1,32,1),
(4,195,1,18,1),
(18,195,1,33,1),
(13,195,1,46,1),
(12,195,1,5,1),
(14,195,1,8,1),
(16,195,1,31,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(196,40,'1982-04-08 07:25:35',67,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (7,196,1,28,1),
(14,196,1,39,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(197,40,'1975-03-27 10:41:01',35,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (12,197,1,25,1),
(13,197,1,10,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(198,40,'1970-03-22 10:36:51',187,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (3,198,1,20,1),
(8,198,1,17,1),
(1,198,1,49,1),
(15,198,1,50,1),
(2,198,1,11,1),
(18,198,1,32,1),
(7,198,1,8,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(199,40,'1986-06-30 02:23:56',54,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (3,199,1,14,1),
(7,199,1,40,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(200,40,'1990-05-06 18:12:15',307,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (9,200,1,50,1),
(13,200,1,2,1),
(10,200,1,11,1),
(11,200,1,46,1),
(4,200,1,12,1),
(14,200,1,45,1),
(15,200,1,6,1),
(6,200,1,47,1),
(16,200,1,26,1),
(5,200,1,13,1),
(17,200,1,7,1),
(3,200,1,42,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(201,41,'1977-12-03 02:11:33',212,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (17,201,1,18,1),
(8,201,1,14,1),
(18,201,1,8,1),
(6,201,1,26,1),
(4,201,1,50,1),
(16,201,1,16,1),
(13,201,1,38,1),
(1,201,1,13,1),
(3,201,1,9,1),
(11,201,1,20,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(202,41,'1983-05-10 20:58:48',119,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (3,202,1,9,1),
(15,202,1,5,1),
(4,202,1,39,1),
(13,202,1,34,1),
(2,202,1,3,1),
(11,202,1,10,1),
(9,202,1,19,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(203,41,'2005-12-26 20:33:22',111,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (16,203,1,33,1),
(12,203,1,28,1),
(4,203,1,35,1),
(9,203,1,15,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(204,41,'2005-10-25 01:51:45',183,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (13,204,1,19,1),
(17,204,1,30,1),
(16,204,1,29,1),
(4,204,1,35,1),
(7,204,1,26,1),
(9,204,1,13,1),
(14,204,1,31,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(205,41,'1976-07-12 02:22:41',428,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (1,205,1,28,1),
(18,205,1,39,1),
(15,205,1,11,1),
(7,205,1,4,1),
(9,205,1,45,1),
(6,205,1,37,1),
(12,205,1,31,1),
(10,205,1,28,1),
(14,205,1,19,1),
(16,205,1,6,1),
(17,205,1,32,1),
(5,205,1,28,1),
(3,205,1,36,1),
(11,205,1,44,1),
(2,205,1,40,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(206,42,'2014-08-02 10:40:16',167,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (3,206,1,28,1),
(10,206,1,29,1),
(13,206,1,47,1),
(9,206,1,4,1),
(12,206,1,5,1),
(14,206,1,2,1),
(1,206,1,17,1),
(16,206,1,35,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(207,42,'2013-08-20 13:46:00',408,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (2,207,1,20,1),
(15,207,1,43,1),
(10,207,1,32,1),
(7,207,1,16,1),
(5,207,1,47,1),
(8,207,1,25,1),
(14,207,1,42,1),
(1,207,1,34,1),
(16,207,1,22,1),
(6,207,1,26,1),
(18,207,1,14,1),
(11,207,1,44,1),
(3,207,1,43,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(208,42,'2009-07-19 16:22:17',426,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (8,208,1,33,1),
(2,208,1,35,1),
(10,208,1,29,1),
(15,208,1,37,1),
(7,208,1,48,1),
(13,208,1,18,1),
(4,208,1,17,1),
(6,208,1,9,1),
(3,208,1,49,1),
(18,208,1,42,1),
(5,208,1,17,1),
(16,208,1,47,1),
(14,208,1,8,1),
(11,208,1,23,1),
(1,208,1,14,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(209,42,'1971-01-23 12:47:09',245,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (9,209,1,24,1),
(8,209,1,28,1),
(7,209,1,42,1),
(4,209,1,50,1),
(16,209,1,31,1),
(11,209,1,49,1),
(1,209,1,21,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(210,42,'1985-10-03 06:25:05',185,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (3,210,1,25,1),
(1,210,1,25,1),
(9,210,1,27,1),
(5,210,1,41,1),
(17,210,1,2,1),
(18,210,1,47,1),
(6,210,1,18,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(211,43,'1973-11-17 08:17:50',433,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (16,211,1,5,1),
(12,211,1,48,1),
(10,211,1,31,1),
(7,211,1,46,1),
(5,211,1,40,1),
(17,211,1,43,1),
(2,211,1,40,1),
(15,211,1,21,1),
(14,211,1,35,1),
(1,211,1,33,1),
(11,211,1,37,1),
(9,211,1,30,1),
(4,211,1,24,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(212,43,'1988-04-10 14:30:56',274,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (9,212,1,23,1),
(2,212,1,31,1),
(5,212,1,28,1),
(10,212,1,20,1),
(7,212,1,14,1),
(8,212,1,37,1),
(1,212,1,26,1),
(4,212,1,45,1),
(11,212,1,12,1),
(12,212,1,38,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(213,43,'1996-07-11 09:04:39',220,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (1,213,1,35,1),
(14,213,1,1,1),
(16,213,1,10,1),
(3,213,1,46,1),
(2,213,1,37,1),
(15,213,1,37,1),
(10,213,1,40,1),
(11,213,1,11,1),
(18,213,1,3,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(214,43,'1997-03-10 01:14:10',92,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (14,214,1,50,1),
(13,214,1,42,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(215,43,'1973-02-20 07:00:45',236,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (11,215,1,31,1),
(17,215,1,44,1),
(1,215,1,45,1),
(4,215,1,36,1),
(18,215,1,9,1),
(7,215,1,6,1),
(9,215,1,23,1),
(13,215,1,42,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(216,44,'1986-11-16 20:45:23',143,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (3,216,1,1,1),
(12,216,1,21,1),
(5,216,1,41,1),
(9,216,1,39,1),
(10,216,1,36,1),
(15,216,1,5,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(217,44,'1974-02-17 13:01:36',345,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (18,217,1,49,1),
(17,217,1,2,1),
(5,217,1,47,1),
(4,217,1,19,1),
(1,217,1,31,1),
(10,217,1,8,1),
(16,217,1,4,1),
(6,217,1,2,1),
(8,217,1,21,1),
(7,217,1,48,1),
(15,217,1,33,1),
(2,217,1,46,1),
(11,217,1,35,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(218,44,'2012-08-23 04:49:32',69,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (17,218,1,20,1),
(7,218,1,6,1),
(12,218,1,43,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(219,44,'1989-09-21 12:36:09',461,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (2,219,1,12,1),
(8,219,1,27,1),
(16,219,1,37,1),
(11,219,1,6,1),
(3,219,1,40,1),
(5,219,1,46,1),
(14,219,1,29,1),
(1,219,1,25,1),
(10,219,1,26,1),
(18,219,1,36,1),
(15,219,1,48,1),
(6,219,1,33,1),
(4,219,1,49,1),
(13,219,1,22,1),
(12,219,1,25,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(220,44,'1996-07-05 23:53:37',420,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (10,220,1,33,1),
(17,220,1,6,1),
(11,220,1,21,1),
(15,220,1,26,1),
(9,220,1,25,1),
(8,220,1,35,1),
(2,220,1,20,1),
(12,220,1,25,1),
(4,220,1,47,1),
(5,220,1,44,1),
(13,220,1,31,1),
(18,220,1,28,1),
(16,220,1,8,1),
(1,220,1,48,1),
(14,220,1,23,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(221,45,'1987-05-11 00:49:37',124,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (13,221,1,2,1),
(7,221,1,38,1),
(11,221,1,39,1),
(4,221,1,45,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(222,45,'2009-10-01 22:44:31',285,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (8,222,1,16,1),
(4,222,1,28,1),
(18,222,1,37,1),
(13,222,1,27,1),
(3,222,1,11,1),
(1,222,1,36,1),
(16,222,1,9,1),
(12,222,1,39,1),
(11,222,1,39,1),
(5,222,1,43,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(223,45,'1985-01-21 02:04:21',155,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (16,223,1,42,1),
(8,223,1,1,1),
(14,223,1,5,1),
(2,223,1,18,1),
(3,223,1,15,1),
(4,223,1,23,1),
(1,223,1,36,1),
(7,223,1,15,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(224,45,'1987-10-07 22:50:43',363,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (13,224,1,33,1),
(10,224,1,37,1),
(18,224,1,4,1),
(3,224,1,25,1),
(14,224,1,36,1),
(5,224,1,35,1),
(6,224,1,35,1),
(9,224,1,2,1),
(12,224,1,17,1),
(15,224,1,25,1),
(11,224,1,45,1),
(17,224,1,16,1),
(4,224,1,34,1),
(7,224,1,19,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(225,45,'2012-07-17 14:34:53',288,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (1,225,1,32,1),
(15,225,1,10,1),
(17,225,1,1,1),
(5,225,1,17,1),
(2,225,1,9,1),
(4,225,1,50,1),
(11,225,1,48,1),
(8,225,1,7,1),
(7,225,1,36,1),
(3,225,1,17,1),
(12,225,1,11,1),
(16,225,1,3,1),
(14,225,1,47,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(226,46,'1988-11-23 02:42:15',169,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (8,226,1,32,1),
(15,226,1,16,1),
(6,226,1,42,1),
(14,226,1,37,1),
(16,226,1,42,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(227,46,'2004-06-15 20:17:20',373,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (13,227,1,27,1),
(8,227,1,12,1),
(10,227,1,3,1),
(2,227,1,28,1),
(9,227,1,42,1),
(18,227,1,49,1),
(14,227,1,38,1),
(11,227,1,3,1),
(1,227,1,10,1),
(15,227,1,21,1),
(16,227,1,28,1),
(6,227,1,32,1),
(4,227,1,44,1),
(17,227,1,22,1),
(7,227,1,14,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(228,46,'2004-08-05 09:53:22',216,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (1,228,1,45,1),
(17,228,1,1,1),
(7,228,1,41,1),
(13,228,1,34,1),
(11,228,1,36,1),
(10,228,1,10,1),
(3,228,1,49,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(229,46,'1981-10-11 01:16:15',290,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (14,229,1,16,1),
(18,229,1,22,1),
(4,229,1,1,1),
(17,229,1,28,1),
(15,229,1,35,1),
(16,229,1,20,1),
(1,229,1,48,1),
(2,229,1,49,1),
(8,229,1,27,1),
(7,229,1,44,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(230,46,'1976-07-31 05:21:18',179,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (1,230,1,29,1),
(9,230,1,32,1),
(14,230,1,34,1),
(11,230,1,36,1),
(8,230,1,10,1),
(2,230,1,38,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(231,47,'1978-11-05 22:06:16',177,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (12,231,1,41,1),
(4,231,1,22,1),
(5,231,1,40,1),
(11,231,1,5,1),
(7,231,1,36,1),
(15,231,1,11,1),
(17,231,1,22,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(232,47,'1980-08-07 11:53:33',182,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (3,232,1,24,1),
(8,232,1,47,1),
(7,232,1,43,1),
(15,232,1,28,1),
(13,232,1,29,1),
(17,232,1,8,1),
(11,232,1,3,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(233,47,'1985-06-01 20:20:57',192,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (18,233,1,30,1),
(13,233,1,17,1),
(11,233,1,47,1),
(4,233,1,48,1),
(1,233,1,26,1),
(14,233,1,24,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(234,47,'1980-09-27 15:46:39',259,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (13,234,1,14,1),
(2,234,1,27,1),
(12,234,1,47,1),
(17,234,1,15,1),
(8,234,1,17,1),
(6,234,1,14,1),
(3,234,1,18,1),
(15,234,1,42,1),
(16,234,1,18,1),
(11,234,1,47,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(235,47,'2008-10-13 20:31:03',134,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (2,235,1,21,1),
(8,235,1,19,1),
(5,235,1,49,1),
(6,235,1,4,1),
(7,235,1,41,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(236,48,'1970-08-22 01:39:40',309,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (18,236,1,8,1),
(14,236,1,45,1),
(3,236,1,29,1),
(13,236,1,5,1),
(5,236,1,27,1),
(9,236,1,17,1),
(12,236,1,22,1),
(8,236,1,36,1),
(7,236,1,4,1),
(15,236,1,29,1),
(6,236,1,36,1),
(11,236,1,43,1),
(16,236,1,8,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(237,48,'1984-05-01 08:38:22',320,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (10,237,1,12,1),
(12,237,1,37,1),
(17,237,1,41,1),
(16,237,1,26,1),
(15,237,1,42,1),
(7,237,1,12,1),
(14,237,1,35,1),
(11,237,1,28,1),
(6,237,1,24,1),
(2,237,1,21,1),
(8,237,1,33,1),
(5,237,1,9,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(238,48,'1982-03-24 07:03:07',300,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (6,238,1,49,1),
(4,238,1,3,1),
(2,238,1,13,1),
(11,238,1,21,1),
(16,238,1,35,1),
(5,238,1,31,1),
(12,238,1,17,1),
(9,238,1,28,1),
(10,238,1,30,1),
(7,238,1,30,1),
(13,238,1,15,1),
(18,238,1,28,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(239,48,'2013-05-03 17:41:45',285,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (6,239,1,9,1),
(7,239,1,26,1),
(15,239,1,47,1),
(12,239,1,37,1),
(1,239,1,18,1),
(11,239,1,27,1),
(3,239,1,4,1),
(16,239,1,16,1),
(10,239,1,50,1),
(17,239,1,2,1),
(2,239,1,49,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(240,48,'2002-09-27 11:39:59',129,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (7,240,1,43,1),
(1,240,1,13,1),
(13,240,1,6,1),
(9,240,1,23,1),
(10,240,1,44,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(241,49,'1996-01-03 10:39:49',383,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (2,241,1,22,1),
(12,241,1,46,1),
(15,241,1,20,1),
(9,241,1,35,1),
(13,241,1,21,1),
(6,241,1,11,1),
(4,241,1,47,1),
(17,241,1,16,1),
(1,241,1,29,1),
(18,241,1,12,1),
(8,241,1,23,1),
(7,241,1,14,1),
(3,241,1,38,1),
(10,241,1,41,1),
(16,241,1,8,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(242,49,'2011-11-22 04:16:20',292,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (14,242,1,47,1),
(4,242,1,19,1),
(13,242,1,18,1),
(2,242,1,35,1),
(15,242,1,45,1),
(8,242,1,1,1),
(18,242,1,45,1),
(5,242,1,19,1),
(16,242,1,13,1),
(3,242,1,6,1),
(12,242,1,44,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(243,49,'1999-02-25 16:04:01',333,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (8,243,1,27,1),
(11,243,1,35,1),
(4,243,1,23,1),
(16,243,1,16,1),
(6,243,1,9,1),
(10,243,1,12,1),
(9,243,1,39,1),
(1,243,1,27,1),
(18,243,1,24,1),
(5,243,1,37,1),
(12,243,1,34,1),
(13,243,1,50,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(244,49,'2005-05-29 17:05:41',133,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (11,244,1,22,1),
(15,244,1,16,1),
(12,244,1,9,1),
(4,244,1,30,1),
(13,244,1,23,1),
(18,244,1,16,1),
(9,244,1,3,1),
(5,244,1,14,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(245,49,'1977-02-15 01:18:21',67,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (18,245,1,29,1),
(17,245,1,38,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(246,50,'1975-05-03 15:27:14',52,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (6,246,1,10,1),
(14,246,1,42,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(247,50,'2014-11-21 03:03:58',363,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (8,247,1,1,1),
(12,247,1,42,1),
(6,247,1,38,1),
(2,247,1,40,1),
(18,247,1,4,1),
(13,247,1,29,1),
(5,247,1,25,1),
(4,247,1,21,1),
(17,247,1,35,1),
(14,247,1,31,1),
(7,247,1,30,1),
(3,247,1,30,1),
(15,247,1,37,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(248,50,'1973-04-26 16:30:12',190,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (15,248,1,4,1),
(18,248,1,25,1),
(16,248,1,19,1),
(2,248,1,13,1),
(7,248,1,19,1),
(10,248,1,5,1),
(1,248,1,32,1),
(5,248,1,5,1),
(12,248,1,46,1),
(3,248,1,22,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(249,50,'1994-05-23 13:38:48',347,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (15,249,1,34,1),
(3,249,1,16,1),
(10,249,1,7,1),
(8,249,1,3,1),
(17,249,1,19,1),
(13,249,1,29,1),
(9,249,1,8,1),
(14,249,1,35,1),
(5,249,1,44,1),
(2,249,1,27,1),
(7,249,1,36,1),
(11,249,1,30,1),
(1,249,1,6,1),
(4,249,1,17,1),
(6,249,1,36,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(250,50,'1988-02-25 21:33:06',185,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (17,250,1,25,1),
(12,250,1,37,1),
(2,250,1,10,1),
(8,250,1,43,1),
(1,250,1,29,1),
(16,250,1,41,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(251,51,'1991-02-15 08:04:52',319,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (8,251,1,24,1),
(2,251,1,35,1),
(14,251,1,3,1),
(15,251,1,33,1),
(1,251,1,19,1),
(7,251,1,42,1),
(11,251,1,37,1),
(6,251,1,24,1),
(16,251,1,29,1),
(4,251,1,2,1),
(12,251,1,31,1),
(3,251,1,16,1),
(9,251,1,12,1),
(13,251,1,10,1),
(17,251,1,2,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(252,51,'2016-04-11 20:23:11',79,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (15,252,1,36,1),
(1,252,1,43,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(253,51,'1991-12-18 03:40:42',229,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (10,253,1,44,1),
(2,253,1,8,1),
(12,253,1,31,1),
(17,253,1,11,1),
(7,253,1,18,1),
(18,253,1,20,1),
(5,253,1,7,1),
(8,253,1,6,1),
(9,253,1,40,1),
(15,253,1,33,1),
(1,253,1,11,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(254,51,'2003-02-18 15:29:17',75,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (13,254,1,48,1),
(16,254,1,27,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(255,51,'1975-04-12 13:55:16',256,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (10,255,1,49,1),
(18,255,1,21,1),
(4,255,1,47,1),
(15,255,1,34,1),
(12,255,1,42,1),
(8,255,1,11,1),
(9,255,1,28,1),
(6,255,1,24,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(256,52,'1980-08-24 13:59:54',100,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (11,256,1,44,1),
(2,256,1,3,1),
(3,256,1,17,1),
(16,256,1,29,1),
(8,256,1,4,1),
(4,256,1,3,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(257,52,'1996-02-10 20:26:27',186,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (3,257,1,40,1),
(11,257,1,26,1),
(2,257,1,19,1),
(4,257,1,50,1),
(18,257,1,49,1),
(7,257,1,2,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(258,52,'2003-10-01 17:05:28',88,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (17,258,1,6,1),
(13,258,1,20,1),
(9,258,1,26,1),
(6,258,1,36,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(259,52,'2015-12-24 20:20:11',404,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (6,259,1,45,1),
(10,259,1,42,1),
(13,259,1,40,1),
(8,259,1,2,1),
(11,259,1,37,1),
(7,259,1,46,1),
(4,259,1,18,1),
(12,259,1,46,1),
(5,259,1,15,1),
(18,259,1,24,1),
(15,259,1,19,1),
(17,259,1,38,1),
(2,259,1,28,1),
(3,259,1,4,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(260,52,'1975-05-19 05:07:54',312,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (3,260,1,18,1),
(8,260,1,7,1),
(12,260,1,46,1),
(13,260,1,46,1),
(11,260,1,11,1),
(6,260,1,32,1),
(9,260,1,7,1),
(16,260,1,45,1),
(5,260,1,19,1),
(15,260,1,6,1),
(10,260,1,16,1),
(7,260,1,37,1),
(17,260,1,9,1),
(18,260,1,13,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(261,53,'1984-03-07 11:49:03',340,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (16,261,1,49,1),
(18,261,1,36,1),
(10,261,1,15,1),
(14,261,1,48,1),
(4,261,1,20,1),
(11,261,1,13,1),
(8,261,1,47,1),
(5,261,1,28,1),
(6,261,1,49,1),
(15,261,1,23,1),
(3,261,1,12,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(262,53,'1989-04-30 06:49:06',217,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (16,262,1,14,1),
(6,262,1,40,1),
(15,262,1,4,1),
(13,262,1,19,1),
(12,262,1,15,1),
(10,262,1,7,1),
(9,262,1,32,1),
(1,262,1,27,1),
(8,262,1,37,1),
(14,262,1,22,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(263,53,'2012-07-31 08:20:55',74,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (6,263,1,17,1),
(14,263,1,40,1),
(1,263,1,17,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(264,53,'2015-02-24 22:54:43',209,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (18,264,1,21,1),
(14,264,1,50,1),
(2,264,1,25,1),
(5,264,1,16,1),
(1,264,1,10,1),
(4,264,1,24,1),
(13,264,1,21,1),
(12,264,1,20,1),
(8,264,1,5,1),
(11,264,1,17,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(265,53,'1975-09-10 17:57:14',94,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (4,265,1,44,1),
(5,265,1,17,1),
(7,265,1,33,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(266,54,'1973-06-07 05:03:19',322,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (6,266,1,11,1),
(12,266,1,10,1),
(8,266,1,4,1),
(13,266,1,23,1),
(18,266,1,1,1),
(10,266,1,28,1),
(11,266,1,18,1),
(7,266,1,48,1),
(14,266,1,46,1),
(17,266,1,34,1),
(2,266,1,20,1),
(5,266,1,41,1),
(15,266,1,22,1),
(1,266,1,16,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(267,54,'1985-06-14 07:03:24',201,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (17,267,1,32,1),
(9,267,1,35,1),
(8,267,1,34,1),
(13,267,1,50,1),
(3,267,1,16,1),
(18,267,1,6,1),
(15,267,1,28,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(268,54,'1994-10-10 04:02:06',326,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (9,268,1,24,1),
(6,268,1,33,1),
(17,268,1,23,1),
(12,268,1,38,1),
(5,268,1,1,1),
(7,268,1,28,1),
(8,268,1,12,1),
(18,268,1,43,1),
(16,268,1,17,1),
(11,268,1,40,1),
(3,268,1,22,1),
(4,268,1,2,1),
(2,268,1,43,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(269,54,'2009-08-12 22:48:35',113,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (11,269,1,45,1),
(6,269,1,12,1),
(12,269,1,32,1),
(17,269,1,24,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(270,54,'1995-06-30 17:17:32',40,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (11,270,1,32,1),
(8,270,1,8,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(271,55,'2018-06-01 17:38:57',384,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (2,271,1,2,1),
(4,271,1,6,1),
(5,271,1,9,1),
(11,271,1,42,1),
(14,271,1,47,1),
(16,271,1,4,1),
(7,271,1,25,1),
(18,271,1,23,1),
(15,271,1,48,1),
(3,271,1,19,1),
(13,271,1,22,1),
(1,271,1,43,1),
(6,271,1,36,1),
(9,271,1,25,1),
(10,271,1,33,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(272,55,'1980-03-15 21:41:02',198,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (2,272,1,6,1),
(11,272,1,50,1),
(13,272,1,23,1),
(14,272,1,12,1),
(18,272,1,11,1),
(3,272,1,14,1),
(1,272,1,37,1),
(15,272,1,45,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(273,55,'2014-11-04 03:39:21',28,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (12,273,1,27,1),
(14,273,1,1,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(274,55,'1981-12-10 23:50:32',152,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (10,274,1,9,1),
(5,274,1,19,1),
(18,274,1,37,1),
(11,274,1,22,1),
(17,274,1,29,1),
(15,274,1,30,1),
(6,274,1,6,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(275,55,'1975-01-15 04:22:03',160,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (12,275,1,47,1),
(8,275,1,33,1),
(10,275,1,4,1),
(5,275,1,50,1),
(9,275,1,26,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(276,56,'2016-04-12 05:49:47',63,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (13,276,1,15,1),
(15,276,1,31,1),
(9,276,1,5,1),
(3,276,1,12,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(277,56,'1995-02-07 13:04:28',205,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (15,277,1,25,1),
(14,277,1,31,1),
(11,277,1,14,1),
(2,277,1,18,1),
(4,277,1,6,1),
(8,277,1,12,1),
(9,277,1,8,1),
(7,277,1,16,1),
(5,277,1,22,1),
(18,277,1,31,1),
(13,277,1,22,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(278,56,'2008-11-22 18:35:55',150,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (11,278,1,8,1),
(3,278,1,6,1),
(17,278,1,24,1),
(9,278,1,13,1),
(15,278,1,38,1),
(12,278,1,15,1),
(6,278,1,24,1),
(10,278,1,22,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(279,56,'1985-12-24 00:19:00',88,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (15,279,1,21,1),
(3,279,1,15,1),
(6,279,1,39,1),
(2,279,1,13,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(280,56,'2000-12-16 11:52:53',30,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (4,280,1,8,1),
(16,280,1,8,1),
(9,280,1,14,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(281,57,'1983-08-11 16:37:28',354,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (7,281,1,46,1),
(9,281,1,20,1),
(13,281,1,39,1),
(4,281,1,9,1),
(8,281,1,37,1),
(15,281,1,15,1),
(12,281,1,42,1),
(3,281,1,46,1),
(5,281,1,1,1),
(11,281,1,25,1),
(1,281,1,36,1),
(6,281,1,38,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(282,57,'2012-06-06 06:34:04',499,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (16,282,1,1,1),
(8,282,1,37,1),
(10,282,1,47,1),
(17,282,1,47,1),
(11,282,1,46,1),
(14,282,1,44,1),
(13,282,1,35,1),
(4,282,1,21,1),
(15,282,1,36,1),
(12,282,1,49,1),
(1,282,1,36,1),
(3,282,1,43,1),
(5,282,1,39,1),
(9,282,1,18,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(283,57,'2009-04-27 21:41:33',194,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (18,283,1,41,1),
(5,283,1,11,1),
(9,283,1,48,1),
(8,283,1,40,1),
(6,283,1,9,1),
(1,283,1,4,1),
(17,283,1,4,1),
(14,283,1,13,1),
(16,283,1,24,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(284,57,'1997-01-12 00:47:19',58,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (15,284,1,9,1),
(7,284,1,15,1),
(3,284,1,5,1),
(13,284,1,29,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(285,57,'1996-05-14 17:53:29',206,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (14,285,1,18,1),
(17,285,1,12,1),
(6,285,1,42,1),
(9,285,1,16,1),
(2,285,1,27,1),
(12,285,1,34,1),
(10,285,1,38,1),
(4,285,1,6,1),
(15,285,1,13,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(286,58,'2003-02-20 06:46:53',109,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (2,286,1,33,1),
(4,286,1,24,1),
(6,286,1,19,1),
(12,286,1,1,1),
(16,286,1,32,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(287,58,'1996-07-27 20:00:56',314,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (10,287,1,10,1),
(17,287,1,16,1),
(15,287,1,4,1),
(2,287,1,37,1),
(12,287,1,44,1),
(4,287,1,21,1),
(5,287,1,46,1),
(14,287,1,29,1),
(13,287,1,31,1),
(16,287,1,30,1),
(8,287,1,46,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(288,58,'2009-02-24 13:00:24',311,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (15,288,1,36,1),
(16,288,1,17,1),
(14,288,1,5,1),
(9,288,1,40,1),
(13,288,1,23,1),
(4,288,1,48,1),
(11,288,1,5,1),
(7,288,1,10,1),
(18,288,1,12,1),
(3,288,1,38,1),
(6,288,1,13,1),
(1,288,1,17,1),
(5,288,1,47,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(289,58,'1974-08-12 16:34:36',95,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (4,289,1,14,1),
(16,289,1,31,1),
(18,289,1,50,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(290,58,'2002-09-03 19:29:58',92,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (9,290,1,37,1),
(12,290,1,26,1),
(17,290,1,2,1),
(16,290,1,27,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(291,59,'2008-06-04 17:48:36',201,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (6,291,1,28,1),
(16,291,1,16,1),
(1,291,1,38,1),
(15,291,1,36,1),
(7,291,1,48,1),
(8,291,1,19,1),
(18,291,1,10,1),
(12,291,1,6,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(292,59,'2006-11-22 06:50:15',207,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (16,292,1,32,1),
(14,292,1,35,1),
(13,292,1,32,1),
(11,292,1,18,1),
(8,292,1,41,1),
(9,292,1,7,1),
(2,292,1,27,1),
(7,292,1,15,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(293,59,'1990-06-01 20:12:05',133,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (17,293,1,16,1),
(14,293,1,43,1),
(11,293,1,10,1),
(8,293,1,22,1),
(10,293,1,25,1),
(9,293,1,17,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(294,59,'1981-06-01 22:33:54',449,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (6,294,1,33,1),
(16,294,1,42,1),
(3,294,1,46,1),
(12,294,1,39,1),
(11,294,1,33,1),
(14,294,1,36,1),
(18,294,1,40,1),
(8,294,1,38,1),
(13,294,1,44,1),
(4,294,1,11,1),
(15,294,1,19,1),
(7,294,1,39,1),
(5,294,1,29,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(295,59,'2000-12-12 03:34:43',19,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (16,295,1,12,1),
(5,295,1,7,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(296,60,'2000-07-18 21:08:42',276,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (4,296,1,8,1),
(16,296,1,31,1),
(17,296,1,32,1),
(11,296,1,6,1),
(9,296,1,5,1),
(6,296,1,33,1),
(10,296,1,47,1),
(14,296,1,16,1),
(8,296,1,44,1),
(13,296,1,15,1),
(18,296,1,19,1),
(7,296,1,20,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(297,60,'2007-09-02 00:47:26',382,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (11,297,1,38,1),
(1,297,1,21,1),
(16,297,1,37,1),
(2,297,1,29,1),
(15,297,1,6,1),
(6,297,1,43,1),
(3,297,1,39,1),
(7,297,1,33,1),
(13,297,1,26,1),
(9,297,1,19,1),
(14,297,1,46,1),
(10,297,1,13,1),
(8,297,1,32,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(298,60,'1991-01-14 23:35:36',120,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (14,298,1,42,1),
(15,298,1,45,1),
(3,298,1,33,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(299,60,'1992-04-01 00:36:33',129,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (14,299,1,22,1),
(7,299,1,47,1),
(18,299,1,47,1),
(9,299,1,13,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(300,60,'2009-06-09 12:32:05',193,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (18,300,1,28,1),
(12,300,1,34,1),
(17,300,1,28,1),
(9,300,1,37,1),
(14,300,1,1,1),
(11,300,1,35,1),
(15,300,1,30,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(301,61,'2013-11-09 01:39:06',96,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (4,301,1,46,1),
(12,301,1,50,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(302,61,'1995-10-03 11:19:41',383,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (10,302,1,29,1),
(13,302,1,49,1),
(1,302,1,50,1),
(3,302,1,2,1),
(8,302,1,33,1),
(7,302,1,41,1),
(4,302,1,27,1),
(12,302,1,22,1),
(16,302,1,10,1),
(11,302,1,37,1),
(2,302,1,4,1),
(9,302,1,49,1),
(17,302,1,22,1),
(15,302,1,8,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(303,61,'1970-04-24 14:25:10',161,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (8,303,1,9,1),
(1,303,1,32,1),
(14,303,1,33,1),
(9,303,1,14,1),
(5,303,1,3,1),
(11,303,1,28,1),
(10,303,1,18,1),
(6,303,1,24,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(304,61,'2013-06-30 12:56:59',118,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (13,304,1,6,1),
(5,304,1,6,1),
(17,304,1,34,1),
(4,304,1,27,1),
(15,304,1,15,1),
(7,304,1,30,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(305,61,'1999-01-12 02:56:24',148,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (12,305,1,39,1),
(1,305,1,17,1),
(4,305,1,43,1),
(8,305,1,49,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(306,62,'1995-07-20 10:12:20',375,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (3,306,1,26,1),
(5,306,1,31,1),
(11,306,1,21,1),
(10,306,1,30,1),
(2,306,1,35,1),
(18,306,1,19,1),
(9,306,1,2,1),
(8,306,1,46,1),
(4,306,1,18,1),
(14,306,1,30,1),
(16,306,1,34,1),
(15,306,1,21,1),
(1,306,1,14,1),
(12,306,1,2,1),
(17,306,1,46,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(307,62,'1977-12-21 04:59:16',315,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (7,307,1,2,1),
(18,307,1,33,1),
(8,307,1,22,1),
(13,307,1,1,1),
(9,307,1,19,1),
(5,307,1,36,1),
(4,307,1,22,1),
(1,307,1,10,1),
(3,307,1,35,1),
(11,307,1,14,1),
(2,307,1,26,1),
(16,307,1,27,1),
(12,307,1,49,1),
(15,307,1,6,1),
(10,307,1,13,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(308,62,'1997-07-26 20:13:35',229,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (6,308,1,35,1),
(8,308,1,18,1),
(11,308,1,24,1),
(15,308,1,5,1),
(7,308,1,30,1),
(17,308,1,12,1),
(5,308,1,44,1),
(10,308,1,31,1),
(3,308,1,1,1),
(16,308,1,29,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(309,62,'1998-04-10 05:15:11',253,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (14,309,1,22,1),
(16,309,1,9,1),
(9,309,1,50,1),
(8,309,1,17,1),
(2,309,1,32,1),
(3,309,1,41,1),
(11,309,1,24,1),
(1,309,1,18,1),
(10,309,1,35,1),
(13,309,1,5,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(310,62,'1974-08-13 10:57:07',268,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (6,310,1,41,1),
(5,310,1,49,1),
(11,310,1,36,1),
(3,310,1,1,1),
(10,310,1,44,1),
(8,310,1,42,1),
(17,310,1,26,1),
(2,310,1,29,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(311,63,'1970-04-27 22:33:52',136,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (12,311,1,49,1),
(6,311,1,10,1),
(13,311,1,47,1),
(11,311,1,30,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(312,63,'1976-12-29 19:48:56',488,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (2,312,1,31,1),
(9,312,1,46,1),
(15,312,1,40,1),
(1,312,1,34,1),
(18,312,1,17,1),
(3,312,1,27,1),
(16,312,1,23,1),
(12,312,1,7,1),
(7,312,1,16,1),
(11,312,1,40,1),
(8,312,1,47,1),
(4,312,1,41,1),
(10,312,1,36,1),
(14,312,1,50,1),
(5,312,1,33,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(313,63,'1992-04-17 06:07:26',428,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (15,313,1,39,1),
(18,313,1,32,1),
(4,313,1,39,1),
(11,313,1,39,1),
(6,313,1,15,1),
(7,313,1,27,1),
(8,313,1,27,1),
(12,313,1,13,1),
(1,313,1,39,1),
(5,313,1,37,1),
(10,313,1,18,1),
(16,313,1,46,1),
(3,313,1,13,1),
(13,313,1,17,1),
(9,313,1,27,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(314,63,'1984-06-11 00:35:14',99,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (4,314,1,20,1),
(5,314,1,10,1),
(15,314,1,41,1),
(13,314,1,28,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(315,63,'2002-11-07 12:35:10',507,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (8,315,1,24,1),
(17,315,1,46,1),
(13,315,1,35,1),
(12,315,1,46,1),
(10,315,1,21,1),
(9,315,1,48,1),
(5,315,1,14,1),
(18,315,1,48,1),
(16,315,1,31,1),
(7,315,1,46,1),
(11,315,1,43,1),
(3,315,1,5,1),
(1,315,1,35,1),
(14,315,1,46,1),
(6,315,1,19,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(316,64,'1992-07-27 00:54:03',126,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (10,316,1,9,1),
(14,316,1,39,1),
(7,316,1,9,1),
(5,316,1,32,1),
(12,316,1,37,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(317,64,'2015-12-22 08:41:36',351,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (2,317,1,4,1),
(6,317,1,20,1),
(11,317,1,8,1),
(16,317,1,15,1),
(1,317,1,39,1),
(5,317,1,42,1),
(7,317,1,18,1),
(4,317,1,32,1),
(15,317,1,10,1),
(17,317,1,13,1),
(12,317,1,12,1),
(3,317,1,49,1),
(9,317,1,41,1),
(18,317,1,48,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(318,64,'2002-12-03 11:35:22',88,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (9,318,1,25,1),
(10,318,1,9,1),
(8,318,1,10,1),
(1,318,1,26,1),
(15,318,1,18,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(319,64,'1979-10-02 16:54:39',294,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (5,319,1,42,1),
(11,319,1,1,1),
(6,319,1,23,1),
(12,319,1,45,1),
(8,319,1,21,1),
(18,319,1,18,1),
(2,319,1,14,1),
(17,319,1,5,1),
(13,319,1,44,1),
(7,319,1,41,1),
(15,319,1,9,1),
(4,319,1,11,1),
(1,319,1,20,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(320,64,'1973-07-05 23:45:24',308,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (4,320,1,22,1),
(12,320,1,29,1),
(5,320,1,18,1),
(16,320,1,49,1),
(15,320,1,3,1),
(18,320,1,4,1),
(1,320,1,18,1),
(6,320,1,42,1),
(14,320,1,49,1),
(10,320,1,35,1),
(9,320,1,39,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(321,65,'1973-09-06 08:34:46',92,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (9,321,1,12,1),
(4,321,1,24,1),
(18,321,1,48,1),
(17,321,1,8,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(322,65,'1983-02-20 04:31:38',381,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (14,322,1,43,1),
(18,322,1,41,1),
(13,322,1,21,1),
(4,322,1,35,1),
(16,322,1,13,1),
(3,322,1,18,1),
(10,322,1,16,1),
(2,322,1,46,1),
(8,322,1,49,1),
(5,322,1,40,1),
(11,322,1,46,1),
(12,322,1,13,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(323,65,'1980-06-29 01:30:58',163,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (3,323,1,36,1),
(17,323,1,38,1),
(1,323,1,48,1),
(9,323,1,23,1),
(6,323,1,18,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(324,65,'1991-09-11 23:12:05',346,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (12,324,1,9,1),
(3,324,1,18,1),
(13,324,1,21,1),
(15,324,1,49,1),
(18,324,1,34,1),
(7,324,1,35,1),
(6,324,1,12,1),
(5,324,1,11,1),
(2,324,1,15,1),
(10,324,1,40,1),
(8,324,1,2,1),
(1,324,1,22,1),
(16,324,1,39,1),
(17,324,1,39,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(325,65,'1995-09-06 01:24:11',328,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (12,325,1,15,1),
(15,325,1,21,1),
(10,325,1,28,1),
(5,325,1,2,1),
(2,325,1,42,1),
(4,325,1,2,1),
(16,325,1,23,1),
(1,325,1,39,1),
(6,325,1,38,1),
(8,325,1,48,1),
(13,325,1,10,1),
(17,325,1,15,1),
(9,325,1,17,1),
(7,325,1,28,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(326,66,'1991-06-18 05:11:07',42,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (14,326,1,19,1),
(8,326,1,23,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(327,66,'2005-02-27 10:08:26',133,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (7,327,1,9,1),
(18,327,1,2,1),
(13,327,1,39,1),
(17,327,1,23,1),
(5,327,1,40,1),
(3,327,1,2,1),
(10,327,1,17,1),
(6,327,1,1,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(328,66,'2001-11-16 09:10:22',332,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (5,328,1,16,1),
(10,328,1,20,1),
(3,328,1,21,1),
(18,328,1,45,1),
(11,328,1,46,1),
(9,328,1,38,1),
(13,328,1,33,1),
(15,328,1,1,1),
(7,328,1,44,1),
(12,328,1,6,1),
(2,328,1,18,1),
(16,328,1,44,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(329,66,'1977-12-05 17:17:05',287,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (15,329,1,39,1),
(8,329,1,49,1),
(10,329,1,10,1),
(12,329,1,39,1),
(18,329,1,15,1),
(16,329,1,8,1),
(6,329,1,4,1),
(3,329,1,17,1),
(14,329,1,44,1),
(9,329,1,19,1),
(1,329,1,18,1),
(5,329,1,25,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(330,66,'1994-02-02 10:02:47',217,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (16,330,1,22,1),
(12,330,1,40,1),
(10,330,1,10,1),
(5,330,1,23,1),
(15,330,1,12,1),
(6,330,1,42,1),
(17,330,1,18,1),
(11,330,1,9,1),
(1,330,1,5,1),
(8,330,1,36,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(331,67,'1986-06-11 10:28:12',364,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (10,331,1,33,1),
(8,331,1,1,1),
(4,331,1,31,1),
(7,331,1,25,1),
(16,331,1,21,1),
(15,331,1,48,1),
(14,331,1,26,1),
(6,331,1,12,1),
(18,331,1,13,1),
(12,331,1,34,1),
(5,331,1,33,1),
(17,331,1,48,1),
(3,331,1,30,1),
(2,331,1,9,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(332,67,'1972-05-23 20:09:24',162,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (2,332,1,11,1),
(4,332,1,49,1),
(18,332,1,35,1),
(11,332,1,3,1),
(16,332,1,39,1),
(3,332,1,25,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(333,67,'2014-11-19 10:29:23',169,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (3,333,1,8,1),
(4,333,1,27,1),
(5,333,1,22,1),
(12,333,1,38,1),
(2,333,1,4,1),
(11,333,1,28,1),
(7,333,1,42,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(334,67,'2004-10-12 05:43:10',64,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (10,334,1,41,1),
(3,334,1,5,1),
(18,334,1,18,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(335,67,'2009-08-07 10:19:01',74,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (8,335,1,38,1),
(13,335,1,36,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(336,68,'1978-05-27 20:37:57',48,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (13,336,1,8,1),
(17,336,1,11,1),
(4,336,1,29,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(337,68,'2006-08-02 16:59:27',214,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (5,337,1,23,1),
(1,337,1,5,1),
(10,337,1,12,1),
(6,337,1,48,1),
(3,337,1,30,1),
(11,337,1,27,1),
(16,337,1,7,1),
(4,337,1,31,1),
(7,337,1,10,1),
(17,337,1,21,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(338,68,'2004-01-24 11:42:20',136,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (17,338,1,9,1),
(18,338,1,37,1),
(2,338,1,4,1),
(8,338,1,46,1),
(11,338,1,40,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(339,68,'1994-08-06 04:41:07',106,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (1,339,1,31,1),
(13,339,1,37,1),
(5,339,1,38,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(340,68,'2004-03-12 20:09:32',141,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (5,340,1,7,1),
(10,340,1,43,1),
(13,340,1,29,1),
(14,340,1,2,1),
(11,340,1,36,1),
(9,340,1,24,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(341,69,'2009-11-25 03:12:03',94,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (7,341,1,3,1),
(11,341,1,31,1),
(17,341,1,13,1),
(9,341,1,5,1),
(4,341,1,42,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(342,69,'1996-05-08 22:22:35',150,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (12,342,1,50,1),
(1,342,1,4,1),
(13,342,1,24,1),
(14,342,1,35,1),
(15,342,1,15,1),
(18,342,1,9,1),
(8,342,1,13,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(343,69,'1996-08-23 00:42:56',386,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (4,343,1,18,1),
(12,343,1,35,1),
(9,343,1,28,1),
(13,343,1,37,1),
(1,343,1,41,1),
(17,343,1,50,1),
(14,343,1,2,1),
(10,343,1,22,1),
(7,343,1,11,1),
(3,343,1,38,1),
(16,343,1,9,1),
(8,343,1,45,1),
(5,343,1,8,1),
(11,343,1,41,1),
(2,343,1,1,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(344,69,'1970-11-11 15:43:05',149,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (10,344,1,15,1),
(14,344,1,17,1),
(4,344,1,37,1),
(5,344,1,36,1),
(1,344,1,38,1),
(18,344,1,6,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(345,69,'1992-08-10 21:52:15',232,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (4,345,1,5,1),
(18,345,1,47,1),
(6,345,1,35,1),
(11,345,1,25,1),
(1,345,1,49,1),
(9,345,1,22,1),
(13,345,1,49,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(346,70,'1973-04-27 00:25:08',143,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (10,346,1,7,1),
(2,346,1,47,1),
(17,346,1,17,1),
(15,346,1,12,1),
(14,346,1,40,1),
(6,346,1,20,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(347,70,'1992-03-29 09:36:53',218,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (1,347,1,36,1),
(8,347,1,27,1),
(4,347,1,2,1),
(12,347,1,12,1),
(15,347,1,29,1),
(10,347,1,21,1),
(18,347,1,34,1),
(14,347,1,25,1),
(6,347,1,32,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(348,70,'2005-06-11 19:20:07',289,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (2,348,1,49,1),
(6,348,1,5,1),
(13,348,1,14,1),
(14,348,1,15,1),
(8,348,1,14,1),
(3,348,1,29,1),
(7,348,1,19,1),
(1,348,1,47,1),
(4,348,1,31,1),
(5,348,1,49,1),
(17,348,1,17,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(349,70,'2002-05-21 09:32:09',106,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (16,349,1,49,1),
(5,349,1,31,1),
(14,349,1,26,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(350,70,'1990-12-20 04:05:43',371,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (18,350,1,40,1),
(3,350,1,15,1),
(16,350,1,45,1),
(9,350,1,40,1),
(15,350,1,8,1),
(14,350,1,21,1),
(4,350,1,23,1),
(5,350,1,38,1),
(10,350,1,21,1),
(1,350,1,48,1),
(13,350,1,42,1),
(2,350,1,8,1),
(11,350,1,22,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(351,71,'1991-01-20 18:27:29',208,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (6,351,1,12,1),
(11,351,1,7,1),
(16,351,1,40,1),
(4,351,1,2,1),
(2,351,1,2,1),
(5,351,1,20,1),
(18,351,1,1,1),
(14,351,1,2,1),
(10,351,1,33,1),
(7,351,1,24,1),
(1,351,1,33,1),
(3,351,1,4,1),
(8,351,1,28,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(352,71,'1982-07-03 11:39:43',239,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (11,352,1,23,1),
(18,352,1,15,1),
(7,352,1,10,1),
(1,352,1,41,1),
(17,352,1,19,1),
(12,352,1,31,1),
(16,352,1,24,1),
(5,352,1,12,1),
(14,352,1,25,1),
(3,352,1,15,1),
(2,352,1,18,1),
(10,352,1,6,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(353,71,'2006-07-14 07:22:02',292,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (4,353,1,27,1),
(9,353,1,10,1),
(16,353,1,45,1),
(18,353,1,11,1),
(13,353,1,46,1),
(2,353,1,13,1),
(6,353,1,25,1),
(1,353,1,14,1),
(11,353,1,42,1),
(17,353,1,34,1),
(8,353,1,25,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(354,71,'2015-09-28 13:18:06',368,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (4,354,1,30,1),
(17,354,1,13,1),
(1,354,1,14,1),
(7,354,1,49,1),
(18,354,1,20,1),
(3,354,1,37,1),
(2,354,1,39,1),
(15,354,1,17,1),
(9,354,1,17,1),
(5,354,1,31,1),
(16,354,1,24,1),
(12,354,1,47,1),
(14,354,1,30,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(355,71,'2013-10-04 22:28:11',64,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (16,355,1,26,1),
(7,355,1,38,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(356,72,'1976-01-18 00:10:12',289,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (11,356,1,5,1),
(4,356,1,36,1),
(8,356,1,9,1),
(6,356,1,28,1),
(3,356,1,19,1),
(16,356,1,33,1),
(7,356,1,41,1),
(18,356,1,31,1),
(5,356,1,40,1),
(10,356,1,47,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(357,72,'1997-05-04 20:54:31',276,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (16,357,1,19,1),
(1,357,1,49,1),
(8,357,1,44,1),
(13,357,1,43,1),
(10,357,1,17,1),
(9,357,1,48,1),
(4,357,1,7,1),
(15,357,1,20,1),
(6,357,1,11,1),
(11,357,1,18,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(358,72,'1973-05-28 23:06:08',331,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (10,358,1,5,1),
(5,358,1,30,1),
(12,358,1,28,1),
(1,358,1,38,1),
(18,358,1,36,1),
(14,358,1,20,1),
(15,358,1,47,1),
(13,358,1,16,1),
(11,358,1,16,1),
(17,358,1,30,1),
(8,358,1,48,1),
(4,358,1,17,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(359,72,'2005-04-10 04:12:11',265,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (17,359,1,38,1),
(15,359,1,6,1),
(18,359,1,12,1),
(6,359,1,48,1),
(1,359,1,42,1),
(13,359,1,39,1),
(12,359,1,36,1),
(10,359,1,44,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(360,72,'1999-06-07 00:07:53',170,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (12,360,1,24,1),
(15,360,1,28,1),
(17,360,1,31,1),
(10,360,1,8,1),
(14,360,1,44,1),
(7,360,1,35,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(361,73,'2004-01-21 06:42:11',300,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (10,361,1,47,1),
(9,361,1,29,1),
(16,361,1,2,1),
(4,361,1,35,1),
(15,361,1,14,1),
(11,361,1,47,1),
(5,361,1,15,1),
(6,361,1,25,1),
(7,361,1,1,1),
(12,361,1,47,1),
(3,361,1,28,1),
(13,361,1,10,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(362,73,'2011-04-21 02:17:30',347,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (4,362,1,48,1),
(12,362,1,21,1),
(10,362,1,9,1),
(2,362,1,23,1),
(17,362,1,33,1),
(16,362,1,50,1),
(7,362,1,35,1),
(14,362,1,14,1),
(1,362,1,43,1),
(8,362,1,35,1),
(3,362,1,36,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(363,73,'1974-07-23 11:53:48',257,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (10,363,1,13,1),
(15,363,1,17,1),
(14,363,1,49,1),
(4,363,1,8,1),
(11,363,1,5,1),
(5,363,1,14,1),
(13,363,1,23,1),
(17,363,1,8,1),
(3,363,1,35,1),
(9,363,1,26,1),
(8,363,1,11,1),
(16,363,1,48,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(364,73,'1980-01-15 01:10:19',12,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (14,364,1,6,1),
(6,364,1,6,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(365,73,'2006-10-31 15:47:42',380,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (16,365,1,45,1),
(2,365,1,21,1),
(17,365,1,10,1),
(9,365,1,36,1),
(11,365,1,25,1),
(7,365,1,7,1),
(6,365,1,16,1),
(14,365,1,46,1),
(8,365,1,36,1),
(18,365,1,17,1),
(13,365,1,28,1),
(4,365,1,33,1),
(10,365,1,46,1),
(1,365,1,14,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(366,74,'2001-09-20 09:51:13',400,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (14,366,1,22,1),
(2,366,1,5,1),
(13,366,1,33,1),
(6,366,1,23,1),
(10,366,1,39,1),
(9,366,1,16,1),
(1,366,1,27,1),
(3,366,1,49,1),
(11,366,1,10,1),
(17,366,1,50,1),
(5,366,1,44,1),
(4,366,1,35,1),
(16,366,1,47,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(367,74,'2008-01-01 13:23:39',254,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (8,367,1,46,1),
(5,367,1,49,1),
(16,367,1,22,1),
(12,367,1,25,1),
(17,367,1,22,1),
(6,367,1,49,1),
(11,367,1,41,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(368,74,'1972-07-23 02:31:39',370,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (13,368,1,27,1),
(15,368,1,17,1),
(17,368,1,38,1),
(7,368,1,8,1),
(1,368,1,2,1),
(12,368,1,41,1),
(18,368,1,10,1),
(11,368,1,29,1),
(2,368,1,13,1),
(5,368,1,40,1),
(9,368,1,43,1),
(6,368,1,44,1),
(8,368,1,21,1),
(3,368,1,37,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(369,74,'2013-05-31 08:32:05',49,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (15,369,1,34,1),
(2,369,1,15,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(370,74,'1991-06-20 18:37:38',188,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (10,370,1,35,1),
(11,370,1,30,1),
(3,370,1,24,1),
(7,370,1,19,1),
(16,370,1,21,1),
(17,370,1,32,1),
(5,370,1,6,1),
(4,370,1,21,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(371,75,'1989-12-02 00:46:45',215,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (8,371,1,42,1),
(17,371,1,43,1),
(3,371,1,39,1),
(1,371,1,41,1),
(18,371,1,50,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(372,75,'2010-10-02 03:24:11',153,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (17,372,1,34,1),
(14,372,1,31,1),
(8,372,1,41,1),
(2,372,1,47,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(373,75,'1978-06-29 03:22:50',286,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (18,373,1,34,1),
(7,373,1,5,1),
(2,373,1,46,1),
(10,373,1,13,1),
(15,373,1,32,1),
(6,373,1,40,1),
(12,373,1,11,1),
(4,373,1,2,1),
(16,373,1,23,1),
(17,373,1,24,1),
(1,373,1,13,1),
(13,373,1,43,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(374,75,'1981-08-13 04:05:28',149,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (6,374,1,2,1),
(14,374,1,30,1),
(12,374,1,8,1),
(17,374,1,4,1),
(7,374,1,5,1),
(9,374,1,33,1),
(5,374,1,43,1),
(11,374,1,24,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(375,75,'1977-08-06 06:16:27',247,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (11,375,1,37,1),
(16,375,1,7,1),
(10,375,1,17,1),
(18,375,1,46,1),
(15,375,1,31,1),
(8,375,1,13,1),
(6,375,1,28,1),
(13,375,1,44,1),
(5,375,1,24,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(376,76,'1996-03-09 13:55:02',152,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (1,376,1,44,1),
(18,376,1,18,1),
(6,376,1,17,1),
(2,376,1,31,1),
(15,376,1,42,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(377,76,'2006-12-08 15:43:53',286,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (2,377,1,4,1),
(5,377,1,15,1),
(7,377,1,45,1),
(12,377,1,21,1),
(10,377,1,8,1),
(3,377,1,1,1),
(16,377,1,1,1),
(4,377,1,34,1),
(9,377,1,43,1),
(17,377,1,24,1),
(6,377,1,40,1),
(15,377,1,50,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(378,76,'1978-02-14 22:09:11',377,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (17,378,1,23,1),
(2,378,1,17,1),
(13,378,1,23,1),
(18,378,1,40,1),
(14,378,1,48,1),
(9,378,1,24,1),
(5,378,1,46,1),
(1,378,1,42,1),
(3,378,1,29,1),
(4,378,1,29,1),
(10,378,1,7,1),
(6,378,1,2,1),
(7,378,1,44,1),
(8,378,1,3,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(379,76,'2018-01-07 05:50:08',431,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (12,379,1,19,1),
(16,379,1,48,1),
(7,379,1,35,1),
(3,379,1,6,1),
(4,379,1,26,1),
(2,379,1,41,1),
(18,379,1,45,1),
(1,379,1,12,1),
(10,379,1,36,1),
(17,379,1,33,1),
(5,379,1,14,1),
(9,379,1,33,1),
(13,379,1,39,1),
(11,379,1,44,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(380,76,'1994-03-22 08:55:15',269,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (13,380,1,10,1),
(4,380,1,16,1),
(11,380,1,14,1),
(14,380,1,17,1),
(9,380,1,47,1),
(1,380,1,28,1),
(8,380,1,15,1),
(18,380,1,25,1),
(7,380,1,12,1),
(10,380,1,46,1),
(17,380,1,39,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(381,77,'1979-12-31 22:21:20',219,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (9,381,1,6,1),
(12,381,1,47,1),
(2,381,1,7,1),
(17,381,1,48,1),
(7,381,1,28,1),
(10,381,1,16,1),
(14,381,1,40,1),
(13,381,1,9,1),
(11,381,1,18,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(382,77,'2013-09-08 18:20:33',369,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (18,382,1,42,1),
(10,382,1,8,1),
(9,382,1,24,1),
(1,382,1,21,1),
(13,382,1,5,1),
(15,382,1,34,1),
(6,382,1,10,1),
(7,382,1,13,1),
(12,382,1,28,1),
(4,382,1,31,1),
(16,382,1,9,1),
(17,382,1,11,1),
(5,382,1,47,1),
(11,382,1,46,1),
(8,382,1,40,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(383,77,'1986-05-15 00:29:15',323,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (10,383,1,34,1),
(1,383,1,28,1),
(12,383,1,30,1),
(9,383,1,10,1),
(11,383,1,40,1),
(6,383,1,31,1),
(13,383,1,14,1),
(17,383,1,8,1),
(18,383,1,15,1),
(8,383,1,44,1),
(3,383,1,32,1),
(14,383,1,7,1),
(4,383,1,30,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(384,77,'2013-04-18 05:40:14',19,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (8,384,1,4,1),
(7,384,1,15,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(385,77,'1997-06-10 03:04:15',361,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (4,385,1,21,1),
(16,385,1,27,1),
(18,385,1,46,1),
(5,385,1,10,1),
(15,385,1,14,1),
(1,385,1,50,1),
(12,385,1,7,1),
(17,385,1,44,1),
(3,385,1,36,1),
(13,385,1,24,1),
(7,385,1,12,1),
(6,385,1,10,1),
(14,385,1,45,1),
(9,385,1,15,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(386,78,'2018-05-27 21:14:35',63,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (6,386,1,10,1),
(3,386,1,2,1),
(8,386,1,1,1),
(2,386,1,50,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(387,78,'2006-10-08 04:36:44',56,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (7,387,1,45,1),
(11,387,1,6,1),
(15,387,1,5,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(388,78,'1994-04-14 22:20:52',258,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (18,388,1,4,1),
(4,388,1,15,1),
(14,388,1,34,1),
(6,388,1,35,1),
(7,388,1,42,1),
(1,388,1,47,1),
(11,388,1,43,1),
(16,388,1,38,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(389,78,'2011-01-30 09:19:50',102,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (12,389,1,15,1),
(15,389,1,46,1),
(8,389,1,41,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(390,78,'2015-11-15 08:44:26',250,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (15,390,1,14,1),
(8,390,1,9,1),
(9,390,1,43,1),
(14,390,1,29,1),
(7,390,1,40,1),
(13,390,1,26,1),
(3,390,1,5,1),
(11,390,1,24,1),
(12,390,1,25,1),
(4,390,1,35,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(391,79,'2006-09-08 04:11:48',84,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (1,391,1,33,1),
(6,391,1,42,1),
(5,391,1,9,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(392,79,'1983-10-27 04:59:31',199,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (4,392,1,16,1),
(5,392,1,36,1),
(6,392,1,45,1),
(3,392,1,40,1),
(7,392,1,37,1),
(11,392,1,25,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(393,79,'1974-07-08 07:05:25',151,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (17,393,1,46,1),
(13,393,1,37,1),
(16,393,1,3,1),
(8,393,1,9,1),
(6,393,1,19,1),
(12,393,1,9,1),
(4,393,1,28,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(394,79,'2017-11-27 15:59:45',304,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (8,394,1,46,1),
(18,394,1,13,1),
(16,394,1,24,1),
(12,394,1,31,1),
(3,394,1,25,1),
(9,394,1,20,1),
(17,394,1,12,1),
(6,394,1,26,1),
(4,394,1,16,1),
(15,394,1,17,1),
(14,394,1,4,1),
(5,394,1,45,1),
(13,394,1,11,1),
(7,394,1,14,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(395,79,'2013-08-01 07:00:27',66,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (6,395,1,47,1),
(10,395,1,7,1),
(9,395,1,12,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(396,80,'2001-07-27 03:40:47',179,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (9,396,1,27,1),
(14,396,1,15,1),
(13,396,1,48,1),
(5,396,1,29,1),
(10,396,1,1,1),
(11,396,1,10,1),
(16,396,1,43,1),
(18,396,1,5,1),
(1,396,1,1,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(397,80,'2018-06-05 20:17:02',98,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (18,397,1,26,1),
(9,397,1,22,1),
(7,397,1,32,1),
(13,397,1,1,1),
(1,397,1,17,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(398,80,'1978-12-15 13:17:29',164,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (2,398,1,10,1),
(8,398,1,1,1),
(9,398,1,43,1),
(6,398,1,21,1),
(10,398,1,46,1),
(5,398,1,43,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(399,80,'1980-04-08 15:03:06',103,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (8,399,1,3,1),
(16,399,1,14,1),
(3,399,1,23,1),
(12,399,1,36,1),
(13,399,1,27,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(400,80,'1982-04-25 21:08:43',26,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (13,400,1,6,1),
(2,400,1,20,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(401,81,'1983-04-07 10:07:17',75,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (13,401,1,25,1),
(10,401,1,2,1),
(5,401,1,48,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(402,81,'1998-01-06 11:12:52',143,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (8,402,1,5,1),
(11,402,1,50,1),
(13,402,1,9,1),
(17,402,1,12,1),
(10,402,1,4,1),
(18,402,1,48,1),
(9,402,1,15,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(403,81,'1970-05-19 21:25:22',358,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (1,403,1,31,1),
(7,403,1,46,1),
(17,403,1,4,1),
(12,403,1,50,1),
(5,403,1,26,1),
(14,403,1,40,1),
(16,403,1,31,1),
(15,403,1,8,1),
(10,403,1,13,1),
(13,403,1,45,1),
(6,403,1,23,1),
(3,403,1,41,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(404,81,'1994-08-03 06:29:49',200,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (18,404,1,18,1),
(17,404,1,23,1),
(2,404,1,50,1),
(12,404,1,14,1),
(15,404,1,48,1),
(14,404,1,13,1),
(4,404,1,24,1),
(5,404,1,10,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(405,81,'2013-03-23 15:57:52',217,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (14,405,1,39,1),
(5,405,1,17,1),
(2,405,1,25,1),
(6,405,1,9,1),
(7,405,1,49,1),
(3,405,1,14,1),
(9,405,1,14,1),
(13,405,1,9,1),
(8,405,1,3,1),
(17,405,1,38,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(406,82,'2003-04-17 11:14:21',504,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (13,406,1,24,1),
(9,406,1,37,1),
(15,406,1,47,1),
(1,406,1,30,1),
(8,406,1,20,1),
(18,406,1,8,1),
(7,406,1,45,1),
(16,406,1,43,1),
(14,406,1,50,1),
(10,406,1,40,1),
(17,406,1,47,1),
(5,406,1,42,1),
(4,406,1,4,1),
(3,406,1,18,1),
(2,406,1,49,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(407,82,'1974-09-25 08:12:51',306,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (12,407,1,17,1),
(5,407,1,44,1),
(18,407,1,16,1),
(2,407,1,13,1),
(13,407,1,9,1),
(16,407,1,40,1),
(9,407,1,40,1),
(15,407,1,6,1),
(14,407,1,10,1),
(8,407,1,20,1),
(4,407,1,7,1),
(10,407,1,1,1),
(17,407,1,25,1),
(7,407,1,20,1),
(3,407,1,38,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(408,82,'1977-11-17 12:38:10',278,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (5,408,1,24,1),
(18,408,1,29,1),
(7,408,1,27,1),
(10,408,1,6,1),
(8,408,1,28,1),
(4,408,1,23,1),
(14,408,1,36,1),
(1,408,1,47,1),
(6,408,1,9,1),
(11,408,1,19,1),
(3,408,1,30,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(409,82,'2001-08-05 03:07:50',350,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (10,409,1,11,1),
(7,409,1,13,1),
(16,409,1,14,1),
(13,409,1,5,1),
(17,409,1,9,1),
(9,409,1,30,1),
(8,409,1,36,1),
(1,409,1,1,1),
(2,409,1,28,1),
(12,409,1,44,1),
(18,409,1,26,1),
(15,409,1,46,1),
(5,409,1,34,1),
(14,409,1,17,1),
(6,409,1,36,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(410,82,'1991-05-15 08:35:00',193,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (9,410,1,27,1),
(11,410,1,44,1),
(16,410,1,17,1),
(2,410,1,30,1),
(15,410,1,8,1),
(3,410,1,10,1),
(13,410,1,47,1),
(7,410,1,10,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(411,83,'1998-11-14 05:39:19',102,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (5,411,1,2,1),
(10,411,1,19,1),
(11,411,1,6,1),
(6,411,1,34,1),
(2,411,1,4,1),
(9,411,1,36,1),
(15,411,1,1,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(412,83,'1985-05-09 21:17:03',72,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (12,412,1,45,1),
(3,412,1,27,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(413,83,'1982-10-06 06:31:39',266,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (11,413,1,40,1),
(3,413,1,47,1),
(1,413,1,23,1),
(12,413,1,19,1),
(2,413,1,24,1),
(17,413,1,18,1),
(6,413,1,38,1),
(13,413,1,39,1),
(8,413,1,18,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(414,83,'2000-05-15 21:16:07',327,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (11,414,1,43,1),
(8,414,1,40,1),
(10,414,1,43,1),
(5,414,1,42,1),
(9,414,1,24,1),
(17,414,1,35,1),
(12,414,1,41,1),
(16,414,1,1,1),
(15,414,1,42,1),
(14,414,1,2,1),
(6,414,1,14,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(415,83,'2016-03-06 21:43:57',315,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (6,415,1,14,1),
(14,415,1,21,1),
(1,415,1,29,1),
(17,415,1,36,1),
(15,415,1,16,1),
(11,415,1,50,1),
(18,415,1,36,1),
(8,415,1,41,1),
(9,415,1,14,1),
(12,415,1,10,1),
(13,415,1,22,1),
(2,415,1,7,1),
(16,415,1,19,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(416,84,'2012-10-23 20:26:36',286,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (11,416,1,43,1),
(8,416,1,26,1),
(14,416,1,33,1),
(15,416,1,28,1),
(7,416,1,9,1),
(6,416,1,10,1),
(9,416,1,45,1),
(16,416,1,2,1),
(10,416,1,36,1),
(18,416,1,11,1),
(2,416,1,43,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(417,84,'2012-03-03 15:50:52',147,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (10,417,1,5,1),
(17,417,1,8,1),
(8,417,1,49,1),
(7,417,1,36,1),
(2,417,1,4,1),
(11,417,1,45,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(418,84,'2005-04-20 14:59:54',16,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (18,418,1,8,1),
(6,418,1,8,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(419,84,'1988-12-08 06:16:29',98,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (2,419,1,8,1),
(1,419,1,2,1),
(14,419,1,13,1),
(10,419,1,20,1),
(11,419,1,11,1),
(18,419,1,11,1),
(9,419,1,33,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(420,84,'1979-01-26 00:42:15',240,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (6,420,1,43,1),
(12,420,1,26,1),
(2,420,1,33,1),
(11,420,1,1,1),
(3,420,1,34,1),
(7,420,1,48,1),
(5,420,1,2,1),
(17,420,1,29,1),
(9,420,1,4,1),
(4,420,1,20,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(421,85,'2003-12-05 16:54:13',164,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (15,421,1,31,1),
(16,421,1,33,1),
(3,421,1,19,1),
(9,421,1,22,1),
(12,421,1,34,1),
(11,421,1,3,1),
(2,421,1,22,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(422,85,'1976-04-02 20:52:13',368,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (6,422,1,24,1),
(4,422,1,46,1),
(3,422,1,35,1),
(7,422,1,46,1),
(9,422,1,47,1),
(2,422,1,18,1),
(13,422,1,4,1),
(12,422,1,27,1),
(1,422,1,2,1),
(18,422,1,3,1),
(15,422,1,33,1),
(17,422,1,46,1),
(5,422,1,4,1),
(10,422,1,33,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(423,85,'2007-06-20 21:57:28',71,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (16,423,1,48,1),
(12,423,1,18,1),
(6,423,1,5,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(424,85,'1976-10-06 07:49:49',175,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (6,424,1,37,1),
(16,424,1,11,1),
(13,424,1,50,1),
(7,424,1,40,1),
(5,424,1,23,1),
(15,424,1,14,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(425,85,'1999-10-09 09:29:15',178,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (13,425,1,14,1),
(15,425,1,44,1),
(14,425,1,17,1),
(10,425,1,11,1),
(7,425,1,33,1),
(9,425,1,37,1),
(8,425,1,15,1),
(3,425,1,7,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(426,86,'1976-10-15 22:50:36',173,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (4,426,1,11,1),
(9,426,1,5,1),
(2,426,1,46,1),
(3,426,1,34,1),
(11,426,1,41,1),
(13,426,1,2,1),
(17,426,1,34,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(427,86,'2015-09-03 14:30:31',239,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (13,427,1,50,1),
(10,427,1,14,1),
(15,427,1,26,1),
(18,427,1,47,1),
(8,427,1,20,1),
(7,427,1,14,1),
(11,427,1,47,1),
(4,427,1,21,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(428,86,'1991-11-06 04:11:42',153,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (15,428,1,25,1),
(11,428,1,26,1),
(9,428,1,7,1),
(12,428,1,21,1),
(17,428,1,29,1),
(8,428,1,13,1),
(16,428,1,31,1),
(7,428,1,1,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(429,86,'2016-01-21 13:27:37',346,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (6,429,1,26,1),
(8,429,1,48,1),
(12,429,1,5,1),
(7,429,1,28,1),
(9,429,1,27,1),
(14,429,1,14,1),
(13,429,1,12,1),
(5,429,1,24,1),
(16,429,1,37,1),
(18,429,1,42,1),
(15,429,1,22,1),
(3,429,1,26,1),
(17,429,1,35,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(430,86,'1983-06-26 19:20:20',210,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (15,430,1,42,1),
(6,430,1,22,1),
(13,430,1,23,1),
(1,430,1,34,1),
(4,430,1,50,1),
(5,430,1,3,1),
(2,430,1,36,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(431,87,'2006-01-02 02:47:45',424,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (18,431,1,27,1),
(3,431,1,34,1),
(4,431,1,25,1),
(1,431,1,36,1),
(7,431,1,7,1),
(17,431,1,37,1),
(8,431,1,25,1),
(2,431,1,45,1),
(6,431,1,45,1),
(14,431,1,33,1),
(10,431,1,34,1),
(9,431,1,29,1),
(15,431,1,45,1),
(16,431,1,2,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(432,87,'2009-08-31 00:28:52',110,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (18,432,1,7,1),
(15,432,1,14,1),
(11,432,1,13,1),
(8,432,1,17,1),
(9,432,1,26,1),
(1,432,1,32,1),
(7,432,1,1,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(433,87,'2015-06-27 19:22:19',347,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (13,433,1,2,1),
(5,433,1,29,1),
(16,433,1,46,1),
(1,433,1,30,1),
(4,433,1,37,1),
(2,433,1,47,1),
(14,433,1,38,1),
(10,433,1,26,1),
(12,433,1,15,1),
(11,433,1,13,1),
(15,433,1,18,1),
(8,433,1,46,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(434,87,'1976-02-13 02:07:59',144,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (6,434,1,30,1),
(9,434,1,39,1),
(18,434,1,49,1),
(7,434,1,26,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(435,87,'1983-05-13 07:42:13',77,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (17,435,1,5,1),
(4,435,1,39,1),
(9,435,1,7,1),
(14,435,1,6,1),
(13,435,1,20,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(436,88,'1989-11-03 05:37:23',454,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (7,436,1,36,1),
(11,436,1,23,1),
(9,436,1,45,1),
(17,436,1,43,1),
(18,436,1,32,1),
(3,436,1,41,1),
(1,436,1,48,1),
(8,436,1,20,1),
(2,436,1,47,1),
(13,436,1,28,1),
(14,436,1,12,1),
(10,436,1,46,1),
(15,436,1,33,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(437,88,'2001-07-05 05:16:23',351,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (13,437,1,39,1),
(3,437,1,30,1),
(1,437,1,11,1),
(7,437,1,34,1),
(15,437,1,16,1),
(8,437,1,11,1),
(10,437,1,5,1),
(12,437,1,36,1),
(5,437,1,38,1),
(17,437,1,6,1),
(9,437,1,46,1),
(11,437,1,40,1),
(14,437,1,39,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(438,88,'1971-08-07 11:56:50',143,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (1,438,1,30,1),
(5,438,1,15,1),
(11,438,1,28,1),
(18,438,1,34,1),
(14,438,1,13,1),
(2,438,1,23,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(439,88,'2000-03-26 08:27:54',205,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (6,439,1,39,1),
(3,439,1,2,1),
(9,439,1,17,1),
(1,439,1,12,1),
(2,439,1,47,1),
(14,439,1,48,1),
(15,439,1,40,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(440,88,'1973-11-02 22:55:18',189,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (7,440,1,44,1),
(8,440,1,9,1),
(6,440,1,16,1),
(18,440,1,47,1),
(14,440,1,8,1),
(10,440,1,30,1),
(2,440,1,30,1),
(15,440,1,5,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(441,89,'1994-12-18 06:29:02',291,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (3,441,1,10,1),
(17,441,1,8,1),
(11,441,1,1,1),
(5,441,1,19,1),
(16,441,1,49,1),
(14,441,1,10,1),
(18,441,1,11,1),
(10,441,1,36,1),
(7,441,1,42,1),
(12,441,1,36,1),
(6,441,1,16,1),
(13,441,1,35,1),
(2,441,1,13,1),
(8,441,1,5,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(442,89,'2017-03-21 18:48:39',52,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (4,442,1,9,1),
(17,442,1,43,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(443,89,'2016-12-10 03:42:09',53,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (7,443,1,39,1),
(10,443,1,14,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(444,89,'1988-10-24 19:40:11',179,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (4,444,1,1,1),
(8,444,1,5,1),
(18,444,1,18,1),
(7,444,1,34,1),
(11,444,1,32,1),
(17,444,1,48,1),
(5,444,1,41,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(445,89,'1976-11-28 01:33:56',109,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (7,445,1,33,1),
(15,445,1,38,1),
(4,445,1,21,1),
(14,445,1,7,1),
(16,445,1,9,1),
(5,445,1,1,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(446,90,'2004-04-11 18:05:58',191,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (15,446,1,28,1),
(5,446,1,16,1),
(2,446,1,12,1),
(12,446,1,39,1),
(3,446,1,11,1),
(9,446,1,21,1),
(17,446,1,5,1),
(8,446,1,36,1),
(4,446,1,19,1),
(18,446,1,4,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(447,90,'1976-10-11 05:45:54',333,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (9,447,1,12,1),
(17,447,1,10,1),
(1,447,1,27,1),
(11,447,1,3,1),
(16,447,1,24,1),
(18,447,1,45,1),
(15,447,1,37,1),
(5,447,1,40,1),
(10,447,1,17,1),
(8,447,1,34,1),
(2,447,1,3,1),
(3,447,1,50,1),
(7,447,1,31,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(448,90,'1997-12-16 12:23:57',191,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (6,448,1,23,1),
(8,448,1,44,1),
(16,448,1,13,1),
(1,448,1,40,1),
(17,448,1,46,1),
(13,448,1,25,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(449,90,'1970-03-06 17:36:27',69,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (5,449,1,33,1),
(12,449,1,36,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(450,90,'1976-10-30 13:54:26',149,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (12,450,1,1,1),
(3,450,1,25,1),
(9,450,1,10,1),
(15,450,1,11,1),
(18,450,1,36,1),
(6,450,1,33,1),
(16,450,1,16,1),
(7,450,1,17,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(451,91,'2012-02-15 15:53:24',312,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (6,451,1,14,1),
(4,451,1,25,1),
(13,451,1,7,1),
(3,451,1,40,1),
(14,451,1,23,1),
(12,451,1,43,1),
(11,451,1,50,1),
(1,451,1,31,1),
(8,451,1,47,1),
(5,451,1,2,1),
(17,451,1,10,1),
(2,451,1,3,1),
(9,451,1,1,1),
(7,451,1,16,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(452,91,'1974-09-08 02:22:00',446,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (13,452,1,40,1),
(3,452,1,20,1),
(18,452,1,8,1),
(11,452,1,42,1),
(9,452,1,43,1),
(4,452,1,37,1),
(6,452,1,6,1),
(1,452,1,31,1),
(5,452,1,39,1),
(14,452,1,37,1),
(15,452,1,37,1),
(12,452,1,29,1),
(8,452,1,42,1),
(16,452,1,35,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(453,91,'2010-12-10 13:03:57',295,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (12,453,1,43,1),
(5,453,1,22,1),
(2,453,1,28,1),
(14,453,1,41,1),
(1,453,1,5,1),
(11,453,1,6,1),
(4,453,1,37,1),
(8,453,1,29,1),
(16,453,1,22,1),
(18,453,1,36,1),
(7,453,1,9,1),
(3,453,1,11,1),
(10,453,1,6,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(454,91,'1990-06-27 17:20:07',186,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (4,454,1,23,1),
(12,454,1,47,1),
(15,454,1,34,1),
(6,454,1,13,1),
(14,454,1,33,1),
(9,454,1,10,1),
(2,454,1,26,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(455,91,'1993-03-31 01:18:07',427,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (4,455,1,26,1),
(7,455,1,49,1),
(17,455,1,49,1),
(3,455,1,39,1),
(5,455,1,7,1),
(18,455,1,30,1),
(15,455,1,18,1),
(9,455,1,49,1),
(16,455,1,9,1),
(12,455,1,16,1),
(1,455,1,27,1),
(8,455,1,16,1),
(14,455,1,43,1),
(2,455,1,33,1),
(10,455,1,16,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(456,92,'1985-11-06 19:31:18',176,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (10,456,1,29,1),
(14,456,1,1,1),
(5,456,1,10,1),
(18,456,1,49,1),
(11,456,1,43,1),
(9,456,1,4,1),
(2,456,1,31,1),
(3,456,1,9,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(457,92,'1993-10-27 04:28:07',145,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (8,457,1,19,1),
(10,457,1,41,1),
(12,457,1,31,1),
(14,457,1,39,1),
(4,457,1,15,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(458,92,'2004-01-14 09:08:44',308,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (14,458,1,11,1),
(6,458,1,30,1),
(5,458,1,15,1),
(12,458,1,22,1),
(18,458,1,33,1),
(15,458,1,35,1),
(3,458,1,10,1),
(11,458,1,46,1),
(17,458,1,6,1),
(2,458,1,30,1),
(7,458,1,43,1),
(9,458,1,4,1),
(4,458,1,23,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(459,92,'1974-03-29 15:10:05',331,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (6,459,1,33,1),
(14,459,1,23,1),
(15,459,1,13,1),
(16,459,1,11,1),
(9,459,1,27,1),
(10,459,1,21,1),
(13,459,1,39,1),
(3,459,1,30,1),
(18,459,1,38,1),
(11,459,1,33,1),
(1,459,1,38,1),
(5,459,1,25,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(460,92,'1972-05-27 07:53:29',158,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (11,460,1,17,1),
(13,460,1,45,1),
(9,460,1,31,1),
(16,460,1,10,1),
(2,460,1,20,1),
(3,460,1,35,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(461,93,'2007-01-03 13:03:58',105,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (17,461,1,20,1),
(14,461,1,22,1),
(8,461,1,23,1),
(9,461,1,40,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(462,93,'2014-07-25 03:16:52',351,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (1,462,1,28,1),
(9,462,1,45,1),
(11,462,1,10,1),
(2,462,1,20,1),
(5,462,1,14,1),
(10,462,1,37,1),
(6,462,1,10,1),
(17,462,1,45,1),
(7,462,1,48,1),
(13,462,1,11,1),
(8,462,1,30,1),
(4,462,1,49,1),
(3,462,1,4,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(463,93,'1988-10-03 20:14:49',373,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (11,463,1,42,1),
(18,463,1,50,1),
(13,463,1,41,1),
(10,463,1,33,1),
(3,463,1,24,1),
(14,463,1,44,1),
(15,463,1,12,1),
(5,463,1,46,1),
(7,463,1,19,1),
(1,463,1,28,1),
(16,463,1,34,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(464,93,'2009-07-26 00:25:28',307,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (9,464,1,29,1),
(16,464,1,21,1),
(11,464,1,17,1),
(3,464,1,29,1),
(1,464,1,46,1),
(6,464,1,47,1),
(8,464,1,4,1),
(7,464,1,1,1),
(5,464,1,23,1),
(17,464,1,40,1),
(14,464,1,50,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(465,93,'1988-01-30 02:35:10',111,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (13,465,1,48,1),
(11,465,1,41,1),
(6,465,1,22,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(466,94,'1978-07-28 22:40:24',99,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (7,466,1,28,1),
(11,466,1,23,1),
(10,466,1,48,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(467,94,'1972-05-31 16:16:44',150,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (8,467,1,22,1),
(1,467,1,22,1),
(5,467,1,41,1),
(17,467,1,5,1),
(12,467,1,45,1),
(7,467,1,15,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(468,94,'1975-08-21 21:57:58',58,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (9,468,1,41,1),
(3,468,1,17,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(469,94,'1989-06-27 19:00:22',130,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (7,469,1,36,1),
(9,469,1,38,1),
(2,469,1,24,1),
(10,469,1,32,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(470,94,'1997-11-20 17:06:27',41,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (12,470,1,3,1),
(11,470,1,38,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(471,95,'1984-08-14 09:21:21',277,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (17,471,1,44,1),
(2,471,1,7,1),
(15,471,1,18,1),
(12,471,1,5,1),
(9,471,1,38,1),
(11,471,1,19,1),
(5,471,1,47,1),
(8,471,1,32,1),
(7,471,1,15,1),
(3,471,1,9,1),
(16,471,1,43,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(472,95,'1998-01-30 14:29:52',289,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (18,472,1,6,1),
(1,472,1,40,1),
(5,472,1,11,1),
(13,472,1,9,1),
(3,472,1,10,1),
(2,472,1,38,1),
(17,472,1,37,1),
(7,472,1,47,1),
(10,472,1,49,1),
(15,472,1,24,1),
(6,472,1,18,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(473,95,'2012-09-17 03:48:31',353,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (2,473,1,5,1),
(15,473,1,4,1),
(11,473,1,41,1),
(5,473,1,4,1),
(3,473,1,49,1),
(14,473,1,47,1),
(6,473,1,10,1),
(9,473,1,35,1),
(12,473,1,36,1),
(8,473,1,25,1),
(18,473,1,36,1),
(17,473,1,5,1),
(7,473,1,19,1),
(1,473,1,37,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(474,95,'2001-10-10 19:30:53',401,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (7,474,1,15,1),
(3,474,1,39,1),
(18,474,1,32,1),
(16,474,1,8,1),
(2,474,1,18,1),
(6,474,1,6,1),
(14,474,1,19,1),
(12,474,1,39,1),
(4,474,1,4,1),
(10,474,1,32,1),
(8,474,1,28,1),
(13,474,1,50,1),
(1,474,1,32,1),
(9,474,1,31,1),
(11,474,1,48,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(475,95,'1988-06-29 22:47:16',206,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (15,475,1,50,1),
(9,475,1,46,1),
(16,475,1,4,1),
(10,475,1,7,1),
(17,475,1,5,1),
(6,475,1,19,1),
(1,475,1,33,1),
(12,475,1,7,1),
(3,475,1,35,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(476,96,'1998-12-07 23:33:07',105,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (18,476,1,20,1),
(7,476,1,46,1),
(6,476,1,11,1),
(14,476,1,28,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(477,96,'2000-10-02 22:46:49',301,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (4,477,1,44,1),
(11,477,1,41,1),
(5,477,1,49,1),
(1,477,1,25,1),
(16,477,1,23,1),
(2,477,1,20,1),
(17,477,1,25,1),
(18,477,1,22,1),
(10,477,1,25,1),
(13,477,1,3,1),
(15,477,1,24,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(478,96,'1985-10-15 02:33:26',168,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (9,478,1,7,1),
(3,478,1,22,1),
(8,478,1,14,1),
(10,478,1,34,1),
(1,478,1,43,1),
(4,478,1,2,1),
(7,478,1,31,1),
(6,478,1,15,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(479,96,'1977-09-10 14:29:24',225,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (18,479,1,46,1),
(5,479,1,13,1),
(15,479,1,27,1),
(8,479,1,13,1),
(11,479,1,21,1),
(13,479,1,19,1),
(2,479,1,13,1),
(6,479,1,45,1),
(3,479,1,2,1),
(12,479,1,26,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(480,96,'2015-08-21 07:35:27',207,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (4,480,1,27,1),
(7,480,1,10,1),
(2,480,1,24,1),
(13,480,1,1,1),
(17,480,1,7,1),
(16,480,1,26,1),
(10,480,1,28,1),
(6,480,1,33,1),
(8,480,1,41,1),
(15,480,1,10,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(481,97,'2011-05-07 14:03:48',87,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (3,481,1,50,1),
(1,481,1,10,1),
(13,481,1,27,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(482,97,'2017-01-14 09:33:25',305,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (4,482,1,37,1),
(6,482,1,12,1),
(11,482,1,11,1),
(1,482,1,16,1),
(18,482,1,19,1),
(10,482,1,46,1),
(14,482,1,23,1),
(3,482,1,25,1),
(16,482,1,28,1),
(17,482,1,48,1),
(12,482,1,40,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(483,97,'1977-11-28 15:17:06',301,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (10,483,1,8,1),
(5,483,1,30,1),
(6,483,1,10,1),
(13,483,1,30,1),
(7,483,1,43,1),
(18,483,1,37,1),
(12,483,1,14,1),
(3,483,1,35,1),
(4,483,1,24,1),
(17,483,1,20,1),
(2,483,1,23,1),
(16,483,1,2,1),
(1,483,1,25,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(484,97,'2014-09-03 19:02:53',324,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (8,484,1,2,1),
(12,484,1,50,1),
(3,484,1,49,1),
(11,484,1,49,1),
(16,484,1,40,1),
(14,484,1,16,1),
(4,484,1,24,1),
(10,484,1,49,1),
(7,484,1,4,1),
(6,484,1,30,1),
(15,484,1,11,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(485,97,'1985-09-20 04:17:07',209,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (2,485,1,47,1),
(1,485,1,9,1),
(12,485,1,38,1),
(8,485,1,32,1),
(10,485,1,47,1),
(3,485,1,36,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(486,98,'2006-06-14 08:03:30',225,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (11,486,1,8,1),
(5,486,1,6,1),
(9,486,1,3,1),
(1,486,1,8,1),
(12,486,1,21,1),
(3,486,1,18,1),
(8,486,1,8,1),
(2,486,1,45,1),
(7,486,1,47,1),
(10,486,1,37,1),
(4,486,1,24,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(487,98,'2004-05-20 02:58:57',342,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (8,487,1,26,1),
(11,487,1,38,1),
(12,487,1,32,1),
(5,487,1,47,1),
(18,487,1,47,1),
(2,487,1,21,1),
(17,487,1,17,1),
(9,487,1,34,1),
(3,487,1,48,1),
(15,487,1,7,1),
(14,487,1,25,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(488,98,'2004-06-22 01:43:40',77,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (13,488,1,20,1),
(3,488,1,23,1),
(16,488,1,19,1),
(2,488,1,15,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(489,98,'2002-05-11 00:27:41',336,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (6,489,1,13,1),
(5,489,1,31,1),
(11,489,1,6,1),
(2,489,1,29,1),
(4,489,1,14,1),
(18,489,1,25,1),
(16,489,1,12,1),
(13,489,1,6,1),
(7,489,1,30,1),
(12,489,1,5,1),
(15,489,1,46,1),
(17,489,1,37,1),
(14,489,1,49,1),
(9,489,1,33,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(490,98,'1973-12-16 19:00:55',161,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (16,490,1,34,1),
(18,490,1,17,1),
(13,490,1,39,1),
(12,490,1,13,1),
(3,490,1,15,1),
(7,490,1,43,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(491,99,'2009-02-04 01:36:03',205,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (1,491,1,22,1),
(13,491,1,18,1),
(14,491,1,6,1),
(6,491,1,14,1),
(8,491,1,23,1),
(18,491,1,4,1),
(9,491,1,4,1),
(3,491,1,50,1),
(2,491,1,25,1),
(4,491,1,39,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(492,99,'2012-02-04 11:49:28',231,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (13,492,1,17,1),
(17,492,1,15,1),
(9,492,1,41,1),
(5,492,1,17,1),
(3,492,1,8,1),
(11,492,1,10,1),
(2,492,1,27,1),
(6,492,1,47,1),
(16,492,1,49,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(493,99,'1999-04-16 18:30:04',299,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (7,493,1,7,1),
(12,493,1,7,1),
(14,493,1,38,1),
(16,493,1,40,1),
(17,493,1,24,1),
(1,493,1,28,1),
(18,493,1,11,1),
(8,493,1,32,1),
(9,493,1,14,1),
(5,493,1,39,1),
(13,493,1,50,1),
(3,493,1,9,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(494,99,'1994-09-26 00:33:28',73,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (11,494,1,13,1),
(1,494,1,2,1),
(8,494,1,47,1),
(13,494,1,11,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(495,99,'1991-04-02 22:36:11',338,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (16,495,1,16,1),
(10,495,1,5,1),
(18,495,1,15,1),
(11,495,1,5,1),
(17,495,1,19,1),
(12,495,1,44,1),
(5,495,1,4,1),
(9,495,1,48,1),
(13,495,1,15,1),
(15,495,1,28,1),
(2,495,1,18,1),
(7,495,1,24,1),
(6,495,1,42,1),
(4,495,1,13,1),
(8,495,1,42,1);
 SELECT setval(pg_get_serial_sequence('dbo.compra', 'idcompra'), coalesce(max(idcompra), 0)+1 , false) FROM dbo.compra;  SELECT setval(pg_get_serial_sequence('dbo.itemcompra', 'iditemcompra'), coalesce(max(iditemcompra), 0)+1 , false) FROM dbo.itemcompra; 