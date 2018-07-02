SHOW CLIENT_ENCODING;

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
INSERT INTO cidade (idcidade,idestado, nome) VALUES  (1,1, 'Colina de Laranjeiras'),(2,3, 'Santos')
,(3,7, 'Viana')
,(4,1, 'Araújo')
,(5,8, 'Carvalho do Oeste')
,(6,7, 'Souza de Minas')
,(7,8, 'Souza do Norte')
,(8,8, 'Peixoto')
,(9,2, 'Pires')
,(10,5, 'da Cruz')
,(11,8, 'Barbosa')
,(12,6, 'Pereira')
,(13,1, 'Cardoso da Mata')
,(14,7, 'Teixeira de Gonçalves')
,(15,8, 'Moreira do Amparo')
,(16,1, 'Mendes da Mata')
,(17,2, 'Cardoso da Serra')
,(18,6, 'Pires de da Costa')
,(19,5, 'Ramos de Minas')
,(20,5, 'Rodrigues de Minas')
,(21,5, 'Peixoto de Rocha')
,(22,3, 'Santos de Goiás')
,(23,6, 'Cardoso')
,(24,5, 'FariasFernandes do Amparo')
,(25,5, 'Oliveira')
,(26,6, 'Peixoto do Norte')
,(27,5, 'Araújo')
,(28,5, 'Lima de Castro')
,(29,5, 'Rocha do Campo')
,(30,6, 'Silveira Paulista')
,(31,2, 'Pinto Paulista')
,(32,5, 'Silva')
,(33,4, 'Cardoso, Alegre')
,(34,7, 'das Neves da Praia')
,(35,6, 'da Rocha')
,(36,3, 'Viana')
,(37,1, 'da Luz Paulista')
,(38,3, 'Silveira')
,(39,7, 'da Cruz')
,(40,7, 'Fogaça')
,(41,6, 'Caldeira')
,(42,2, 'Caldeira do Campo')
,(43,4, 'Fogaça')
,(44,2, 'da Luz')
,(45,8, 'Freitas de Carvalho')
,(46,8, 'Fogaça de Santos')
,(47,5, 'Araújo de Rocha')
,(48,1, 'Teixeira')
,(49,4, 'Rocha')
,(50,1, 'Porto')
,(51,2, 'Fogaça')
,(52,5, 'da Costa da Praia')
,(53,4, 'Gonçalves')
,(54,2, 'FariasFernandes de Almeida')
,(55,5, 'Fogaça')
,(56,2, 'Araújo de Minas')
,(57,6, 'Costa da Serra')
,(58,6, 'Nascimento de Minas')
,(59,2, 'Silveira Alegre')
,(60,6, 'Martins')
,(61,6, 'Cardoso,')
,(62,7, 'Cardoso,')
,(63,8, 'Oliveira de Castro')
,(64,2, 'Rocha do Norte')
,(65,3, 'da Costa')
,(66,6, 'Duarte')
,(67,7, 'Novaes de Novaes')
,(68,3, 'da Cunha')
,(69,8, 'Pires')
,(70,7, 'Nunes')
,(71,4, 'Oliveira da Prata')
,(72,8, 'da Mota')
,(73,3, 'Ramos')
,(74,6, 'Cardoso, de Castro')
,(75,7, 'da Luz da Mata')
,(76,1, 'Moraes')
,(77,8, 'Dias')
,(78,4, 'Rocha de Ribeiro')
,(79,8, 'Costa')
,(80,5, 'Freitas da Praia')
,(81,8, 'Pires')
,(82,6, 'Barros')
,(83,8, 'da Paz da Mata')
,(84,6, 'Cardoso,')
,(85,3, 'Ribeiro')
,(86,3, 'Dias')
,(87,1, 'Silveira')
,(88,2, 'FariasFernandes do Oeste')
,(89,2, 'Mendes')
,(90,6, 'da Costa de Goiás')
,(91,2, 'Rezende de Pereira')
,(92,1, 'Moura')
,(93,2, 'Nunes Grande')
,(94,1, 'da Mata')
,(95,5, 'Monteiro')
,(96,3, 'Nunes de Gonçalves')
,(97,3, 'Peixoto de Minas')
,(98,4, 'Barbosa do Sul')
,(99,6, 'Dias')
; SELECT setval(pg_get_serial_sequence('dbo.cidade', 'idcidade'), coalesce(max(idcidade), 0)+1 , false) FROM dbo.cidade;  
INSERT INTO endereco (idendereco, idcidade, cep, logradouro, numero, complemento) VALUES  (1, 1,'29167081','Primeiro','371','proximo a nada'),(2, 46, '82709675','Morro Peixoto','3424','algum complemento')
,(3, 8, '48909373','Sítio André Souza','8009','algum complemento')
,(4, 71, '18887033','Parque Luiz Miguel Campos','5019','algum complemento')
,(5, 70, '86268922','Lagoa Viana','8441','algum complemento')
,(6, 9, '70752412','Largo de da Rocha','13','algum complemento')
,(7, 55, '12536892','Via Ribeiro','1179','algum complemento')
,(8, 10, '79519538','Feira da Rosa','4919','algum complemento')
,(9, 70, '48352766','Praça Cardoso','5172','algum complemento')
,(10, 81, '49929383','Jardim de Carvalho','5892','algum complemento')
,(11, 92, '16514652','Feira Luana Teixeira','1500','algum complemento')
,(12, 20, '31899757','Colônia Duarte','2142','algum complemento')
,(13, 55, '62207431','Loteamento Lívia Campos','1960','algum complemento')
,(14, 35, '34636917','Morro de Ferreira','5860','algum complemento')
,(15, 71, '99030237','Viaduto Cavalcanti','2751','algum complemento')
,(16, 29, '36303949','Vila Breno Nogueira','1287','algum complemento')
,(17, 24, '72944479','Distrito Novaes','3561','algum complemento')
,(18, 25, '33654497','Trecho de Carvalho','3021','algum complemento')
,(19, 67, '47879919','Travessa Ribeiro','2808','algum complemento')
,(20, 45, '84049419','Via de Alves','3197','algum complemento')
,(21, 5, '47225780','Favela Nogueira','2073','algum complemento')
,(22, 50, '80489957','Sítio Rodrigo FariasFernandes','5637','algum complemento')
,(23, 65, '61086701','Sítio Rodrigues','4514','algum complemento')
,(24, 75, '11291360','Viela da Cunha','8195','algum complemento')
,(25, 93, '37939698','Trecho de Castro','4180','algum complemento')
,(26, 75, '52312397','Estação Nascimento','8558','algum complemento')
,(27, 70, '44187459','Vila Gomes','393','algum complemento')
,(28, 67, '16107448','Feira de da Luz','7892','algum complemento')
,(29, 20, '93154573','Vereda de Barros','4640','algum complemento')
,(30, 43, '25992794','Jardim Maria Julia Souza','5462','algum complemento')
,(31, 5, '78021529','Rua Bárbara Freitas','1775','algum complemento')
,(32, 83, '39611161','Vereda de das Neves','8474','algum complemento')
,(33, 84, '30824236','Residencial Maysa Azevedo','4283','algum complemento')
,(34, 42, '78722101','Morro de FariasFernandes','2133','algum complemento')
,(35, 47, '12092055','Trevo de Caldeira','2894','algum complemento')
,(36, 98, '84519763','Área de Carvalho','8099','algum complemento')
,(37, 45, '11128928','Colônia de Santos','8826','algum complemento')
,(38, 27, '12518871','Setor Araújo','1691','algum complemento')
,(39, 75, '24907734','Rodovia de Fogaça','1031','algum complemento')
,(40, 46, '11836336','Parque de Caldeira','1136','algum complemento')
,(41, 80, '27340070','Via Augusto Nunes','9800','algum complemento')
,(42, 49, '80816053','Viaduto de Jesus','401','algum complemento')
,(43, 78, '37164995','Estação Caldeira','730','algum complemento')
,(44, 37, '36702684','Favela Luiz Felipe Cardoso','5909','algum complemento')
,(45, 51, '82535702','Vila de Rezende','1618','algum complemento')
,(46, 25, '89596821','Estação Maysa Rocha','5633','algum complemento')
,(47, 59, '13120057','Travessa Gabriel Santos','3367','algum complemento')
,(48, 47, '48556478','Via Isabella da Cunha','9909','algum complemento')
,(49, 50, '48702867','Alameda de Rezende','5550','algum complemento')
,(50, 64, '82531802','Residencial Marcela Peixoto','7314','algum complemento')
,(51, 45, '11086594','Fazenda Alexia da Rosa','37','algum complemento')
,(52, 62, '69396683','Campo Júlia Gonçalves','2233','algum complemento')
,(53, 41, '13479972','Loteamento de Barbosa','7205','algum complemento')
,(54, 34, '43572170','Viaduto Helena da Costa','1678','algum complemento')
,(55, 87, '31710124','Estação Bernardo Novaes','7395','algum complemento')
,(56, 79, '23870260','Pátio da Paz','1719','algum complemento')
,(57, 2, '83064405','Favela de Correia','7064','algum complemento')
,(58, 56, '76305962','Avenida Fernanda Porto','2113','algum complemento')
,(59, 79, '79454767','Trecho de Lima','1218','algum complemento')
,(60, 73, '57118269','Pátio FariasFernandes','7433','algum complemento')
,(61, 94, '84273821','Aeroporto Vinicius Gonçalves','7590','algum complemento')
,(62, 86, '46262345','Chácara Caroline da Mota','1249','algum complemento')
,(63, 77, '52570089','Esplanada Isabel Correia','3936','algum complemento')
,(64, 5, '94194225','Parque Nascimento','471','algum complemento')
,(65, 68, '59777682','Morro FariasFernandes','6031','algum complemento')
,(66, 47, '22131370','Trevo de Duarte','7823','algum complemento')
,(67, 16, '99778047','Colônia de Gonçalves','9910','algum complemento')
,(68, 93, '50769628','Sítio Moraes','4307','algum complemento')
,(69, 20, '19511850','Loteamento de Ribeiro','9179','algum complemento')
,(70, 84, '74916151','Núcleo de Santos','6824','algum complemento')
,(71, 75, '52005579','Distrito Martins','7876','algum complemento')
,(72, 83, '67614296','Favela Maria Nunes','635','algum complemento')
,(73, 75, '68316313','Chácara Vieira','1438','algum complemento')
,(74, 6, '58119093','Avenida Maria Sophia Silveira','4408','algum complemento')
,(75, 82, '72773257','Condomínio de Peixoto','8402','algum complemento')
,(76, 19, '38068221','Passarela Elisa Gomes','8784','algum complemento')
,(77, 91, '35944333','Praça Correia','8026','algum complemento')
,(78, 39, '87810037','Quadra Vieira','1603','algum complemento')
,(79, 71, '62727651','Morro de da Cruz','6063','algum complemento')
,(80, 32, '84327275','Vila Nunes','1751','algum complemento')
,(81, 81, '96369768','Sítio de Lima','3463','algum complemento')
,(82, 52, '37000567','Núcleo Silva','1639','algum complemento')
,(83, 89, '60099743','Vale de Silveira','7446','algum complemento')
,(84, 72, '35922957','Viela Carvalho','2158','algum complemento')
,(85, 37, '38541820','Lagoa Clarice Almeida','2557','algum complemento')
,(86, 78, '43694750','Esplanada de da Cunha','21','algum complemento')
,(87, 23, '97939156','Feira Pietra Duarte','8219','algum complemento')
,(88, 98, '47058681','Rua Viana','6613','algum complemento')
,(89, 64, '49757376','Largo Ian Pereira','5586','algum complemento')
,(90, 3, '31874792','Via Caio da Paz','5328','algum complemento')
,(91, 46, '92358538','Conjunto da Mata','5735','algum complemento')
,(92, 25, '42709424','Largo de Nogueira','7034','algum complemento')
,(93, 7, '38594546','Travessa Vieira','6013','algum complemento')
,(94, 50, '17497210','Recanto de Lima','6964','algum complemento')
,(95, 5, '32722570','Trecho Peixoto','94','algum complemento')
,(96, 28, '18481267','Núcleo Castro','1585','algum complemento')
,(97, 36, '85243158','Rodovia de Gonçalves','8402','algum complemento')
,(98, 21, '49429034','Largo de Ramos','2392','algum complemento')
,(99, 58, '29930350','Recanto Oliveira','7095','algum complemento')
,(100, 51, '85515013','Travessa Diogo Porto','428','algum complemento')
,(101, 30, '65965330','Residencial de Caldeira','4191','algum complemento')
,(102, 87, '39612444','Esplanada Ana Lívia Cunha','6997','algum complemento')
,(103, 6, '71101470','Alameda Jesus','860','algum complemento')
,(104, 87, '91463053','Rua FariasFernandes','7872','algum complemento')
,(105, 30, '90392052','Estrada de Rodrigues','7282','algum complemento')
,(106, 56, '42009164','Favela Rezende','3719','algum complemento')
,(107, 41, '38179138','Largo Mariana Sales','7920','algum complemento')
,(108, 38, '69632620','Rua Luiza Campos','811','algum complemento')
,(109, 79, '30587266','Favela de Azevedo','189','algum complemento')
,(110, 70, '18147586','Campo FariasFernandes','4660','algum complemento')
,(111, 11, '21115836','Aeroporto de Souza','8005','algum complemento')
,(112, 18, '21410733','Morro de Fogaça','3303','algum complemento')
,(113, 35, '73139421','Trecho de Martins','8195','algum complemento')
,(114, 16, '35137357','Passarela Clara da Mota','3589','algum complemento')
,(115, 75, '63573164','Distrito Caio Gonçalves','1254','algum complemento')
,(116, 17, '39637123','Loteamento de Pires','4778','algum complemento')
,(117, 80, '27842028','Vila Lima','5953','algum complemento')
,(118, 46, '60655564','Jardim Sophie Nascimento','7043','algum complemento')
,(119, 31, '78942606','Praça de Rodrigues','4526','algum complemento')
,(120, 85, '28325936','Vale de Aragão','8015','algum complemento')
,(121, 58, '93266549','Área de Teixeira','1142','algum complemento')
,(122, 81, '14596833','Chácara Ferreira','4591','algum complemento')
,(123, 73, '74048834','Feira de Ramos','2083','algum complemento')
,(124, 90, '29507777','Rodovia de das Neves','8129','algum complemento')
,(125, 13, '57573406','Sítio Maria Alice Rodrigues','7982','algum complemento')
,(126, 10, '17766289','Jardim Rodrigo Silveira','1234','algum complemento')
,(127, 11, '42121316','Alameda de Fogaça','8857','algum complemento')
,(128, 10, '36438245','Viaduto Carlos Eduardo Martins','9340','algum complemento')
,(129, 25, '83358905','Condomínio de Cardoso,','7208','algum complemento')
,(130, 66, '42060039','Estação de FariasFernandes','9779','algum complemento')
,(131, 17, '39481484','Parque Davi Lucas da Conceição','6724','algum complemento')
,(132, 84, '29440520','Rua de Carvalho','7015','algum complemento')
,(133, 45, '29902978','Passarela Teixeira','8671','algum complemento')
,(134, 42, '83304336','Estação Aragão','1720','algum complemento')
,(135, 30, '77388656','Vila de Nogueira','5952','algum complemento')
,(136, 77, '63752688','Feira Alícia Santos','9029','algum complemento')
,(137, 57, '55910732','Avenida Heitor Aragão','9353','algum complemento')
,(138, 67, '40667118','Viela Mendes','3770','algum complemento')
,(139, 70, '34722616','Travessa Esther Mendes','7962','algum complemento')
,(140, 56, '79386617','Rodovia da Cunha','7191','algum complemento')
,(141, 91, '78295623','Conjunto Matheus da Costa','5198','algum complemento')
,(142, 39, '91466659','Praça Maria Luiza Pires','7140','algum complemento')
,(143, 20, '20874057','Vila Nunes','6382','algum complemento')
,(144, 69, '98032656','Rodovia de Jesus','8380','algum complemento')
,(145, 51, '44085472','Alameda Fogaça','8160','algum complemento')
,(146, 46, '46535065','Pátio Mendes','6986','algum complemento')
,(147, 7, '43391283','Praça Nascimento','8848','algum complemento')
,(148, 91, '65593860','Lagoa Nunes','9908','algum complemento')
,(149, 13, '84399150','Alameda de Pires','5404','algum complemento')
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
INSERT INTO pessoa(idpessoa, idendereco, nome, sobrenome, email, dataNascimento) VALUES    (1,1, 'Eduardo','Couto','eduardo@email.com','1998/02/01') ,(2,70, 'Sarah','Ribeiro','Sarah@email.com','1999-07-27')
,(3,9, 'André','Novaes','André@email.com','2011-10-09')
,(4,118, 'Luiz Henrique','Costa','Luiz Henrique@email.com','1981-02-14')
,(5,137, 'Breno','Martins','Breno@email.com','2010-09-22')
,(6,110, 'Maria Cecília','Carvalho','Maria Cecília@email.com','1983-10-26')
,(7,100, 'André','Castro','André@email.com','2017-06-25')
,(8,126, 'Sophie','Carvalho','Sophie@email.com','1997-10-01')
,(9,76, 'Ana Lívia','FariasFernandes','Ana Lívia@email.com','2011-07-05')
,(10,25, 'Pietro','Oliveira','Pietro@email.com','1979-07-17')
,(11,129, 'Larissa','Cardoso','Larissa@email.com','2011-09-17')
,(12,101, 'Juliana','Oliveira','Juliana@email.com','1974-04-26')
,(13,83, 'Isabella','Gonçalves','Isabella@email.com','2013-01-10')
,(14,39, 'Sofia','Cunha','Sofia@email.com','1991-02-23')
,(15,108, 'Alícia','Cardoso,','Alícia@email.com','2007-11-10')
,(16,144, 'Ana Sophia','Lima','Ana Sophia@email.com','1989-05-14')
,(17,78, 'Isabelly','Moreira','Isabelly@email.com','2006-04-25')
,(18,121, 'Leonardo','Melo','Leonardo@email.com','1986-11-17')
,(19,51, 'Emanuel','Pires','Emanuel@email.com','1971-11-14')
,(20,16, 'Maria Clara','Porto','Maria Clara@email.com','2011-01-27')
,(21,64, 'Vicente','Araújo','Vicente@email.com','2006-04-19')
,(22,10, 'Daniela','da Conceição','Daniela@email.com','1982-02-27')
,(23,143, 'Pietra','Moura','Pietra@email.com','1984-10-02')
,(24,144, 'Ana Sophia','da Conceição','Ana Sophia@email.com','1976-01-16')
,(25,66, 'Luiz Otávio','Oliveira','Luiz Otávio@email.com','1996-06-11')
,(26,19, 'Milena','Oliveira','Milena@email.com','1994-07-24')
,(27,10, 'Alana','Campos','Alana@email.com','2006-01-02')
,(28,103, 'Amanda','Moraes','Amanda@email.com','1991-12-09')
,(29,107, 'Luiz Henrique','da Conceição','Luiz Henrique@email.com','2017-11-26')
,(30,126, 'Enrico','Sales','Enrico@email.com','2017-12-25')
,(31,19, 'Milena','Pereira','Milena@email.com','2014-03-21')
,(32,23, 'João Lucas','Gomes','João Lucas@email.com','1993-12-31')
,(33,48, 'Cauã','Costa','Cauã@email.com','1998-09-01')
,(34,109, 'Larissa','Ribeiro','Larissa@email.com','2003-11-02')
,(35,86, 'Sofia','Fogaça','Sofia@email.com','2015-11-19')
,(36,141, 'Ryan','Rodrigues','Ryan@email.com','1988-12-15')
,(37,61, 'Lara','Sales','Lara@email.com','2013-06-28')
,(38,134, 'Davi Lucca','da Costa','Davi Lucca@email.com','2011-09-16')
,(39,128, 'Vicente','Lopes','Vicente@email.com','1992-03-24')
,(40,33, 'Ana Lívia','Azevedo','Ana Lívia@email.com','2007-11-26')
,(41,135, 'Maria Julia','Oliveira','Maria Julia@email.com','2016-08-30')
,(42,18, 'Stephany','Carvalho','Stephany@email.com','1996-12-31')
,(43,88, 'Vitor Hugo','Ferreira','Vitor Hugo@email.com','1972-01-01')
,(44,140, 'Helena','Martins','Helena@email.com','1983-04-12')
,(45,138, 'Giovanna','das Neves','Giovanna@email.com','2002-06-27')
,(46,143, 'Isabelly','Araújo','Isabelly@email.com','2000-12-06')
,(47,135, 'Miguel','Jesus','Miguel@email.com','2000-06-25')
,(48,133, 'Thiago','Oliveira','Thiago@email.com','2012-11-27')
,(49,41, 'Isabella','Rezende','Isabella@email.com','1977-01-03')
,(50,58, 'João Miguel','Costela','João Miguel@email.com','1995-03-29')
,(51,2, 'Maria Clara','Costa','Maria Clara@email.com','1993-10-22')
,(52,124, 'Camila','Aragão','Camila@email.com','1973-05-10')
,(53,139, 'Isaac','Moraes','Isaac@email.com','2015-06-26')
,(54,137, 'Bruno','Rodrigues','Bruno@email.com','1996-09-21')
,(55,77, 'Isaac','Castro','Isaac@email.com','1985-09-29')
,(56,98, 'Sofia','Fogaça','Sofia@email.com','1999-05-01')
,(57,95, 'Theo','Santos','Theo@email.com','2016-06-01')
,(58,96, 'João Guilherme','Rodrigues','João Guilherme@email.com','1975-04-27')
,(59,34, 'Vitor Gabriel','Nascimento','Vitor Gabriel@email.com','1979-09-14')
,(60,60, 'Antônio','da Cunha','Antônio@email.com','1999-06-16')
,(61,142, 'Esther','Lopes','Esther@email.com','2016-02-13')
,(62,117, 'Marcela','da Costa','Marcela@email.com','2002-08-18')
,(63,18, 'Letícia','Rodrigues','Letícia@email.com','1983-12-03')
,(64,136, 'Amanda','Barbosa','Amanda@email.com','1980-05-15')
,(65,56, 'João Felipe','da Luz','João Felipe@email.com','2010-12-23')
,(66,71, 'Emanuella','Gonçalves','Emanuella@email.com','2002-10-17')
,(67,23, 'Igor','Sales','Igor@email.com','1996-02-29')
,(68,85, 'Lorenzo','da Rocha','Lorenzo@email.com','2001-10-28')
,(69,58, 'Vinicius','da Rosa','Vinicius@email.com','2016-12-16')
,(70,16, 'Maria Clara','Duarte','Maria Clara@email.com','1997-01-07')
,(71,77, 'João Guilherme','Cardoso,','João Guilherme@email.com','2002-07-01')
,(72,106, 'Alícia','Freitas','Alícia@email.com','1972-02-17')
,(73,42, 'Maria Sophia','Viana','Maria Sophia@email.com','2015-06-02')
,(74,134, 'Alícia','Barros','Alícia@email.com','1995-02-14')
,(75,118, 'Heitor','Nogueira','Heitor@email.com','2011-01-14')
,(76,69, 'Nina','Cunha','Nina@email.com','1995-10-06')
,(77,49, 'Davi Lucca','Monteiro','Davi Lucca@email.com','1976-10-15')
,(78,87, 'Eduardo','Gomes','Eduardo@email.com','1989-08-30')
,(79,134, 'João Gabriel','da Paz','João Gabriel@email.com','2001-04-22')
,(80,35, 'Giovanna','Oliveira','Giovanna@email.com','1982-08-20')
,(81,102, 'Ryan','FariasFernandes','Ryan@email.com','2013-07-08')
,(82,81, 'Emanuelly','Freitas','Emanuelly@email.com','1996-11-12')
,(83,19, 'Caroline','Moreira','Caroline@email.com','1992-07-13')
,(84,44, 'Eduardo','Cardoso','Eduardo@email.com','1990-07-24')
,(85,139, 'Rodrigo','Porto','Rodrigo@email.com','1999-04-08')
,(86,106, 'Julia','Freitas','Julia@email.com','1972-06-13')
,(87,135, 'Emilly','Araújo','Emilly@email.com','2008-05-27')
,(88,120, 'Anthony','Pinto','Anthony@email.com','1990-05-21')
,(89,14, 'Luiz Gustavo','FariasFernandes','Luiz Gustavo@email.com','1984-07-09')
,(90,127, 'Gustavo','Porto','Gustavo@email.com','1982-05-22')
,(91,48, 'Heitor','Araújo','Heitor@email.com','1976-10-19')
,(92,4, 'Helena','da Rocha','Helena@email.com','1991-08-07')
,(93,8, 'Eduardo','Souza','Eduardo@email.com','2003-01-28')
,(94,22, 'Noah','Vieira','Noah@email.com','1979-11-04')
,(95,117, 'Luna','Novaes','Luna@email.com','1986-03-06')
,(96,108, 'João Guilherme','Martins','João Guilherme@email.com','1997-10-13')
,(97,114, 'Bruna','Cavalcanti','Bruna@email.com','2000-06-29')
,(98,115, 'Nina','Carvalho','Nina@email.com','1989-12-27')
,(99,139, 'Levi','Ramos','Levi@email.com','1996-03-31')
; SELECT setval(pg_get_serial_sequence('dbo.pessoa', 'idpessoa'), coalesce(max(idpessoa), 0)+1 , false) FROM dbo.pessoa;  
INSERT INTO consumidor(idconsumidor, idpessoa, login, senha, nivel, datacadastro) VALUES    (1, 1, 'educouto', '$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1, '2018/02/01') ,(2,2, 'Marcos Vinicius','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2014-06-28')
,(3,3, 'Rafaela','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2005-09-08')
,(4,4, 'João Felipe','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1990-03-24')
,(5,5, 'Sophia','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1982-05-25')
,(6,6, 'Ana Julia','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1973-10-01')
,(7,7, 'Levi','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1978-07-04')
,(8,8, 'Caroline','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1980-10-13')
,(9,9, 'Marina','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2006-01-06')
,(10,10, 'João Felipe','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2018-03-14')
,(11,11, 'Heloísa','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2016-10-25')
,(12,12, 'Luiz Henrique','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1974-05-26')
,(13,13, 'Stella','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2010-05-23')
,(14,14, 'Luna','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2011-01-01')
,(15,15, 'Carolina','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2006-08-10')
,(16,16, 'Alícia','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2004-07-15')
,(17,17, 'Sabrina','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1994-08-17')
,(18,18, 'Bárbara','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2013-04-26')
,(19,19, 'Benício','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1990-01-04')
,(20,20, 'João Miguel','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2013-03-03')
,(21,21, 'Antônio','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2008-12-03')
,(22,22, 'João Guilherme','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1988-05-19')
,(23,23, 'Anthony','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1977-12-20')
,(24,24, 'Cauã','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1975-07-06')
,(25,25, 'Augusto','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1972-02-13')
,(26,26, 'Lara','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2007-12-24')
,(27,27, 'Esther','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1979-01-21')
,(28,28, 'Ana Júlia','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2009-04-01')
,(29,29, 'Francisco','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2017-01-30')
,(30,30, 'Isaac','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1975-06-05')
,(31,31, 'Luiz Gustavo','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1975-12-14')
,(32,32, 'Maria Sophia','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2010-05-20')
,(33,33, 'Murilo','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1984-06-13')
,(34,34, 'Caroline','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1994-08-22')
,(35,35, 'Noah','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1986-08-09')
,(36,36, 'Milena','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1986-02-05')
,(37,37, 'Alice','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1982-03-27')
,(38,38, 'Maria Sophia','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1982-04-03')
,(39,39, 'Kaique','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1971-04-30')
,(40,40, 'Kevin','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1974-12-19')
,(41,41, 'Ana Lívia','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1972-02-26')
,(42,42, 'Laís','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2000-02-19')
,(43,43, 'Valentina','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2016-09-08')
,(44,44, 'Pedro Henrique','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1975-05-05')
,(45,45, 'Bianca','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1977-02-16')
,(46,46, 'Theo','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2004-07-30')
,(47,47, 'Maria Julia','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2011-05-13')
,(48,48, 'Bárbara','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2010-10-27')
,(49,49, 'Carolina','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2017-11-23')
,(50,50, 'Matheus','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2015-03-22')
,(51,51, 'Helena','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1999-09-30')
,(52,52, 'Raquel','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1976-11-05')
,(53,53, 'Raquel','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2018-04-16')
,(54,54, 'Ana Laura','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1980-11-20')
,(55,55, 'Carlos Eduardo','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2012-11-13')
,(56,56, 'Giovanna','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1996-10-15')
,(57,57, 'Emilly','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2005-11-18')
,(58,58, 'Emanuella','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1996-06-12')
,(59,59, 'Gustavo','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1991-06-10')
,(60,60, 'Bárbara','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1997-08-08')
,(61,61, 'Kaique','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1992-07-23')
,(62,62, 'Alexia','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1999-09-18')
,(63,63, 'Yasmin','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2015-04-25')
,(64,64, 'Eloah','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1998-01-16')
,(65,65, 'Breno','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2009-09-09')
,(66,66, 'Lara','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1973-06-22')
,(67,67, 'André','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1991-05-30')
,(68,68, 'Daniela','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1988-04-13')
,(69,69, 'Bryan','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1973-01-31')
,(70,70, 'Julia','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2010-07-24')
,(71,71, 'Giovanna','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1993-01-03')
,(72,72, 'João Vitor','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1986-03-31')
,(73,73, 'Juliana','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1990-10-06')
,(74,74, 'Alexandre','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1981-06-01')
,(75,75, 'Marina','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1976-11-01')
,(76,76, 'Calebe','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2007-08-18')
,(77,77, 'Sophie','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2004-05-10')
,(78,78, 'Ian','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2010-08-08')
,(79,79, 'Clara','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1976-10-24')
,(80,80, 'Ana Sophia','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1987-01-12')
,(81,81, 'João Guilherme','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1995-06-01')
,(82,82, 'Enzo Gabriel','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2014-12-30')
,(83,83, 'Carlos Eduardo','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2015-05-11')
,(84,84, 'João Miguel','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2006-11-10')
,(85,85, 'Guilherme','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1985-04-28')
,(86,86, 'Heitor','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1984-05-06')
,(87,87, 'Brenda','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1993-07-05')
,(88,88, 'Gabrielly','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1990-02-13')
,(89,89, 'Kamilly','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2013-09-09')
,(90,90, 'João Guilherme','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2004-06-01')
,(91,91, 'Sophie','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1977-06-06')
,(92,92, 'Natália','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1974-11-20')
,(93,93, 'Breno','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2005-06-24')
,(94,94, 'Vinicius','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2016-05-21')
,(95,95, 'Juliana','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1973-12-24')
,(96,96, 'Francisco','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1999-03-25')
,(97,97, 'Luiz Otávio','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1994-12-17')
,(98,98, 'Maria Sophia','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1975-08-23')
,(99,99, 'Eduardo','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1983-08-24')
; SELECT setval(pg_get_serial_sequence('dbo.consumidor', 'idconsumidor'), coalesce(max(idconsumidor), 0)+1 , false) FROM dbo.consumidor;  
INSERT INTO listaCompra (idlistaCompra, idconsumidor, nome, dataultimamodificacao) VALUES    (1, 1, 'Primeira Lista', '2018/06/03') ,(2, 2,'Churas da turma','2014-05-23')
,(3, 3,'Compras da feira','1985-05-16')
,(4, 4,'Compra de 15 dias','2008-04-07')
,(5, 5,'Compras da feira','2005-05-12')
,(6, 6,'Compra de 30 dias','1980-12-11')
,(7, 7,'Churas da turma','2000-11-10')
,(8, 8,'Compras da feira','1970-11-30')
,(9, 9,'Compra de 15 dias','1986-04-15')
,(10, 10,'Compra de 30 dias','1994-05-12')
,(11, 11,'Compra de 15 dias','1997-04-21')
,(12, 12,'Compras da feira','2002-01-06')
,(13, 13,'Compras da feira','2017-09-23')
,(14, 14,'Compra de 15 dias','2010-06-17')
,(15, 15,'Compra de 15 dias','1975-01-26')
,(16, 16,'Churas da turma','2014-04-18')
,(17, 17,'Compra de 30 dias','1978-08-28')
,(18, 18,'Churas da turma','1998-09-05')
,(19, 19,'Compra de 30 dias','2001-08-19')
,(20, 20,'Compra de 15 dias','1983-10-02')
,(21, 21,'Churas da turma','1977-08-04')
,(22, 22,'Churas da turma','1980-10-04')
,(23, 23,'Compra de 30 dias','1991-12-16')
,(24, 24,'Compra de 30 dias','2004-09-27')
,(25, 25,'Compra de 15 dias','2010-10-29')
,(26, 26,'Compra de 30 dias','1978-06-29')
,(27, 27,'Compra de 30 dias','2004-11-21')
,(28, 28,'Compra de 30 dias','2003-06-15')
,(29, 29,'Compra de 15 dias','1971-01-17')
,(30, 30,'Compras da feira','1993-08-02')
,(31, 31,'Compra de 30 dias','1993-02-08')
,(32, 32,'Compras da feira','2009-07-28')
,(33, 33,'Compra de 30 dias','1979-11-01')
,(34, 34,'Churas da turma','2013-07-27')
,(35, 35,'Compras da feira','1981-01-19')
,(36, 36,'Compra de 30 dias','1974-08-12')
,(37, 37,'Compra de 30 dias','2015-02-02')
,(38, 38,'Churas da turma','2013-11-16')
,(39, 39,'Compra de 30 dias','1972-07-07')
,(40, 40,'Compra de 15 dias','1984-05-14')
,(41, 41,'Compra de 30 dias','1977-08-05')
,(42, 42,'Compras da feira','1990-04-09')
,(43, 43,'Churas da turma','1992-02-26')
,(44, 44,'Compra de 15 dias','2016-11-22')
,(45, 45,'Compra de 15 dias','2016-06-04')
,(46, 46,'Churas da turma','1979-09-30')
,(47, 47,'Compras da feira','1989-09-20')
,(48, 48,'Churas da turma','2016-12-13')
,(49, 49,'Compras da feira','1990-01-11')
,(50, 50,'Compra de 15 dias','2002-01-19')
,(51, 51,'Compra de 15 dias','2008-03-10')
,(52, 52,'Churas da turma','2017-08-06')
,(53, 53,'Compra de 30 dias','2010-06-01')
,(54, 54,'Compra de 15 dias','2004-10-26')
,(55, 55,'Compras da feira','2008-03-02')
,(56, 56,'Compra de 15 dias','1989-02-13')
,(57, 57,'Churas da turma','1980-11-30')
,(58, 58,'Churas da turma','1981-05-19')
,(59, 59,'Compras da feira','2010-01-31')
,(60, 60,'Compra de 30 dias','1977-07-24')
,(61, 61,'Churas da turma','2003-06-03')
,(62, 62,'Compra de 15 dias','1999-06-17')
,(63, 63,'Compras da feira','1997-08-18')
,(64, 64,'Compra de 15 dias','2013-09-27')
,(65, 65,'Compras da feira','1971-06-04')
,(66, 66,'Churas da turma','2017-06-08')
,(67, 67,'Churas da turma','2001-03-07')
,(68, 68,'Compra de 15 dias','2013-06-12')
,(69, 69,'Churas da turma','2006-08-20')
,(70, 70,'Churas da turma','2015-08-14')
,(71, 71,'Churas da turma','2007-04-11')
,(72, 72,'Compras da feira','1975-07-20')
,(73, 73,'Compras da feira','1984-10-02')
,(74, 74,'Compra de 30 dias','2004-11-16')
,(75, 75,'Compra de 30 dias','1979-08-09')
,(76, 76,'Compra de 30 dias','2005-08-11')
,(77, 77,'Compra de 30 dias','1981-12-07')
,(78, 78,'Churas da turma','1981-01-17')
,(79, 79,'Churas da turma','2009-03-15')
,(80, 80,'Compra de 15 dias','2014-02-02')
,(81, 81,'Compra de 15 dias','2001-08-03')
,(82, 82,'Compra de 15 dias','1972-08-20')
,(83, 83,'Churas da turma','2012-12-21')
,(84, 84,'Churas da turma','1972-07-21')
,(85, 85,'Compras da feira','2004-01-06')
,(86, 86,'Compra de 30 dias','1981-02-10')
,(87, 87,'Compras da feira','1994-01-25')
,(88, 88,'Churas da turma','1978-12-14')
,(89, 89,'Compra de 30 dias','2007-10-02')
,(90, 90,'Churas da turma','1994-01-26')
,(91, 91,'Compras da feira','1976-09-16')
,(92, 92,'Compra de 30 dias','1992-06-27')
,(93, 93,'Churas da turma','2014-01-31')
,(94, 94,'Compras da feira','2003-07-09')
,(95, 95,'Compra de 15 dias','1979-08-25')
,(96, 96,'Compras da feira','2001-11-18')
,(97, 97,'Compra de 30 dias','2011-09-16')
,(98, 98,'Compra de 30 dias','2015-06-03')
,(99, 99,'Compras da feira','1996-10-18')
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
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(1,1,'1976-03-07 15:14:28',302,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (5,1,1,13,1),
(11,1,1,36,1),
(18,1,1,25,1),
(4,1,1,29,1),
(17,1,1,31,1),
(9,1,1,16,1),
(2,1,1,45,1),
(14,1,1,32,1),
(15,1,1,5,1),
(1,1,1,42,1),
(12,1,1,28,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(2,1,'2016-04-02 10:46:46',112,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (2,2,1,34,1),
(10,2,1,26,1),
(17,2,1,11,1),
(12,2,1,41,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(3,1,'1993-12-28 15:05:55',155,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (9,3,1,30,1),
(10,3,1,10,1),
(17,3,1,21,1),
(11,3,1,9,1),
(6,3,1,40,1),
(3,3,1,14,1),
(2,3,1,27,1),
(8,3,1,4,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(4,1,'1977-03-09 22:34:01',421,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (2,4,1,32,1),
(12,4,1,16,1),
(9,4,1,40,1),
(1,4,1,1,1),
(18,4,1,38,1),
(4,4,1,16,1),
(14,4,1,15,1),
(16,4,1,3,1),
(6,4,1,50,1),
(3,4,1,32,1),
(11,4,1,39,1),
(7,4,1,47,1),
(13,4,1,42,1),
(8,4,1,11,1),
(17,4,1,39,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(5,1,'1994-06-06 02:11:37',369,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (11,5,1,12,1),
(4,5,1,27,1),
(10,5,1,18,1),
(1,5,1,19,1),
(14,5,1,15,1),
(8,5,1,30,1),
(7,5,1,27,1),
(2,5,1,44,1),
(13,5,1,36,1),
(5,5,1,26,1),
(18,5,1,1,1),
(3,5,1,46,1),
(17,5,1,41,1),
(16,5,1,27,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(6,2,'1989-10-02 03:53:38',220,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (10,6,1,20,1),
(17,6,1,46,1),
(11,6,1,12,1),
(3,6,1,8,1),
(9,6,1,14,1),
(15,6,1,43,1),
(4,6,1,12,1),
(16,6,1,20,1),
(13,6,1,45,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(7,2,'2016-08-06 10:30:27',230,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (18,7,1,11,1),
(2,7,1,3,1),
(11,7,1,41,1),
(12,7,1,6,1),
(5,7,1,15,1),
(16,7,1,34,1),
(3,7,1,31,1),
(13,7,1,15,1),
(8,7,1,27,1),
(7,7,1,47,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(8,2,'1985-12-15 11:34:18',228,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (7,8,1,31,1),
(17,8,1,46,1),
(14,8,1,16,1),
(12,8,1,8,1),
(15,8,1,47,1),
(11,8,1,6,1),
(10,8,1,34,1),
(2,8,1,39,1),
(6,8,1,1,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(9,2,'1981-07-12 00:20:04',439,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (8,9,1,24,1),
(17,9,1,41,1),
(13,9,1,34,1),
(5,9,1,13,1),
(18,9,1,33,1),
(7,9,1,37,1),
(12,9,1,42,1),
(1,9,1,24,1),
(6,9,1,48,1),
(11,9,1,33,1),
(16,9,1,24,1),
(15,9,1,6,1),
(10,9,1,30,1),
(4,9,1,48,1),
(3,9,1,2,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(10,2,'1995-07-10 14:45:31',207,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (17,10,1,9,1),
(13,10,1,39,1),
(9,10,1,26,1),
(18,10,1,46,1),
(16,10,1,23,1),
(1,10,1,15,1),
(15,10,1,11,1),
(2,10,1,38,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(11,3,'1992-06-19 20:52:46',131,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (18,11,1,1,1),
(10,11,1,36,1),
(17,11,1,33,1),
(6,11,1,30,1),
(14,11,1,31,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(12,3,'2012-02-12 13:07:44',173,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (1,12,1,10,1),
(2,12,1,17,1),
(6,12,1,7,1),
(13,12,1,3,1),
(5,12,1,37,1),
(4,12,1,18,1),
(3,12,1,18,1),
(18,12,1,17,1),
(8,12,1,13,1),
(7,12,1,33,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(13,3,'2009-04-25 07:06:42',256,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (10,13,1,15,1),
(4,13,1,10,1),
(14,13,1,43,1),
(16,13,1,42,1),
(2,13,1,50,1),
(3,13,1,38,1),
(13,13,1,15,1),
(5,13,1,16,1),
(8,13,1,2,1),
(17,13,1,25,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(14,3,'1972-07-13 14:24:27',199,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (18,14,1,44,1),
(4,14,1,31,1),
(10,14,1,14,1),
(9,14,1,20,1),
(2,14,1,19,1),
(6,14,1,41,1),
(17,14,1,21,1),
(5,14,1,9,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(15,3,'1994-04-11 03:07:37',154,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (6,15,1,23,1),
(18,15,1,13,1),
(3,15,1,48,1),
(13,15,1,33,1),
(11,15,1,13,1),
(12,15,1,24,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(16,4,'2001-09-29 15:20:15',145,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (5,16,1,32,1),
(18,16,1,15,1),
(11,16,1,18,1),
(6,16,1,8,1),
(15,16,1,42,1),
(17,16,1,30,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(17,4,'1981-09-24 09:48:32',97,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (8,17,1,47,1),
(2,17,1,10,1),
(17,17,1,40,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(18,4,'2015-11-20 00:14:25',72,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (5,18,1,41,1),
(1,18,1,31,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(19,4,'1981-07-09 04:14:51',398,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (12,19,1,42,1),
(1,19,1,35,1),
(6,19,1,42,1),
(13,19,1,49,1),
(10,19,1,30,1),
(7,19,1,14,1),
(9,19,1,11,1),
(16,19,1,23,1),
(17,19,1,32,1),
(15,19,1,22,1),
(5,19,1,32,1),
(14,19,1,10,1),
(8,19,1,49,1),
(11,19,1,7,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(20,4,'1995-04-17 23:52:40',370,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (1,20,1,28,1),
(13,20,1,30,1),
(14,20,1,24,1),
(4,20,1,39,1),
(10,20,1,22,1),
(17,20,1,9,1),
(3,20,1,5,1),
(11,20,1,48,1),
(9,20,1,31,1),
(7,20,1,9,1),
(16,20,1,6,1),
(2,20,1,46,1),
(6,20,1,28,1),
(8,20,1,11,1),
(15,20,1,34,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(21,5,'2014-05-19 18:05:30',113,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (9,21,1,43,1),
(13,21,1,28,1),
(8,21,1,42,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(22,5,'1981-08-29 04:03:15',155,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (18,22,1,2,1),
(11,22,1,20,1),
(12,22,1,39,1),
(6,22,1,8,1),
(4,22,1,40,1),
(10,22,1,46,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(23,5,'2006-08-15 13:33:28',157,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (7,23,1,14,1),
(6,23,1,23,1),
(9,23,1,3,1),
(13,23,1,26,1),
(10,23,1,16,1),
(18,23,1,9,1),
(5,23,1,21,1),
(17,23,1,44,1),
(2,23,1,1,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(24,5,'2015-10-23 20:45:58',258,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (1,24,1,4,1),
(6,24,1,21,1),
(7,24,1,17,1),
(8,24,1,49,1),
(14,24,1,32,1),
(11,24,1,37,1),
(9,24,1,3,1),
(12,24,1,28,1),
(15,24,1,20,1),
(17,24,1,22,1),
(18,24,1,10,1),
(13,24,1,15,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(25,5,'1998-12-31 03:30:56',363,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (8,25,1,10,1),
(5,25,1,18,1),
(14,25,1,38,1),
(3,25,1,38,1),
(17,25,1,43,1),
(16,25,1,37,1),
(11,25,1,32,1),
(13,25,1,39,1),
(2,25,1,18,1),
(9,25,1,31,1),
(10,25,1,37,1),
(4,25,1,22,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(26,6,'2007-01-27 05:42:41',135,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (12,26,1,26,1),
(5,26,1,43,1),
(11,26,1,41,1),
(13,26,1,25,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(27,6,'2006-05-26 23:28:45',365,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (18,27,1,14,1),
(1,27,1,19,1),
(17,27,1,20,1),
(2,27,1,43,1),
(10,27,1,35,1),
(13,27,1,24,1),
(15,27,1,3,1),
(5,27,1,44,1),
(6,27,1,50,1),
(16,27,1,29,1),
(11,27,1,32,1),
(4,27,1,12,1),
(8,27,1,2,1),
(12,27,1,30,1),
(3,27,1,8,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(28,6,'1993-06-30 21:27:14',266,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (14,28,1,29,1),
(8,28,1,37,1),
(5,28,1,43,1),
(18,28,1,39,1),
(4,28,1,1,1),
(1,28,1,27,1),
(3,28,1,48,1),
(15,28,1,12,1),
(10,28,1,28,1),
(13,28,1,2,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(29,6,'1988-03-04 02:13:56',111,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (1,29,1,26,1),
(13,29,1,16,1),
(8,29,1,15,1),
(15,29,1,37,1),
(10,29,1,17,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(30,6,'2013-09-09 22:32:05',42,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (4,30,1,5,1),
(12,30,1,37,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(31,7,'1986-01-14 16:24:00',317,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (16,31,1,36,1),
(17,31,1,29,1),
(4,31,1,42,1),
(8,31,1,34,1),
(5,31,1,24,1),
(6,31,1,29,1),
(1,31,1,49,1),
(10,31,1,36,1),
(13,31,1,15,1),
(12,31,1,20,1),
(3,31,1,3,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(32,7,'1993-02-18 05:52:05',361,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (15,32,1,31,1),
(4,32,1,23,1),
(11,32,1,44,1),
(12,32,1,50,1),
(2,32,1,38,1),
(3,32,1,20,1),
(14,32,1,12,1),
(6,32,1,22,1),
(5,32,1,44,1),
(8,32,1,32,1),
(13,32,1,45,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(33,7,'2016-06-23 09:10:29',236,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (9,33,1,45,1),
(16,33,1,50,1),
(10,33,1,23,1),
(4,33,1,45,1),
(5,33,1,33,1),
(12,33,1,40,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(34,7,'2004-09-20 21:40:34',125,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (17,34,1,28,1),
(18,34,1,10,1),
(16,34,1,47,1),
(3,34,1,13,1),
(12,34,1,27,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(35,7,'1991-04-23 18:48:09',295,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (2,35,1,3,1),
(10,35,1,6,1),
(14,35,1,45,1),
(8,35,1,15,1),
(7,35,1,29,1),
(5,35,1,9,1),
(6,35,1,34,1),
(13,35,1,25,1),
(17,35,1,49,1),
(3,35,1,17,1),
(18,35,1,27,1),
(15,35,1,24,1),
(12,35,1,12,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(36,8,'1982-06-28 02:54:43',136,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (11,36,1,19,1),
(1,36,1,21,1),
(4,36,1,26,1),
(14,36,1,41,1),
(13,36,1,29,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(37,8,'1995-11-13 00:14:53',188,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (7,37,1,33,1),
(9,37,1,8,1),
(10,37,1,5,1),
(8,37,1,33,1),
(18,37,1,39,1),
(12,37,1,8,1),
(13,37,1,39,1),
(6,37,1,10,1),
(16,37,1,13,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(38,8,'1992-02-13 04:32:34',122,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (3,38,1,41,1),
(6,38,1,45,1),
(18,38,1,36,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(39,8,'2017-03-16 19:19:26',204,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (13,39,1,13,1),
(14,39,1,44,1),
(1,39,1,8,1),
(16,39,1,23,1),
(10,39,1,24,1),
(4,39,1,47,1),
(8,39,1,1,1),
(9,39,1,10,1),
(18,39,1,34,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(40,8,'1981-08-01 15:37:06',132,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (17,40,1,6,1),
(13,40,1,41,1),
(7,40,1,30,1),
(1,40,1,39,1),
(3,40,1,4,1),
(2,40,1,12,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(41,9,'1978-12-28 17:37:23',226,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (7,41,1,20,1),
(17,41,1,17,1),
(14,41,1,8,1),
(5,41,1,44,1),
(9,41,1,4,1),
(6,41,1,45,1),
(16,41,1,24,1),
(15,41,1,34,1),
(4,41,1,30,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(42,9,'2006-04-06 23:09:18',39,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (3,42,1,24,1),
(9,42,1,15,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(43,9,'2013-04-30 17:22:44',259,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (14,43,1,36,1),
(13,43,1,13,1),
(18,43,1,14,1),
(15,43,1,17,1),
(1,43,1,45,1),
(12,43,1,34,1),
(10,43,1,12,1),
(2,43,1,6,1),
(11,43,1,12,1),
(7,43,1,21,1),
(6,43,1,4,1),
(5,43,1,11,1),
(8,43,1,34,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(44,9,'2017-03-01 20:41:03',91,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (15,44,1,20,1),
(9,44,1,50,1),
(1,44,1,21,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(45,9,'1993-01-25 23:05:39',77,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (10,45,1,29,1),
(3,45,1,48,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(46,10,'2001-01-21 20:46:09',61,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (10,46,1,11,1),
(17,46,1,45,1),
(9,46,1,5,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(47,10,'2007-05-13 23:01:00',230,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (9,47,1,16,1),
(8,47,1,26,1),
(4,47,1,34,1),
(13,47,1,49,1),
(17,47,1,41,1),
(14,47,1,38,1),
(10,47,1,26,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(48,10,'1974-06-18 14:43:41',371,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (11,48,1,45,1),
(15,48,1,26,1),
(13,48,1,48,1),
(4,48,1,5,1),
(14,48,1,19,1),
(3,48,1,44,1),
(1,48,1,28,1),
(5,48,1,29,1),
(16,48,1,24,1),
(2,48,1,4,1),
(12,48,1,33,1),
(18,48,1,27,1),
(17,48,1,39,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(49,10,'1999-07-29 19:38:26',323,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (1,49,1,32,1),
(14,49,1,5,1),
(5,49,1,37,1),
(15,49,1,30,1),
(8,49,1,45,1),
(7,49,1,40,1),
(12,49,1,14,1),
(10,49,1,34,1),
(17,49,1,21,1),
(3,49,1,40,1),
(6,49,1,25,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(50,10,'1999-08-16 01:50:51',56,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (17,50,1,33,1),
(5,50,1,23,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(51,11,'2006-05-29 18:17:54',427,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (12,51,1,15,1),
(18,51,1,34,1),
(7,51,1,12,1),
(16,51,1,41,1),
(17,51,1,39,1),
(3,51,1,43,1),
(15,51,1,31,1),
(1,51,1,25,1),
(2,51,1,10,1),
(6,51,1,9,1),
(11,51,1,47,1),
(8,51,1,40,1),
(10,51,1,50,1),
(5,51,1,1,1),
(4,51,1,30,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(52,11,'2016-02-01 09:40:58',115,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (1,52,1,34,1),
(14,52,1,46,1),
(4,52,1,27,1),
(9,52,1,8,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(53,11,'1996-11-05 22:09:51',256,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (10,53,1,25,1),
(4,53,1,26,1),
(18,53,1,20,1),
(7,53,1,18,1),
(2,53,1,13,1),
(1,53,1,32,1),
(3,53,1,29,1),
(13,53,1,16,1),
(15,53,1,42,1),
(14,53,1,35,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(54,11,'1977-03-04 14:27:56',187,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (12,54,1,12,1),
(18,54,1,48,1),
(8,54,1,23,1),
(5,54,1,49,1),
(11,54,1,9,1),
(2,54,1,46,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(55,11,'1976-08-11 10:18:26',367,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (16,55,1,8,1),
(12,55,1,21,1),
(2,55,1,29,1),
(14,55,1,6,1),
(18,55,1,34,1),
(13,55,1,46,1),
(17,55,1,33,1),
(15,55,1,14,1),
(9,55,1,28,1),
(8,55,1,16,1),
(5,55,1,28,1),
(6,55,1,10,1),
(4,55,1,50,1),
(10,55,1,44,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(56,12,'1976-05-22 05:22:26',152,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (8,56,1,37,1),
(4,56,1,14,1),
(9,56,1,19,1),
(6,56,1,22,1),
(2,56,1,34,1),
(17,56,1,26,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(57,12,'1984-09-19 09:53:11',406,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (16,57,1,2,1),
(5,57,1,7,1),
(17,57,1,45,1),
(12,57,1,38,1),
(11,57,1,44,1),
(18,57,1,8,1),
(13,57,1,23,1),
(4,57,1,39,1),
(9,57,1,50,1),
(14,57,1,39,1),
(8,57,1,30,1),
(10,57,1,32,1),
(3,57,1,26,1),
(7,57,1,23,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(58,12,'2011-11-26 06:37:40',306,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (13,58,1,18,1),
(17,58,1,19,1),
(15,58,1,47,1),
(9,58,1,12,1),
(5,58,1,49,1),
(3,58,1,44,1),
(4,58,1,10,1),
(2,58,1,32,1),
(12,58,1,13,1),
(6,58,1,32,1),
(1,58,1,30,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(59,12,'1982-04-10 11:41:11',136,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (3,59,1,20,1),
(13,59,1,48,1),
(4,59,1,12,1),
(5,59,1,10,1),
(18,59,1,44,1),
(16,59,1,2,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(60,12,'1986-03-18 07:36:01',221,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (1,60,1,11,1),
(7,60,1,38,1),
(2,60,1,18,1),
(8,60,1,44,1),
(12,60,1,6,1),
(16,60,1,15,1),
(14,60,1,10,1),
(13,60,1,47,1),
(18,60,1,1,1),
(9,60,1,3,1),
(3,60,1,28,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(61,13,'1991-01-15 07:14:20',372,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (10,61,1,33,1),
(16,61,1,13,1),
(12,61,1,26,1),
(8,61,1,17,1),
(17,61,1,37,1),
(4,61,1,23,1),
(7,61,1,14,1),
(9,61,1,35,1),
(5,61,1,31,1),
(14,61,1,38,1),
(15,61,1,17,1),
(1,61,1,9,1),
(13,61,1,41,1),
(3,61,1,3,1),
(2,61,1,35,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(62,13,'1997-01-05 02:08:29',77,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (12,62,1,9,1),
(8,62,1,27,1),
(13,62,1,31,1),
(17,62,1,7,1),
(14,62,1,3,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(63,13,'1974-05-19 09:19:58',49,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (7,63,1,13,1),
(16,63,1,36,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(64,13,'1971-04-02 21:33:41',254,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (5,64,1,18,1),
(6,64,1,18,1),
(11,64,1,19,1),
(12,64,1,20,1),
(14,64,1,29,1),
(16,64,1,32,1),
(2,64,1,28,1),
(10,64,1,1,1),
(17,64,1,18,1),
(13,64,1,33,1),
(15,64,1,38,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(65,13,'1999-02-28 16:29:37',262,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (6,65,1,8,1),
(4,65,1,25,1),
(7,65,1,9,1),
(16,65,1,16,1),
(3,65,1,34,1),
(14,65,1,31,1),
(10,65,1,39,1),
(12,65,1,27,1),
(5,65,1,4,1),
(18,65,1,27,1),
(13,65,1,42,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(66,14,'2013-09-09 21:56:59',127,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (7,66,1,35,1),
(17,66,1,19,1),
(4,66,1,48,1),
(1,66,1,25,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(67,14,'1989-03-16 00:06:09',244,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (18,67,1,42,1),
(2,67,1,24,1),
(9,67,1,29,1),
(3,67,1,46,1),
(6,67,1,3,1),
(13,67,1,27,1),
(11,67,1,23,1),
(10,67,1,41,1),
(14,67,1,9,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(68,14,'2005-01-12 17:58:36',143,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (11,68,1,36,1),
(9,68,1,2,1),
(8,68,1,45,1),
(2,68,1,37,1),
(6,68,1,23,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(69,14,'2001-09-28 10:42:33',49,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (14,69,1,11,1),
(8,69,1,11,1),
(3,69,1,27,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(70,14,'2012-05-25 09:31:20',215,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (4,70,1,40,1),
(7,70,1,40,1),
(15,70,1,3,1),
(10,70,1,43,1),
(13,70,1,10,1),
(6,70,1,35,1),
(18,70,1,13,1),
(16,70,1,31,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(71,15,'1974-07-25 10:09:25',101,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (9,71,1,28,1),
(13,71,1,38,1),
(14,71,1,35,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(72,15,'1997-03-12 19:20:08',5,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (1,72,1,4,1),
(11,72,1,1,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(73,15,'2004-10-26 16:31:21',247,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (9,73,1,44,1),
(13,73,1,43,1),
(17,73,1,7,1),
(3,73,1,27,1),
(11,73,1,25,1),
(12,73,1,5,1),
(16,73,1,9,1),
(10,73,1,43,1),
(7,73,1,38,1),
(4,73,1,6,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(74,15,'2013-12-11 14:03:21',178,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (17,74,1,43,1),
(2,74,1,47,1),
(14,74,1,20,1),
(12,74,1,19,1),
(11,74,1,41,1),
(7,74,1,7,1),
(9,74,1,1,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(75,15,'1974-01-07 12:09:25',174,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (17,75,1,16,1),
(1,75,1,42,1),
(10,75,1,17,1),
(13,75,1,1,1),
(9,75,1,26,1),
(7,75,1,11,1),
(18,75,1,37,1),
(11,75,1,1,1),
(6,75,1,1,1),
(2,75,1,16,1),
(4,75,1,6,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(76,16,'1994-08-30 06:00:32',73,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (6,76,1,5,1),
(2,76,1,19,1),
(17,76,1,20,1),
(16,76,1,2,1),
(13,76,1,27,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(77,16,'1974-02-28 01:51:31',170,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (10,77,1,4,1),
(17,77,1,8,1),
(12,77,1,18,1),
(16,77,1,15,1),
(5,77,1,10,1),
(3,77,1,31,1),
(14,77,1,14,1),
(13,77,1,37,1),
(15,77,1,33,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(78,16,'2018-03-20 04:03:28',182,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (18,78,1,43,1),
(13,78,1,4,1),
(4,78,1,29,1),
(9,78,1,12,1),
(12,78,1,36,1),
(8,78,1,20,1),
(6,78,1,12,1),
(5,78,1,22,1),
(15,78,1,3,1),
(7,78,1,1,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(79,16,'1980-12-14 14:01:46',31,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (6,79,1,4,1),
(12,79,1,20,1),
(16,79,1,7,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(80,16,'2008-03-27 17:36:24',192,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (16,80,1,14,1),
(1,80,1,34,1),
(18,80,1,24,1),
(10,80,1,15,1),
(14,80,1,2,1),
(4,80,1,47,1),
(2,80,1,36,1),
(9,80,1,9,1),
(15,80,1,11,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(81,17,'1980-04-24 02:48:55',186,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (5,81,1,22,1),
(3,81,1,5,1),
(9,81,1,31,1),
(4,81,1,18,1),
(14,81,1,45,1),
(7,81,1,34,1),
(6,81,1,31,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(82,17,'1995-08-26 18:09:05',321,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (4,82,1,5,1),
(3,82,1,10,1),
(15,82,1,21,1),
(8,82,1,50,1),
(9,82,1,48,1),
(11,82,1,24,1),
(10,82,1,35,1),
(5,82,1,2,1),
(2,82,1,48,1),
(13,82,1,50,1),
(7,82,1,8,1),
(17,82,1,17,1),
(12,82,1,3,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(83,17,'1986-06-07 06:26:48',105,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (8,83,1,45,1),
(12,83,1,8,1),
(9,83,1,40,1),
(5,83,1,12,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(84,17,'2015-03-05 22:54:22',124,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (6,84,1,23,1),
(15,84,1,8,1),
(11,84,1,12,1),
(1,84,1,27,1),
(14,84,1,27,1),
(10,84,1,3,1),
(17,84,1,24,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(85,17,'1984-01-25 23:34:12',152,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (1,85,1,12,1),
(11,85,1,2,1),
(16,85,1,14,1),
(15,85,1,26,1),
(7,85,1,14,1),
(5,85,1,34,1),
(18,85,1,50,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(86,18,'2010-12-13 05:33:51',141,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (7,86,1,15,1),
(15,86,1,42,1),
(12,86,1,1,1),
(2,86,1,25,1),
(14,86,1,37,1),
(8,86,1,21,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(87,18,'2000-02-05 23:04:59',288,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (6,87,1,33,1),
(11,87,1,7,1),
(7,87,1,8,1),
(13,87,1,34,1),
(5,87,1,50,1),
(10,87,1,22,1),
(17,87,1,43,1),
(18,87,1,35,1),
(3,87,1,36,1),
(8,87,1,5,1),
(9,87,1,2,1),
(14,87,1,13,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(88,18,'2007-03-02 11:29:10',259,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (4,88,1,32,1),
(16,88,1,48,1),
(18,88,1,15,1),
(2,88,1,41,1),
(12,88,1,22,1),
(3,88,1,23,1),
(11,88,1,47,1),
(10,88,1,31,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(89,18,'2017-06-07 00:04:34',83,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (11,89,1,29,1),
(12,89,1,24,1),
(17,89,1,30,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(90,18,'2016-09-22 10:12:42',272,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (4,90,1,28,1),
(17,90,1,12,1),
(15,90,1,16,1),
(5,90,1,31,1),
(3,90,1,35,1),
(7,90,1,18,1),
(16,90,1,49,1),
(10,90,1,29,1),
(6,90,1,33,1),
(14,90,1,21,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(91,19,'1995-05-08 05:48:53',321,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (5,91,1,45,1),
(13,91,1,37,1),
(15,91,1,39,1),
(12,91,1,10,1),
(10,91,1,19,1),
(3,91,1,11,1),
(16,91,1,18,1),
(6,91,1,8,1),
(4,91,1,1,1),
(14,91,1,44,1),
(9,91,1,16,1),
(7,91,1,20,1),
(11,91,1,35,1),
(2,91,1,10,1),
(8,91,1,8,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(92,19,'2007-02-26 13:39:39',230,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (17,92,1,2,1),
(4,92,1,9,1),
(16,92,1,36,1),
(5,92,1,17,1),
(15,92,1,22,1),
(7,92,1,41,1),
(1,92,1,24,1),
(10,92,1,29,1),
(11,92,1,50,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(93,19,'1984-07-21 07:14:13',42,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (18,93,1,14,1),
(12,93,1,9,1),
(1,93,1,19,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(94,19,'1978-11-04 03:45:29',70,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (10,94,1,23,1),
(9,94,1,17,1),
(2,94,1,30,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(95,19,'1984-04-18 08:45:48',139,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (9,95,1,41,1),
(11,95,1,25,1),
(12,95,1,13,1),
(16,95,1,35,1),
(1,95,1,25,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(96,20,'1994-12-22 13:28:48',73,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (9,96,1,14,1),
(10,96,1,23,1),
(15,96,1,36,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(97,20,'1973-05-13 18:24:12',350,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (1,97,1,34,1),
(15,97,1,35,1),
(6,97,1,5,1),
(11,97,1,2,1),
(8,97,1,35,1),
(10,97,1,35,1),
(2,97,1,13,1),
(13,97,1,3,1),
(16,97,1,20,1),
(17,97,1,10,1),
(9,97,1,11,1),
(5,97,1,38,1),
(7,97,1,19,1),
(18,97,1,41,1),
(3,97,1,49,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(98,20,'2018-06-15 11:40:20',97,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (16,98,1,28,1),
(1,98,1,32,1),
(7,98,1,26,1),
(3,98,1,11,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(99,20,'2015-04-29 07:27:09',31,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (10,99,1,4,1),
(9,99,1,27,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(100,20,'2006-08-01 23:03:50',257,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (18,100,1,31,1),
(2,100,1,5,1),
(1,100,1,39,1),
(8,100,1,3,1),
(11,100,1,48,1),
(7,100,1,13,1),
(13,100,1,37,1),
(10,100,1,46,1),
(12,100,1,27,1),
(14,100,1,8,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(101,21,'1994-06-19 02:31:01',327,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (1,101,1,31,1),
(13,101,1,3,1),
(14,101,1,32,1),
(15,101,1,33,1),
(8,101,1,12,1),
(2,101,1,38,1),
(3,101,1,10,1),
(11,101,1,14,1),
(6,101,1,17,1),
(9,101,1,48,1),
(18,101,1,19,1),
(10,101,1,35,1),
(16,101,1,35,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(102,21,'1985-02-08 03:30:31',290,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (9,102,1,43,1),
(15,102,1,38,1),
(7,102,1,10,1),
(18,102,1,1,1),
(2,102,1,32,1),
(8,102,1,27,1),
(10,102,1,22,1),
(13,102,1,12,1),
(3,102,1,35,1),
(11,102,1,9,1),
(12,102,1,40,1),
(5,102,1,21,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(103,21,'2007-03-06 01:35:06',284,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (2,103,1,19,1),
(11,103,1,16,1),
(4,103,1,44,1),
(17,103,1,36,1),
(14,103,1,49,1),
(16,103,1,40,1),
(3,103,1,11,1),
(8,103,1,15,1),
(12,103,1,15,1),
(5,103,1,39,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(104,21,'1990-11-13 01:40:29',54,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (5,104,1,25,1),
(3,104,1,5,1),
(11,104,1,24,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(105,21,'2014-07-31 02:08:58',152,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (10,105,1,22,1),
(9,105,1,43,1),
(4,105,1,18,1),
(14,105,1,39,1),
(3,105,1,30,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(106,22,'1982-03-10 04:46:47',148,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (9,106,1,3,1),
(7,106,1,26,1),
(13,106,1,11,1),
(17,106,1,15,1),
(4,106,1,35,1),
(14,106,1,20,1),
(2,106,1,38,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(107,22,'1976-12-06 16:28:08',324,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (15,107,1,2,1),
(8,107,1,35,1),
(17,107,1,14,1),
(11,107,1,12,1),
(13,107,1,6,1),
(2,107,1,48,1),
(9,107,1,48,1),
(5,107,1,39,1),
(16,107,1,39,1),
(4,107,1,42,1),
(14,107,1,39,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(108,22,'1991-09-28 14:52:37',286,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (14,108,1,43,1),
(7,108,1,28,1),
(13,108,1,47,1),
(2,108,1,42,1),
(9,108,1,41,1),
(5,108,1,40,1),
(18,108,1,39,1),
(10,108,1,6,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(109,22,'1981-02-11 20:26:23',105,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (16,109,1,29,1),
(18,109,1,45,1),
(17,109,1,31,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(110,22,'2008-08-05 15:50:13',226,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (8,110,1,18,1),
(12,110,1,19,1),
(15,110,1,11,1),
(17,110,1,23,1),
(9,110,1,50,1),
(6,110,1,22,1),
(7,110,1,22,1),
(10,110,1,29,1),
(18,110,1,29,1),
(2,110,1,3,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(111,23,'1979-11-21 05:16:39',196,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (6,111,1,19,1),
(7,111,1,18,1),
(8,111,1,13,1),
(11,111,1,38,1),
(14,111,1,24,1),
(3,111,1,27,1),
(10,111,1,41,1),
(12,111,1,16,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(112,23,'1990-11-06 09:48:48',46,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (10,112,1,7,1),
(1,112,1,8,1),
(18,112,1,19,1),
(12,112,1,12,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(113,23,'2009-04-28 03:36:07',182,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (15,113,1,10,1),
(13,113,1,16,1),
(10,113,1,18,1),
(14,113,1,49,1),
(12,113,1,27,1),
(4,113,1,49,1),
(5,113,1,13,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(114,23,'2009-08-12 21:49:09',469,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (6,114,1,48,1),
(9,114,1,41,1),
(16,114,1,29,1),
(2,114,1,14,1),
(8,114,1,29,1),
(12,114,1,43,1),
(10,114,1,50,1),
(13,114,1,34,1),
(5,114,1,46,1),
(4,114,1,1,1),
(15,114,1,13,1),
(1,114,1,7,1),
(18,114,1,21,1),
(11,114,1,43,1),
(3,114,1,50,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(115,23,'2002-01-09 13:00:11',174,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (2,115,1,19,1),
(16,115,1,14,1),
(5,115,1,23,1),
(6,115,1,44,1),
(15,115,1,49,1),
(11,115,1,25,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(116,24,'1981-10-20 16:31:55',211,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (15,116,1,15,1),
(5,116,1,6,1),
(17,116,1,3,1),
(12,116,1,47,1),
(9,116,1,2,1),
(14,116,1,41,1),
(4,116,1,43,1),
(3,116,1,24,1),
(8,116,1,30,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(117,24,'2006-04-17 15:27:18',62,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (15,117,1,16,1),
(10,117,1,18,1),
(2,117,1,11,1),
(17,117,1,17,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(118,24,'2003-08-18 18:57:15',56,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (9,118,1,15,1),
(11,118,1,4,1),
(12,118,1,37,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(119,24,'1994-11-19 22:07:09',147,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (16,119,1,15,1),
(17,119,1,9,1),
(14,119,1,48,1),
(18,119,1,15,1),
(10,119,1,15,1),
(11,119,1,1,1),
(3,119,1,13,1),
(2,119,1,12,1),
(15,119,1,19,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(120,24,'1974-07-08 03:33:46',66,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (2,120,1,8,1),
(11,120,1,26,1),
(14,120,1,4,1),
(3,120,1,11,1),
(17,120,1,17,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(121,25,'1985-05-31 22:51:17',97,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (8,121,1,30,1),
(3,121,1,37,1),
(18,121,1,24,1),
(12,121,1,6,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(122,25,'1971-12-31 06:23:41',228,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (2,122,1,27,1),
(4,122,1,39,1),
(18,122,1,10,1),
(5,122,1,41,1),
(3,122,1,29,1),
(1,122,1,28,1),
(13,122,1,34,1),
(6,122,1,20,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(123,25,'2006-10-13 10:34:16',52,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (15,123,1,42,1),
(7,123,1,10,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(124,25,'1996-05-13 05:12:20',126,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (4,124,1,25,1),
(3,124,1,39,1),
(5,124,1,26,1),
(10,124,1,36,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(125,25,'1975-07-08 10:53:15',383,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (6,125,1,20,1),
(7,125,1,44,1),
(12,125,1,34,1),
(5,125,1,50,1),
(2,125,1,17,1),
(14,125,1,29,1),
(16,125,1,2,1),
(1,125,1,44,1),
(9,125,1,22,1),
(4,125,1,48,1),
(15,125,1,39,1),
(10,125,1,34,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(126,26,'2008-04-12 21:38:51',116,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (15,126,1,20,1),
(18,126,1,46,1),
(4,126,1,50,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(127,26,'1992-05-06 12:18:07',35,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (10,127,1,13,1),
(18,127,1,2,1),
(13,127,1,20,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(128,26,'2007-05-18 11:05:54',196,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (3,128,1,8,1),
(8,128,1,46,1),
(2,128,1,15,1),
(18,128,1,1,1),
(15,128,1,24,1),
(11,128,1,18,1),
(16,128,1,10,1),
(10,128,1,8,1),
(5,128,1,30,1),
(4,128,1,32,1),
(6,128,1,4,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(129,26,'2014-05-26 04:14:57',260,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (5,129,1,26,1),
(16,129,1,42,1),
(4,129,1,2,1),
(10,129,1,2,1),
(8,129,1,49,1),
(2,129,1,48,1),
(6,129,1,36,1),
(11,129,1,32,1),
(14,129,1,23,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(130,26,'1995-02-20 06:58:03',457,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (16,130,1,31,1),
(1,130,1,34,1),
(10,130,1,46,1),
(9,130,1,24,1),
(14,130,1,23,1),
(6,130,1,39,1),
(12,130,1,14,1),
(2,130,1,46,1),
(7,130,1,43,1),
(15,130,1,22,1),
(17,130,1,30,1),
(4,130,1,42,1),
(18,130,1,11,1),
(13,130,1,39,1),
(3,130,1,13,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(131,27,'1985-09-23 22:38:25',204,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (3,131,1,16,1),
(2,131,1,45,1),
(17,131,1,17,1),
(16,131,1,31,1),
(12,131,1,36,1),
(1,131,1,17,1),
(8,131,1,2,1),
(14,131,1,6,1),
(9,131,1,33,1),
(5,131,1,1,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(132,27,'1994-11-20 17:22:10',260,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (2,132,1,21,1),
(12,132,1,18,1),
(5,132,1,27,1),
(18,132,1,24,1),
(6,132,1,10,1),
(7,132,1,28,1),
(15,132,1,32,1),
(11,132,1,46,1),
(17,132,1,4,1),
(4,132,1,50,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(133,27,'1994-04-06 23:51:00',244,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (14,133,1,49,1),
(6,133,1,23,1),
(11,133,1,4,1),
(16,133,1,10,1),
(17,133,1,4,1),
(4,133,1,32,1),
(15,133,1,20,1),
(7,133,1,21,1),
(8,133,1,44,1),
(13,133,1,3,1),
(1,133,1,31,1),
(3,133,1,3,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(134,27,'1993-02-25 13:20:39',313,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (7,134,1,36,1),
(5,134,1,25,1),
(18,134,1,6,1),
(14,134,1,20,1),
(13,134,1,39,1),
(12,134,1,35,1),
(11,134,1,42,1),
(15,134,1,30,1),
(6,134,1,13,1),
(10,134,1,33,1),
(17,134,1,7,1),
(16,134,1,27,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(135,27,'1992-02-03 09:12:21',468,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (8,135,1,32,1),
(13,135,1,36,1),
(14,135,1,9,1),
(10,135,1,27,1),
(11,135,1,16,1),
(4,135,1,42,1),
(9,135,1,39,1),
(5,135,1,47,1),
(6,135,1,24,1),
(1,135,1,36,1),
(2,135,1,44,1),
(16,135,1,33,1),
(17,135,1,50,1),
(18,135,1,11,1),
(3,135,1,22,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(136,28,'1990-01-23 09:21:29',449,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (7,136,1,36,1),
(16,136,1,45,1),
(13,136,1,31,1),
(1,136,1,34,1),
(11,136,1,12,1),
(14,136,1,39,1),
(5,136,1,48,1),
(10,136,1,3,1),
(6,136,1,43,1),
(15,136,1,40,1),
(2,136,1,34,1),
(18,136,1,27,1),
(8,136,1,17,1),
(4,136,1,40,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(137,28,'2003-03-02 16:14:13',53,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (11,137,1,44,1),
(18,137,1,9,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(138,28,'2012-07-05 06:38:16',441,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (14,138,1,42,1),
(6,138,1,28,1),
(7,138,1,40,1),
(9,138,1,39,1),
(18,138,1,8,1),
(13,138,1,29,1),
(12,138,1,24,1),
(15,138,1,32,1),
(5,138,1,3,1),
(10,138,1,40,1),
(11,138,1,25,1),
(16,138,1,48,1),
(4,138,1,37,1),
(17,138,1,46,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(139,28,'1993-10-15 11:33:29',134,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (8,139,1,30,1),
(6,139,1,14,1),
(16,139,1,6,1),
(5,139,1,26,1),
(17,139,1,2,1),
(14,139,1,44,1),
(3,139,1,12,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(140,28,'1985-03-30 10:44:14',19,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (16,140,1,12,1),
(12,140,1,7,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(141,29,'1993-09-25 15:41:55',275,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (11,141,1,2,1),
(6,141,1,22,1),
(15,141,1,14,1),
(10,141,1,42,1),
(3,141,1,8,1),
(4,141,1,4,1),
(17,141,1,4,1),
(5,141,1,44,1),
(2,141,1,42,1),
(8,141,1,11,1),
(9,141,1,7,1),
(12,141,1,39,1),
(13,141,1,31,1),
(7,141,1,5,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(142,29,'1995-10-14 09:11:39',95,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (9,142,1,36,1),
(2,142,1,13,1),
(11,142,1,1,1),
(5,142,1,45,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(143,29,'1994-03-11 10:29:52',406,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (14,143,1,16,1),
(2,143,1,38,1),
(5,143,1,38,1),
(18,143,1,39,1),
(13,143,1,44,1),
(7,143,1,20,1),
(8,143,1,19,1),
(6,143,1,49,1),
(17,143,1,36,1),
(12,143,1,39,1),
(11,143,1,20,1),
(16,143,1,9,1),
(9,143,1,2,1),
(4,143,1,37,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(144,29,'1979-03-11 21:19:37',208,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (7,144,1,47,1),
(11,144,1,19,1),
(2,144,1,41,1),
(10,144,1,50,1),
(18,144,1,13,1),
(17,144,1,38,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(145,29,'1988-08-26 02:02:21',133,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (5,145,1,39,1),
(16,145,1,45,1),
(9,145,1,26,1),
(18,145,1,23,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(146,30,'1973-10-01 02:32:47',414,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (7,146,1,50,1),
(16,146,1,35,1),
(2,146,1,6,1),
(14,146,1,38,1),
(18,146,1,44,1),
(8,146,1,29,1),
(1,146,1,44,1),
(5,146,1,4,1),
(13,146,1,28,1),
(6,146,1,48,1),
(9,146,1,13,1),
(12,146,1,10,1),
(17,146,1,26,1),
(3,146,1,21,1),
(4,146,1,18,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(147,30,'1995-01-01 14:38:03',245,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (8,147,1,40,1),
(4,147,1,9,1),
(14,147,1,29,1),
(1,147,1,28,1),
(6,147,1,28,1),
(7,147,1,24,1),
(12,147,1,27,1),
(5,147,1,35,1),
(2,147,1,25,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(148,30,'1977-07-03 07:28:42',213,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (3,148,1,11,1),
(9,148,1,26,1),
(6,148,1,32,1),
(2,148,1,26,1),
(15,148,1,2,1),
(18,148,1,29,1),
(17,148,1,50,1),
(10,148,1,37,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(149,30,'1979-09-27 12:17:58',54,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (11,149,1,13,1),
(10,149,1,41,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(150,30,'1982-05-08 03:44:39',117,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (6,150,1,7,1),
(8,150,1,24,1),
(7,150,1,16,1),
(11,150,1,4,1),
(2,150,1,6,1),
(13,150,1,18,1),
(10,150,1,42,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(151,31,'2006-11-11 18:11:02',237,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (18,151,1,14,1),
(15,151,1,4,1),
(16,151,1,46,1),
(7,151,1,30,1),
(5,151,1,15,1),
(3,151,1,26,1),
(9,151,1,34,1),
(2,151,1,23,1),
(1,151,1,2,1),
(11,151,1,43,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(152,31,'2005-09-07 01:21:40',413,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (12,152,1,33,1),
(3,152,1,27,1),
(9,152,1,26,1),
(5,152,1,13,1),
(10,152,1,37,1),
(7,152,1,4,1),
(1,152,1,42,1),
(4,152,1,40,1),
(14,152,1,50,1),
(16,152,1,46,1),
(15,152,1,5,1),
(8,152,1,33,1),
(6,152,1,33,1),
(17,152,1,24,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(153,31,'2014-12-24 00:29:33',159,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (16,153,1,44,1),
(9,153,1,16,1),
(3,153,1,28,1),
(14,153,1,43,1),
(6,153,1,23,1),
(15,153,1,5,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(154,31,'2015-08-09 02:05:41',226,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (8,154,1,31,1),
(17,154,1,37,1),
(12,154,1,27,1),
(15,154,1,3,1),
(18,154,1,2,1),
(5,154,1,44,1),
(7,154,1,14,1),
(4,154,1,28,1),
(6,154,1,40,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(155,31,'2012-11-22 11:10:54',152,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (18,155,1,49,1),
(4,155,1,36,1),
(7,155,1,32,1),
(3,155,1,35,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(156,32,'1999-09-13 13:14:41',99,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (5,156,1,48,1),
(17,156,1,31,1),
(14,156,1,20,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(157,32,'2003-07-12 00:40:19',144,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (15,157,1,27,1),
(2,157,1,8,1),
(7,157,1,11,1),
(6,157,1,25,1),
(5,157,1,34,1),
(1,157,1,39,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(158,32,'2005-08-29 10:40:32',279,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (7,158,1,48,1),
(15,158,1,18,1),
(17,158,1,12,1),
(1,158,1,43,1),
(12,158,1,27,1),
(4,158,1,41,1),
(3,158,1,6,1),
(5,158,1,37,1),
(10,158,1,47,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(159,32,'2014-10-01 19:46:53',253,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (15,159,1,1,1),
(4,159,1,38,1),
(17,159,1,6,1),
(16,159,1,37,1),
(5,159,1,1,1),
(12,159,1,42,1),
(2,159,1,20,1),
(7,159,1,28,1),
(3,159,1,18,1),
(13,159,1,8,1),
(6,159,1,9,1),
(1,159,1,44,1),
(11,159,1,1,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(160,32,'1974-05-24 05:37:34',281,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (1,160,1,15,1),
(14,160,1,47,1),
(18,160,1,48,1),
(17,160,1,17,1),
(7,160,1,18,1),
(3,160,1,6,1),
(9,160,1,12,1),
(13,160,1,3,1),
(16,160,1,40,1),
(12,160,1,9,1),
(4,160,1,15,1),
(2,160,1,17,1),
(6,160,1,34,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(161,33,'1983-06-06 03:08:09',201,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (17,161,1,31,1),
(18,161,1,2,1),
(14,161,1,16,1),
(2,161,1,16,1),
(16,161,1,46,1),
(15,161,1,21,1),
(1,161,1,5,1),
(4,161,1,25,1),
(11,161,1,39,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(162,33,'1993-08-08 11:54:15',168,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (6,162,1,23,1),
(15,162,1,23,1),
(18,162,1,36,1),
(13,162,1,50,1),
(11,162,1,36,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(163,33,'1972-09-12 02:08:37',402,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (6,163,1,50,1),
(14,163,1,46,1),
(3,163,1,39,1),
(4,163,1,7,1),
(9,163,1,16,1),
(7,163,1,36,1),
(5,163,1,48,1),
(8,163,1,31,1),
(13,163,1,41,1),
(2,163,1,19,1),
(11,163,1,19,1),
(12,163,1,50,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(164,33,'1976-02-11 08:09:19',76,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (18,164,1,18,1),
(9,164,1,5,1),
(10,164,1,28,1),
(5,164,1,1,1),
(12,164,1,24,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(165,33,'1974-07-15 20:35:32',231,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (3,165,1,38,1),
(9,165,1,49,1),
(1,165,1,25,1),
(10,165,1,30,1),
(13,165,1,17,1),
(12,165,1,31,1),
(5,165,1,41,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(166,34,'2000-06-02 10:58:27',267,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (18,166,1,42,1),
(1,166,1,15,1),
(14,166,1,11,1),
(5,166,1,16,1),
(11,166,1,39,1),
(12,166,1,9,1),
(7,166,1,50,1),
(13,166,1,12,1),
(17,166,1,32,1),
(9,166,1,12,1),
(10,166,1,15,1),
(16,166,1,7,1),
(2,166,1,7,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(167,34,'1993-11-15 06:18:00',95,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (18,167,1,45,1),
(14,167,1,50,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(168,34,'1983-11-10 21:55:17',236,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (16,168,1,22,1),
(11,168,1,37,1),
(6,168,1,25,1),
(5,168,1,35,1),
(2,168,1,49,1),
(15,168,1,30,1),
(18,168,1,18,1),
(4,168,1,2,1),
(13,168,1,18,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(169,34,'1998-07-29 20:32:22',341,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (4,169,1,42,1),
(17,169,1,48,1),
(10,169,1,27,1),
(3,169,1,34,1),
(5,169,1,2,1),
(12,169,1,21,1),
(13,169,1,33,1),
(15,169,1,20,1),
(7,169,1,28,1),
(1,169,1,41,1),
(6,169,1,45,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(170,34,'2003-09-04 10:36:39',240,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (18,170,1,33,1),
(15,170,1,28,1),
(5,170,1,3,1),
(8,170,1,1,1),
(16,170,1,8,1),
(13,170,1,27,1),
(14,170,1,33,1),
(17,170,1,27,1),
(2,170,1,35,1),
(9,170,1,6,1),
(3,170,1,18,1),
(11,170,1,21,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(171,35,'1974-11-18 03:44:31',78,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (4,171,1,24,1),
(16,171,1,17,1),
(12,171,1,37,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(172,35,'1998-06-21 08:23:30',406,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (6,172,1,39,1),
(17,172,1,11,1),
(4,172,1,40,1),
(14,172,1,16,1),
(2,172,1,34,1),
(12,172,1,23,1),
(11,172,1,15,1),
(9,172,1,26,1),
(10,172,1,7,1),
(3,172,1,43,1),
(7,172,1,47,1),
(15,172,1,31,1),
(1,172,1,27,1),
(18,172,1,47,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(173,35,'1972-01-15 04:37:56',248,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (14,173,1,41,1),
(7,173,1,3,1),
(3,173,1,33,1),
(16,173,1,22,1),
(17,173,1,10,1),
(6,173,1,23,1),
(13,173,1,25,1),
(18,173,1,40,1),
(10,173,1,6,1),
(2,173,1,15,1),
(4,173,1,30,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(174,35,'1970-11-03 20:41:24',393,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (13,174,1,19,1),
(14,174,1,9,1),
(10,174,1,50,1),
(2,174,1,46,1),
(15,174,1,24,1),
(6,174,1,50,1),
(5,174,1,28,1),
(7,174,1,48,1),
(12,174,1,34,1),
(4,174,1,32,1),
(18,174,1,17,1),
(8,174,1,1,1),
(3,174,1,35,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(175,35,'1991-04-07 08:33:55',271,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (7,175,1,34,1),
(13,175,1,41,1),
(6,175,1,9,1),
(8,175,1,19,1),
(10,175,1,6,1),
(5,175,1,12,1),
(3,175,1,28,1),
(9,175,1,19,1),
(17,175,1,33,1),
(15,175,1,29,1),
(18,175,1,41,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(176,36,'1979-05-29 20:07:40',225,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (3,176,1,20,1),
(17,176,1,2,1),
(1,176,1,10,1),
(15,176,1,47,1),
(10,176,1,29,1),
(13,176,1,19,1),
(11,176,1,34,1),
(8,176,1,14,1),
(5,176,1,20,1),
(12,176,1,30,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(177,36,'1979-08-27 17:44:19',480,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (4,177,1,47,1),
(17,177,1,14,1),
(12,177,1,25,1),
(9,177,1,21,1),
(3,177,1,24,1),
(1,177,1,12,1),
(6,177,1,47,1),
(2,177,1,28,1),
(8,177,1,48,1),
(15,177,1,48,1),
(14,177,1,44,1),
(11,177,1,38,1),
(13,177,1,44,1),
(16,177,1,5,1),
(5,177,1,35,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(178,36,'1992-05-06 22:12:39',161,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (13,178,1,22,1),
(11,178,1,27,1),
(7,178,1,30,1),
(12,178,1,24,1),
(6,178,1,13,1),
(18,178,1,45,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(179,36,'1989-04-23 11:47:24',353,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (14,179,1,43,1),
(17,179,1,6,1),
(6,179,1,22,1),
(15,179,1,34,1),
(5,179,1,8,1),
(13,179,1,9,1),
(9,179,1,27,1),
(16,179,1,45,1),
(7,179,1,44,1),
(4,179,1,22,1),
(8,179,1,22,1),
(1,179,1,12,1),
(10,179,1,37,1),
(2,179,1,22,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(180,36,'2009-09-13 20:18:59',191,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (8,180,1,27,1),
(10,180,1,15,1),
(16,180,1,6,1),
(4,180,1,33,1),
(12,180,1,16,1),
(15,180,1,35,1),
(18,180,1,19,1),
(7,180,1,40,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(181,37,'2007-09-25 14:34:13',451,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (14,181,1,3,1),
(10,181,1,33,1),
(11,181,1,11,1),
(8,181,1,49,1),
(3,181,1,40,1),
(17,181,1,27,1),
(2,181,1,38,1),
(5,181,1,43,1),
(6,181,1,43,1),
(13,181,1,37,1),
(18,181,1,27,1),
(1,181,1,50,1),
(9,181,1,50,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(182,37,'2006-07-11 04:11:57',399,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (11,182,1,47,1),
(10,182,1,47,1),
(6,182,1,3,1),
(5,182,1,7,1),
(12,182,1,37,1),
(18,182,1,50,1),
(9,182,1,9,1),
(3,182,1,11,1),
(13,182,1,32,1),
(16,182,1,37,1),
(15,182,1,42,1),
(14,182,1,16,1),
(2,182,1,19,1),
(1,182,1,30,1),
(7,182,1,12,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(183,37,'1973-09-08 08:46:52',358,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (14,183,1,21,1),
(4,183,1,31,1),
(8,183,1,27,1),
(2,183,1,23,1),
(7,183,1,47,1),
(15,183,1,16,1),
(18,183,1,24,1),
(6,183,1,35,1),
(5,183,1,44,1),
(3,183,1,22,1),
(13,183,1,24,1),
(1,183,1,4,1),
(12,183,1,2,1),
(10,183,1,35,1),
(11,183,1,3,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(184,37,'2012-07-10 13:25:40',380,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (11,184,1,8,1),
(8,184,1,42,1),
(12,184,1,6,1),
(9,184,1,43,1),
(15,184,1,33,1),
(3,184,1,42,1),
(14,184,1,45,1),
(13,184,1,24,1),
(16,184,1,29,1),
(17,184,1,7,1),
(7,184,1,30,1),
(5,184,1,5,1),
(4,184,1,32,1),
(18,184,1,34,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(185,37,'1997-03-14 12:58:02',207,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (9,185,1,48,1),
(8,185,1,8,1),
(5,185,1,25,1),
(14,185,1,24,1),
(1,185,1,43,1),
(16,185,1,41,1),
(2,185,1,13,1),
(10,185,1,5,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(186,38,'1989-08-13 05:54:27',112,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (9,186,1,4,1),
(6,186,1,21,1),
(12,186,1,22,1),
(3,186,1,20,1),
(17,186,1,45,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(187,38,'1980-01-19 08:01:11',301,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (1,187,1,34,1),
(17,187,1,6,1),
(12,187,1,12,1),
(2,187,1,7,1),
(18,187,1,40,1),
(11,187,1,29,1),
(3,187,1,7,1),
(9,187,1,18,1),
(7,187,1,30,1),
(16,187,1,33,1),
(6,187,1,36,1),
(5,187,1,43,1),
(13,187,1,6,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(188,38,'2006-05-26 00:01:20',279,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (15,188,1,42,1),
(13,188,1,24,1),
(4,188,1,4,1),
(11,188,1,33,1),
(5,188,1,23,1),
(16,188,1,48,1),
(18,188,1,4,1),
(3,188,1,7,1),
(12,188,1,34,1),
(6,188,1,28,1),
(17,188,1,29,1),
(8,188,1,3,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(189,38,'1982-06-26 08:56:02',468,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (17,189,1,47,1),
(7,189,1,30,1),
(6,189,1,25,1),
(5,189,1,38,1),
(1,189,1,22,1),
(11,189,1,50,1),
(3,189,1,47,1),
(10,189,1,10,1),
(16,189,1,36,1),
(4,189,1,46,1),
(9,189,1,35,1),
(8,189,1,48,1),
(14,189,1,34,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(190,38,'2001-03-02 19:21:49',43,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (2,190,1,42,1),
(16,190,1,1,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(191,39,'1992-08-26 23:09:22',256,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (14,191,1,5,1),
(7,191,1,27,1),
(1,191,1,48,1),
(16,191,1,13,1),
(6,191,1,10,1),
(2,191,1,41,1),
(17,191,1,49,1),
(13,191,1,24,1),
(12,191,1,35,1),
(3,191,1,4,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(192,39,'2003-11-20 03:26:15',58,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (6,192,1,15,1),
(18,192,1,42,1),
(9,192,1,1,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(193,39,'1989-11-26 01:08:08',381,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (6,193,1,3,1),
(9,193,1,13,1),
(18,193,1,42,1),
(8,193,1,7,1),
(10,193,1,41,1),
(16,193,1,32,1),
(12,193,1,14,1),
(5,193,1,10,1),
(4,193,1,49,1),
(13,193,1,33,1),
(15,193,1,50,1),
(11,193,1,30,1),
(2,193,1,28,1),
(1,193,1,29,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(194,39,'1992-11-12 12:59:53',50,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (11,194,1,4,1),
(8,194,1,46,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(195,39,'1988-07-26 03:22:17',179,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (17,195,1,14,1),
(16,195,1,14,1),
(15,195,1,19,1),
(9,195,1,37,1),
(13,195,1,39,1),
(5,195,1,5,1),
(11,195,1,37,1),
(2,195,1,14,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(196,40,'2007-09-06 15:39:42',402,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (18,196,1,12,1),
(3,196,1,30,1),
(12,196,1,19,1),
(5,196,1,8,1),
(7,196,1,33,1),
(4,196,1,13,1),
(17,196,1,3,1),
(1,196,1,43,1),
(13,196,1,32,1),
(2,196,1,37,1),
(9,196,1,31,1),
(15,196,1,48,1),
(11,196,1,45,1),
(8,196,1,48,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(197,40,'1983-08-12 04:36:38',223,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (12,197,1,9,1),
(4,197,1,7,1),
(9,197,1,24,1),
(10,197,1,48,1),
(14,197,1,40,1),
(8,197,1,30,1),
(3,197,1,37,1),
(1,197,1,15,1),
(17,197,1,13,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(198,40,'1975-04-11 07:31:30',307,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (13,198,1,30,1),
(15,198,1,4,1),
(4,198,1,38,1),
(8,198,1,29,1),
(2,198,1,6,1),
(1,198,1,39,1),
(16,198,1,15,1),
(5,198,1,15,1),
(6,198,1,2,1),
(9,198,1,2,1),
(7,198,1,43,1),
(10,198,1,4,1),
(11,198,1,49,1),
(12,198,1,10,1),
(18,198,1,21,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(199,40,'2010-03-01 15:44:51',351,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (8,199,1,32,1),
(10,199,1,33,1),
(1,199,1,2,1),
(3,199,1,21,1),
(17,199,1,44,1),
(6,199,1,25,1),
(12,199,1,42,1),
(4,199,1,23,1),
(11,199,1,25,1),
(15,199,1,19,1),
(16,199,1,39,1),
(14,199,1,43,1),
(7,199,1,3,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(200,40,'2002-04-09 00:20:21',180,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (15,200,1,40,1),
(6,200,1,37,1),
(4,200,1,19,1),
(2,200,1,40,1),
(8,200,1,16,1),
(9,200,1,28,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(201,41,'2000-01-30 18:10:14',221,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (4,201,1,30,1),
(13,201,1,39,1),
(6,201,1,40,1),
(2,201,1,39,1),
(11,201,1,13,1),
(12,201,1,34,1),
(15,201,1,26,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(202,41,'2012-01-03 11:31:57',369,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (9,202,1,30,1),
(11,202,1,9,1),
(10,202,1,4,1),
(5,202,1,49,1),
(13,202,1,26,1),
(1,202,1,19,1),
(18,202,1,44,1),
(4,202,1,41,1),
(16,202,1,14,1),
(12,202,1,30,1),
(15,202,1,23,1),
(7,202,1,31,1),
(17,202,1,5,1),
(2,202,1,44,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(203,41,'1987-05-10 06:39:56',362,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (12,203,1,22,1),
(17,203,1,6,1),
(3,203,1,50,1),
(18,203,1,13,1),
(9,203,1,8,1),
(5,203,1,16,1),
(6,203,1,49,1),
(16,203,1,46,1),
(8,203,1,37,1),
(13,203,1,16,1),
(11,203,1,22,1),
(2,203,1,24,1),
(15,203,1,13,1),
(1,203,1,40,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(204,41,'2008-05-21 03:07:10',131,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (6,204,1,19,1),
(13,204,1,46,1),
(17,204,1,26,1),
(4,204,1,15,1),
(16,204,1,25,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(205,41,'1999-10-28 16:51:42',359,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (17,205,1,33,1),
(2,205,1,32,1),
(13,205,1,22,1),
(6,205,1,8,1),
(8,205,1,28,1),
(1,205,1,50,1),
(4,205,1,41,1),
(7,205,1,22,1),
(3,205,1,32,1),
(15,205,1,7,1),
(5,205,1,43,1),
(16,205,1,41,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(206,42,'1988-07-12 01:20:45',76,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (13,206,1,16,1),
(7,206,1,26,1),
(8,206,1,16,1),
(11,206,1,18,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(207,42,'1993-01-30 12:44:39',250,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (12,207,1,33,1),
(10,207,1,30,1),
(14,207,1,20,1),
(5,207,1,32,1),
(13,207,1,44,1),
(2,207,1,9,1),
(4,207,1,36,1),
(11,207,1,46,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(208,42,'2018-03-05 10:48:33',239,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (8,208,1,23,1),
(12,208,1,21,1),
(15,208,1,46,1),
(2,208,1,6,1),
(16,208,1,36,1),
(4,208,1,20,1),
(10,208,1,12,1),
(5,208,1,1,1),
(11,208,1,43,1),
(14,208,1,31,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(209,42,'1975-12-13 20:04:16',441,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (18,209,1,9,1),
(12,209,1,42,1),
(10,209,1,30,1),
(5,209,1,34,1),
(14,209,1,41,1),
(1,209,1,36,1),
(6,209,1,26,1),
(2,209,1,24,1),
(7,209,1,36,1),
(16,209,1,15,1),
(11,209,1,38,1),
(4,209,1,33,1),
(13,209,1,34,1),
(3,209,1,43,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(210,42,'1977-01-11 22:51:36',458,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (18,210,1,29,1),
(10,210,1,47,1),
(14,210,1,39,1),
(5,210,1,3,1),
(15,210,1,29,1),
(6,210,1,32,1),
(13,210,1,48,1),
(2,210,1,48,1),
(1,210,1,8,1),
(7,210,1,26,1),
(16,210,1,1,1),
(9,210,1,34,1),
(12,210,1,14,1),
(4,210,1,50,1),
(8,210,1,50,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(211,43,'1981-12-28 01:06:01',63,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (12,211,1,39,1),
(5,211,1,24,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(212,43,'1995-01-25 21:43:59',292,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (16,212,1,10,1),
(10,212,1,44,1),
(3,212,1,20,1),
(6,212,1,7,1),
(13,212,1,26,1),
(1,212,1,11,1),
(9,212,1,1,1),
(17,212,1,23,1),
(14,212,1,7,1),
(4,212,1,3,1),
(11,212,1,26,1),
(12,212,1,42,1),
(7,212,1,40,1),
(18,212,1,32,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(213,43,'1973-11-09 19:44:45',73,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (3,213,1,7,1),
(2,213,1,15,1),
(5,213,1,25,1),
(12,213,1,26,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(214,43,'1976-01-23 04:41:15',165,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (3,214,1,41,1),
(11,214,1,23,1),
(18,214,1,11,1),
(17,214,1,1,1),
(1,214,1,11,1),
(2,214,1,43,1),
(9,214,1,35,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(215,43,'1992-02-17 01:33:01',95,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (2,215,1,14,1),
(4,215,1,12,1),
(13,215,1,28,1),
(11,215,1,41,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(216,44,'1994-02-26 04:42:59',74,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (11,216,1,25,1),
(7,216,1,34,1),
(9,216,1,8,1),
(3,216,1,7,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(217,44,'2008-06-18 14:11:29',387,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (18,217,1,35,1),
(8,217,1,34,1),
(4,217,1,12,1),
(14,217,1,35,1),
(17,217,1,9,1),
(1,217,1,19,1),
(11,217,1,17,1),
(10,217,1,34,1),
(16,217,1,19,1),
(12,217,1,34,1),
(9,217,1,28,1),
(3,217,1,40,1),
(2,217,1,34,1),
(13,217,1,37,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(218,44,'1970-09-30 07:51:01',273,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (9,218,1,31,1),
(2,218,1,13,1),
(17,218,1,5,1),
(16,218,1,29,1),
(7,218,1,30,1),
(6,218,1,5,1),
(3,218,1,8,1),
(5,218,1,50,1),
(11,218,1,7,1),
(14,218,1,3,1),
(18,218,1,18,1),
(1,218,1,20,1),
(10,218,1,3,1),
(4,218,1,36,1),
(12,218,1,15,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(219,44,'1970-01-02 10:29:49',233,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (2,219,1,29,1),
(17,219,1,23,1),
(5,219,1,5,1),
(14,219,1,13,1),
(18,219,1,2,1),
(9,219,1,26,1),
(3,219,1,1,1),
(16,219,1,11,1),
(4,219,1,35,1),
(8,219,1,35,1),
(1,219,1,17,1),
(10,219,1,6,1),
(12,219,1,30,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(220,44,'1990-04-16 19:55:21',130,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (5,220,1,35,1),
(14,220,1,5,1),
(3,220,1,7,1),
(8,220,1,43,1),
(16,220,1,19,1),
(9,220,1,21,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(221,45,'2007-11-02 03:21:08',201,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (18,221,1,14,1),
(3,221,1,20,1),
(16,221,1,1,1),
(8,221,1,40,1),
(10,221,1,34,1),
(2,221,1,1,1),
(4,221,1,23,1),
(1,221,1,28,1),
(5,221,1,5,1),
(9,221,1,35,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(222,45,'2017-11-18 10:29:43',178,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (16,222,1,16,1),
(17,222,1,16,1),
(7,222,1,4,1),
(1,222,1,18,1),
(9,222,1,37,1),
(3,222,1,11,1),
(10,222,1,12,1),
(4,222,1,40,1),
(8,222,1,24,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(223,45,'1994-12-19 11:56:39',339,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (7,223,1,23,1),
(13,223,1,9,1),
(8,223,1,35,1),
(1,223,1,33,1),
(9,223,1,1,1),
(12,223,1,18,1),
(3,223,1,43,1),
(18,223,1,3,1),
(14,223,1,13,1),
(10,223,1,29,1),
(11,223,1,17,1),
(4,223,1,19,1),
(5,223,1,33,1),
(6,223,1,37,1),
(15,223,1,26,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(224,45,'1974-01-02 18:43:00',118,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (13,224,1,9,1),
(10,224,1,29,1),
(16,224,1,15,1),
(4,224,1,49,1),
(8,224,1,16,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(225,45,'1980-03-22 06:51:38',367,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (16,225,1,3,1),
(5,225,1,48,1),
(4,225,1,30,1),
(17,225,1,43,1),
(12,225,1,11,1),
(8,225,1,50,1),
(10,225,1,42,1),
(15,225,1,30,1),
(13,225,1,3,1),
(11,225,1,43,1),
(6,225,1,17,1),
(9,225,1,47,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(226,46,'1998-06-11 22:57:03',367,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (12,226,1,13,1),
(6,226,1,29,1),
(11,226,1,21,1),
(15,226,1,28,1),
(5,226,1,17,1),
(9,226,1,39,1),
(17,226,1,29,1),
(3,226,1,31,1),
(13,226,1,22,1),
(7,226,1,28,1),
(14,226,1,42,1),
(2,226,1,22,1),
(1,226,1,42,1),
(18,226,1,4,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(227,46,'1983-07-27 23:22:34',166,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (11,227,1,49,1),
(12,227,1,2,1),
(16,227,1,37,1),
(3,227,1,20,1),
(14,227,1,12,1),
(6,227,1,25,1),
(2,227,1,9,1),
(13,227,1,12,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(228,46,'1982-12-19 00:52:13',129,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (12,228,1,46,1),
(13,228,1,4,1),
(15,228,1,29,1),
(8,228,1,50,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(229,46,'1981-07-11 02:11:53',196,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (2,229,1,33,1),
(15,229,1,23,1),
(10,229,1,22,1),
(7,229,1,12,1),
(3,229,1,12,1),
(13,229,1,28,1),
(5,229,1,45,1),
(8,229,1,21,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(230,46,'1977-11-13 20:34:55',298,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (15,230,1,50,1),
(10,230,1,40,1),
(18,230,1,24,1),
(17,230,1,34,1),
(9,230,1,1,1),
(6,230,1,44,1),
(2,230,1,26,1),
(5,230,1,42,1),
(1,230,1,37,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(231,47,'1990-08-11 04:20:01',136,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (4,231,1,34,1),
(12,231,1,45,1),
(10,231,1,25,1),
(1,231,1,32,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(232,47,'1998-12-06 17:54:37',260,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (13,232,1,27,1),
(1,232,1,46,1),
(8,232,1,46,1),
(17,232,1,24,1),
(4,232,1,13,1),
(9,232,1,18,1),
(5,232,1,23,1),
(11,232,1,23,1),
(15,232,1,40,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(233,47,'1979-03-20 11:35:54',224,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (11,233,1,36,1),
(3,233,1,32,1),
(2,233,1,21,1),
(15,233,1,16,1),
(8,233,1,16,1),
(4,233,1,26,1),
(9,233,1,47,1),
(12,233,1,11,1),
(5,233,1,19,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(234,47,'1986-01-19 19:47:01',384,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (11,234,1,27,1),
(15,234,1,40,1),
(10,234,1,39,1),
(14,234,1,2,1),
(13,234,1,8,1),
(5,234,1,7,1),
(7,234,1,38,1),
(18,234,1,49,1),
(16,234,1,12,1),
(3,234,1,25,1),
(2,234,1,48,1),
(8,234,1,31,1),
(12,234,1,20,1),
(6,234,1,38,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(235,47,'1985-09-06 23:49:44',340,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (6,235,1,1,1),
(14,235,1,9,1),
(5,235,1,31,1),
(13,235,1,22,1),
(8,235,1,24,1),
(12,235,1,28,1),
(1,235,1,22,1),
(9,235,1,29,1),
(18,235,1,44,1),
(15,235,1,12,1),
(17,235,1,44,1),
(7,235,1,18,1),
(11,235,1,29,1),
(4,235,1,27,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(236,48,'1970-03-26 16:50:55',189,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (16,236,1,24,1),
(7,236,1,20,1),
(5,236,1,22,1),
(8,236,1,11,1),
(9,236,1,38,1),
(4,236,1,13,1),
(3,236,1,34,1),
(10,236,1,2,1),
(12,236,1,25,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(237,48,'2017-04-10 03:58:55',379,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (15,237,1,24,1),
(6,237,1,32,1),
(7,237,1,48,1),
(17,237,1,44,1),
(14,237,1,41,1),
(5,237,1,34,1),
(16,237,1,31,1),
(10,237,1,26,1),
(4,237,1,23,1),
(1,237,1,46,1),
(3,237,1,18,1),
(13,237,1,12,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(238,48,'1982-04-07 16:56:39',102,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (10,238,1,9,1),
(6,238,1,11,1),
(8,238,1,47,1),
(9,238,1,29,1),
(18,238,1,6,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(239,48,'2015-07-12 18:51:10',233,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (16,239,1,33,1),
(2,239,1,40,1),
(7,239,1,38,1),
(17,239,1,27,1),
(4,239,1,33,1),
(3,239,1,42,1),
(14,239,1,20,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(240,48,'2010-08-04 02:13:03',212,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (18,240,1,7,1),
(16,240,1,18,1),
(4,240,1,15,1),
(11,240,1,37,1),
(17,240,1,13,1),
(2,240,1,49,1),
(5,240,1,28,1),
(10,240,1,45,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(241,49,'2014-10-23 20:17:07',54,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (17,241,1,31,1),
(5,241,1,23,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(242,49,'2011-06-30 15:16:36',50,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (2,242,1,29,1),
(11,242,1,21,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(243,49,'1989-10-29 16:22:45',392,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (14,243,1,20,1),
(11,243,1,9,1),
(18,243,1,29,1),
(15,243,1,28,1),
(8,243,1,44,1),
(16,243,1,39,1),
(4,243,1,39,1),
(12,243,1,48,1),
(3,243,1,8,1),
(9,243,1,26,1),
(5,243,1,44,1),
(13,243,1,27,1),
(6,243,1,31,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(244,49,'1977-11-21 17:27:23',86,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (15,244,1,48,1),
(10,244,1,38,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(245,49,'1978-10-02 23:02:52',266,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (10,245,1,13,1),
(18,245,1,10,1),
(12,245,1,13,1),
(6,245,1,20,1),
(4,245,1,18,1),
(17,245,1,8,1),
(9,245,1,27,1),
(5,245,1,17,1),
(2,245,1,26,1),
(14,245,1,29,1),
(13,245,1,40,1),
(16,245,1,6,1),
(7,245,1,39,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(246,50,'1972-05-11 04:21:10',14,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (16,246,1,9,1),
(15,246,1,5,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(247,50,'1984-01-04 13:45:17',335,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (14,247,1,37,1),
(2,247,1,28,1),
(6,247,1,35,1),
(4,247,1,46,1),
(15,247,1,34,1),
(7,247,1,33,1),
(17,247,1,4,1),
(8,247,1,47,1),
(13,247,1,15,1),
(9,247,1,29,1),
(3,247,1,26,1),
(11,247,1,1,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(248,50,'2015-08-04 04:15:01',262,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (15,248,1,31,1),
(5,248,1,11,1),
(3,248,1,32,1),
(11,248,1,16,1),
(6,248,1,15,1),
(9,248,1,9,1),
(4,248,1,7,1),
(7,248,1,20,1),
(16,248,1,28,1),
(17,248,1,50,1),
(14,248,1,43,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(249,50,'1993-12-07 08:53:38',124,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (5,249,1,32,1),
(2,249,1,35,1),
(14,249,1,19,1),
(13,249,1,1,1),
(18,249,1,37,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(250,50,'1975-01-09 00:37:29',13,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (10,250,1,9,1),
(13,250,1,4,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(251,51,'1982-09-18 17:22:04',130,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (2,251,1,6,1),
(8,251,1,10,1),
(4,251,1,31,1),
(7,251,1,4,1),
(18,251,1,14,1),
(3,251,1,17,1),
(6,251,1,15,1),
(16,251,1,33,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(252,51,'1992-03-07 16:39:01',38,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (10,252,1,2,1),
(18,252,1,36,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(253,51,'1974-04-04 23:23:59',188,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (11,253,1,44,1),
(1,253,1,5,1),
(12,253,1,25,1),
(10,253,1,11,1),
(7,253,1,22,1),
(14,253,1,26,1),
(6,253,1,4,1),
(17,253,1,19,1),
(8,253,1,32,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(254,51,'1981-06-17 13:38:16',81,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (9,254,1,12,1),
(12,254,1,28,1),
(16,254,1,41,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(255,51,'1970-01-09 21:54:29',368,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (7,255,1,26,1),
(6,255,1,10,1),
(2,255,1,9,1),
(1,255,1,38,1),
(18,255,1,45,1),
(12,255,1,19,1),
(8,255,1,43,1),
(17,255,1,47,1),
(3,255,1,17,1),
(5,255,1,44,1),
(11,255,1,14,1),
(10,255,1,27,1),
(4,255,1,29,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(256,52,'2000-08-24 15:39:53',203,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (7,256,1,37,1),
(14,256,1,29,1),
(12,256,1,49,1),
(16,256,1,10,1),
(18,256,1,13,1),
(4,256,1,5,1),
(9,256,1,33,1),
(8,256,1,15,1),
(11,256,1,12,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(257,52,'2008-08-27 08:30:59',312,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (7,257,1,5,1),
(8,257,1,19,1),
(14,257,1,37,1),
(9,257,1,3,1),
(5,257,1,36,1),
(17,257,1,8,1),
(3,257,1,32,1),
(10,257,1,32,1),
(6,257,1,18,1),
(12,257,1,5,1),
(18,257,1,18,1),
(1,257,1,41,1),
(16,257,1,4,1),
(11,257,1,19,1),
(4,257,1,35,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(258,52,'1973-11-22 18:18:50',183,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (1,258,1,9,1),
(6,258,1,49,1),
(5,258,1,47,1),
(11,258,1,26,1),
(9,258,1,33,1),
(13,258,1,19,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(259,52,'2012-12-09 17:43:31',314,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (16,259,1,7,1),
(14,259,1,9,1),
(12,259,1,19,1),
(3,259,1,45,1),
(18,259,1,13,1),
(2,259,1,46,1),
(10,259,1,38,1),
(8,259,1,50,1),
(4,259,1,48,1),
(1,259,1,25,1),
(11,259,1,14,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(260,52,'1995-04-26 09:21:47',356,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (10,260,1,10,1),
(17,260,1,38,1),
(8,260,1,22,1),
(13,260,1,19,1),
(11,260,1,5,1),
(12,260,1,50,1),
(9,260,1,4,1),
(18,260,1,9,1),
(15,260,1,35,1),
(16,260,1,30,1),
(5,260,1,16,1),
(6,260,1,43,1),
(1,260,1,10,1),
(2,260,1,38,1),
(4,260,1,27,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(261,53,'1988-08-29 15:08:57',251,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (16,261,1,28,1),
(1,261,1,7,1),
(7,261,1,34,1),
(18,261,1,19,1),
(5,261,1,36,1),
(11,261,1,34,1),
(2,261,1,30,1),
(13,261,1,17,1),
(6,261,1,46,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(262,53,'1977-06-29 04:53:38',239,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (10,262,1,31,1),
(7,262,1,18,1),
(9,262,1,8,1),
(5,262,1,50,1),
(16,262,1,20,1),
(15,262,1,14,1),
(4,262,1,11,1),
(17,262,1,41,1),
(13,262,1,40,1),
(1,262,1,6,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(263,53,'1981-12-15 12:39:08',141,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (17,263,1,42,1),
(15,263,1,49,1),
(2,263,1,50,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(264,53,'1974-01-09 10:26:45',113,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (11,264,1,38,1),
(4,264,1,39,1),
(8,264,1,36,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(265,53,'1970-02-03 18:29:37',296,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (12,265,1,35,1),
(11,265,1,16,1),
(13,265,1,28,1),
(15,265,1,2,1),
(2,265,1,6,1),
(7,265,1,18,1),
(9,265,1,14,1),
(10,265,1,26,1),
(17,265,1,30,1),
(18,265,1,4,1),
(1,265,1,11,1),
(4,265,1,27,1),
(5,265,1,4,1),
(8,265,1,42,1),
(16,265,1,33,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(266,54,'1989-05-02 10:57:34',126,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (13,266,1,44,1),
(9,266,1,9,1),
(12,266,1,17,1),
(18,266,1,24,1),
(17,266,1,32,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(267,54,'1999-03-01 22:53:41',264,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (10,267,1,15,1),
(17,267,1,30,1),
(16,267,1,28,1),
(13,267,1,47,1),
(8,267,1,33,1),
(5,267,1,29,1),
(7,267,1,48,1),
(15,267,1,12,1),
(18,267,1,22,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(268,54,'2011-11-15 09:27:40',185,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (7,268,1,42,1),
(18,268,1,36,1),
(11,268,1,17,1),
(3,268,1,49,1),
(17,268,1,41,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(269,54,'1987-05-22 09:47:25',129,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (3,269,1,26,1),
(5,269,1,9,1),
(14,269,1,5,1),
(2,269,1,5,1),
(4,269,1,21,1),
(6,269,1,16,1),
(1,269,1,40,1),
(18,269,1,7,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(270,54,'1984-01-26 19:57:15',191,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (6,270,1,13,1),
(8,270,1,49,1),
(18,270,1,35,1),
(5,270,1,36,1),
(3,270,1,26,1),
(15,270,1,11,1),
(10,270,1,10,1),
(4,270,1,11,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(271,55,'1983-01-08 21:59:21',78,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (6,271,1,23,1),
(17,271,1,26,1),
(16,271,1,29,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(272,55,'2017-05-21 10:38:01',110,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (7,272,1,26,1),
(10,272,1,14,1),
(15,272,1,9,1),
(5,272,1,13,1),
(18,272,1,48,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(273,55,'1995-03-13 12:48:51',449,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (17,273,1,18,1),
(14,273,1,38,1),
(13,273,1,49,1),
(12,273,1,50,1),
(1,273,1,28,1),
(7,273,1,50,1),
(11,273,1,50,1),
(8,273,1,8,1),
(10,273,1,44,1),
(9,273,1,44,1),
(18,273,1,5,1),
(5,273,1,14,1),
(6,273,1,16,1),
(15,273,1,23,1),
(2,273,1,12,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(274,55,'2014-04-27 12:28:02',223,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (3,274,1,17,1),
(5,274,1,21,1),
(4,274,1,27,1),
(1,274,1,43,1),
(17,274,1,22,1),
(2,274,1,50,1),
(7,274,1,7,1),
(9,274,1,19,1),
(13,274,1,17,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(275,55,'1970-08-09 11:27:59',229,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (10,275,1,18,1),
(1,275,1,1,1),
(16,275,1,13,1),
(3,275,1,39,1),
(13,275,1,50,1),
(18,275,1,16,1),
(17,275,1,37,1),
(6,275,1,5,1),
(8,275,1,50,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(276,56,'1988-01-18 17:17:09',333,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (13,276,1,11,1),
(2,276,1,35,1),
(16,276,1,27,1),
(18,276,1,30,1),
(9,276,1,20,1),
(3,276,1,6,1),
(17,276,1,31,1),
(11,276,1,22,1),
(12,276,1,32,1),
(1,276,1,28,1),
(15,276,1,6,1),
(6,276,1,50,1),
(4,276,1,35,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(277,56,'1982-11-06 04:58:36',267,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (11,277,1,45,1),
(5,277,1,22,1),
(15,277,1,32,1),
(7,277,1,42,1),
(8,277,1,15,1),
(1,277,1,41,1),
(9,277,1,36,1),
(12,277,1,31,1),
(18,277,1,3,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(278,56,'2000-05-30 02:48:54',208,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (17,278,1,22,1),
(5,278,1,1,1),
(4,278,1,36,1),
(13,278,1,39,1),
(3,278,1,10,1),
(7,278,1,14,1),
(10,278,1,4,1),
(6,278,1,30,1),
(14,278,1,49,1),
(8,278,1,3,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(279,56,'1991-08-25 15:18:02',149,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (17,279,1,42,1),
(11,279,1,49,1),
(2,279,1,13,1),
(10,279,1,20,1),
(5,279,1,25,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(280,56,'2010-11-08 00:07:49',161,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (6,280,1,31,1),
(4,280,1,30,1),
(11,280,1,14,1),
(7,280,1,18,1),
(8,280,1,13,1),
(5,280,1,22,1),
(3,280,1,7,1),
(16,280,1,9,1),
(14,280,1,17,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(281,57,'1988-01-26 00:21:23',265,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (8,281,1,34,1),
(10,281,1,13,1),
(1,281,1,43,1),
(12,281,1,6,1),
(4,281,1,19,1),
(18,281,1,31,1),
(14,281,1,32,1),
(2,281,1,14,1),
(17,281,1,49,1),
(16,281,1,23,1),
(13,281,1,1,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(282,57,'2010-05-23 01:55:03',206,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (15,282,1,27,1),
(10,282,1,20,1),
(9,282,1,7,1),
(12,282,1,35,1),
(2,282,1,11,1),
(11,282,1,1,1),
(3,282,1,39,1),
(16,282,1,5,1),
(14,282,1,26,1),
(5,282,1,35,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(283,57,'2007-02-01 14:09:09',291,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (18,283,1,33,1),
(2,283,1,18,1),
(9,283,1,42,1),
(16,283,1,44,1),
(3,283,1,37,1),
(13,283,1,39,1),
(15,283,1,18,1),
(14,283,1,44,1),
(10,283,1,16,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(284,57,'1979-10-18 02:20:41',42,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (7,284,1,11,1),
(5,284,1,31,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(285,57,'2010-06-06 09:43:24',145,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (18,285,1,36,1),
(16,285,1,46,1),
(6,285,1,20,1),
(7,285,1,39,1),
(15,285,1,4,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(286,58,'2003-04-30 11:11:18',215,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (15,286,1,46,1),
(12,286,1,23,1),
(16,286,1,36,1),
(9,286,1,13,1),
(8,286,1,33,1),
(10,286,1,44,1),
(13,286,1,20,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(287,58,'2011-02-13 16:34:57',69,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (13,287,1,28,1),
(11,287,1,41,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(288,58,'1986-01-10 13:09:10',332,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (6,288,1,12,1),
(13,288,1,35,1),
(4,288,1,27,1),
(10,288,1,44,1),
(12,288,1,33,1),
(18,288,1,34,1),
(2,288,1,21,1),
(14,288,1,2,1),
(7,288,1,40,1),
(15,288,1,34,1),
(5,288,1,30,1),
(17,288,1,13,1),
(3,288,1,7,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(289,58,'1987-07-10 17:44:46',109,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (18,289,1,41,1),
(8,289,1,47,1),
(13,289,1,21,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(290,58,'2006-04-08 23:14:08',341,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (16,290,1,25,1),
(8,290,1,14,1),
(7,290,1,34,1),
(14,290,1,38,1),
(13,290,1,18,1),
(11,290,1,33,1),
(6,290,1,38,1),
(12,290,1,36,1),
(15,290,1,38,1),
(1,290,1,38,1),
(18,290,1,29,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(291,59,'1992-02-08 02:41:44',86,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (15,291,1,48,1),
(9,291,1,29,1),
(17,291,1,9,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(292,59,'2003-07-17 21:59:03',317,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (7,292,1,31,1),
(3,292,1,43,1),
(13,292,1,48,1),
(16,292,1,9,1),
(8,292,1,45,1),
(11,292,1,13,1),
(18,292,1,2,1),
(4,292,1,10,1),
(12,292,1,22,1),
(15,292,1,50,1),
(14,292,1,22,1),
(9,292,1,16,1),
(2,292,1,6,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(293,59,'2000-03-09 16:45:59',151,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (14,293,1,8,1),
(17,293,1,22,1),
(7,293,1,7,1),
(11,293,1,32,1),
(13,293,1,6,1),
(2,293,1,24,1),
(18,293,1,5,1),
(3,293,1,23,1),
(10,293,1,1,1),
(12,293,1,23,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(294,59,'1976-11-27 14:44:54',282,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (5,294,1,17,1),
(7,294,1,32,1),
(3,294,1,35,1),
(15,294,1,17,1),
(16,294,1,2,1),
(9,294,1,48,1),
(18,294,1,26,1),
(17,294,1,8,1),
(13,294,1,16,1),
(12,294,1,32,1),
(6,294,1,49,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(295,59,'2015-03-24 15:57:57',129,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (15,295,1,23,1),
(12,295,1,40,1),
(13,295,1,37,1),
(3,295,1,18,1),
(9,295,1,11,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(296,60,'2004-09-06 16:41:52',72,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (15,296,1,36,1),
(1,296,1,36,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(297,60,'2009-07-11 13:02:06',134,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (13,297,1,46,1),
(6,297,1,46,1),
(8,297,1,9,1),
(17,297,1,33,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(298,60,'1981-06-20 13:25:19',248,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (8,298,1,30,1),
(3,298,1,45,1),
(7,298,1,12,1),
(5,298,1,34,1),
(16,298,1,28,1),
(13,298,1,11,1),
(12,298,1,44,1),
(11,298,1,44,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(299,60,'2004-05-05 09:38:29',74,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (11,299,1,11,1),
(8,299,1,2,1),
(10,299,1,46,1),
(13,299,1,10,1),
(18,299,1,5,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(300,60,'1984-09-02 00:01:59',154,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (5,300,1,17,1),
(1,300,1,44,1),
(6,300,1,34,1),
(17,300,1,13,1),
(7,300,1,24,1),
(12,300,1,22,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(301,61,'1984-11-06 18:25:37',96,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (16,301,1,28,1),
(13,301,1,15,1),
(12,301,1,35,1),
(17,301,1,18,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(302,61,'1970-05-07 19:59:45',400,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (13,302,1,48,1),
(17,302,1,39,1),
(3,302,1,38,1),
(18,302,1,33,1),
(4,302,1,22,1),
(10,302,1,12,1),
(8,302,1,18,1),
(14,302,1,45,1),
(1,302,1,28,1),
(7,302,1,25,1),
(15,302,1,5,1),
(6,302,1,39,1),
(16,302,1,48,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(303,61,'1986-04-09 09:23:52',292,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (17,303,1,5,1),
(6,303,1,5,1),
(2,303,1,17,1),
(13,303,1,46,1),
(1,303,1,24,1),
(16,303,1,42,1),
(11,303,1,26,1),
(12,303,1,45,1),
(7,303,1,2,1),
(15,303,1,26,1),
(18,303,1,34,1),
(4,303,1,20,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(304,61,'1983-03-30 21:34:15',92,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (14,304,1,45,1),
(7,304,1,7,1),
(13,304,1,40,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(305,61,'2011-09-16 21:43:56',259,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (4,305,1,43,1),
(12,305,1,45,1),
(9,305,1,2,1),
(7,305,1,16,1),
(15,305,1,47,1),
(14,305,1,17,1),
(3,305,1,43,1),
(2,305,1,46,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(306,62,'2015-08-18 01:04:40',22,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (18,306,1,13,1),
(15,306,1,9,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(307,62,'1999-12-14 08:57:11',51,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (14,307,1,4,1),
(15,307,1,28,1),
(10,307,1,18,1),
(7,307,1,1,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(308,62,'1990-01-04 18:28:39',44,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (17,308,1,20,1),
(8,308,1,24,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(309,62,'2009-12-02 13:54:43',159,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (13,309,1,13,1),
(5,309,1,12,1),
(10,309,1,2,1),
(17,309,1,33,1),
(4,309,1,12,1),
(12,309,1,11,1),
(6,309,1,42,1),
(11,309,1,24,1),
(3,309,1,10,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(310,62,'1971-03-20 10:13:09',215,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (13,310,1,19,1),
(8,310,1,37,1),
(10,310,1,46,1),
(11,310,1,44,1),
(14,310,1,38,1),
(2,310,1,31,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(311,63,'2003-03-01 11:04:56',366,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (12,311,1,20,1),
(2,311,1,46,1),
(16,311,1,17,1),
(11,311,1,47,1),
(13,311,1,42,1),
(8,311,1,8,1),
(7,311,1,19,1),
(6,311,1,13,1),
(14,311,1,45,1),
(15,311,1,4,1),
(17,311,1,16,1),
(5,311,1,48,1),
(3,311,1,17,1),
(18,311,1,24,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(312,63,'2015-12-05 01:12:28',371,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (7,312,1,47,1),
(12,312,1,20,1),
(17,312,1,6,1),
(6,312,1,9,1),
(3,312,1,20,1),
(2,312,1,48,1),
(5,312,1,42,1),
(18,312,1,41,1),
(15,312,1,47,1),
(13,312,1,23,1),
(8,312,1,25,1),
(11,312,1,3,1),
(14,312,1,40,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(313,63,'1987-01-19 00:04:26',294,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (9,313,1,38,1),
(2,313,1,38,1),
(1,313,1,23,1),
(13,313,1,26,1),
(11,313,1,2,1),
(15,313,1,11,1),
(3,313,1,43,1),
(17,313,1,13,1),
(16,313,1,29,1),
(8,313,1,22,1),
(4,313,1,49,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(314,63,'1982-02-28 18:09:05',160,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (16,314,1,39,1),
(18,314,1,4,1),
(8,314,1,13,1),
(3,314,1,32,1),
(9,314,1,10,1),
(13,314,1,44,1),
(5,314,1,18,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(315,63,'1977-03-09 16:58:05',160,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (5,315,1,30,1),
(16,315,1,30,1),
(9,315,1,39,1),
(8,315,1,2,1),
(11,315,1,32,1),
(12,315,1,27,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(316,64,'1997-05-20 16:39:16',137,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (7,316,1,9,1),
(13,316,1,17,1),
(1,316,1,25,1),
(15,316,1,38,1),
(2,316,1,48,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(317,64,'1990-04-19 10:31:24',138,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (9,317,1,25,1),
(3,317,1,31,1),
(12,317,1,44,1),
(15,317,1,38,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(318,64,'1993-06-07 19:09:38',188,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (7,318,1,17,1),
(2,318,1,29,1),
(11,318,1,30,1),
(9,318,1,28,1),
(15,318,1,44,1),
(6,318,1,40,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(319,64,'1989-06-22 13:54:27',359,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (5,319,1,50,1),
(3,319,1,49,1),
(11,319,1,8,1),
(17,319,1,12,1),
(9,319,1,45,1),
(10,319,1,14,1),
(6,319,1,7,1),
(4,319,1,1,1),
(18,319,1,48,1),
(15,319,1,39,1),
(8,319,1,8,1),
(14,319,1,34,1),
(12,319,1,44,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(320,64,'2006-08-03 07:00:21',373,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (17,320,1,47,1),
(13,320,1,43,1),
(14,320,1,7,1),
(7,320,1,40,1),
(6,320,1,34,1),
(8,320,1,26,1),
(15,320,1,47,1),
(5,320,1,9,1),
(18,320,1,22,1),
(16,320,1,42,1),
(10,320,1,7,1),
(11,320,1,49,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(321,65,'1998-01-16 11:55:05',388,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (13,321,1,14,1),
(11,321,1,49,1),
(2,321,1,22,1),
(8,321,1,47,1),
(9,321,1,1,1),
(12,321,1,49,1),
(17,321,1,14,1),
(16,321,1,37,1),
(6,321,1,42,1),
(5,321,1,38,1),
(14,321,1,25,1),
(1,321,1,50,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(322,65,'2010-01-08 06:16:54',50,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (4,322,1,33,1),
(16,322,1,17,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(323,65,'1976-06-30 17:21:11',165,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (4,323,1,2,1),
(16,323,1,23,1),
(10,323,1,45,1),
(3,323,1,40,1),
(18,323,1,28,1),
(17,323,1,27,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(324,65,'1982-11-13 00:28:52',311,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (6,324,1,39,1),
(1,324,1,5,1),
(4,324,1,13,1),
(8,324,1,21,1),
(15,324,1,42,1),
(2,324,1,14,1),
(12,324,1,49,1),
(14,324,1,4,1),
(3,324,1,42,1),
(7,324,1,30,1),
(18,324,1,9,1),
(17,324,1,26,1),
(11,324,1,11,1),
(16,324,1,6,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(325,65,'1991-09-02 21:30:40',396,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (9,325,1,46,1),
(6,325,1,22,1),
(4,325,1,37,1),
(3,325,1,32,1),
(15,325,1,12,1),
(10,325,1,8,1),
(2,325,1,44,1),
(11,325,1,41,1),
(16,325,1,12,1),
(13,325,1,34,1),
(18,325,1,26,1),
(1,325,1,19,1),
(7,325,1,14,1),
(8,325,1,49,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(326,66,'2017-06-01 02:13:22',287,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (1,326,1,26,1),
(11,326,1,5,1),
(7,326,1,40,1),
(4,326,1,15,1),
(15,326,1,48,1),
(5,326,1,43,1),
(8,326,1,27,1),
(14,326,1,50,1),
(6,326,1,33,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(327,66,'2011-06-28 07:20:38',383,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (12,327,1,15,1),
(17,327,1,7,1),
(18,327,1,33,1),
(9,327,1,44,1),
(2,327,1,31,1),
(4,327,1,23,1),
(11,327,1,27,1),
(3,327,1,23,1),
(7,327,1,47,1),
(13,327,1,4,1),
(6,327,1,48,1),
(8,327,1,48,1),
(5,327,1,16,1),
(10,327,1,15,1),
(16,327,1,2,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(328,66,'1983-07-09 18:48:23',60,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (12,328,1,20,1),
(5,328,1,40,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(329,66,'2000-03-03 18:45:17',307,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (18,329,1,10,1),
(1,329,1,24,1),
(7,329,1,3,1),
(6,329,1,17,1),
(15,329,1,46,1),
(14,329,1,43,1),
(12,329,1,4,1),
(8,329,1,30,1),
(17,329,1,46,1),
(10,329,1,26,1),
(5,329,1,10,1),
(3,329,1,48,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(330,66,'1978-08-05 07:48:06',289,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (13,330,1,12,1),
(5,330,1,27,1),
(4,330,1,17,1),
(2,330,1,5,1),
(1,330,1,20,1),
(14,330,1,26,1),
(9,330,1,30,1),
(8,330,1,43,1),
(17,330,1,15,1),
(18,330,1,25,1),
(10,330,1,28,1),
(11,330,1,34,1),
(3,330,1,7,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(331,67,'1983-03-06 09:16:19',344,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (17,331,1,37,1),
(9,331,1,44,1),
(1,331,1,23,1),
(5,331,1,26,1),
(15,331,1,6,1),
(12,331,1,17,1),
(11,331,1,2,1),
(14,331,1,24,1),
(7,331,1,31,1),
(13,331,1,39,1),
(18,331,1,22,1),
(2,331,1,23,1),
(6,331,1,39,1),
(4,331,1,11,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(332,67,'2009-05-10 23:45:38',333,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (17,332,1,43,1),
(13,332,1,3,1),
(8,332,1,27,1),
(18,332,1,45,1),
(3,332,1,34,1),
(12,332,1,27,1),
(5,332,1,33,1),
(1,332,1,31,1),
(16,332,1,24,1),
(2,332,1,13,1),
(7,332,1,40,1),
(6,332,1,13,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(333,67,'2006-08-25 07:07:15',117,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (17,333,1,11,1),
(2,333,1,5,1),
(3,333,1,32,1),
(15,333,1,40,1),
(6,333,1,29,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(334,67,'1996-07-16 11:56:39',336,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (17,334,1,8,1),
(9,334,1,40,1),
(7,334,1,25,1),
(12,334,1,9,1),
(11,334,1,22,1),
(6,334,1,17,1),
(1,334,1,24,1),
(3,334,1,38,1),
(8,334,1,18,1),
(14,334,1,3,1),
(13,334,1,36,1),
(16,334,1,21,1),
(18,334,1,42,1),
(4,334,1,23,1),
(10,334,1,10,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(335,67,'2017-02-26 02:16:55',236,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (7,335,1,25,1),
(6,335,1,45,1),
(14,335,1,43,1),
(16,335,1,17,1),
(13,335,1,45,1),
(18,335,1,13,1),
(3,335,1,15,1),
(9,335,1,21,1),
(1,335,1,7,1),
(11,335,1,5,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(336,68,'2003-09-21 17:18:47',275,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (14,336,1,43,1),
(9,336,1,35,1),
(8,336,1,36,1),
(2,336,1,31,1),
(1,336,1,46,1),
(3,336,1,40,1),
(10,336,1,44,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(337,68,'1984-10-03 09:06:47',114,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (9,337,1,39,1),
(12,337,1,4,1),
(2,337,1,25,1),
(11,337,1,46,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(338,68,'2012-03-10 11:14:37',295,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (12,338,1,30,1),
(14,338,1,50,1),
(13,338,1,34,1),
(6,338,1,13,1),
(2,338,1,20,1),
(7,338,1,10,1),
(1,338,1,16,1),
(5,338,1,35,1),
(15,338,1,48,1),
(17,338,1,39,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(339,68,'1981-04-25 21:21:11',97,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (10,339,1,9,1),
(5,339,1,19,1),
(11,339,1,43,1),
(17,339,1,2,1),
(14,339,1,2,1),
(2,339,1,22,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(340,68,'1984-09-15 09:20:52',218,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (17,340,1,4,1),
(10,340,1,21,1),
(7,340,1,34,1),
(3,340,1,11,1),
(15,340,1,35,1),
(16,340,1,8,1),
(18,340,1,30,1),
(4,340,1,35,1),
(5,340,1,19,1),
(13,340,1,21,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(341,69,'1979-03-31 11:36:52',53,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (11,341,1,30,1),
(15,341,1,11,1),
(17,341,1,12,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(342,69,'1971-03-27 05:49:02',73,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (15,342,1,26,1),
(1,342,1,47,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(343,69,'2007-04-11 18:13:47',62,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (10,343,1,42,1),
(2,343,1,8,1),
(12,343,1,12,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(344,69,'1995-10-19 01:44:00',173,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (2,344,1,9,1),
(1,344,1,41,1),
(7,344,1,36,1),
(9,344,1,41,1),
(8,344,1,31,1),
(4,344,1,15,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(345,69,'2007-10-16 21:07:01',233,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (9,345,1,10,1),
(6,345,1,12,1),
(12,345,1,35,1),
(15,345,1,8,1),
(4,345,1,36,1),
(8,345,1,21,1),
(10,345,1,35,1),
(5,345,1,2,1),
(11,345,1,36,1),
(16,345,1,5,1),
(7,345,1,33,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(346,70,'2009-02-16 13:31:29',238,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (15,346,1,45,1),
(2,346,1,46,1),
(17,346,1,1,1),
(3,346,1,40,1),
(16,346,1,27,1),
(10,346,1,2,1),
(14,346,1,10,1),
(18,346,1,7,1),
(8,346,1,11,1),
(13,346,1,15,1),
(6,346,1,7,1),
(11,346,1,19,1),
(12,346,1,8,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(347,70,'1970-03-09 14:27:41',162,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (10,347,1,32,1),
(2,347,1,24,1),
(3,347,1,21,1),
(14,347,1,47,1),
(9,347,1,6,1),
(15,347,1,8,1),
(11,347,1,13,1),
(1,347,1,11,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(348,70,'1976-05-28 21:22:17',92,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (15,348,1,47,1),
(14,348,1,45,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(349,70,'2008-06-20 17:33:02',353,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (6,349,1,25,1),
(17,349,1,4,1),
(4,349,1,35,1),
(18,349,1,20,1),
(12,349,1,38,1),
(5,349,1,20,1),
(14,349,1,28,1),
(10,349,1,42,1),
(11,349,1,20,1),
(8,349,1,12,1),
(16,349,1,13,1),
(9,349,1,49,1),
(7,349,1,18,1),
(13,349,1,24,1),
(1,349,1,5,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(350,70,'2006-08-25 12:14:58',218,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (10,350,1,19,1),
(11,350,1,45,1),
(18,350,1,20,1),
(7,350,1,4,1),
(9,350,1,13,1),
(14,350,1,37,1),
(3,350,1,3,1),
(13,350,1,50,1),
(16,350,1,27,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(351,71,'1994-01-17 15:46:10',372,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (2,351,1,30,1),
(11,351,1,32,1),
(10,351,1,1,1),
(1,351,1,38,1),
(4,351,1,28,1),
(18,351,1,27,1),
(3,351,1,27,1),
(9,351,1,36,1),
(7,351,1,3,1),
(16,351,1,36,1),
(5,351,1,6,1),
(17,351,1,49,1),
(12,351,1,12,1),
(6,351,1,47,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(352,71,'1996-06-10 03:42:25',73,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (1,352,1,29,1),
(11,352,1,44,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(353,71,'2001-08-12 03:27:51',398,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (14,353,1,30,1),
(3,353,1,48,1),
(6,353,1,14,1),
(1,353,1,13,1),
(16,353,1,26,1),
(15,353,1,1,1),
(4,353,1,21,1),
(12,353,1,22,1),
(17,353,1,20,1),
(2,353,1,27,1),
(13,353,1,42,1),
(9,353,1,36,1),
(18,353,1,47,1),
(5,353,1,19,1),
(8,353,1,32,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(354,71,'1977-06-08 09:46:39',162,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (15,354,1,25,1),
(10,354,1,37,1),
(6,354,1,43,1),
(13,354,1,8,1),
(2,354,1,49,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(355,71,'1992-11-25 07:33:34',232,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (3,355,1,49,1),
(2,355,1,25,1),
(6,355,1,36,1),
(16,355,1,40,1),
(7,355,1,14,1),
(15,355,1,24,1),
(18,355,1,3,1),
(8,355,1,15,1),
(14,355,1,26,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(356,72,'1985-11-02 23:44:54',58,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (9,356,1,41,1),
(15,356,1,17,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(357,72,'1976-01-14 10:18:01',253,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (11,357,1,34,1),
(5,357,1,6,1),
(15,357,1,7,1),
(18,357,1,41,1),
(16,357,1,45,1),
(2,357,1,46,1),
(6,357,1,37,1),
(10,357,1,3,1),
(12,357,1,1,1),
(7,357,1,33,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(358,72,'1973-06-17 08:29:33',328,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (2,358,1,26,1),
(9,358,1,44,1),
(14,358,1,44,1),
(16,358,1,5,1),
(3,358,1,9,1),
(4,358,1,3,1),
(6,358,1,3,1),
(11,358,1,49,1),
(7,358,1,14,1),
(18,358,1,30,1),
(15,358,1,28,1),
(12,358,1,1,1),
(1,358,1,24,1),
(10,358,1,48,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(359,72,'2011-08-18 21:20:12',303,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (18,359,1,2,1),
(6,359,1,34,1),
(16,359,1,18,1),
(3,359,1,24,1),
(9,359,1,38,1),
(8,359,1,17,1),
(10,359,1,10,1),
(14,359,1,38,1),
(17,359,1,35,1),
(7,359,1,10,1),
(1,359,1,28,1),
(11,359,1,49,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(360,72,'1986-02-21 01:11:44',56,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (2,360,1,7,1),
(7,360,1,16,1),
(18,360,1,33,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(361,73,'1987-03-28 03:53:26',79,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (11,361,1,23,1),
(7,361,1,5,1),
(16,361,1,19,1),
(12,361,1,29,1),
(6,361,1,3,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(362,73,'1971-11-23 21:12:33',288,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (14,362,1,17,1),
(3,362,1,13,1),
(18,362,1,9,1),
(6,362,1,12,1),
(2,362,1,32,1),
(17,362,1,44,1),
(9,362,1,44,1),
(8,362,1,49,1),
(15,362,1,20,1),
(16,362,1,44,1),
(10,362,1,4,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(363,73,'1972-04-19 10:42:03',244,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (8,363,1,27,1),
(17,363,1,17,1),
(3,363,1,35,1),
(9,363,1,23,1),
(11,363,1,44,1),
(1,363,1,44,1),
(6,363,1,9,1),
(4,363,1,12,1),
(16,363,1,3,1),
(13,363,1,4,1),
(5,363,1,13,1),
(7,363,1,13,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(364,73,'1997-12-12 16:01:17',287,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (6,364,1,22,1),
(7,364,1,47,1),
(14,364,1,33,1),
(10,364,1,27,1),
(11,364,1,45,1),
(8,364,1,34,1),
(12,364,1,3,1),
(3,364,1,29,1),
(2,364,1,37,1),
(17,364,1,10,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(365,73,'2004-06-22 04:31:38',89,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (18,365,1,8,1),
(2,365,1,15,1),
(10,365,1,20,1),
(4,365,1,38,1),
(8,365,1,8,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(366,74,'2012-09-30 00:22:28',168,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (11,366,1,5,1),
(16,366,1,43,1),
(5,366,1,39,1),
(4,366,1,16,1),
(15,366,1,15,1),
(8,366,1,15,1),
(14,366,1,35,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(367,74,'1973-07-20 17:09:37',120,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (5,367,1,47,1),
(9,367,1,35,1),
(8,367,1,38,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(368,74,'2014-09-30 02:02:01',317,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (6,368,1,5,1),
(3,368,1,21,1),
(14,368,1,13,1),
(4,368,1,44,1),
(16,368,1,13,1),
(10,368,1,24,1),
(8,368,1,14,1),
(18,368,1,20,1),
(13,368,1,17,1),
(2,368,1,27,1),
(5,368,1,20,1),
(17,368,1,42,1),
(9,368,1,28,1),
(1,368,1,29,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(369,74,'1989-04-29 20:34:07',48,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (1,369,1,46,1),
(10,369,1,2,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(370,74,'1988-07-06 16:30:10',251,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (5,370,1,36,1),
(14,370,1,13,1),
(3,370,1,47,1),
(12,370,1,26,1),
(7,370,1,17,1),
(16,370,1,31,1),
(9,370,1,31,1),
(1,370,1,7,1),
(13,370,1,43,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(371,75,'2005-02-28 02:53:16',348,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (3,371,1,19,1),
(16,371,1,15,1),
(14,371,1,34,1),
(15,371,1,10,1),
(17,371,1,21,1),
(13,371,1,41,1),
(11,371,1,7,1),
(4,371,1,25,1),
(1,371,1,36,1),
(12,371,1,16,1),
(10,371,1,34,1),
(8,371,1,45,1),
(9,371,1,45,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(372,75,'1992-02-13 18:35:07',143,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (13,372,1,24,1),
(18,372,1,18,1),
(6,372,1,30,1),
(15,372,1,22,1),
(16,372,1,6,1),
(9,372,1,43,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(373,75,'2010-06-24 11:39:33',150,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (4,373,1,27,1),
(3,373,1,1,1),
(16,373,1,34,1),
(8,373,1,1,1),
(15,373,1,4,1),
(14,373,1,42,1),
(10,373,1,8,1),
(12,373,1,30,1),
(7,373,1,3,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(374,75,'2002-01-07 08:07:38',244,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (10,374,1,3,1),
(17,374,1,35,1),
(7,374,1,41,1),
(6,374,1,49,1),
(5,374,1,25,1),
(12,374,1,48,1),
(11,374,1,43,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(375,75,'1970-11-19 11:48:31',305,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (5,375,1,2,1),
(1,375,1,15,1),
(17,375,1,30,1),
(10,375,1,2,1),
(14,375,1,34,1),
(7,375,1,6,1),
(9,375,1,26,1),
(2,375,1,46,1),
(6,375,1,26,1),
(13,375,1,48,1),
(15,375,1,35,1),
(16,375,1,35,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(376,76,'2017-01-07 10:28:43',270,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (13,376,1,23,1),
(11,376,1,42,1),
(7,376,1,22,1),
(8,376,1,35,1),
(6,376,1,11,1),
(14,376,1,33,1),
(15,376,1,46,1),
(3,376,1,28,1),
(12,376,1,15,1),
(17,376,1,8,1),
(9,376,1,7,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(377,76,'1980-07-13 13:43:33',327,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (4,377,1,43,1),
(13,377,1,4,1),
(8,377,1,38,1),
(10,377,1,12,1),
(5,377,1,25,1),
(2,377,1,16,1),
(7,377,1,16,1),
(18,377,1,43,1),
(3,377,1,29,1),
(16,377,1,31,1),
(17,377,1,38,1),
(15,377,1,1,1),
(9,377,1,31,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(378,76,'1970-05-20 21:30:23',203,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (18,378,1,41,1),
(13,378,1,32,1),
(7,378,1,33,1),
(15,378,1,41,1),
(16,378,1,11,1),
(3,378,1,45,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(379,76,'1972-02-10 03:42:09',318,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (8,379,1,45,1),
(1,379,1,2,1),
(9,379,1,42,1),
(7,379,1,42,1),
(2,379,1,43,1),
(4,379,1,29,1),
(10,379,1,19,1),
(6,379,1,17,1),
(13,379,1,13,1),
(12,379,1,8,1),
(17,379,1,41,1),
(3,379,1,17,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(380,76,'1977-12-14 03:46:04',270,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (5,380,1,32,1),
(9,380,1,36,1),
(4,380,1,48,1),
(15,380,1,20,1),
(16,380,1,28,1),
(1,380,1,42,1),
(8,380,1,8,1),
(2,380,1,5,1),
(3,380,1,30,1),
(18,380,1,21,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(381,77,'1986-10-25 06:42:30',83,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (10,381,1,18,1),
(14,381,1,23,1),
(11,381,1,42,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(382,77,'2017-06-15 08:24:09',123,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (10,382,1,35,1),
(1,382,1,3,1),
(12,382,1,21,1),
(16,382,1,27,1),
(17,382,1,16,1),
(11,382,1,21,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(383,77,'1995-12-01 11:57:52',163,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (18,383,1,34,1),
(7,383,1,8,1),
(9,383,1,46,1),
(15,383,1,43,1),
(16,383,1,12,1),
(1,383,1,12,1),
(12,383,1,5,1),
(10,383,1,3,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(384,77,'1977-06-24 05:45:19',303,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (13,384,1,36,1),
(6,384,1,49,1),
(9,384,1,48,1),
(14,384,1,26,1),
(2,384,1,46,1),
(7,384,1,25,1),
(8,384,1,45,1),
(17,384,1,28,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(385,77,'1998-02-08 13:04:07',95,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (9,385,1,46,1),
(4,385,1,19,1),
(12,385,1,30,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(386,78,'2015-09-04 06:10:46',442,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (12,386,1,14,1),
(6,386,1,47,1),
(1,386,1,45,1),
(9,386,1,38,1),
(18,386,1,25,1),
(3,386,1,32,1),
(16,386,1,43,1),
(17,386,1,31,1),
(10,386,1,11,1),
(5,386,1,2,1),
(14,386,1,49,1),
(7,386,1,35,1),
(11,386,1,9,1),
(4,386,1,21,1),
(8,386,1,40,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(387,78,'1991-08-08 19:33:47',94,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (16,387,1,40,1),
(7,387,1,21,1),
(15,387,1,12,1),
(13,387,1,21,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(388,78,'2003-12-15 10:52:36',168,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (13,388,1,19,1),
(3,388,1,8,1),
(17,388,1,6,1),
(4,388,1,8,1),
(10,388,1,3,1),
(1,388,1,42,1),
(11,388,1,12,1),
(16,388,1,42,1),
(12,388,1,8,1),
(2,388,1,20,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(389,78,'2014-07-12 16:12:58',138,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (7,389,1,32,1),
(16,389,1,17,1),
(3,389,1,13,1),
(17,389,1,33,1),
(2,389,1,17,1),
(6,389,1,26,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(390,78,'1970-04-19 08:06:45',85,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (8,390,1,15,1),
(14,390,1,12,1),
(13,390,1,2,1),
(6,390,1,26,1),
(15,390,1,30,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(391,79,'2002-02-23 03:17:29',372,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (14,391,1,33,1),
(13,391,1,44,1),
(10,391,1,14,1),
(6,391,1,43,1),
(2,391,1,36,1),
(16,391,1,16,1),
(9,391,1,2,1),
(18,391,1,48,1),
(5,391,1,18,1),
(7,391,1,41,1),
(12,391,1,9,1),
(15,391,1,38,1),
(8,391,1,21,1),
(3,391,1,9,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(392,79,'1986-12-23 13:34:33',335,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (12,392,1,23,1),
(2,392,1,23,1),
(6,392,1,24,1),
(17,392,1,2,1),
(1,392,1,48,1),
(10,392,1,32,1),
(9,392,1,23,1),
(4,392,1,49,1),
(8,392,1,19,1),
(16,392,1,17,1),
(13,392,1,30,1),
(3,392,1,2,1),
(15,392,1,36,1),
(7,392,1,7,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(393,79,'2014-07-06 04:25:31',34,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (18,393,1,29,1),
(9,393,1,5,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(394,79,'2007-01-31 08:05:01',217,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (18,394,1,44,1),
(5,394,1,38,1),
(6,394,1,49,1),
(9,394,1,44,1),
(1,394,1,42,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(395,79,'2000-01-06 00:35:19',28,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (11,395,1,20,1),
(16,395,1,3,1),
(4,395,1,5,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(396,80,'2017-01-06 02:37:00',244,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (14,396,1,49,1),
(6,396,1,44,1),
(17,396,1,13,1),
(15,396,1,41,1),
(12,396,1,6,1),
(3,396,1,48,1),
(13,396,1,36,1),
(10,396,1,7,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(397,80,'1985-04-18 02:02:46',284,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (9,397,1,23,1),
(16,397,1,16,1),
(11,397,1,27,1),
(6,397,1,10,1),
(17,397,1,13,1),
(14,397,1,26,1),
(10,397,1,44,1),
(1,397,1,13,1),
(5,397,1,25,1),
(8,397,1,28,1),
(3,397,1,23,1),
(13,397,1,22,1),
(4,397,1,14,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(398,80,'1984-02-01 18:16:30',155,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (9,398,1,44,1),
(12,398,1,33,1),
(5,398,1,34,1),
(8,398,1,9,1),
(2,398,1,35,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(399,80,'1998-05-01 15:50:13',133,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (18,399,1,13,1),
(17,399,1,14,1),
(2,399,1,29,1),
(10,399,1,16,1),
(14,399,1,11,1),
(13,399,1,50,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(400,80,'1986-03-10 11:16:15',270,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (10,400,1,44,1),
(17,400,1,24,1),
(12,400,1,46,1),
(18,400,1,10,1),
(8,400,1,5,1),
(11,400,1,40,1),
(3,400,1,1,1),
(4,400,1,36,1),
(13,400,1,34,1),
(1,400,1,30,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(401,81,'1991-04-17 02:52:06',349,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (8,401,1,8,1),
(18,401,1,30,1),
(1,401,1,8,1),
(10,401,1,24,1),
(2,401,1,50,1),
(5,401,1,45,1),
(16,401,1,49,1),
(14,401,1,27,1),
(12,401,1,19,1),
(3,401,1,5,1),
(15,401,1,8,1),
(17,401,1,22,1),
(13,401,1,21,1),
(7,401,1,33,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(402,81,'1970-02-09 23:25:03',106,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (3,402,1,12,1),
(7,402,1,27,1),
(4,402,1,42,1),
(14,402,1,25,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(403,81,'2010-03-12 13:06:24',391,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (4,403,1,49,1),
(8,403,1,8,1),
(7,403,1,41,1),
(6,403,1,36,1),
(5,403,1,21,1),
(13,403,1,12,1),
(3,403,1,10,1),
(12,403,1,49,1),
(14,403,1,20,1),
(15,403,1,3,1),
(1,403,1,19,1),
(16,403,1,49,1),
(11,403,1,36,1),
(18,403,1,23,1),
(2,403,1,15,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(404,81,'1985-12-19 02:02:46',294,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (4,404,1,7,1),
(11,404,1,5,1),
(2,404,1,25,1),
(18,404,1,4,1),
(1,404,1,22,1),
(3,404,1,12,1),
(5,404,1,44,1),
(12,404,1,40,1),
(8,404,1,40,1),
(13,404,1,32,1),
(17,404,1,10,1),
(16,404,1,5,1),
(14,404,1,48,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(405,81,'1999-09-01 00:00:39',185,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (14,405,1,50,1),
(17,405,1,25,1),
(4,405,1,44,1),
(12,405,1,18,1),
(8,405,1,19,1),
(1,405,1,9,1),
(7,405,1,20,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(406,82,'1976-12-08 05:54:04',192,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (13,406,1,11,1),
(11,406,1,46,1),
(3,406,1,15,1),
(18,406,1,6,1),
(15,406,1,47,1),
(6,406,1,43,1),
(14,406,1,14,1),
(7,406,1,10,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(407,82,'1974-09-28 10:21:31',338,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (4,407,1,28,1),
(3,407,1,5,1),
(11,407,1,42,1),
(2,407,1,23,1),
(9,407,1,40,1),
(7,407,1,8,1),
(14,407,1,44,1),
(5,407,1,20,1),
(15,407,1,16,1),
(18,407,1,22,1),
(13,407,1,3,1),
(12,407,1,5,1),
(1,407,1,19,1),
(16,407,1,17,1),
(6,407,1,46,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(408,82,'2011-01-14 21:50:41',72,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (8,408,1,34,1),
(16,408,1,38,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(409,82,'1973-01-20 10:37:48',368,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (14,409,1,21,1),
(9,409,1,29,1),
(12,409,1,37,1),
(5,409,1,20,1),
(11,409,1,6,1),
(2,409,1,14,1),
(3,409,1,28,1),
(17,409,1,1,1),
(6,409,1,30,1),
(1,409,1,22,1),
(15,409,1,36,1),
(18,409,1,31,1),
(16,409,1,6,1),
(13,409,1,37,1),
(7,409,1,50,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(410,82,'1974-07-21 14:01:35',420,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (17,410,1,29,1),
(4,410,1,31,1),
(10,410,1,25,1),
(14,410,1,11,1),
(8,410,1,31,1),
(12,410,1,13,1),
(1,410,1,46,1),
(2,410,1,34,1),
(9,410,1,6,1),
(3,410,1,37,1),
(5,410,1,16,1),
(7,410,1,23,1),
(6,410,1,36,1),
(18,410,1,34,1),
(15,410,1,48,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(411,83,'1991-04-25 00:39:37',333,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (18,411,1,28,1),
(8,411,1,29,1),
(7,411,1,28,1),
(5,411,1,32,1),
(9,411,1,46,1),
(6,411,1,44,1),
(14,411,1,10,1),
(10,411,1,30,1),
(3,411,1,23,1),
(12,411,1,6,1),
(15,411,1,36,1),
(2,411,1,15,1),
(4,411,1,6,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(412,83,'2003-08-07 04:12:07',310,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (1,412,1,24,1),
(16,412,1,43,1),
(18,412,1,4,1),
(9,412,1,5,1),
(11,412,1,26,1),
(4,412,1,29,1),
(3,412,1,47,1),
(2,412,1,8,1),
(15,412,1,46,1),
(5,412,1,28,1),
(14,412,1,19,1),
(6,412,1,31,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(413,83,'2014-01-30 06:12:21',138,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (2,413,1,12,1),
(11,413,1,36,1),
(8,413,1,14,1),
(12,413,1,35,1),
(18,413,1,16,1),
(7,413,1,25,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(414,83,'2001-03-29 09:28:37',172,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (2,414,1,13,1),
(6,414,1,16,1),
(11,414,1,10,1),
(9,414,1,34,1),
(3,414,1,8,1),
(1,414,1,2,1),
(5,414,1,6,1),
(18,414,1,37,1),
(15,414,1,41,1),
(4,414,1,5,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(415,83,'1990-04-26 12:56:30',339,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (10,415,1,28,1),
(6,415,1,48,1),
(17,415,1,4,1),
(5,415,1,32,1),
(13,415,1,47,1),
(4,415,1,4,1),
(8,415,1,50,1),
(1,415,1,41,1),
(3,415,1,10,1),
(11,415,1,15,1),
(14,415,1,6,1),
(15,415,1,15,1),
(9,415,1,39,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(416,84,'1982-09-26 11:51:14',201,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (3,416,1,6,1),
(11,416,1,16,1),
(2,416,1,41,1),
(12,416,1,45,1),
(15,416,1,46,1),
(18,416,1,14,1),
(13,416,1,27,1),
(16,416,1,6,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(417,84,'1984-04-28 13:10:21',258,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (11,417,1,38,1),
(3,417,1,8,1),
(6,417,1,41,1),
(18,417,1,8,1),
(1,417,1,2,1),
(8,417,1,26,1),
(14,417,1,46,1),
(9,417,1,12,1),
(5,417,1,41,1),
(13,417,1,36,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(418,84,'2005-12-12 05:30:05',33,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (4,418,1,14,1),
(15,418,1,19,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(419,84,'1972-09-01 19:29:06',356,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (9,419,1,23,1),
(16,419,1,42,1),
(15,419,1,33,1),
(10,419,1,49,1),
(17,419,1,35,1),
(12,419,1,22,1),
(13,419,1,36,1),
(7,419,1,10,1),
(14,419,1,2,1),
(2,419,1,38,1),
(5,419,1,10,1),
(18,419,1,47,1),
(3,419,1,9,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(420,84,'1999-12-26 08:41:22',97,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (7,420,1,15,1),
(8,420,1,3,1),
(13,420,1,28,1),
(6,420,1,35,1),
(12,420,1,16,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(421,85,'1975-07-01 17:37:11',231,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (4,421,1,15,1),
(12,421,1,27,1),
(7,421,1,29,1),
(3,421,1,25,1),
(2,421,1,31,1),
(17,421,1,32,1),
(11,421,1,9,1),
(6,421,1,18,1),
(16,421,1,45,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(422,85,'2015-09-10 15:18:51',375,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (7,422,1,20,1),
(12,422,1,28,1),
(17,422,1,17,1),
(9,422,1,25,1),
(5,422,1,26,1),
(8,422,1,28,1),
(16,422,1,14,1),
(6,422,1,25,1),
(15,422,1,7,1),
(18,422,1,33,1),
(13,422,1,48,1),
(11,422,1,30,1),
(4,422,1,47,1),
(14,422,1,18,1),
(3,422,1,9,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(423,85,'1985-02-02 05:38:11',286,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (1,423,1,42,1),
(7,423,1,44,1),
(14,423,1,5,1),
(17,423,1,50,1),
(4,423,1,12,1),
(2,423,1,20,1),
(18,423,1,29,1),
(16,423,1,35,1),
(13,423,1,23,1),
(3,423,1,1,1),
(12,423,1,25,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(424,85,'1985-10-02 04:24:56',335,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (13,424,1,4,1),
(3,424,1,4,1),
(2,424,1,44,1),
(6,424,1,3,1),
(15,424,1,46,1),
(4,424,1,4,1),
(9,424,1,42,1),
(8,424,1,48,1),
(5,424,1,8,1),
(10,424,1,28,1),
(7,424,1,43,1),
(12,424,1,5,1),
(17,424,1,26,1),
(11,424,1,30,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(425,85,'1986-05-31 05:40:09',33,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (16,425,1,26,1),
(17,425,1,7,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(426,86,'2017-08-19 19:58:21',156,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (11,426,1,45,1),
(3,426,1,8,1),
(8,426,1,4,1),
(9,426,1,1,1),
(13,426,1,33,1),
(1,426,1,39,1),
(14,426,1,5,1),
(15,426,1,8,1),
(6,426,1,13,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(427,86,'1972-10-07 10:24:21',185,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (7,427,1,5,1),
(8,427,1,20,1),
(18,427,1,32,1),
(1,427,1,17,1),
(13,427,1,30,1),
(10,427,1,9,1),
(17,427,1,43,1),
(12,427,1,29,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(428,86,'1994-07-24 12:07:45',347,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (11,428,1,7,1),
(5,428,1,35,1),
(8,428,1,28,1),
(9,428,1,20,1),
(7,428,1,32,1),
(12,428,1,41,1),
(4,428,1,44,1),
(3,428,1,12,1),
(1,428,1,31,1),
(13,428,1,23,1),
(16,428,1,45,1),
(18,428,1,11,1),
(10,428,1,18,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(429,86,'1983-05-10 17:44:00',59,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (2,429,1,16,1),
(10,429,1,17,1),
(5,429,1,26,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(430,86,'1995-09-26 11:38:23',128,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (7,430,1,39,1),
(8,430,1,39,1),
(13,430,1,5,1),
(12,430,1,45,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(431,87,'2000-09-14 02:02:08',352,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (14,431,1,37,1),
(2,431,1,42,1),
(4,431,1,47,1),
(3,431,1,31,1),
(18,431,1,18,1),
(12,431,1,9,1),
(6,431,1,36,1),
(11,431,1,49,1),
(13,431,1,1,1),
(16,431,1,38,1),
(1,431,1,8,1),
(17,431,1,36,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(432,87,'1998-03-24 23:33:37',244,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (2,432,1,39,1),
(17,432,1,11,1),
(10,432,1,45,1),
(14,432,1,25,1),
(16,432,1,16,1),
(12,432,1,40,1),
(18,432,1,38,1),
(15,432,1,30,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(433,87,'2015-12-04 00:08:50',181,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (17,433,1,25,1),
(10,433,1,19,1),
(9,433,1,50,1),
(1,433,1,18,1),
(2,433,1,37,1),
(16,433,1,32,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(434,87,'2017-02-02 23:33:39',171,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (8,434,1,11,1),
(6,434,1,50,1),
(11,434,1,1,1),
(1,434,1,32,1),
(7,434,1,33,1),
(15,434,1,44,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(435,87,'2008-03-04 19:46:20',137,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (7,435,1,45,1),
(14,435,1,10,1),
(11,435,1,37,1),
(12,435,1,8,1),
(18,435,1,14,1),
(9,435,1,23,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(436,88,'1991-01-01 14:37:20',28,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (6,436,1,10,1),
(10,436,1,18,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(437,88,'2000-10-07 03:36:16',241,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (11,437,1,25,1),
(17,437,1,32,1),
(3,437,1,28,1),
(6,437,1,8,1),
(8,437,1,29,1),
(9,437,1,33,1),
(10,437,1,24,1),
(4,437,1,4,1),
(13,437,1,49,1),
(7,437,1,9,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(438,88,'1993-11-09 21:57:56',341,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (13,438,1,38,1),
(12,438,1,33,1),
(8,438,1,34,1),
(11,438,1,18,1),
(7,438,1,5,1),
(6,438,1,27,1),
(9,438,1,42,1),
(17,438,1,25,1),
(3,438,1,48,1),
(16,438,1,16,1),
(18,438,1,2,1),
(1,438,1,11,1),
(15,438,1,42,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(439,88,'2012-01-06 17:25:45',65,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (11,439,1,9,1),
(3,439,1,5,1),
(7,439,1,23,1),
(4,439,1,28,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(440,88,'1998-01-01 00:00:36',288,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (9,440,1,12,1),
(14,440,1,16,1),
(3,440,1,22,1),
(8,440,1,38,1),
(4,440,1,3,1),
(13,440,1,15,1),
(10,440,1,41,1),
(6,440,1,50,1),
(5,440,1,42,1),
(7,440,1,15,1),
(12,440,1,32,1),
(16,440,1,2,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(441,89,'2000-06-22 18:39:03',301,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (12,441,1,50,1),
(7,441,1,42,1),
(16,441,1,13,1),
(14,441,1,21,1),
(8,441,1,39,1),
(9,441,1,50,1),
(2,441,1,34,1),
(13,441,1,2,1),
(17,441,1,50,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(442,89,'1991-11-17 02:25:44',194,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (18,442,1,18,1),
(12,442,1,33,1),
(13,442,1,1,1),
(6,442,1,21,1),
(9,442,1,36,1),
(16,442,1,39,1),
(2,442,1,46,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(443,89,'1996-02-05 11:51:43',112,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (3,443,1,4,1),
(10,443,1,38,1),
(5,443,1,41,1),
(12,443,1,16,1),
(16,443,1,6,1),
(1,443,1,7,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(444,89,'2016-10-31 03:36:41',204,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (7,444,1,42,1),
(4,444,1,37,1),
(18,444,1,12,1),
(17,444,1,24,1),
(3,444,1,44,1),
(8,444,1,45,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(445,89,'1981-02-03 14:51:50',455,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (1,445,1,47,1),
(2,445,1,46,1),
(9,445,1,50,1),
(14,445,1,13,1),
(12,445,1,33,1),
(7,445,1,11,1),
(10,445,1,42,1),
(8,445,1,15,1),
(13,445,1,10,1),
(15,445,1,45,1),
(6,445,1,26,1),
(11,445,1,13,1),
(18,445,1,47,1),
(5,445,1,30,1),
(3,445,1,27,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(446,90,'1999-09-09 05:31:04',62,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (12,446,1,8,1),
(2,446,1,42,1),
(8,446,1,12,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(447,90,'1998-06-14 16:01:50',76,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (4,447,1,2,1),
(10,447,1,2,1),
(15,447,1,18,1),
(1,447,1,6,1),
(16,447,1,5,1),
(2,447,1,3,1),
(3,447,1,1,1),
(13,447,1,39,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(448,90,'1988-10-08 03:09:14',305,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (7,448,1,40,1),
(4,448,1,16,1),
(3,448,1,22,1),
(13,448,1,34,1),
(18,448,1,1,1),
(10,448,1,4,1),
(17,448,1,9,1),
(6,448,1,32,1),
(9,448,1,17,1),
(1,448,1,23,1),
(16,448,1,19,1),
(11,448,1,26,1),
(12,448,1,45,1),
(8,448,1,17,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(449,90,'2006-01-05 17:38:03',322,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (11,449,1,50,1),
(15,449,1,18,1),
(16,449,1,21,1),
(7,449,1,48,1),
(18,449,1,9,1),
(2,449,1,11,1),
(14,449,1,24,1),
(6,449,1,37,1),
(3,449,1,6,1),
(9,449,1,8,1),
(8,449,1,42,1),
(4,449,1,32,1),
(17,449,1,16,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(450,90,'2005-08-01 23:47:37',349,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (9,450,1,4,1),
(3,450,1,37,1),
(14,450,1,12,1),
(2,450,1,36,1),
(12,450,1,38,1),
(6,450,1,9,1),
(16,450,1,12,1),
(4,450,1,11,1),
(7,450,1,22,1),
(17,450,1,4,1),
(18,450,1,46,1),
(13,450,1,9,1),
(15,450,1,22,1),
(1,450,1,50,1),
(5,450,1,37,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(451,91,'2005-08-15 22:43:56',196,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (4,451,1,33,1),
(2,451,1,8,1),
(13,451,1,38,1),
(10,451,1,23,1),
(6,451,1,17,1),
(7,451,1,25,1),
(11,451,1,26,1),
(12,451,1,19,1),
(17,451,1,7,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(452,91,'1974-05-22 18:43:16',193,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (16,452,1,50,1),
(11,452,1,4,1),
(2,452,1,4,1),
(9,452,1,20,1),
(10,452,1,42,1),
(12,452,1,29,1),
(13,452,1,44,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(453,91,'1997-05-11 16:42:28',60,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (8,453,1,49,1),
(10,453,1,11,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(454,91,'1975-07-01 19:08:17',231,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (14,454,1,29,1),
(6,454,1,19,1),
(8,454,1,30,1),
(11,454,1,4,1),
(12,454,1,32,1),
(17,454,1,26,1),
(1,454,1,40,1),
(18,454,1,28,1),
(13,454,1,23,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(455,91,'2000-07-01 19:54:49',185,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (15,455,1,1,1),
(17,455,1,3,1),
(1,455,1,34,1),
(12,455,1,38,1),
(11,455,1,50,1),
(4,455,1,27,1),
(16,455,1,15,1),
(13,455,1,17,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(456,92,'1988-05-02 10:06:35',102,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (8,456,1,44,1),
(13,456,1,24,1),
(12,456,1,9,1),
(3,456,1,25,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(457,92,'1992-02-25 07:29:01',360,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (2,457,1,21,1),
(16,457,1,34,1),
(6,457,1,39,1),
(13,457,1,23,1),
(12,457,1,19,1),
(3,457,1,13,1),
(9,457,1,7,1),
(17,457,1,34,1),
(1,457,1,19,1),
(5,457,1,17,1),
(10,457,1,47,1),
(14,457,1,25,1),
(4,457,1,13,1),
(18,457,1,49,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(458,92,'1971-04-08 12:38:41',167,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (5,458,1,14,1),
(13,458,1,41,1),
(3,458,1,46,1),
(6,458,1,22,1),
(9,458,1,39,1),
(12,458,1,5,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(459,92,'1985-04-28 14:01:29',308,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (10,459,1,16,1),
(12,459,1,2,1),
(13,459,1,33,1),
(4,459,1,35,1),
(8,459,1,7,1),
(3,459,1,26,1),
(16,459,1,4,1),
(9,459,1,16,1),
(17,459,1,38,1),
(18,459,1,35,1),
(15,459,1,6,1),
(5,459,1,44,1),
(1,459,1,11,1),
(11,459,1,3,1),
(14,459,1,32,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(460,92,'1986-09-03 13:14:31',278,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (18,460,1,12,1),
(5,460,1,16,1),
(7,460,1,38,1),
(11,460,1,14,1),
(17,460,1,14,1),
(1,460,1,36,1),
(4,460,1,2,1),
(13,460,1,40,1),
(2,460,1,27,1),
(16,460,1,35,1),
(14,460,1,1,1),
(9,460,1,43,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(461,93,'1971-07-31 13:09:52',297,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (18,461,1,9,1),
(14,461,1,45,1),
(6,461,1,37,1),
(1,461,1,1,1),
(16,461,1,49,1),
(10,461,1,50,1),
(8,461,1,49,1),
(17,461,1,27,1),
(7,461,1,21,1),
(13,461,1,9,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(462,93,'1999-07-31 20:24:21',55,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (7,462,1,14,1),
(14,462,1,11,1),
(3,462,1,7,1),
(6,462,1,17,1),
(10,462,1,6,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(463,93,'2014-04-01 10:21:54',205,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (8,463,1,42,1),
(12,463,1,32,1),
(17,463,1,24,1),
(1,463,1,25,1),
(10,463,1,3,1),
(6,463,1,36,1),
(13,463,1,41,1),
(7,463,1,2,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(464,93,'1986-12-10 23:34:02',135,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (4,464,1,12,1),
(16,464,1,24,1),
(14,464,1,28,1),
(9,464,1,9,1),
(8,464,1,11,1),
(1,464,1,23,1),
(13,464,1,28,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(465,93,'1983-03-01 08:08:23',186,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (16,465,1,38,1),
(5,465,1,37,1),
(12,465,1,34,1),
(4,465,1,10,1),
(17,465,1,19,1),
(1,465,1,32,1),
(8,465,1,16,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(466,94,'1984-02-14 05:03:24',141,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (14,466,1,16,1),
(4,466,1,27,1),
(13,466,1,10,1),
(1,466,1,12,1),
(15,466,1,45,1),
(12,466,1,31,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(467,94,'2010-01-19 17:55:02',158,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (10,467,1,40,1),
(12,467,1,25,1),
(14,467,1,2,1),
(4,467,1,43,1),
(8,467,1,48,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(468,94,'1979-09-03 16:28:52',161,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (6,468,1,41,1),
(5,468,1,1,1),
(3,468,1,21,1),
(15,468,1,28,1),
(2,468,1,22,1),
(4,468,1,48,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(469,94,'1971-04-27 15:45:40',276,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (12,469,1,41,1),
(13,469,1,28,1),
(4,469,1,46,1),
(18,469,1,47,1),
(16,469,1,24,1),
(5,469,1,7,1),
(6,469,1,33,1),
(1,469,1,5,1),
(9,469,1,45,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(470,94,'1974-02-18 01:57:22',58,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (9,470,1,26,1),
(7,470,1,32,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(471,95,'1981-06-28 03:42:40',44,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (8,471,1,9,1),
(15,471,1,33,1),
(6,471,1,2,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(472,95,'1984-09-21 18:09:10',250,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (16,472,1,20,1),
(4,472,1,34,1),
(11,472,1,27,1),
(7,472,1,32,1),
(2,472,1,17,1),
(3,472,1,12,1),
(12,472,1,29,1),
(15,472,1,42,1),
(10,472,1,37,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(473,95,'2011-07-05 08:29:09',207,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (10,473,1,21,1),
(11,473,1,21,1),
(18,473,1,31,1),
(3,473,1,15,1),
(16,473,1,1,1),
(7,473,1,7,1),
(12,473,1,29,1),
(14,473,1,12,1),
(13,473,1,34,1),
(2,473,1,36,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(474,95,'2002-04-20 17:35:06',249,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (1,474,1,18,1),
(8,474,1,26,1),
(10,474,1,16,1),
(17,474,1,21,1),
(3,474,1,3,1),
(2,474,1,7,1),
(9,474,1,27,1),
(7,474,1,18,1),
(12,474,1,6,1),
(14,474,1,31,1),
(11,474,1,20,1),
(4,474,1,25,1),
(18,474,1,31,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(475,95,'1972-12-26 03:00:11',59,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (3,475,1,25,1),
(15,475,1,34,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(476,96,'1997-08-17 22:23:59',283,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (16,476,1,45,1),
(5,476,1,42,1),
(3,476,1,20,1),
(8,476,1,17,1),
(13,476,1,15,1),
(10,476,1,22,1),
(4,476,1,47,1),
(14,476,1,28,1),
(9,476,1,47,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(477,96,'2014-09-10 03:28:26',122,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (6,477,1,50,1),
(4,477,1,46,1),
(10,477,1,13,1),
(1,477,1,13,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(478,96,'2012-11-15 09:17:17',347,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (13,478,1,40,1),
(5,478,1,19,1),
(17,478,1,9,1),
(12,478,1,46,1),
(1,478,1,47,1),
(18,478,1,7,1),
(9,478,1,9,1),
(6,478,1,6,1),
(14,478,1,36,1),
(4,478,1,25,1),
(15,478,1,28,1),
(16,478,1,37,1),
(7,478,1,38,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(479,96,'1980-03-16 19:02:57',276,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (18,479,1,8,1),
(6,479,1,39,1),
(3,479,1,19,1),
(10,479,1,18,1),
(7,479,1,32,1),
(14,479,1,49,1),
(5,479,1,18,1),
(11,479,1,3,1),
(2,479,1,48,1),
(13,479,1,40,1),
(8,479,1,2,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(480,96,'2014-10-28 10:40:29',410,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (12,480,1,33,1),
(9,480,1,50,1),
(16,480,1,35,1),
(7,480,1,36,1),
(17,480,1,47,1),
(1,480,1,11,1),
(5,480,1,17,1),
(3,480,1,50,1),
(10,480,1,26,1),
(4,480,1,21,1),
(18,480,1,24,1),
(8,480,1,9,1),
(13,480,1,17,1),
(11,480,1,9,1),
(6,480,1,25,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(481,97,'1991-02-17 17:35:41',136,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (18,481,1,17,1),
(11,481,1,41,1),
(2,481,1,15,1),
(16,481,1,19,1),
(9,481,1,6,1),
(4,481,1,24,1),
(10,481,1,14,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(482,97,'1995-01-22 02:41:37',119,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (7,482,1,41,1),
(9,482,1,12,1),
(8,482,1,15,1),
(3,482,1,25,1),
(6,482,1,24,1),
(11,482,1,2,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(483,97,'2017-07-26 23:24:12',213,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (4,483,1,11,1),
(16,483,1,18,1),
(11,483,1,16,1),
(10,483,1,41,1),
(15,483,1,20,1),
(9,483,1,25,1),
(5,483,1,11,1),
(2,483,1,31,1),
(12,483,1,31,1),
(13,483,1,9,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(484,97,'2012-10-11 00:13:07',110,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (17,484,1,44,1),
(4,484,1,14,1),
(5,484,1,1,1),
(2,484,1,28,1),
(14,484,1,23,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(485,97,'2001-06-04 18:14:21',123,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (15,485,1,40,1),
(6,485,1,46,1),
(2,485,1,5,1),
(4,485,1,25,1),
(7,485,1,7,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(486,98,'2007-08-21 03:12:46',138,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (3,486,1,41,1),
(14,486,1,34,1),
(17,486,1,2,1),
(7,486,1,36,1),
(16,486,1,25,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(487,98,'2003-01-08 05:52:25',267,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (1,487,1,31,1),
(18,487,1,28,1),
(14,487,1,33,1),
(10,487,1,38,1),
(8,487,1,5,1),
(12,487,1,26,1),
(13,487,1,11,1),
(6,487,1,9,1),
(5,487,1,3,1),
(17,487,1,47,1),
(4,487,1,6,1),
(3,487,1,30,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(488,98,'1986-03-19 04:20:44',99,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (15,488,1,36,1),
(18,488,1,1,1),
(14,488,1,16,1),
(12,488,1,46,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(489,98,'1997-10-29 23:26:21',217,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (1,489,1,30,1),
(10,489,1,21,1),
(12,489,1,48,1),
(2,489,1,42,1),
(14,489,1,2,1),
(6,489,1,2,1),
(13,489,1,23,1),
(8,489,1,19,1),
(9,489,1,4,1),
(4,489,1,9,1),
(17,489,1,17,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(490,98,'2009-11-17 17:17:39',330,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (13,490,1,12,1),
(17,490,1,10,1),
(18,490,1,42,1),
(14,490,1,41,1),
(15,490,1,25,1),
(10,490,1,45,1),
(1,490,1,10,1),
(4,490,1,45,1),
(7,490,1,21,1),
(2,490,1,48,1),
(6,490,1,4,1),
(5,490,1,27,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(491,99,'1991-10-28 07:35:04',155,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (11,491,1,18,1),
(18,491,1,8,1),
(10,491,1,2,1),
(2,491,1,7,1),
(5,491,1,4,1),
(9,491,1,32,1),
(4,491,1,42,1),
(16,491,1,42,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(492,99,'1970-07-27 15:31:42',291,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (4,492,1,44,1),
(3,492,1,29,1),
(10,492,1,15,1),
(6,492,1,30,1),
(2,492,1,17,1),
(16,492,1,34,1),
(12,492,1,44,1),
(15,492,1,11,1),
(17,492,1,5,1),
(5,492,1,19,1),
(9,492,1,23,1),
(11,492,1,20,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(493,99,'2007-07-12 21:43:28',146,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (2,493,1,46,1),
(14,493,1,47,1),
(15,493,1,49,1),
(11,493,1,4,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(494,99,'1999-12-26 05:03:31',209,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (7,494,1,21,1),
(3,494,1,43,1),
(13,494,1,33,1),
(14,494,1,47,1),
(1,494,1,29,1),
(12,494,1,36,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(495,99,'1973-05-19 02:36:12',380,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (13,495,1,16,1),
(17,495,1,37,1),
(8,495,1,22,1),
(4,495,1,6,1),
(15,495,1,2,1),
(1,495,1,46,1),
(10,495,1,42,1),
(2,495,1,43,1),
(14,495,1,28,1),
(12,495,1,17,1),
(11,495,1,42,1),
(9,495,1,16,1),
(7,495,1,22,1),
(5,495,1,2,1),
(18,495,1,39,1);
 SELECT setval(pg_get_serial_sequence('dbo.compra', 'idcompra'), coalesce(max(idcompra), 0)+1 , false) FROM dbo.compra;  SELECT setval(pg_get_serial_sequence('dbo.itemcompra', 'iditemcompra'), coalesce(max(iditemcompra), 0)+1 , false) FROM dbo.itemcompra; 
