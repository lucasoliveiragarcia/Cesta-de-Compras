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
INSERT INTO cidade (idcidade,idestado, nome) VALUES  (1,1, 'Colina de Laranjeiras'),(2,2, 'Nunes')
,(3,7, 'da Cunha')
,(4,3, 'Barros')
,(5,3, 'Melo')
,(6,4, 'da Paz')
,(7,1, 'Ramos Alegre')
,(8,3, 'Ferreira do Amparo')
,(9,6, 'Caldeira')
,(10,4, 'Melo da Serra')
,(11,4, 'Silveira de Rezende')
,(12,6, 'Castro')
,(13,8, 'Rezende')
,(14,6, 'Ferreira')
,(15,6, 'Barbosa da Praia')
,(16,5, 'Barros')
,(17,8, 'Jesus de Goiás')
,(18,1, 'Costela de Rocha')
,(19,1, 'Caldeira de da Rocha')
,(20,5, 'Costela')
,(21,6, 'Silveira da Mata')
,(22,3, 'Cavalcanti Paulista')
,(23,8, 'da Costa do Galho')
,(24,8, 'Cardoso,')
,(25,3, 'Barros')
,(26,2, 'Martins de Minas')
,(27,4, 'Jesus')
,(28,8, 'Nascimento')
,(29,2, 'Nogueira')
,(30,5, 'Almeida')
,(31,6, 'Peixoto')
,(32,1, 'Moura do Amparo')
,(33,6, 'Santos')
,(34,1, 'Lopes')
,(35,1, 'Silveira')
,(36,6, 'Duarte de da Rocha')
,(37,5, 'Mendes do Campo')
,(38,4, 'Araújo')
,(39,8, 'Jesus')
,(40,3, 'Santos dos Dourados')
,(41,8, 'Alves de da Paz')
,(42,8, 'da Paz')
,(43,1, 'das Neves do Galho')
,(44,4, 'da Conceição Paulista')
,(45,3, 'Rodrigues Grande')
,(46,3, 'Lopes de Rodrigues')
,(47,6, 'Costela de Goiás')
,(48,5, 'Pereira de Sales')
,(49,6, 'Campos')
,(50,2, 'Nogueira')
,(51,5, 'Campos de Minas')
,(52,5, 'da Mata')
,(53,3, 'Araújo')
,(54,4, 'Teixeira da Serra')
,(55,2, 'Costela de Moraes')
,(56,4, 'Ferreira')
,(57,1, 'Lopes')
,(58,7, 'Rocha')
,(59,6, 'das Neves de Caldeira')
,(60,2, 'Ramos')
,(61,1, 'Moreira')
,(62,5, 'Aragão')
,(63,1, 'Jesus')
,(64,6, 'Barros')
,(65,3, 'Oliveira do Oeste')
,(66,7, 'Freitas de Lima')
,(67,1, 'Fogaça')
,(68,1, 'Silva da Serra')
,(69,2, 'Correia da Serra')
,(70,7, 'Ribeiro')
,(71,6, 'da Rocha')
,(72,6, 'da Costa de Minas')
,(73,8, 'da Costa')
,(74,1, 'Aragão')
,(75,8, 'Nascimento Grande')
,(76,4, 'da Rocha do Sul')
,(77,5, 'Fogaça de da Luz')
,(78,4, 'Vieira do Norte')
,(79,8, 'Campos')
,(80,4, 'Gomes')
,(81,4, 'Gonçalves Paulista')
,(82,7, 'Moura do Campo')
,(83,6, 'Pires do Oeste')
,(84,2, 'Ferreira')
,(85,2, 'Cardoso,')
,(86,1, 'Caldeira')
,(87,2, 'Gonçalves')
,(88,5, 'Ferreira de Freitas')
,(89,7, 'Costa do Norte')
,(90,8, 'Silva')
,(91,8, 'Fogaça do Sul')
,(92,8, 'Porto')
,(93,1, 'das Neves de da Mota')
,(94,4, 'Martins da Praia')
,(95,3, 'Rodrigues do Norte')
,(96,4, 'Moura Verde')
,(97,5, 'Silva')
,(98,4, 'da Rocha dos Dourados')
,(99,5, 'Araújo')
; SELECT setval(pg_get_serial_sequence('dbo.cidade', 'idcidade'), coalesce(max(idcidade), 0)+1 , false) FROM dbo.cidade;  
INSERT INTO endereco (idendereco, idcidade, cep, logradouro, numero, complemento) VALUES  (1, 1,'29167081','Primeiro','371','proximo a nada'),(2, 35, '65195713','Praça Brenda Nascimento','4008','algum complemento')
,(3, 81, '58394764','Esplanada da Cunha','2164','algum complemento')
,(4, 91, '60846928','Residencial de Cardoso','6654','algum complemento')
,(5, 44, '56781702','Viaduto Dias','2422','algum complemento')
,(6, 74, '56842537','Aeroporto Araújo','8019','algum complemento')
,(7, 82, '95681626','Viaduto Rezende','1293','algum complemento')
,(8, 62, '46727724','Avenida Martins','5251','algum complemento')
,(9, 20, '55523298','Residencial Maria Eduarda Moreira','7936','algum complemento')
,(10, 88, '51940937','Residencial Leandro Vieira','5715','algum complemento')
,(11, 64, '42038322','Rodovia de Castro','5301','algum complemento')
,(12, 81, '62362943','Rodovia Nogueira','292','algum complemento')
,(13, 40, '79711691','Trevo Kevin Barros','869','algum complemento')
,(14, 75, '62713116','Estrada Yuri da Rocha','8835','algum complemento')
,(15, 62, '53817711','Condomínio Silveira','5398','algum complemento')
,(16, 94, '45646667','Vereda de Martins','418','algum complemento')
,(17, 55, '71959181','Campo Melo','6935','algum complemento')
,(18, 81, '46448896','Condomínio Martins','8431','algum complemento')
,(19, 17, '29662063','Vereda Rafaela Azevedo','2979','algum complemento')
,(20, 32, '38623382','Jardim de Porto','6841','algum complemento')
,(21, 70, '43527959','Núcleo de Gomes','4721','algum complemento')
,(22, 58, '72847087','Largo Lopes','3844','algum complemento')
,(23, 54, '20683105','Vila Lima','9812','algum complemento')
,(24, 92, '81122825','Aeroporto Martins','7463','algum complemento')
,(25, 63, '30192475','Sítio de Peixoto','9864','algum complemento')
,(26, 17, '83201514','Viaduto Benício Nunes','307','algum complemento')
,(27, 91, '51026437','Campo Oliveira','2559','algum complemento')
,(28, 9, '92818065','Lagoa da Conceição','8242','algum complemento')
,(29, 65, '91323008','Recanto Igor Cardoso','9007','algum complemento')
,(30, 6, '50589096','Conjunto de Carvalho','3775','algum complemento')
,(31, 49, '14779899','Campo Larissa Peixoto','5138','algum complemento')
,(32, 75, '91226626','Vale João Pedro Pinto','4725','algum complemento')
,(33, 52, '37506232','Aeroporto de Moura','167','algum complemento')
,(34, 9, '73177301','Recanto Danilo Correia','3435','algum complemento')
,(35, 11, '33061529','Rodovia Gomes','133','algum complemento')
,(36, 95, '94620811','Lagoa Agatha Cardoso','7789','algum complemento')
,(37, 9, '66200014','Distrito de da Cunha','390','algum complemento')
,(38, 24, '56898337','Setor Ana Carolina Barros','8625','algum complemento')
,(39, 1, '72616447','Trevo de Nogueira','859','algum complemento')
,(40, 81, '10168683','Distrito de da Cruz','3642','algum complemento')
,(41, 4, '66814273','Parque Freitas','2954','algum complemento')
,(42, 45, '80983321','Distrito Bruna da Paz','2606','algum complemento')
,(43, 68, '49109808','Estação Porto','1865','algum complemento')
,(44, 21, '37266879','Vereda Freitas','6816','algum complemento')
,(45, 71, '70162050','Distrito Isabella Barbosa','1907','algum complemento')
,(46, 60, '38607095','Conjunto Sales','2265','algum complemento')
,(47, 88, '53862311','Morro Peixoto','7732','algum complemento')
,(48, 17, '68721872','Esplanada Emilly Gonçalves','8507','algum complemento')
,(49, 45, '95545501','Largo Rezende','1979','algum complemento')
,(50, 5, '46179536','Estrada Moreira','4831','algum complemento')
,(51, 77, '23180494','Viaduto Cecília Monteiro','8798','algum complemento')
,(52, 33, '20815854','Rua Castro','1680','algum complemento')
,(53, 97, '73674258','Área Ana Luiza FariasFernandes','5137','algum complemento')
,(54, 78, '78040657','Vila Gomes','174','algum complemento')
,(55, 30, '52202026','Morro de Pereira','9478','algum complemento')
,(56, 83, '25221614','Passarela de Campos','3236','algum complemento')
,(57, 40, '42418601','Largo de Fogaça','6657','algum complemento')
,(58, 22, '90161748','Distrito de Correia','6296','algum complemento')
,(59, 61, '20918466','Ladeira Mariana Nogueira','8521','algum complemento')
,(60, 77, '37123566','Estação Ana Julia Correia','6573','algum complemento')
,(61, 90, '38772568','Vale Natália Sales','4530','algum complemento')
,(62, 59, '14874344','Campo de Caldeira','1926','algum complemento')
,(63, 97, '70024069','Jardim Gabriela da Rocha','5449','algum complemento')
,(64, 29, '31012334','Fazenda de Lima','974','algum complemento')
,(65, 8, '53259783','Lagoa de das Neves','9270','algum complemento')
,(66, 25, '33587550','Aeroporto de Aragão','1633','algum complemento')
,(67, 58, '92228663','Pátio Silva','4895','algum complemento')
,(68, 16, '86260290','Distrito Sales','3495','algum complemento')
,(69, 46, '11033518','Aeroporto Maria Cecília da Mota','1056','algum complemento')
,(70, 4, '97782305','Largo Martins','2636','algum complemento')
,(71, 3, '25117001','Viaduto de da Cunha','8119','algum complemento')
,(72, 27, '77418083','Condomínio da Luz','2109','algum complemento')
,(73, 38, '29609808','Largo Nunes','9806','algum complemento')
,(74, 92, '52309644','Ladeira Kaique Azevedo','997','algum complemento')
,(75, 97, '22782533','Colônia de Alves','8978','algum complemento')
,(76, 18, '48906363','Aeroporto Pires','8676','algum complemento')
,(77, 94, '55615623','Lagoa Davi da Mota','1311','algum complemento')
,(78, 7, '84736881','Ladeira de Ferreira','4787','algum complemento')
,(79, 42, '89187034','Aeroporto de Correia','2891','algum complemento')
,(80, 77, '86421833','Jardim Aragão','6483','algum complemento')
,(81, 52, '48831005','Via de Ramos','2079','algum complemento')
,(82, 26, '62158906','Passarela Gomes','491','algum complemento')
,(83, 61, '18329592','Favela de Peixoto','7134','algum complemento')
,(84, 83, '99319030','Colônia da Cruz','8865','algum complemento')
,(85, 97, '86506576','Colônia Guilherme da Mata','9941','algum complemento')
,(86, 35, '25631072','Estação Júlia Correia','8896','algum complemento')
,(87, 98, '38854961','Estação Maria Vitória Alves','8488','algum complemento')
,(88, 39, '63689957','Rodovia Thales Castro','5879','algum complemento')
,(89, 28, '37838047','Colônia Lopes','6369','algum complemento')
,(90, 96, '31804484','Rodovia Lopes','3268','algum complemento')
,(91, 34, '32779746','Loteamento Alexandre da Rosa','1442','algum complemento')
,(92, 55, '33498517','Via de Moraes','5907','algum complemento')
,(93, 79, '58039362','Estrada Leonardo Costela','3471','algum complemento')
,(94, 65, '23705140','Travessa de das Neves','4248','algum complemento')
,(95, 85, '72483827','Viela Lima','6888','algum complemento')
,(96, 24, '13725865','Vila de Silveira','4522','algum complemento')
,(97, 94, '16378240','Fazenda João Gabriel Cavalcanti','7814','algum complemento')
,(98, 42, '25096359','Área de Ramos','6367','algum complemento')
,(99, 15, '52128483','Alameda Martins','9288','algum complemento')
,(100, 23, '54354203','Viela de Vieira','2618','algum complemento')
,(101, 66, '42319433','Fazenda Porto','3515','algum complemento')
,(102, 29, '53172347','Vereda de da Cruz','4358','algum complemento')
,(103, 91, '34522138','Vila Lavínia Rocha','3103','algum complemento')
,(104, 85, '41527735','Aeroporto Rodrigues','4288','algum complemento')
,(105, 96, '53791450','Esplanada Vicente Cardoso','5648','algum complemento')
,(106, 78, '17132450','Sítio Silveira','2858','algum complemento')
,(107, 86, '78371948','Residencial Nascimento','4093','algum complemento')
,(108, 60, '83629912','Sítio da Rosa','9666','algum complemento')
,(109, 81, '10253162','Rua de Oliveira','5706','algum complemento')
,(110, 24, '64063856','Distrito de Castro','2316','algum complemento')
,(111, 81, '67994335','Lagoa Lima','9055','algum complemento')
,(112, 27, '45020661','Campo Campos','6708','algum complemento')
,(113, 34, '78261307','Loteamento Barros','9376','algum complemento')
,(114, 20, '53572370','Travessa Almeida','1818','algum complemento')
,(115, 12, '64596244','Recanto da Conceição','4734','algum complemento')
,(116, 89, '96416492','Quadra Mirella Santos','1741','algum complemento')
,(117, 27, '25879431','Campo Novaes','2488','algum complemento')
,(118, 20, '93538540','Recanto de Costa','7018','algum complemento')
,(119, 12, '21524768','Vereda de da Rocha','7084','algum complemento')
,(120, 3, '60431156','Rodovia de da Luz','6976','algum complemento')
,(121, 55, '93821202','Esplanada Vitória Aragão','1897','algum complemento')
,(122, 83, '14054132','Feira Alexandre Souza','2075','algum complemento')
,(123, 48, '31343090','Trecho das Neves','5078','algum complemento')
,(124, 20, '61035330','Rodovia de Monteiro','312','algum complemento')
,(125, 46, '34852912','Favela de Nunes','5829','algum complemento')
,(126, 27, '78494559','Viela Cunha','7113','algum complemento')
,(127, 4, '88373234','Distrito Maria Fernanda da Costa','1327','algum complemento')
,(128, 68, '38299704','Trecho Ramos','5642','algum complemento')
,(129, 57, '56590903','Viela Barbosa','7453','algum complemento')
,(130, 34, '87299092','Trecho de Ferreira','3178','algum complemento')
,(131, 23, '61362136','Chácara Maria Eduarda Cavalcanti','2437','algum complemento')
,(132, 47, '22597090','Avenida Otávio Correia','1422','algum complemento')
,(133, 92, '61726215','Passarela Nathan da Cruz','5679','algum complemento')
,(134, 96, '39819269','Vila Luna Teixeira','2464','algum complemento')
,(135, 70, '92282115','Jardim Rezende','9871','algum complemento')
,(136, 6, '37306277','Largo Araújo','2522','algum complemento')
,(137, 98, '32011716','Distrito Lopes','9562','algum complemento')
,(138, 2, '85288726','Vereda Clarice Vieira','9252','algum complemento')
,(139, 84, '41143221','Jardim Duarte','4351','algum complemento')
,(140, 99, '62726105','Avenida Stella Pinto','1811','algum complemento')
,(141, 9, '64556543','Distrito Fogaça','2301','algum complemento')
,(142, 16, '17122603','Rodovia Gustavo Henrique Costela','3861','algum complemento')
,(143, 36, '18605397','Vereda Isadora Rezende','9502','algum complemento')
,(144, 43, '71648357','Campo de Campos','3041','algum complemento')
,(145, 37, '86306347','Viaduto Jesus','3551','algum complemento')
,(146, 34, '53906394','Praça de Duarte','1788','algum complemento')
,(147, 73, '48747625','Rodovia Pinto','2892','algum complemento')
,(148, 90, '55622539','Núcleo Brenda Oliveira','8796','algum complemento')
,(149, 56, '19570457','Ladeira de Nascimento','1271','algum complemento')
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
INSERT INTO pessoa(idpessoa, idendereco, nome, sobrenome, email, dataNascimento) VALUES    (1,1, 'Eduardo','Couto','eduardo@email.com','1998/02/01') ,(2,26, 'Agatha','Castro','Agatha@email.com','1971-01-09')
,(3,99, 'Diogo','da Luz','Diogo@email.com','1971-05-30')
,(4,54, 'Camila','da Cunha','Camila@email.com','1989-06-22')
,(5,51, 'Henrique','Vieira','Henrique@email.com','1996-02-18')
,(6,66, 'Leonardo','Porto','Leonardo@email.com','1970-03-18')
,(7,22, 'Julia','Almeida','Julia@email.com','2001-11-15')
,(8,15, 'Sabrina','Ramos','Sabrina@email.com','1981-10-01')
,(9,73, 'Luiz Fernando','Almeida','Luiz Fernando@email.com','2000-07-19')
,(10,122, 'Laís','Ramos','Laís@email.com','1983-03-30')
,(11,65, 'Laís','Rocha','Laís@email.com','2005-09-11')
,(12,99, 'Mariane','Duarte','Mariane@email.com','1997-01-19')
,(13,11, 'Augusto','Ramos','Augusto@email.com','2005-02-19')
,(14,129, 'Stella','da Luz','Stella@email.com','2007-05-25')
,(15,72, 'Danilo','Oliveira','Danilo@email.com','2016-12-28')
,(16,2, 'Fernanda','Santos','Fernanda@email.com','1984-12-14')
,(17,113, 'Pedro Miguel','da Mata','Pedro Miguel@email.com','2002-04-20')
,(18,117, 'Ana Vitória','Pereira','Ana Vitória@email.com','2012-11-25')
,(19,49, 'Marcela','da Rosa','Marcela@email.com','2011-03-26')
,(20,82, 'Brenda','Alves','Brenda@email.com','1990-06-10')
,(21,77, 'Otávio','Gonçalves','Otávio@email.com','1978-11-10')
,(22,123, 'Gustavo Henrique','Nogueira','Gustavo Henrique@email.com','1974-12-15')
,(23,98, 'João Felipe','Alves','João Felipe@email.com','2018-01-22')
,(24,40, 'Olivia','Monteiro','Olivia@email.com','1996-09-20')
,(25,79, 'Bianca','da Cunha','Bianca@email.com','1998-01-11')
,(26,117, 'Bryan','Lopes','Bryan@email.com','1987-02-07')
,(27,8, 'Diego','Dias','Diego@email.com','2007-11-07')
,(28,81, 'Alana','Cavalcanti','Alana@email.com','1989-02-10')
,(29,121, 'Pietra','da Rosa','Pietra@email.com','2009-09-25')
,(30,63, 'Alícia','Souza','Alícia@email.com','1970-07-20')
,(31,93, 'Nicole','Caldeira','Nicole@email.com','1997-09-29')
,(32,41, 'Cauã','Rodrigues','Cauã@email.com','1990-09-18')
,(33,43, 'Júlia','Sales','Júlia@email.com','1975-02-09')
,(34,97, 'Brenda','da Conceição','Brenda@email.com','1972-03-18')
,(35,121, 'Leonardo','Barbosa','Leonardo@email.com','1977-08-12')
,(36,20, 'Maria Fernanda','Ramos','Maria Fernanda@email.com','1999-12-30')
,(37,90, 'João Gabriel','Peixoto','João Gabriel@email.com','1992-03-15')
,(38,60, 'Nicole','das Neves','Nicole@email.com','2015-10-17')
,(39,90, 'Lucas','da Conceição','Lucas@email.com','1999-01-22')
,(40,4, 'Cauã','Moreira','Cauã@email.com','1992-05-26')
,(41,8, 'Ana Júlia','Pereira','Ana Júlia@email.com','1978-06-26')
,(42,126, 'Fernando','Gomes','Fernando@email.com','2004-03-29')
,(43,25, 'Sofia','Santos','Sofia@email.com','1979-11-28')
,(44,117, 'Raul','das Neves','Raul@email.com','1995-08-28')
,(45,71, 'Stella','Correia','Stella@email.com','1986-01-25')
,(46,15, 'Thomas','Martins','Thomas@email.com','2008-06-02')
,(47,83, 'Beatriz','Cavalcanti','Beatriz@email.com','1971-04-18')
,(48,109, 'Ana Vitória','Rezende','Ana Vitória@email.com','1997-10-25')
,(49,92, 'Joaquim','Carvalho','Joaquim@email.com','2004-02-04')
,(50,124, 'Kevin','Moreira','Kevin@email.com','2014-06-06')
,(51,81, 'Juan','da Cruz','Juan@email.com','2001-11-29')
,(52,56, 'Ana Vitória','Rezende','Ana Vitória@email.com','2008-03-18')
,(53,90, 'Pedro Miguel','Monteiro','Pedro Miguel@email.com','1980-11-28')
,(54,125, 'Ian','da Cunha','Ian@email.com','1993-07-28')
,(55,25, 'Heloísa','Carvalho','Heloísa@email.com','1973-12-15')
,(56,100, 'Mirella','Cavalcanti','Mirella@email.com','2016-12-12')
,(57,127, 'Mirella','Carvalho','Mirella@email.com','2009-12-02')
,(58,98, 'Kevin','Mendes','Kevin@email.com','2015-01-31')
,(59,133, 'Isabel','Cunha','Isabel@email.com','2008-03-29')
,(60,55, 'Sarah','Cardoso','Sarah@email.com','2015-07-29')
,(61,14, 'Rodrigo','Castro','Rodrigo@email.com','1983-11-15')
,(62,105, 'Luiz Felipe','Silva','Luiz Felipe@email.com','1984-01-11')
,(63,101, 'Maria Eduarda','da Mata','Maria Eduarda@email.com','2006-09-06')
,(64,139, 'Luiz Henrique','Rodrigues','Luiz Henrique@email.com','1986-07-12')
,(65,33, 'Ana Vitória','Silveira','Ana Vitória@email.com','2016-12-22')
,(66,132, 'Gabrielly','Martins','Gabrielly@email.com','1984-03-19')
,(67,85, 'Augusto','Nunes','Augusto@email.com','1997-10-26')
,(68,144, 'Lorena','Barbosa','Lorena@email.com','1972-06-09')
,(69,7, 'Gustavo Henrique','Carvalho','Gustavo Henrique@email.com','1976-11-23')
,(70,25, 'Vitor Gabriel','da Costa','Vitor Gabriel@email.com','1987-12-21')
,(71,83, 'Antônio','Fogaça','Antônio@email.com','2011-07-30')
,(72,70, 'Diogo','Rodrigues','Diogo@email.com','1978-03-22')
,(73,29, 'Leonardo','da Paz','Leonardo@email.com','2002-03-01')
,(74,132, 'Davi Lucas','da Rosa','Davi Lucas@email.com','1989-10-11')
,(75,84, 'Gustavo','Campos','Gustavo@email.com','1989-09-29')
,(76,10, 'Sofia','Teixeira','Sofia@email.com','2003-07-18')
,(77,55, 'Luiz Gustavo','Nogueira','Luiz Gustavo@email.com','2013-02-04')
,(78,65, 'Pietra','Cardoso,','Pietra@email.com','1987-08-23')
,(79,113, 'Felipe','Monteiro','Felipe@email.com','1989-04-08')
,(80,64, 'Antônio','Peixoto','Antônio@email.com','1996-12-29')
,(81,96, 'Ana Júlia','Correia','Ana Júlia@email.com','1999-08-17')
,(82,74, 'Beatriz','Nascimento','Beatriz@email.com','2009-10-15')
,(83,49, 'Vitor Gabriel','Pereira','Vitor Gabriel@email.com','1971-09-07')
,(84,80, 'Joaquim','Sales','Joaquim@email.com','1983-02-27')
,(85,21, 'Guilherme','Ribeiro','Guilherme@email.com','1992-07-16')
,(86,77, 'Gabrielly','Azevedo','Gabrielly@email.com','1984-11-23')
,(87,136, 'André','Freitas','André@email.com','2001-11-08')
,(88,1, 'Rafaela','Ramos','Rafaela@email.com','2000-09-08')
,(89,82, 'Francisco','Lopes','Francisco@email.com','2015-06-28')
,(90,39, 'Davi Luiz','Pereira','Davi Luiz@email.com','2014-10-14')
,(91,137, 'Vinicius','Souza','Vinicius@email.com','1998-09-17')
,(92,105, 'Luana','Campos','Luana@email.com','1979-06-28')
,(93,140, 'Helena','Silveira','Helena@email.com','2004-12-03')
,(94,8, 'Vinicius','da Cunha','Vinicius@email.com','1995-06-13')
,(95,5, 'Emanuella','Freitas','Emanuella@email.com','1980-05-04')
,(96,38, 'Maria Alice','Teixeira','Maria Alice@email.com','1990-12-28')
,(97,103, 'Diego','da Rosa','Diego@email.com','1973-06-20')
,(98,44, 'Juliana','da Mota','Juliana@email.com','1978-04-23')
,(99,38, 'Melissa','Cavalcanti','Melissa@email.com','1996-07-15')
; SELECT setval(pg_get_serial_sequence('dbo.pessoa', 'idpessoa'), coalesce(max(idpessoa), 0)+1 , false) FROM dbo.pessoa;  
INSERT INTO consumidor(idconsumidor, idpessoa, login, senha, nivel, datacadastro) VALUES    (1, 1, 'educouto', '$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1, '2018/02/01') ,(2,2, 'Stella','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1988-10-11')
,(3,3, 'Ana Beatriz','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1985-05-13')
,(4,4, 'Isadora','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1973-11-15')
,(5,5, 'Enzo Gabriel','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2011-12-07')
,(6,6, 'Emanuella','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2014-03-13')
,(7,7, 'Evelyn','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1976-01-05')
,(8,8, 'Catarina','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1971-02-03')
,(9,9, 'Joana','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2016-10-17')
,(10,10, 'Luiz Felipe','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1991-10-26')
,(11,11, 'Marcos Vinicius','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2010-12-31')
,(12,12, 'Daniela','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1990-12-17')
,(13,13, 'Noah','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2008-10-03')
,(14,14, 'Cauã','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2007-10-10')
,(15,15, 'Gabriela','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2016-09-26')
,(16,16, 'Natália','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1999-09-20')
,(17,17, 'Ana Luiza','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1984-12-11')
,(18,18, 'Stella','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1982-06-13')
,(19,19, 'Diego','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2017-03-29')
,(20,20, 'Mariane','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2009-07-03')
,(21,21, 'Leandro','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1975-10-20')
,(22,22, 'Felipe','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2007-01-10')
,(23,23, 'Raul','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2014-04-02')
,(24,24, 'Ryan','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2010-01-04')
,(25,25, 'Luiz Felipe','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1976-11-08')
,(26,26, 'Davi Lucas','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1998-02-07')
,(27,27, 'João Gabriel','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1970-11-16')
,(28,28, 'André','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1995-11-25')
,(29,29, 'Ana Clara','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1985-10-31')
,(30,30, 'João Gabriel','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1976-05-15')
,(31,31, 'Igor','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1991-04-25')
,(32,32, 'Vinicius','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1981-09-02')
,(33,33, 'Enzo','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1981-01-03')
,(34,34, 'Sabrina','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2012-12-11')
,(35,35, 'Maria Julia','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2008-10-12')
,(36,36, 'Augusto','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2011-07-22')
,(37,37, 'Júlia','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2005-12-17')
,(38,38, 'Miguel','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1998-07-12')
,(39,39, 'Sarah','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1981-10-23')
,(40,40, 'Maria Julia','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2007-10-11')
,(41,41, 'Luigi','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2005-06-23')
,(42,42, 'Thomas','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1983-06-29')
,(43,43, 'Heitor','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1999-10-03')
,(44,44, 'Luna','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1994-07-07')
,(45,45, 'Antônio','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1971-01-07')
,(46,46, 'Beatriz','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1975-05-15')
,(47,47, 'Isis','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1996-06-04')
,(48,48, 'Pedro','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1971-09-28')
,(49,49, 'Benjamin','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2006-04-30')
,(50,50, 'Davi Lucas','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1992-09-08')
,(51,51, 'Fernando','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2006-10-03')
,(52,52, 'Ryan','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2002-09-21')
,(53,53, 'Isabella','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2012-01-13')
,(54,54, 'Davi','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1992-05-02')
,(55,55, 'Clarice','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2012-12-04')
,(56,56, 'Pietra','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2015-06-06')
,(57,57, 'Luana','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1989-10-12')
,(58,58, 'Vitor Hugo','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1971-10-08')
,(59,59, 'Davi Lucca','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2006-07-22')
,(60,60, 'Maria Vitória','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2015-02-25')
,(61,61, 'Lucas','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1977-11-20')
,(62,62, 'Luigi','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1981-02-15')
,(63,63, 'Yuri','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1986-05-29')
,(64,64, 'Francisco','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2002-10-19')
,(65,65, 'Rafael','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2012-01-17')
,(66,66, 'Ana Clara','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1996-07-19')
,(67,67, 'Isabel','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2016-05-11')
,(68,68, 'Gustavo Henrique','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1980-11-26')
,(69,69, 'Ana Vitória','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1990-07-16')
,(70,70, 'Anthony','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1999-10-16')
,(71,71, 'Leandro','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1970-05-21')
,(72,72, 'Renan','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2013-05-13')
,(73,73, 'Ana Laura','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1988-08-08')
,(74,74, 'Maria Luiza','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1995-12-23')
,(75,75, 'Luiz Henrique','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2006-03-27')
,(76,76, 'Valentina','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1980-03-17')
,(77,77, 'Sofia','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2014-06-22')
,(78,78, 'Amanda','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1974-05-05')
,(79,79, 'Lorenzo','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1992-12-23')
,(80,80, 'Vitor Gabriel','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1974-06-26')
,(81,81, 'Mirella','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2004-08-09')
,(82,82, 'Marcelo','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2007-05-10')
,(83,83, 'Isaac','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2013-11-27')
,(84,84, 'Kamilly','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1979-06-16')
,(85,85, 'Eduardo','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1986-05-31')
,(86,86, 'Lavínia','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1974-09-20')
,(87,87, 'Nathan','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1997-08-03')
,(88,88, 'Bryan','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1983-10-15')
,(89,89, 'Rebeca','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2001-07-24')
,(90,90, 'Maria Julia','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1997-09-04')
,(91,91, 'João Vitor','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1977-11-20')
,(92,92, 'Alana','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1993-09-21')
,(93,93, 'Renan','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2013-07-26')
,(94,94, 'Luana','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1977-12-12')
,(95,95, 'Murilo','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'2007-11-10')
,(96,96, 'Melissa','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1976-08-31')
,(97,97, 'Milena','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1981-04-10')
,(98,98, 'Pedro Henrique','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1990-01-01')
,(99,99, 'Thales','$2a$10$rBV2JDeWW3.vKyeQcM8fFOpc3eZhvN379HNeC1n7OMFK/GfCQ66GS',1,'1990-02-08')
; SELECT setval(pg_get_serial_sequence('dbo.consumidor', 'idconsumidor'), coalesce(max(idconsumidor), 0)+1 , false) FROM dbo.consumidor;  
INSERT INTO listaCompra (idlistaCompra, idconsumidor, nome, dataultimamodificacao) VALUES    (1, 1, 'Primeira Lista', '2018/06/03') ,(2, 2,'Compra de 30 dias','1971-12-14')
,(3, 3,'Compra de 30 dias','2004-11-09')
,(4, 4,'Compra de 15 dias','2007-05-20')
,(5, 5,'Churas da turma','2014-02-22')
,(6, 6,'Compra de 30 dias','2002-07-09')
,(7, 7,'Compras da feira','1979-01-06')
,(8, 8,'Churas da turma','1994-01-20')
,(9, 9,'Compra de 30 dias','1976-05-25')
,(10, 10,'Churas da turma','2005-09-27')
,(11, 11,'Compra de 15 dias','2004-03-01')
,(12, 12,'Compras da feira','1971-03-02')
,(13, 13,'Compras da feira','2004-06-12')
,(14, 14,'Compras da feira','2008-05-09')
,(15, 15,'Compra de 30 dias','2015-08-17')
,(16, 16,'Churas da turma','1998-03-09')
,(17, 17,'Churas da turma','1988-04-26')
,(18, 18,'Compra de 30 dias','2017-05-20')
,(19, 19,'Compra de 30 dias','2013-07-14')
,(20, 20,'Compra de 30 dias','1990-02-23')
,(21, 21,'Compras da feira','2011-10-18')
,(22, 22,'Compra de 30 dias','1991-01-16')
,(23, 23,'Compra de 15 dias','2013-12-13')
,(24, 24,'Churas da turma','2001-02-24')
,(25, 25,'Compra de 15 dias','2003-01-25')
,(26, 26,'Compras da feira','2009-06-28')
,(27, 27,'Compras da feira','1992-03-08')
,(28, 28,'Compras da feira','2013-08-16')
,(29, 29,'Compra de 15 dias','1987-07-17')
,(30, 30,'Compra de 30 dias','1979-10-11')
,(31, 31,'Compra de 15 dias','1991-04-14')
,(32, 32,'Compra de 30 dias','1995-07-20')
,(33, 33,'Compra de 15 dias','1975-05-16')
,(34, 34,'Compras da feira','1970-10-12')
,(35, 35,'Churas da turma','1990-11-23')
,(36, 36,'Compra de 15 dias','2013-03-17')
,(37, 37,'Compra de 30 dias','1986-03-20')
,(38, 38,'Compra de 30 dias','1989-12-13')
,(39, 39,'Compra de 15 dias','2010-09-21')
,(40, 40,'Compra de 15 dias','2007-01-31')
,(41, 41,'Churas da turma','1999-11-03')
,(42, 42,'Compra de 15 dias','1978-03-27')
,(43, 43,'Compras da feira','1994-12-23')
,(44, 44,'Compra de 15 dias','1980-01-22')
,(45, 45,'Churas da turma','1977-02-06')
,(46, 46,'Churas da turma','1981-11-30')
,(47, 47,'Churas da turma','1975-06-24')
,(48, 48,'Churas da turma','2007-11-16')
,(49, 49,'Compras da feira','2004-11-12')
,(50, 50,'Compra de 15 dias','1977-08-28')
,(51, 51,'Churas da turma','1970-11-02')
,(52, 52,'Compras da feira','1976-12-04')
,(53, 53,'Compra de 30 dias','2017-11-01')
,(54, 54,'Compra de 15 dias','1972-04-10')
,(55, 55,'Churas da turma','2007-04-17')
,(56, 56,'Compra de 15 dias','2006-11-21')
,(57, 57,'Churas da turma','1982-03-01')
,(58, 58,'Compra de 15 dias','2017-11-25')
,(59, 59,'Compra de 15 dias','1999-04-10')
,(60, 60,'Compras da feira','2006-12-16')
,(61, 61,'Churas da turma','1996-03-28')
,(62, 62,'Compras da feira','1992-01-18')
,(63, 63,'Churas da turma','1971-05-11')
,(64, 64,'Compra de 30 dias','2008-12-27')
,(65, 65,'Compra de 30 dias','1990-08-18')
,(66, 66,'Compra de 15 dias','2011-10-23')
,(67, 67,'Compra de 15 dias','1980-10-03')
,(68, 68,'Compras da feira','2003-03-21')
,(69, 69,'Compra de 30 dias','2004-07-10')
,(70, 70,'Churas da turma','1991-08-05')
,(71, 71,'Compras da feira','1989-01-15')
,(72, 72,'Churas da turma','2004-06-18')
,(73, 73,'Compras da feira','2007-07-24')
,(74, 74,'Compra de 15 dias','2010-09-15')
,(75, 75,'Compras da feira','1979-08-08')
,(76, 76,'Compra de 30 dias','1978-12-31')
,(77, 77,'Compras da feira','1998-07-05')
,(78, 78,'Compra de 30 dias','1991-10-27')
,(79, 79,'Compras da feira','2015-10-10')
,(80, 80,'Churas da turma','1983-04-16')
,(81, 81,'Compras da feira','1974-02-06')
,(82, 82,'Compra de 30 dias','2010-06-02')
,(83, 83,'Compras da feira','1973-12-27')
,(84, 84,'Compras da feira','2010-08-10')
,(85, 85,'Compra de 15 dias','2008-06-19')
,(86, 86,'Churas da turma','1994-09-29')
,(87, 87,'Churas da turma','2005-07-28')
,(88, 88,'Churas da turma','2017-05-12')
,(89, 89,'Churas da turma','1988-04-02')
,(90, 90,'Compras da feira','1980-02-09')
,(91, 91,'Compra de 15 dias','2012-05-25')
,(92, 92,'Compra de 15 dias','1994-08-02')
,(93, 93,'Compra de 30 dias','1996-11-06')
,(94, 94,'Compra de 15 dias','2014-10-01')
,(95, 95,'Compra de 30 dias','1988-02-15')
,(96, 96,'Compra de 30 dias','1974-09-19')
,(97, 97,'Compra de 15 dias','1973-08-01')
,(98, 98,'Churas da turma','2017-10-08')
,(99, 99,'Compra de 15 dias','1985-10-12')
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
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(1,1,'2015-10-25 19:07:40',347,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (7,1,1,36,1),
(3,1,1,19,1),
(4,1,1,6,1),
(11,1,1,50,1),
(6,1,1,1,1),
(16,1,1,36,1),
(17,1,1,28,1),
(2,1,1,34,1),
(5,1,1,48,1),
(13,1,1,22,1),
(9,1,1,50,1),
(1,1,1,17,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(2,1,'2014-08-26 18:15:14',101,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (7,2,1,41,1),
(3,2,1,18,1),
(18,2,1,42,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(3,1,'2006-12-12 17:20:06',282,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (10,3,1,28,1),
(1,3,1,43,1),
(4,3,1,1,1),
(6,3,1,7,1),
(9,3,1,11,1),
(13,3,1,41,1),
(15,3,1,35,1),
(5,3,1,47,1),
(2,3,1,37,1),
(7,3,1,25,1),
(14,3,1,7,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(4,1,'1975-07-02 04:37:52',88,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (4,4,1,14,1),
(10,4,1,17,1),
(6,4,1,12,1),
(18,4,1,45,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(5,1,'2014-08-24 10:44:24',288,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (13,5,1,12,1),
(16,5,1,39,1),
(12,5,1,41,1),
(4,5,1,41,1),
(7,5,1,23,1),
(10,5,1,24,1),
(6,5,1,44,1),
(1,5,1,23,1),
(11,5,1,28,1),
(3,5,1,13,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(6,2,'1982-09-23 23:58:51',92,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (7,6,1,42,1),
(4,6,1,17,1),
(18,6,1,30,1),
(8,6,1,3,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(7,2,'1980-11-26 00:40:37',197,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (1,7,1,42,1),
(17,7,1,31,1),
(9,7,1,8,1),
(2,7,1,38,1),
(16,7,1,3,1),
(8,7,1,29,1),
(6,7,1,25,1),
(4,7,1,21,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(8,2,'1981-12-01 10:13:40',27,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (11,8,1,11,1),
(18,8,1,16,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(9,2,'1985-08-13 13:42:16',394,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (8,9,1,50,1),
(15,9,1,33,1),
(7,9,1,12,1),
(11,9,1,33,1),
(6,9,1,15,1),
(9,9,1,31,1),
(16,9,1,24,1),
(5,9,1,16,1),
(1,9,1,36,1),
(12,9,1,16,1),
(3,9,1,35,1),
(2,9,1,14,1),
(4,9,1,41,1),
(18,9,1,38,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(10,2,'2002-05-06 00:17:51',356,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (17,10,1,48,1),
(13,10,1,5,1),
(12,10,1,43,1),
(5,10,1,27,1),
(4,10,1,45,1),
(14,10,1,33,1),
(6,10,1,2,1),
(10,10,1,22,1),
(18,10,1,44,1),
(9,10,1,39,1),
(3,10,1,48,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(11,3,'1987-04-23 20:49:26',271,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (11,11,1,5,1),
(6,11,1,25,1),
(18,11,1,10,1),
(1,11,1,40,1),
(4,11,1,36,1),
(14,11,1,30,1),
(15,11,1,43,1),
(5,11,1,8,1),
(10,11,1,28,1),
(16,11,1,6,1),
(8,11,1,40,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(12,3,'1975-06-04 08:39:01',365,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (7,12,1,2,1),
(14,12,1,12,1),
(13,12,1,47,1),
(16,12,1,14,1),
(6,12,1,26,1),
(15,12,1,47,1),
(1,12,1,23,1),
(4,12,1,33,1),
(8,12,1,5,1),
(17,12,1,43,1),
(5,12,1,38,1),
(2,12,1,9,1),
(10,12,1,28,1),
(11,12,1,38,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(13,3,'1998-08-19 23:59:21',518,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (5,13,1,25,1),
(3,13,1,46,1),
(7,13,1,44,1),
(2,13,1,42,1),
(15,13,1,49,1),
(12,13,1,34,1),
(6,13,1,10,1),
(17,13,1,40,1),
(9,13,1,7,1),
(13,13,1,47,1),
(11,13,1,17,1),
(4,13,1,30,1),
(16,13,1,41,1),
(10,13,1,39,1),
(8,13,1,47,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(14,3,'1998-04-19 12:14:30',151,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (11,14,1,10,1),
(1,14,1,38,1),
(5,14,1,20,1),
(6,14,1,45,1),
(8,14,1,38,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(15,3,'2004-08-02 06:31:34',204,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (17,15,1,44,1),
(18,15,1,27,1),
(8,15,1,7,1),
(2,15,1,45,1),
(9,15,1,10,1),
(13,15,1,17,1),
(15,15,1,41,1),
(14,15,1,9,1),
(4,15,1,4,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(16,4,'1999-07-03 12:36:58',210,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (5,16,1,37,1),
(8,16,1,28,1),
(3,16,1,38,1),
(14,16,1,16,1),
(15,16,1,7,1),
(6,16,1,19,1),
(10,16,1,5,1),
(7,16,1,32,1),
(11,16,1,28,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(17,4,'1997-12-12 19:51:53',113,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (15,17,1,24,1),
(12,17,1,43,1),
(16,17,1,5,1),
(13,17,1,26,1),
(18,17,1,1,1),
(3,17,1,7,1),
(9,17,1,7,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(18,4,'1976-06-29 03:05:58',122,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (16,18,1,25,1),
(10,18,1,47,1),
(6,18,1,35,1),
(5,18,1,15,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(19,4,'2000-05-30 12:44:16',231,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (15,19,1,16,1),
(1,19,1,2,1),
(6,19,1,34,1),
(9,19,1,29,1),
(18,19,1,50,1),
(7,19,1,36,1),
(17,19,1,12,1),
(16,19,1,5,1),
(13,19,1,47,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(20,4,'1979-08-18 14:16:43',214,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (8,20,1,19,1),
(16,20,1,10,1),
(11,20,1,5,1),
(6,20,1,25,1),
(15,20,1,12,1),
(14,20,1,46,1),
(7,20,1,1,1),
(10,20,1,48,1),
(1,20,1,26,1),
(5,20,1,22,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(21,5,'1979-10-06 09:38:09',187,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (6,21,1,18,1),
(2,21,1,7,1),
(9,21,1,48,1),
(10,21,1,38,1),
(3,21,1,14,1),
(18,21,1,27,1),
(8,21,1,1,1),
(13,21,1,34,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(22,5,'1994-01-28 18:24:55',70,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (2,22,1,31,1),
(10,22,1,39,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(23,5,'1997-03-27 05:30:00',351,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (16,23,1,15,1),
(2,23,1,50,1),
(5,23,1,16,1),
(8,23,1,37,1),
(4,23,1,47,1),
(18,23,1,8,1),
(15,23,1,24,1),
(6,23,1,37,1),
(11,23,1,21,1),
(14,23,1,30,1),
(12,23,1,2,1),
(17,23,1,7,1),
(9,23,1,30,1),
(13,23,1,27,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(24,5,'1983-03-08 19:20:01',110,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (17,24,1,42,1),
(18,24,1,23,1),
(3,24,1,14,1),
(7,24,1,31,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(25,5,'1983-04-11 18:43:39',287,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (18,25,1,43,1),
(15,25,1,22,1),
(11,25,1,37,1),
(6,25,1,36,1),
(12,25,1,9,1),
(2,25,1,49,1),
(3,25,1,43,1),
(4,25,1,43,1),
(7,25,1,5,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(26,6,'1996-11-03 12:07:00',337,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (7,26,1,46,1),
(4,26,1,47,1),
(8,26,1,45,1),
(17,26,1,37,1),
(18,26,1,3,1),
(6,26,1,10,1),
(9,26,1,7,1),
(16,26,1,6,1),
(15,26,1,25,1),
(11,26,1,17,1),
(1,26,1,45,1),
(14,26,1,38,1),
(13,26,1,10,1),
(2,26,1,1,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(27,6,'2005-12-25 16:06:40',132,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (4,27,1,14,1),
(16,27,1,10,1),
(8,27,1,19,1),
(7,27,1,48,1),
(3,27,1,36,1),
(10,27,1,5,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(28,6,'2000-02-06 19:57:41',328,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (17,28,1,9,1),
(9,28,1,22,1),
(13,28,1,30,1),
(3,28,1,36,1),
(4,28,1,49,1),
(10,28,1,15,1),
(11,28,1,3,1),
(1,28,1,1,1),
(14,28,1,30,1),
(15,28,1,18,1),
(12,28,1,48,1),
(6,28,1,29,1),
(7,28,1,29,1),
(16,28,1,9,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(29,6,'1991-06-26 21:51:48',55,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (14,29,1,41,1),
(12,29,1,9,1),
(17,29,1,5,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(30,6,'1981-05-31 13:39:17',409,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (17,30,1,2,1),
(12,30,1,38,1),
(6,30,1,45,1),
(5,30,1,16,1),
(9,30,1,21,1),
(10,30,1,18,1),
(3,30,1,39,1),
(2,30,1,33,1),
(18,30,1,20,1),
(7,30,1,20,1),
(4,30,1,37,1),
(13,30,1,4,1),
(14,30,1,36,1),
(8,30,1,36,1),
(16,30,1,44,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(31,7,'2015-10-22 23:43:43',111,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (8,31,1,12,1),
(6,31,1,1,1),
(3,31,1,1,1),
(7,31,1,25,1),
(4,31,1,28,1),
(18,31,1,15,1),
(11,31,1,12,1),
(12,31,1,6,1),
(14,31,1,11,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(32,7,'1981-01-01 17:01:00',167,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (6,32,1,16,1),
(4,32,1,34,1),
(1,32,1,24,1),
(17,32,1,13,1),
(10,32,1,10,1),
(14,32,1,28,1),
(18,32,1,42,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(33,7,'2001-04-10 03:35:16',44,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (1,33,1,6,1),
(15,33,1,38,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(34,7,'1987-02-25 05:43:36',227,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (1,34,1,37,1),
(18,34,1,40,1),
(3,34,1,6,1),
(11,34,1,22,1),
(5,34,1,33,1),
(12,34,1,41,1),
(16,34,1,48,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(35,7,'2012-02-19 23:54:45',276,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (1,35,1,49,1),
(3,35,1,31,1),
(18,35,1,22,1),
(8,35,1,40,1),
(4,35,1,28,1),
(6,35,1,25,1),
(13,35,1,37,1),
(5,35,1,44,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(36,8,'1987-04-17 09:19:21',93,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (15,36,1,1,1),
(10,36,1,22,1),
(1,36,1,41,1),
(7,36,1,29,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(37,8,'2006-05-18 01:22:31',284,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (13,37,1,26,1),
(9,37,1,3,1),
(18,37,1,13,1),
(5,37,1,49,1),
(14,37,1,30,1),
(3,37,1,44,1),
(8,37,1,27,1),
(11,37,1,13,1),
(17,37,1,8,1),
(6,37,1,26,1),
(4,37,1,23,1),
(10,37,1,22,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(38,8,'2007-03-17 00:35:45',315,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (10,38,1,1,1),
(18,38,1,20,1),
(4,38,1,41,1),
(6,38,1,16,1),
(12,38,1,19,1),
(1,38,1,39,1),
(17,38,1,35,1),
(16,38,1,48,1),
(5,38,1,29,1),
(14,38,1,8,1),
(9,38,1,24,1),
(15,38,1,10,1),
(11,38,1,7,1),
(13,38,1,12,1),
(3,38,1,6,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(39,8,'1995-02-20 01:36:41',273,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (4,39,1,33,1),
(1,39,1,21,1),
(2,39,1,18,1),
(18,39,1,33,1),
(6,39,1,36,1),
(14,39,1,39,1),
(13,39,1,10,1),
(11,39,1,9,1),
(10,39,1,47,1),
(16,39,1,27,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(40,8,'1984-04-22 03:26:22',368,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (7,40,1,47,1),
(2,40,1,42,1),
(12,40,1,21,1),
(17,40,1,39,1),
(9,40,1,43,1),
(5,40,1,46,1),
(13,40,1,20,1),
(3,40,1,21,1),
(8,40,1,16,1),
(18,40,1,31,1),
(6,40,1,9,1),
(11,40,1,33,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(41,9,'1995-04-11 13:41:24',61,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (9,41,1,19,1),
(10,41,1,42,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(42,9,'2010-11-17 13:17:17',196,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (17,42,1,31,1),
(18,42,1,17,1),
(9,42,1,6,1),
(4,42,1,27,1),
(11,42,1,27,1),
(3,42,1,33,1),
(6,42,1,28,1),
(8,42,1,27,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(43,9,'1999-12-22 07:03:24',276,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (5,43,1,40,1),
(12,43,1,17,1),
(13,43,1,35,1),
(7,43,1,35,1),
(17,43,1,24,1),
(15,43,1,14,1),
(11,43,1,48,1),
(6,43,1,24,1),
(9,43,1,39,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(44,9,'1974-05-13 05:16:05',353,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (3,44,1,26,1),
(13,44,1,20,1),
(16,44,1,7,1),
(5,44,1,28,1),
(18,44,1,41,1),
(2,44,1,9,1),
(15,44,1,33,1),
(6,44,1,22,1),
(8,44,1,37,1),
(1,44,1,50,1),
(9,44,1,33,1),
(12,44,1,41,1),
(11,44,1,1,1),
(4,44,1,5,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(45,9,'1997-04-12 14:42:58',415,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (11,45,1,44,1),
(3,45,1,7,1),
(9,45,1,43,1),
(17,45,1,20,1),
(18,45,1,39,1),
(8,45,1,30,1),
(6,45,1,33,1),
(16,45,1,42,1),
(1,45,1,47,1),
(5,45,1,22,1),
(13,45,1,28,1),
(4,45,1,28,1),
(10,45,1,28,1),
(12,45,1,4,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(46,10,'2002-06-08 16:20:38',49,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (15,46,1,17,1),
(12,46,1,31,1),
(4,46,1,1,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(47,10,'1978-08-16 07:37:45',309,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (13,47,1,48,1),
(4,47,1,44,1),
(6,47,1,20,1),
(14,47,1,18,1),
(3,47,1,20,1),
(7,47,1,37,1),
(16,47,1,50,1),
(11,47,1,49,1),
(15,47,1,23,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(48,10,'2008-02-28 23:19:12',370,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (9,48,1,42,1),
(6,48,1,45,1),
(18,48,1,7,1),
(17,48,1,40,1),
(4,48,1,7,1),
(5,48,1,46,1),
(3,48,1,44,1),
(8,48,1,35,1),
(2,48,1,24,1),
(16,48,1,16,1),
(13,48,1,31,1),
(11,48,1,2,1),
(10,48,1,31,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(49,10,'1972-04-25 08:40:24',225,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (12,49,1,29,1),
(2,49,1,27,1),
(7,49,1,7,1),
(10,49,1,43,1),
(4,49,1,50,1),
(18,49,1,28,1),
(14,49,1,24,1),
(15,49,1,17,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(50,10,'2014-10-20 06:45:42',189,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (15,50,1,49,1),
(3,50,1,28,1),
(13,50,1,9,1),
(1,50,1,27,1),
(9,50,1,25,1),
(12,50,1,42,1),
(2,50,1,9,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(51,11,'2000-04-10 14:39:39',28,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (16,51,1,6,1),
(6,51,1,19,1),
(4,51,1,3,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(52,11,'1981-08-22 14:43:43',130,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (8,52,1,42,1),
(10,52,1,17,1),
(12,52,1,46,1),
(11,52,1,15,1),
(9,52,1,10,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(53,11,'2008-02-29 21:49:10',396,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (12,53,1,49,1),
(10,53,1,43,1),
(3,53,1,50,1),
(18,53,1,31,1),
(17,53,1,5,1),
(9,53,1,36,1),
(11,53,1,46,1),
(13,53,1,31,1),
(8,53,1,42,1),
(14,53,1,14,1),
(4,53,1,13,1),
(1,53,1,36,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(54,11,'1986-02-05 09:30:31',72,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (4,54,1,27,1),
(2,54,1,45,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(55,11,'1971-10-09 14:31:53',145,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (13,55,1,33,1),
(2,55,1,37,1),
(4,55,1,27,1),
(14,55,1,48,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(56,12,'1980-01-17 12:53:58',345,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (17,56,1,24,1),
(2,56,1,44,1),
(14,56,1,35,1),
(5,56,1,45,1),
(10,56,1,29,1),
(18,56,1,19,1),
(3,56,1,17,1),
(8,56,1,34,1),
(4,56,1,28,1),
(1,56,1,13,1),
(13,56,1,14,1),
(11,56,1,26,1),
(9,56,1,17,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(57,12,'2002-08-05 11:59:50',107,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (11,57,1,37,1),
(1,57,1,24,1),
(10,57,1,16,1),
(5,57,1,1,1),
(9,57,1,22,1),
(6,57,1,7,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(58,12,'1995-07-25 08:06:02',139,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (13,58,1,45,1),
(17,58,1,4,1),
(2,58,1,26,1),
(1,58,1,16,1),
(4,58,1,40,1),
(11,58,1,5,1),
(6,58,1,3,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(59,12,'1979-12-23 15:07:08',267,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (16,59,1,49,1),
(17,59,1,20,1),
(11,59,1,46,1),
(18,59,1,30,1),
(14,59,1,41,1),
(5,59,1,48,1),
(13,59,1,24,1),
(6,59,1,9,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(60,12,'1988-12-20 22:38:51',251,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (13,60,1,11,1),
(1,60,1,12,1),
(16,60,1,19,1),
(11,60,1,48,1),
(7,60,1,34,1),
(14,60,1,1,1),
(17,60,1,29,1),
(9,60,1,26,1),
(4,60,1,2,1),
(12,60,1,17,1),
(18,60,1,27,1),
(3,60,1,15,1),
(15,60,1,10,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(61,13,'2012-04-12 15:35:26',297,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (6,61,1,33,1),
(17,61,1,10,1),
(9,61,1,42,1),
(2,61,1,20,1),
(14,61,1,24,1),
(7,61,1,39,1),
(10,61,1,34,1),
(1,61,1,43,1),
(18,61,1,43,1),
(4,61,1,9,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(62,13,'2003-02-23 02:18:48',353,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (18,62,1,48,1),
(12,62,1,4,1),
(5,62,1,45,1),
(10,62,1,38,1),
(17,62,1,13,1),
(4,62,1,35,1),
(9,62,1,36,1),
(1,62,1,9,1),
(8,62,1,11,1),
(2,62,1,45,1),
(3,62,1,8,1),
(6,62,1,7,1),
(7,62,1,6,1),
(11,62,1,19,1),
(15,62,1,29,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(63,13,'1979-04-14 09:04:32',51,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (1,63,1,12,1),
(16,63,1,5,1),
(8,63,1,6,1),
(2,63,1,4,1),
(15,63,1,24,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(64,13,'1995-05-06 07:01:37',273,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (10,64,1,41,1),
(12,64,1,13,1),
(4,64,1,5,1),
(3,64,1,3,1),
(13,64,1,27,1),
(16,64,1,10,1),
(8,64,1,16,1),
(17,64,1,31,1),
(7,64,1,12,1),
(5,64,1,37,1),
(9,64,1,24,1),
(14,64,1,14,1),
(6,64,1,1,1),
(11,64,1,19,1),
(1,64,1,20,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(65,13,'1982-09-03 21:52:32',122,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (17,65,1,46,1),
(10,65,1,1,1),
(11,65,1,29,1),
(7,65,1,46,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(66,14,'1986-09-02 23:11:35',210,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (3,66,1,33,1),
(4,66,1,9,1),
(12,66,1,27,1),
(8,66,1,2,1),
(7,66,1,23,1),
(2,66,1,35,1),
(14,66,1,42,1),
(16,66,1,39,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(67,14,'2014-03-29 01:59:15',155,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (2,67,1,41,1),
(5,67,1,12,1),
(15,67,1,5,1),
(16,67,1,36,1),
(12,67,1,33,1),
(10,67,1,9,1),
(17,67,1,4,1),
(6,67,1,15,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(68,14,'2002-02-14 15:02:24',362,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (17,68,1,44,1),
(14,68,1,18,1),
(12,68,1,14,1),
(1,68,1,6,1),
(5,68,1,47,1),
(4,68,1,6,1),
(15,68,1,43,1),
(13,68,1,5,1),
(7,68,1,39,1),
(2,68,1,48,1),
(6,68,1,47,1),
(8,68,1,45,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(69,14,'1994-04-05 12:12:43',173,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (14,69,1,46,1),
(10,69,1,35,1),
(4,69,1,22,1),
(8,69,1,6,1),
(9,69,1,48,1),
(13,69,1,11,1),
(2,69,1,5,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(70,14,'2011-08-15 00:15:05',229,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (1,70,1,15,1),
(17,70,1,41,1),
(6,70,1,26,1),
(10,70,1,24,1),
(11,70,1,45,1),
(4,70,1,41,1),
(2,70,1,37,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(71,15,'2018-02-25 11:57:44',388,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (11,71,1,44,1),
(13,71,1,44,1),
(5,71,1,34,1),
(18,71,1,48,1),
(16,71,1,40,1),
(12,71,1,21,1),
(15,71,1,25,1),
(7,71,1,32,1),
(9,71,1,22,1),
(4,71,1,39,1),
(17,71,1,39,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(72,15,'1991-04-29 19:14:28',95,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (4,72,1,26,1),
(1,72,1,1,1),
(14,72,1,28,1),
(5,72,1,40,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(73,15,'1977-01-07 19:32:44',220,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (10,73,1,26,1),
(16,73,1,32,1),
(12,73,1,13,1),
(8,73,1,32,1),
(15,73,1,34,1),
(18,73,1,20,1),
(13,73,1,36,1),
(5,73,1,27,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(74,15,'1996-12-07 05:43:24',87,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (1,74,1,11,1),
(7,74,1,44,1),
(12,74,1,19,1),
(9,74,1,13,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(75,15,'1990-11-05 20:36:41',202,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (3,75,1,7,1),
(2,75,1,18,1),
(10,75,1,23,1),
(18,75,1,13,1),
(5,75,1,4,1),
(7,75,1,15,1),
(16,75,1,38,1),
(6,75,1,39,1),
(15,75,1,10,1),
(12,75,1,16,1),
(9,75,1,18,1),
(14,75,1,1,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(76,16,'1976-07-13 16:17:19',141,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (16,76,1,31,1),
(18,76,1,19,1),
(9,76,1,45,1),
(13,76,1,46,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(77,16,'1999-02-11 08:13:03',246,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (17,77,1,27,1),
(18,77,1,27,1),
(5,77,1,12,1),
(3,77,1,7,1),
(13,77,1,35,1),
(9,77,1,37,1),
(16,77,1,46,1),
(12,77,1,38,1),
(8,77,1,12,1),
(2,77,1,5,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(78,16,'2013-03-30 17:28:18',329,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (6,78,1,11,1),
(14,78,1,30,1),
(8,78,1,22,1),
(4,78,1,11,1),
(13,78,1,22,1),
(15,78,1,26,1),
(7,78,1,49,1),
(18,78,1,16,1),
(16,78,1,39,1),
(5,78,1,27,1),
(1,78,1,5,1),
(17,78,1,39,1),
(11,78,1,8,1),
(3,78,1,19,1),
(2,78,1,5,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(79,16,'1978-07-29 21:36:00',282,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (13,79,1,39,1),
(5,79,1,33,1),
(10,79,1,3,1),
(2,79,1,17,1),
(8,79,1,27,1),
(14,79,1,14,1),
(9,79,1,48,1),
(12,79,1,38,1),
(11,79,1,8,1),
(1,79,1,46,1),
(16,79,1,9,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(80,16,'2005-01-21 08:10:57',177,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (9,80,1,8,1),
(6,80,1,36,1),
(1,80,1,47,1),
(2,80,1,50,1),
(12,80,1,29,1),
(5,80,1,7,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(81,17,'1992-11-05 15:51:06',76,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (14,81,1,19,1),
(17,81,1,30,1),
(9,81,1,27,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(82,17,'2008-08-18 06:54:07',378,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (8,82,1,7,1),
(17,82,1,4,1),
(10,82,1,12,1),
(14,82,1,44,1),
(7,82,1,32,1),
(2,82,1,42,1),
(6,82,1,6,1),
(3,82,1,34,1),
(13,82,1,45,1),
(9,82,1,44,1),
(12,82,1,40,1),
(18,82,1,29,1),
(11,82,1,39,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(83,17,'2004-09-13 00:50:06',271,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (2,83,1,41,1),
(4,83,1,10,1),
(6,83,1,49,1),
(8,83,1,28,1),
(11,83,1,12,1),
(9,83,1,7,1),
(3,83,1,42,1),
(17,83,1,45,1),
(13,83,1,37,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(84,17,'2012-09-03 14:38:13',67,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (6,84,1,37,1),
(3,84,1,4,1),
(16,84,1,26,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(85,17,'1970-05-09 09:44:10',139,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (15,85,1,38,1),
(7,85,1,27,1),
(2,85,1,17,1),
(18,85,1,20,1),
(16,85,1,37,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(86,18,'1974-04-16 00:20:38',238,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (14,86,1,5,1),
(5,86,1,10,1),
(1,86,1,29,1),
(13,86,1,21,1),
(8,86,1,37,1),
(12,86,1,4,1),
(9,86,1,49,1),
(15,86,1,10,1),
(18,86,1,18,1),
(2,86,1,1,1),
(3,86,1,18,1),
(11,86,1,15,1),
(16,86,1,21,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(87,18,'1970-01-15 23:44:49',222,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (7,87,1,8,1),
(13,87,1,44,1),
(15,87,1,5,1),
(2,87,1,36,1),
(3,87,1,17,1),
(6,87,1,48,1),
(14,87,1,44,1),
(11,87,1,20,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(88,18,'1992-04-24 15:00:28',231,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (3,88,1,27,1),
(18,88,1,10,1),
(13,88,1,18,1),
(17,88,1,17,1),
(15,88,1,41,1),
(14,88,1,33,1),
(4,88,1,34,1),
(2,88,1,12,1),
(7,88,1,39,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(89,18,'1992-09-09 04:54:13',324,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (1,89,1,49,1),
(8,89,1,43,1),
(12,89,1,24,1),
(13,89,1,11,1),
(5,89,1,22,1),
(11,89,1,50,1),
(6,89,1,41,1),
(9,89,1,35,1),
(10,89,1,3,1),
(15,89,1,46,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(90,18,'1975-09-22 14:15:37',357,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (7,90,1,30,1),
(14,90,1,23,1),
(9,90,1,1,1),
(1,90,1,24,1),
(12,90,1,15,1),
(10,90,1,32,1),
(13,90,1,28,1),
(17,90,1,34,1),
(11,90,1,19,1),
(5,90,1,15,1),
(4,90,1,43,1),
(6,90,1,6,1),
(2,90,1,37,1),
(16,90,1,50,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(91,19,'1987-05-25 20:37:52',211,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (8,91,1,50,1),
(2,91,1,19,1),
(3,91,1,1,1),
(6,91,1,42,1),
(12,91,1,40,1),
(4,91,1,28,1),
(18,91,1,5,1),
(11,91,1,24,1),
(5,91,1,2,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(92,19,'2004-09-02 12:02:01',76,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (13,92,1,12,1),
(7,92,1,47,1),
(10,92,1,11,1),
(11,92,1,5,1),
(6,92,1,1,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(93,19,'2007-10-28 15:50:32',39,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (16,93,1,10,1),
(13,93,1,26,1),
(9,93,1,3,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(94,19,'1986-02-13 12:32:23',359,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (17,94,1,44,1),
(6,94,1,37,1),
(7,94,1,48,1),
(16,94,1,24,1),
(8,94,1,35,1),
(13,94,1,27,1),
(12,94,1,10,1),
(18,94,1,29,1),
(5,94,1,6,1),
(15,94,1,12,1),
(1,94,1,48,1),
(10,94,1,33,1),
(9,94,1,6,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(95,19,'2016-12-23 23:31:27',139,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (10,95,1,39,1),
(16,95,1,2,1),
(7,95,1,13,1),
(17,95,1,35,1),
(13,95,1,34,1),
(8,95,1,16,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(96,20,'1992-07-04 00:16:43',155,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (3,96,1,2,1),
(9,96,1,13,1),
(4,96,1,1,1),
(5,96,1,16,1),
(13,96,1,30,1),
(12,96,1,11,1),
(6,96,1,40,1),
(8,96,1,27,1),
(1,96,1,15,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(97,20,'1988-10-26 16:12:50',26,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (15,97,1,22,1),
(1,97,1,2,1),
(6,97,1,2,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(98,20,'2013-02-24 22:12:05',228,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (15,98,1,35,1),
(8,98,1,44,1),
(17,98,1,35,1),
(7,98,1,4,1),
(6,98,1,12,1),
(9,98,1,36,1),
(12,98,1,44,1),
(16,98,1,18,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(99,20,'2018-05-27 21:58:48',235,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (14,99,1,36,1),
(4,99,1,36,1),
(7,99,1,17,1),
(6,99,1,17,1),
(10,99,1,48,1),
(18,99,1,31,1),
(17,99,1,50,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(100,20,'1985-08-02 05:37:25',367,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (13,100,1,33,1),
(16,100,1,11,1),
(4,100,1,5,1),
(18,100,1,13,1),
(7,100,1,44,1),
(11,100,1,49,1),
(15,100,1,11,1),
(8,100,1,17,1),
(3,100,1,6,1),
(5,100,1,21,1),
(12,100,1,46,1),
(1,100,1,45,1),
(9,100,1,34,1),
(10,100,1,32,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(101,21,'1987-02-02 07:50:43',80,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (12,101,1,40,1),
(4,101,1,37,1),
(9,101,1,3,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(102,21,'1982-02-05 08:36:31',348,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (14,102,1,19,1),
(2,102,1,32,1),
(11,102,1,41,1),
(7,102,1,24,1),
(6,102,1,24,1),
(18,102,1,26,1),
(10,102,1,5,1),
(8,102,1,46,1),
(12,102,1,9,1),
(13,102,1,21,1),
(1,102,1,14,1),
(4,102,1,21,1),
(16,102,1,44,1),
(15,102,1,22,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(103,21,'1988-10-30 21:54:26',138,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (7,103,1,8,1),
(12,103,1,48,1),
(8,103,1,2,1),
(10,103,1,15,1),
(6,103,1,21,1),
(17,103,1,44,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(104,21,'2002-12-28 18:03:49',277,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (6,104,1,47,1),
(13,104,1,32,1),
(7,104,1,42,1),
(10,104,1,10,1),
(1,104,1,31,1),
(11,104,1,26,1),
(4,104,1,21,1),
(16,104,1,20,1),
(3,104,1,48,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(105,21,'1980-11-02 22:48:59',260,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (4,105,1,50,1),
(11,105,1,33,1),
(1,105,1,19,1),
(18,105,1,4,1),
(14,105,1,50,1),
(10,105,1,46,1),
(8,105,1,49,1),
(17,105,1,9,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(106,22,'1971-03-22 22:09:31',285,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (16,106,1,35,1),
(10,106,1,6,1),
(13,106,1,22,1),
(11,106,1,31,1),
(8,106,1,4,1),
(7,106,1,33,1),
(12,106,1,34,1),
(14,106,1,38,1),
(9,106,1,49,1),
(17,106,1,33,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(107,22,'1979-09-11 14:13:05',332,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (5,107,1,12,1),
(2,107,1,40,1),
(18,107,1,19,1),
(14,107,1,48,1),
(10,107,1,28,1),
(3,107,1,42,1),
(15,107,1,38,1),
(1,107,1,17,1),
(17,107,1,37,1),
(9,107,1,49,1),
(12,107,1,2,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(108,22,'1974-09-10 01:34:47',274,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (12,108,1,47,1),
(14,108,1,26,1),
(3,108,1,36,1),
(13,108,1,48,1),
(2,108,1,12,1),
(16,108,1,28,1),
(9,108,1,37,1),
(18,108,1,40,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(109,22,'1997-08-21 08:56:14',37,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (6,109,1,23,1),
(10,109,1,14,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(110,22,'1976-08-25 22:48:37',150,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (1,110,1,34,1),
(13,110,1,32,1),
(10,110,1,26,1),
(15,110,1,48,1),
(11,110,1,1,1),
(16,110,1,2,1),
(14,110,1,7,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(111,23,'1976-07-31 09:57:07',162,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (17,111,1,4,1),
(12,111,1,35,1),
(7,111,1,15,1),
(4,111,1,20,1),
(16,111,1,22,1),
(1,111,1,44,1),
(18,111,1,22,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(112,23,'1982-07-26 13:11:17',194,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (9,112,1,17,1),
(5,112,1,13,1),
(11,112,1,18,1),
(2,112,1,44,1),
(17,112,1,3,1),
(6,112,1,38,1),
(1,112,1,15,1),
(15,112,1,46,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(113,23,'1991-03-15 18:10:00',349,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (3,113,1,1,1),
(11,113,1,39,1),
(15,113,1,44,1),
(18,113,1,49,1),
(13,113,1,23,1),
(1,113,1,26,1),
(2,113,1,17,1),
(10,113,1,35,1),
(14,113,1,13,1),
(4,113,1,46,1),
(6,113,1,44,1),
(9,113,1,12,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(114,23,'1986-12-26 05:25:04',142,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (4,114,1,9,1),
(5,114,1,28,1),
(17,114,1,6,1),
(8,114,1,29,1),
(15,114,1,5,1),
(16,114,1,21,1),
(3,114,1,29,1),
(9,114,1,8,1),
(10,114,1,7,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(115,23,'2005-11-08 21:45:54',148,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (4,115,1,4,1),
(15,115,1,6,1),
(12,115,1,46,1),
(17,115,1,4,1),
(7,115,1,4,1),
(5,115,1,42,1),
(2,115,1,42,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(116,24,'2010-03-23 14:41:39',323,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (9,116,1,40,1),
(5,116,1,35,1),
(8,116,1,22,1),
(13,116,1,48,1),
(11,116,1,40,1),
(7,116,1,15,1),
(4,116,1,31,1),
(15,116,1,27,1),
(10,116,1,21,1),
(12,116,1,44,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(117,24,'1994-07-10 06:37:15',200,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (8,117,1,20,1),
(11,117,1,32,1),
(9,117,1,5,1),
(2,117,1,2,1),
(6,117,1,39,1),
(13,117,1,43,1),
(12,117,1,8,1),
(5,117,1,2,1),
(10,117,1,25,1),
(3,117,1,2,1),
(1,117,1,22,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(118,24,'2016-03-29 17:50:47',71,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (13,118,1,32,1),
(12,118,1,39,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(119,24,'1976-10-20 15:15:00',399,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (8,119,1,31,1),
(6,119,1,42,1),
(2,119,1,2,1),
(18,119,1,36,1),
(5,119,1,37,1),
(10,119,1,43,1),
(9,119,1,19,1),
(12,119,1,8,1),
(3,119,1,50,1),
(14,119,1,32,1),
(7,119,1,46,1),
(4,119,1,15,1),
(15,119,1,38,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(120,24,'2014-12-01 19:52:51',87,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (11,120,1,6,1),
(1,120,1,47,1),
(2,120,1,34,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(121,25,'1990-04-11 22:54:01',357,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (7,121,1,3,1),
(3,121,1,12,1),
(9,121,1,38,1),
(11,121,1,49,1),
(17,121,1,7,1),
(15,121,1,12,1),
(6,121,1,18,1),
(14,121,1,22,1),
(10,121,1,35,1),
(18,121,1,12,1),
(16,121,1,34,1),
(5,121,1,12,1),
(13,121,1,17,1),
(4,121,1,47,1),
(12,121,1,39,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(122,25,'2010-10-28 15:35:01',344,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (11,122,1,16,1),
(5,122,1,12,1),
(10,122,1,47,1),
(1,122,1,25,1),
(18,122,1,38,1),
(13,122,1,33,1),
(17,122,1,25,1),
(9,122,1,7,1),
(3,122,1,49,1),
(2,122,1,40,1),
(4,122,1,38,1),
(16,122,1,14,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(123,25,'2001-11-01 01:32:11',190,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (17,123,1,1,1),
(10,123,1,47,1),
(4,123,1,34,1),
(8,123,1,38,1),
(15,123,1,6,1),
(7,123,1,14,1),
(2,123,1,40,1),
(1,123,1,10,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(124,25,'2004-09-02 19:55:58',181,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (16,124,1,34,1),
(6,124,1,21,1),
(1,124,1,40,1),
(9,124,1,21,1),
(13,124,1,50,1),
(8,124,1,15,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(125,25,'2013-11-03 20:59:37',421,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (12,125,1,28,1),
(14,125,1,15,1),
(4,125,1,47,1),
(1,125,1,48,1),
(15,125,1,27,1),
(7,125,1,13,1),
(3,125,1,41,1),
(6,125,1,32,1),
(18,125,1,21,1),
(11,125,1,25,1),
(10,125,1,31,1),
(16,125,1,49,1),
(2,125,1,44,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(126,26,'1992-05-30 11:24:28',194,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (5,126,1,4,1),
(3,126,1,31,1),
(10,126,1,11,1),
(11,126,1,1,1),
(13,126,1,26,1),
(14,126,1,48,1),
(12,126,1,17,1),
(17,126,1,13,1),
(4,126,1,43,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(127,26,'1999-05-08 16:47:20',223,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (11,127,1,30,1),
(7,127,1,34,1),
(13,127,1,17,1),
(17,127,1,33,1),
(18,127,1,50,1),
(8,127,1,31,1),
(5,127,1,18,1),
(1,127,1,3,1),
(2,127,1,7,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(128,26,'1999-07-06 16:10:30',182,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (6,128,1,25,1),
(4,128,1,42,1),
(14,128,1,45,1),
(10,128,1,25,1),
(12,128,1,4,1),
(5,128,1,30,1),
(2,128,1,11,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(129,26,'1999-09-29 13:16:30',286,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (3,129,1,12,1),
(2,129,1,12,1),
(16,129,1,4,1),
(9,129,1,31,1),
(5,129,1,13,1),
(13,129,1,42,1),
(18,129,1,45,1),
(15,129,1,10,1),
(7,129,1,40,1),
(14,129,1,32,1),
(10,129,1,2,1),
(17,129,1,7,1),
(1,129,1,36,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(130,26,'1973-04-30 11:07:36',247,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (6,130,1,29,1),
(12,130,1,32,1),
(17,130,1,37,1),
(15,130,1,47,1),
(8,130,1,23,1),
(4,130,1,7,1),
(3,130,1,16,1),
(13,130,1,12,1),
(10,130,1,44,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(131,27,'2006-06-20 15:12:58',311,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (16,131,1,9,1),
(9,131,1,26,1),
(17,131,1,47,1),
(14,131,1,28,1),
(15,131,1,33,1),
(5,131,1,18,1),
(8,131,1,1,1),
(11,131,1,14,1),
(1,131,1,5,1),
(7,131,1,8,1),
(4,131,1,48,1),
(10,131,1,29,1),
(13,131,1,45,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(132,27,'1974-08-04 16:06:16',217,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (7,132,1,8,1),
(3,132,1,28,1),
(9,132,1,24,1),
(6,132,1,27,1),
(11,132,1,14,1),
(4,132,1,10,1),
(13,132,1,1,1),
(16,132,1,29,1),
(12,132,1,11,1),
(18,132,1,24,1),
(17,132,1,41,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(133,27,'2001-10-11 20:35:25',70,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (18,133,1,6,1),
(1,133,1,25,1),
(11,133,1,15,1),
(3,133,1,5,1),
(5,133,1,14,1),
(13,133,1,5,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(134,27,'1993-10-31 10:50:57',98,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (10,134,1,13,1),
(4,134,1,35,1),
(11,134,1,50,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(135,27,'1978-04-17 06:32:14',57,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (18,135,1,11,1),
(6,135,1,46,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(136,28,'1987-06-09 15:19:49',208,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (16,136,1,48,1),
(2,136,1,20,1),
(10,136,1,39,1),
(18,136,1,31,1),
(12,136,1,4,1),
(11,136,1,39,1),
(5,136,1,9,1),
(9,136,1,18,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(137,28,'2002-02-24 06:04:56',374,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (4,137,1,27,1),
(15,137,1,31,1),
(17,137,1,46,1),
(3,137,1,14,1),
(6,137,1,29,1),
(5,137,1,35,1),
(8,137,1,13,1),
(14,137,1,11,1),
(2,137,1,41,1),
(18,137,1,20,1),
(10,137,1,6,1),
(16,137,1,47,1),
(7,137,1,12,1),
(13,137,1,42,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(138,28,'1970-04-09 15:37:15',184,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (15,138,1,7,1),
(6,138,1,43,1),
(16,138,1,19,1),
(3,138,1,30,1),
(11,138,1,30,1),
(18,138,1,18,1),
(5,138,1,1,1),
(10,138,1,24,1),
(12,138,1,8,1),
(7,138,1,4,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(139,28,'2013-03-31 17:48:20',314,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (1,139,1,5,1),
(7,139,1,13,1),
(2,139,1,11,1),
(14,139,1,26,1),
(15,139,1,38,1),
(13,139,1,13,1),
(16,139,1,25,1),
(17,139,1,48,1),
(5,139,1,41,1),
(12,139,1,50,1),
(6,139,1,44,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(140,28,'2007-09-01 18:03:25',84,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (12,140,1,1,1),
(1,140,1,43,1),
(2,140,1,40,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(141,29,'2001-06-04 23:24:24',181,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (15,141,1,36,1),
(10,141,1,20,1),
(6,141,1,38,1),
(9,141,1,47,1),
(16,141,1,19,1),
(14,141,1,13,1),
(13,141,1,8,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(142,29,'1995-10-17 01:52:31',93,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (4,142,1,45,1),
(14,142,1,9,1),
(13,142,1,7,1),
(16,142,1,32,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(143,29,'2017-09-06 06:06:58',218,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (14,143,1,44,1),
(3,143,1,32,1),
(8,143,1,25,1),
(5,143,1,5,1),
(6,143,1,2,1),
(10,143,1,10,1),
(17,143,1,19,1),
(9,143,1,50,1),
(7,143,1,9,1),
(16,143,1,12,1),
(12,143,1,10,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(144,29,'1976-06-02 20:47:04',310,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (10,144,1,41,1),
(17,144,1,17,1),
(15,144,1,46,1),
(2,144,1,18,1),
(14,144,1,9,1),
(5,144,1,47,1),
(4,144,1,49,1),
(11,144,1,14,1),
(13,144,1,16,1),
(8,144,1,44,1),
(7,144,1,9,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(145,29,'2011-12-09 10:23:58',142,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (14,145,1,14,1),
(17,145,1,41,1),
(18,145,1,3,1),
(1,145,1,11,1),
(12,145,1,40,1),
(11,145,1,13,1),
(7,145,1,8,1),
(9,145,1,5,1),
(3,145,1,7,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(146,30,'2013-12-27 03:27:03',107,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (14,146,1,25,1),
(1,146,1,34,1),
(4,146,1,48,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(147,30,'1982-03-11 10:33:31',57,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (1,147,1,28,1),
(7,147,1,10,1),
(18,147,1,19,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(148,30,'1995-12-26 11:37:53',161,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (16,148,1,22,1),
(17,148,1,7,1),
(15,148,1,4,1),
(3,148,1,42,1),
(18,148,1,14,1),
(2,148,1,5,1),
(14,148,1,4,1),
(9,148,1,13,1),
(7,148,1,50,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(149,30,'1998-04-04 01:15:32',200,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (8,149,1,39,1),
(10,149,1,35,1),
(15,149,1,15,1),
(17,149,1,18,1),
(2,149,1,26,1),
(16,149,1,11,1),
(5,149,1,23,1),
(11,149,1,9,1),
(13,149,1,3,1),
(1,149,1,10,1),
(6,149,1,11,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(150,30,'1975-05-14 10:44:44',231,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (12,150,1,37,1),
(9,150,1,9,1),
(1,150,1,38,1),
(4,150,1,22,1),
(7,150,1,41,1),
(15,150,1,34,1),
(13,150,1,1,1),
(6,150,1,18,1),
(17,150,1,31,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(151,31,'1984-07-12 22:52:17',248,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (16,151,1,19,1),
(5,151,1,2,1),
(4,151,1,11,1),
(14,151,1,43,1),
(17,151,1,44,1),
(8,151,1,30,1),
(12,151,1,41,1),
(10,151,1,21,1),
(6,151,1,37,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(152,31,'1981-11-20 04:45:08',323,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (11,152,1,48,1),
(9,152,1,39,1),
(16,152,1,30,1),
(8,152,1,9,1),
(4,152,1,34,1),
(6,152,1,41,1),
(14,152,1,49,1),
(10,152,1,45,1),
(7,152,1,28,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(153,31,'2011-12-20 09:56:22',171,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (14,153,1,41,1),
(6,153,1,20,1),
(16,153,1,21,1),
(11,153,1,2,1),
(17,153,1,15,1),
(12,153,1,38,1),
(8,153,1,34,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(154,31,'1984-01-14 12:56:34',397,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (18,154,1,42,1),
(16,154,1,48,1),
(9,154,1,30,1),
(17,154,1,41,1),
(7,154,1,43,1),
(4,154,1,37,1),
(12,154,1,47,1),
(1,154,1,10,1),
(10,154,1,50,1),
(5,154,1,13,1),
(14,154,1,32,1),
(13,154,1,4,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(155,31,'1999-04-16 18:57:30',261,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (2,155,1,29,1),
(18,155,1,35,1),
(13,155,1,2,1),
(16,155,1,23,1),
(8,155,1,2,1),
(15,155,1,8,1),
(10,155,1,20,1),
(7,155,1,5,1),
(17,155,1,22,1),
(14,155,1,32,1),
(11,155,1,44,1),
(3,155,1,39,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(156,32,'2003-07-20 15:30:54',364,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (9,156,1,45,1),
(10,156,1,20,1),
(12,156,1,19,1),
(8,156,1,37,1),
(11,156,1,40,1),
(2,156,1,49,1),
(7,156,1,18,1),
(14,156,1,37,1),
(17,156,1,5,1),
(5,156,1,17,1),
(3,156,1,43,1),
(1,156,1,34,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(157,32,'2004-01-07 15:57:07',152,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (10,157,1,1,1),
(4,157,1,43,1),
(16,157,1,1,1),
(7,157,1,10,1),
(12,157,1,48,1),
(2,157,1,28,1),
(15,157,1,21,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(158,32,'1974-09-30 17:19:57',271,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (15,158,1,24,1),
(12,158,1,49,1),
(14,158,1,35,1),
(10,158,1,36,1),
(13,158,1,24,1),
(5,158,1,8,1),
(18,158,1,49,1),
(4,158,1,46,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(159,32,'1991-09-10 00:43:32',253,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (5,159,1,6,1),
(6,159,1,23,1),
(17,159,1,50,1),
(15,159,1,45,1),
(14,159,1,22,1),
(7,159,1,27,1),
(4,159,1,15,1),
(2,159,1,24,1),
(16,159,1,5,1),
(13,159,1,32,1),
(11,159,1,4,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(160,32,'2001-07-28 12:44:14',149,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (15,160,1,32,1),
(9,160,1,46,1),
(11,160,1,30,1),
(1,160,1,41,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(161,33,'2016-01-29 07:00:33',375,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (17,161,1,1,1),
(3,161,1,50,1),
(1,161,1,3,1),
(14,161,1,13,1),
(5,161,1,26,1),
(2,161,1,39,1),
(7,161,1,13,1),
(12,161,1,34,1),
(8,161,1,39,1),
(15,161,1,37,1),
(6,161,1,33,1),
(11,161,1,26,1),
(18,161,1,19,1),
(4,161,1,36,1),
(16,161,1,6,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(162,33,'1990-12-26 11:02:25',278,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (11,162,1,24,1),
(7,162,1,34,1),
(13,162,1,17,1),
(14,162,1,39,1),
(2,162,1,49,1),
(15,162,1,25,1),
(6,162,1,3,1),
(12,162,1,4,1),
(17,162,1,34,1),
(18,162,1,39,1),
(3,162,1,10,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(163,33,'1988-08-09 04:41:05',326,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (2,163,1,46,1),
(16,163,1,23,1),
(15,163,1,19,1),
(7,163,1,39,1),
(5,163,1,34,1),
(4,163,1,40,1),
(11,163,1,3,1),
(13,163,1,6,1),
(3,163,1,8,1),
(14,163,1,18,1),
(18,163,1,27,1),
(8,163,1,13,1),
(6,163,1,20,1),
(9,163,1,12,1),
(17,163,1,18,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(164,33,'1990-05-28 01:58:25',283,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (10,164,1,46,1),
(14,164,1,20,1),
(4,164,1,38,1),
(3,164,1,3,1),
(13,164,1,24,1),
(11,164,1,46,1),
(12,164,1,8,1),
(1,164,1,39,1),
(16,164,1,18,1),
(18,164,1,8,1),
(9,164,1,12,1),
(17,164,1,21,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(165,33,'2009-01-22 16:55:58',220,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (5,165,1,37,1),
(2,165,1,33,1),
(14,165,1,21,1),
(12,165,1,36,1),
(16,165,1,10,1),
(10,165,1,49,1),
(1,165,1,34,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(166,34,'1993-06-26 00:48:40',46,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (18,166,1,1,1),
(1,166,1,31,1),
(11,166,1,14,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(167,34,'2001-10-14 07:48:54',219,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (3,167,1,39,1),
(17,167,1,30,1),
(15,167,1,17,1),
(1,167,1,37,1),
(4,167,1,31,1),
(6,167,1,33,1),
(7,167,1,32,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(168,34,'2017-04-16 22:14:29',251,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (12,168,1,37,1),
(6,168,1,41,1),
(11,168,1,42,1),
(13,168,1,29,1),
(7,168,1,13,1),
(5,168,1,28,1),
(10,168,1,37,1),
(17,168,1,24,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(169,34,'1988-08-18 12:51:20',304,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (14,169,1,2,1),
(13,169,1,23,1),
(3,169,1,27,1),
(8,169,1,24,1),
(18,169,1,36,1),
(2,169,1,2,1),
(9,169,1,5,1),
(17,169,1,19,1),
(7,169,1,14,1),
(11,169,1,39,1),
(12,169,1,28,1),
(1,169,1,21,1),
(16,169,1,47,1),
(15,169,1,11,1),
(5,169,1,6,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(170,34,'2009-12-13 09:52:03',73,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (16,170,1,36,1),
(18,170,1,1,1),
(12,170,1,10,1),
(15,170,1,26,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(171,35,'1982-01-28 02:42:06',93,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (2,171,1,17,1),
(15,171,1,12,1),
(17,171,1,48,1),
(5,171,1,6,1),
(14,171,1,10,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(172,35,'2006-08-02 04:44:43',202,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (7,172,1,40,1),
(15,172,1,22,1),
(8,172,1,48,1),
(3,172,1,46,1),
(1,172,1,46,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(173,35,'2005-12-15 11:17:01',191,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (5,173,1,39,1),
(2,173,1,36,1),
(1,173,1,44,1),
(9,173,1,19,1),
(3,173,1,20,1),
(17,173,1,3,1),
(15,173,1,30,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(174,35,'1978-03-03 21:22:18',225,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (3,174,1,26,1),
(5,174,1,20,1),
(10,174,1,49,1),
(14,174,1,11,1),
(17,174,1,27,1),
(9,174,1,2,1),
(16,174,1,40,1),
(12,174,1,6,1),
(18,174,1,44,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(175,35,'2017-10-08 16:40:50',298,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (2,175,1,5,1),
(18,175,1,19,1),
(17,175,1,43,1),
(13,175,1,14,1),
(16,175,1,50,1),
(7,175,1,33,1),
(6,175,1,5,1),
(15,175,1,20,1),
(1,175,1,40,1),
(14,175,1,32,1),
(12,175,1,37,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(176,36,'2011-11-28 18:57:08',41,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (2,176,1,3,1),
(14,176,1,2,1),
(3,176,1,23,1),
(9,176,1,13,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(177,36,'1976-05-26 02:20:01',77,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (8,177,1,36,1),
(16,177,1,41,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(178,36,'2010-04-03 16:52:48',65,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (6,178,1,1,1),
(17,178,1,47,1),
(2,178,1,17,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(179,36,'1979-02-21 08:22:38',435,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (8,179,1,19,1),
(6,179,1,38,1),
(9,179,1,37,1),
(1,179,1,14,1),
(16,179,1,45,1),
(7,179,1,38,1),
(3,179,1,9,1),
(11,179,1,28,1),
(4,179,1,23,1),
(13,179,1,21,1),
(18,179,1,48,1),
(10,179,1,30,1),
(14,179,1,34,1),
(12,179,1,36,1),
(17,179,1,15,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(180,36,'1975-09-28 03:35:07',331,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (8,180,1,24,1),
(12,180,1,22,1),
(5,180,1,43,1),
(4,180,1,1,1),
(7,180,1,35,1),
(2,180,1,24,1),
(13,180,1,49,1),
(3,180,1,36,1),
(15,180,1,7,1),
(11,180,1,10,1),
(18,180,1,42,1),
(10,180,1,17,1),
(17,180,1,21,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(181,37,'2011-07-14 08:55:45',153,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (16,181,1,20,1),
(3,181,1,13,1),
(14,181,1,37,1),
(8,181,1,30,1),
(11,181,1,48,1),
(7,181,1,5,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(182,37,'2018-04-25 18:57:15',134,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (5,182,1,27,1),
(13,182,1,7,1),
(11,182,1,30,1),
(18,182,1,46,1),
(4,182,1,24,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(183,37,'1986-02-14 20:40:25',366,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (11,183,1,26,1),
(1,183,1,7,1),
(14,183,1,40,1),
(3,183,1,25,1),
(7,183,1,12,1),
(13,183,1,34,1),
(17,183,1,13,1),
(10,183,1,26,1),
(16,183,1,8,1),
(6,183,1,4,1),
(4,183,1,42,1),
(8,183,1,36,1),
(5,183,1,50,1),
(12,183,1,6,1),
(2,183,1,37,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(184,37,'1978-10-28 10:39:05',145,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (1,184,1,11,1),
(16,184,1,41,1),
(14,184,1,28,1),
(11,184,1,19,1),
(7,184,1,46,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(185,37,'2008-10-05 04:05:28',75,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (1,185,1,9,1),
(14,185,1,1,1),
(12,185,1,6,1),
(5,185,1,16,1),
(9,185,1,23,1),
(6,185,1,20,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(186,38,'1977-07-05 15:25:00',201,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (7,186,1,42,1),
(3,186,1,31,1),
(16,186,1,35,1),
(2,186,1,21,1),
(5,186,1,2,1),
(8,186,1,14,1),
(4,186,1,11,1),
(11,186,1,45,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(187,38,'1985-07-30 11:49:04',256,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (12,187,1,9,1),
(9,187,1,11,1),
(14,187,1,22,1),
(3,187,1,17,1),
(17,187,1,18,1),
(15,187,1,43,1),
(6,187,1,6,1),
(18,187,1,41,1),
(13,187,1,5,1),
(8,187,1,9,1),
(16,187,1,16,1),
(5,187,1,16,1),
(4,187,1,40,1),
(11,187,1,3,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(188,38,'1972-05-31 03:47:41',100,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (5,188,1,49,1),
(15,188,1,39,1),
(12,188,1,12,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(189,38,'2015-12-22 10:28:55',60,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (16,189,1,27,1),
(14,189,1,21,1),
(18,189,1,1,1),
(10,189,1,10,1),
(3,189,1,1,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(190,38,'2002-10-05 18:52:02',299,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (15,190,1,48,1),
(17,190,1,33,1),
(12,190,1,33,1),
(10,190,1,44,1),
(9,190,1,2,1),
(1,190,1,7,1),
(11,190,1,22,1),
(2,190,1,36,1),
(5,190,1,23,1),
(8,190,1,31,1),
(13,190,1,20,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(191,39,'2004-05-10 04:17:05',270,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (6,191,1,40,1),
(2,191,1,28,1),
(12,191,1,16,1),
(16,191,1,12,1),
(18,191,1,44,1),
(11,191,1,48,1),
(8,191,1,47,1),
(15,191,1,35,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(192,39,'1996-07-11 14:54:16',208,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (7,192,1,29,1),
(1,192,1,27,1),
(10,192,1,10,1),
(2,192,1,39,1),
(11,192,1,17,1),
(18,192,1,26,1),
(13,192,1,34,1),
(17,192,1,26,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(193,39,'1997-04-17 21:11:25',64,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (7,193,1,18,1),
(18,193,1,46,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(194,39,'1992-09-29 11:14:24',418,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (5,194,1,34,1),
(16,194,1,34,1),
(10,194,1,40,1),
(2,194,1,46,1),
(4,194,1,44,1),
(11,194,1,45,1),
(14,194,1,44,1),
(12,194,1,32,1),
(7,194,1,24,1),
(17,194,1,34,1),
(1,194,1,41,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(195,39,'1995-11-11 21:44:19',224,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (11,195,1,4,1),
(16,195,1,27,1),
(14,195,1,50,1),
(3,195,1,8,1),
(15,195,1,27,1),
(12,195,1,22,1),
(8,195,1,45,1),
(17,195,1,41,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(196,40,'2004-02-29 07:19:40',191,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (17,196,1,49,1),
(1,196,1,45,1),
(12,196,1,12,1),
(6,196,1,50,1),
(14,196,1,35,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(197,40,'2015-03-17 10:58:50',274,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (7,197,1,6,1),
(15,197,1,43,1),
(3,197,1,3,1),
(4,197,1,11,1),
(10,197,1,36,1),
(17,197,1,49,1),
(6,197,1,12,1),
(1,197,1,28,1),
(12,197,1,33,1),
(11,197,1,30,1),
(2,197,1,23,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(198,40,'1981-02-04 02:31:26',137,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (9,198,1,44,1),
(6,198,1,24,1),
(4,198,1,12,1),
(17,198,1,2,1),
(15,198,1,23,1),
(5,198,1,32,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(199,40,'2007-12-08 08:17:21',221,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (9,199,1,45,1),
(14,199,1,42,1),
(3,199,1,29,1),
(11,199,1,5,1),
(8,199,1,32,1),
(1,199,1,29,1),
(18,199,1,22,1),
(10,199,1,17,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(200,40,'2016-05-31 06:32:13',169,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (13,200,1,19,1),
(10,200,1,8,1),
(18,200,1,29,1),
(9,200,1,37,1),
(8,200,1,44,1),
(16,200,1,32,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(201,41,'2004-06-11 15:31:46',83,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (6,201,1,15,1),
(18,201,1,24,1),
(15,201,1,40,1),
(11,201,1,4,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(202,41,'2018-04-30 19:22:09',95,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (2,202,1,38,1),
(14,202,1,28,1),
(8,202,1,4,1),
(7,202,1,14,1),
(16,202,1,11,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(203,41,'2012-04-10 16:27:46',132,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (10,203,1,27,1),
(15,203,1,32,1),
(7,203,1,34,1),
(1,203,1,17,1),
(11,203,1,22,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(204,41,'1991-08-15 22:40:04',58,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (11,204,1,42,1),
(10,204,1,16,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(205,41,'1985-03-11 15:10:11',96,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (15,205,1,31,1),
(3,205,1,38,1),
(13,205,1,27,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(206,42,'1991-01-28 20:17:43',210,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (4,206,1,49,1),
(3,206,1,33,1),
(17,206,1,19,1),
(14,206,1,7,1),
(8,206,1,50,1),
(16,206,1,29,1),
(6,206,1,23,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(207,42,'2014-05-28 04:59:12',259,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (4,207,1,9,1),
(10,207,1,19,1),
(7,207,1,7,1),
(18,207,1,23,1),
(9,207,1,9,1),
(3,207,1,9,1),
(15,207,1,39,1),
(14,207,1,38,1),
(16,207,1,48,1),
(12,207,1,28,1),
(17,207,1,9,1),
(6,207,1,5,1),
(1,207,1,2,1),
(13,207,1,14,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(208,42,'2017-09-17 12:45:09',220,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (17,208,1,3,1),
(1,208,1,16,1),
(4,208,1,7,1),
(16,208,1,47,1),
(2,208,1,4,1),
(10,208,1,8,1),
(7,208,1,47,1),
(12,208,1,11,1),
(11,208,1,49,1),
(9,208,1,28,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(209,42,'1976-09-13 13:56:19',210,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (11,209,1,7,1),
(18,209,1,32,1),
(10,209,1,24,1),
(4,209,1,11,1),
(3,209,1,29,1),
(6,209,1,49,1),
(17,209,1,28,1),
(13,209,1,19,1),
(14,209,1,11,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(210,42,'2012-06-29 08:38:46',277,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (4,210,1,37,1),
(8,210,1,40,1),
(13,210,1,42,1),
(5,210,1,23,1),
(14,210,1,20,1),
(17,210,1,11,1),
(16,210,1,15,1),
(9,210,1,6,1),
(2,210,1,2,1),
(3,210,1,37,1),
(15,210,1,2,1),
(18,210,1,20,1),
(11,210,1,11,1),
(6,210,1,11,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(211,43,'1977-05-23 20:48:37',212,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (13,211,1,26,1),
(5,211,1,41,1),
(7,211,1,25,1),
(17,211,1,29,1),
(15,211,1,21,1),
(8,211,1,29,1),
(11,211,1,25,1),
(16,211,1,16,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(212,43,'2016-09-09 18:37:06',154,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (6,212,1,37,1),
(18,212,1,3,1),
(9,212,1,13,1),
(12,212,1,36,1),
(7,212,1,16,1),
(3,212,1,49,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(213,43,'2006-07-07 19:21:12',252,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (7,213,1,7,1),
(1,213,1,8,1),
(10,213,1,42,1),
(6,213,1,9,1),
(9,213,1,30,1),
(3,213,1,12,1),
(5,213,1,48,1),
(14,213,1,23,1),
(2,213,1,28,1),
(18,213,1,2,1),
(4,213,1,3,1),
(13,213,1,23,1),
(8,213,1,5,1),
(17,213,1,12,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(214,43,'1994-07-20 13:07:44',298,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (17,214,1,12,1),
(6,214,1,9,1),
(14,214,1,33,1),
(1,214,1,1,1),
(12,214,1,2,1),
(7,214,1,1,1),
(2,214,1,23,1),
(15,214,1,42,1),
(13,214,1,24,1),
(16,214,1,12,1),
(8,214,1,48,1),
(9,214,1,3,1),
(3,214,1,50,1),
(10,214,1,4,1),
(11,214,1,34,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(215,43,'1986-08-15 14:54:12',210,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (4,215,1,19,1),
(10,215,1,13,1),
(14,215,1,37,1),
(2,215,1,47,1),
(9,215,1,9,1),
(16,215,1,17,1),
(8,215,1,6,1),
(7,215,1,46,1),
(11,215,1,1,1),
(15,215,1,4,1),
(17,215,1,11,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(216,44,'2001-12-14 04:21:17',372,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (18,216,1,39,1),
(17,216,1,1,1),
(12,216,1,4,1),
(8,216,1,5,1),
(6,216,1,45,1),
(5,216,1,14,1),
(1,216,1,14,1),
(11,216,1,46,1),
(7,216,1,24,1),
(3,216,1,50,1),
(2,216,1,16,1),
(9,216,1,50,1),
(16,216,1,31,1),
(10,216,1,33,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(217,44,'1972-01-01 20:30:52',79,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (14,217,1,29,1),
(9,217,1,36,1),
(15,217,1,14,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(218,44,'2002-11-23 20:25:49',258,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (3,218,1,11,1),
(11,218,1,23,1),
(1,218,1,39,1),
(6,218,1,16,1),
(9,218,1,23,1),
(8,218,1,33,1),
(4,218,1,21,1),
(2,218,1,11,1),
(12,218,1,10,1),
(16,218,1,7,1),
(18,218,1,16,1),
(15,218,1,10,1),
(10,218,1,38,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(219,44,'1990-04-24 10:09:18',137,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (3,219,1,10,1),
(5,219,1,25,1),
(18,219,1,14,1),
(10,219,1,18,1),
(13,219,1,28,1),
(14,219,1,8,1),
(17,219,1,15,1),
(2,219,1,6,1),
(6,219,1,13,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(220,44,'1996-08-24 11:01:01',58,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (9,220,1,9,1),
(15,220,1,49,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(221,45,'1993-12-22 21:30:10',175,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (1,221,1,36,1),
(2,221,1,39,1),
(10,221,1,47,1),
(9,221,1,38,1),
(6,221,1,15,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(222,45,'1972-04-30 23:49:40',164,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (3,222,1,30,1),
(14,222,1,42,1),
(7,222,1,37,1),
(17,222,1,46,1),
(8,222,1,9,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(223,45,'1984-06-01 04:17:21',237,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (9,223,1,4,1),
(11,223,1,23,1),
(16,223,1,14,1),
(6,223,1,47,1),
(13,223,1,3,1),
(4,223,1,12,1),
(1,223,1,34,1),
(14,223,1,28,1),
(12,223,1,3,1),
(18,223,1,40,1),
(15,223,1,6,1),
(17,223,1,23,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(224,45,'1994-04-23 06:26:40',215,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (9,224,1,6,1),
(18,224,1,33,1),
(8,224,1,15,1),
(17,224,1,22,1),
(12,224,1,31,1),
(7,224,1,8,1),
(4,224,1,1,1),
(11,224,1,35,1),
(3,224,1,34,1),
(5,224,1,8,1),
(14,224,1,22,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(225,45,'1990-11-12 00:07:56',100,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (18,225,1,17,1),
(5,225,1,43,1),
(4,225,1,18,1),
(8,225,1,16,1),
(10,225,1,6,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(226,46,'1978-04-02 06:06:38',167,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (9,226,1,31,1),
(8,226,1,46,1),
(11,226,1,32,1),
(5,226,1,12,1),
(17,226,1,3,1),
(2,226,1,10,1),
(13,226,1,33,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(227,46,'1983-01-14 06:04:01',322,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (14,227,1,27,1),
(13,227,1,3,1),
(4,227,1,44,1),
(6,227,1,23,1),
(15,227,1,31,1),
(17,227,1,33,1),
(7,227,1,17,1),
(3,227,1,18,1),
(18,227,1,19,1),
(9,227,1,31,1),
(16,227,1,29,1),
(5,227,1,2,1),
(1,227,1,30,1),
(2,227,1,11,1),
(12,227,1,4,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(228,46,'2016-04-27 13:18:04',223,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (15,228,1,33,1),
(14,228,1,40,1),
(2,228,1,9,1),
(11,228,1,27,1),
(4,228,1,31,1),
(13,228,1,47,1),
(17,228,1,36,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(229,46,'2006-06-02 01:04:35',148,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (15,229,1,22,1),
(14,229,1,29,1),
(13,229,1,17,1),
(17,229,1,9,1),
(11,229,1,34,1),
(16,229,1,15,1),
(1,229,1,22,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(230,46,'1999-08-08 12:46:10',355,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (4,230,1,40,1),
(13,230,1,8,1),
(14,230,1,29,1),
(2,230,1,19,1),
(5,230,1,41,1),
(9,230,1,41,1),
(8,230,1,15,1),
(16,230,1,10,1),
(7,230,1,43,1),
(6,230,1,32,1),
(1,230,1,45,1),
(10,230,1,32,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(231,47,'2010-05-05 18:35:53',212,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (9,231,1,34,1),
(8,231,1,40,1),
(5,231,1,45,1),
(6,231,1,30,1),
(12,231,1,49,1),
(18,231,1,14,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(232,47,'1997-12-01 21:49:53',333,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (10,232,1,14,1),
(5,232,1,6,1),
(2,232,1,49,1),
(4,232,1,39,1),
(7,232,1,5,1),
(12,232,1,29,1),
(14,232,1,35,1),
(11,232,1,32,1),
(17,232,1,28,1),
(1,232,1,16,1),
(8,232,1,21,1),
(3,232,1,27,1),
(16,232,1,32,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(233,47,'2013-03-30 03:10:16',150,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (10,233,1,33,1),
(3,233,1,28,1),
(14,233,1,12,1),
(4,233,1,35,1),
(2,233,1,42,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(234,47,'2000-08-26 18:43:26',265,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (5,234,1,29,1),
(15,234,1,50,1),
(11,234,1,14,1),
(8,234,1,40,1),
(7,234,1,35,1),
(16,234,1,42,1),
(12,234,1,16,1),
(17,234,1,1,1),
(9,234,1,38,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(235,47,'2000-01-13 15:06:17',472,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (11,235,1,9,1),
(4,235,1,45,1),
(15,235,1,37,1),
(9,235,1,19,1),
(1,235,1,39,1),
(7,235,1,31,1),
(8,235,1,21,1),
(14,235,1,15,1),
(13,235,1,2,1),
(16,235,1,45,1),
(10,235,1,48,1),
(6,235,1,30,1),
(5,235,1,36,1),
(2,235,1,46,1),
(18,235,1,49,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(236,48,'1998-03-29 00:12:38',175,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (3,236,1,27,1),
(17,236,1,44,1),
(8,236,1,3,1),
(12,236,1,16,1),
(11,236,1,19,1),
(1,236,1,8,1),
(10,236,1,11,1),
(14,236,1,24,1),
(13,236,1,23,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(237,48,'1976-07-15 13:04:55',182,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (1,237,1,25,1),
(17,237,1,13,1),
(14,237,1,41,1),
(15,237,1,37,1),
(8,237,1,11,1),
(16,237,1,26,1),
(6,237,1,8,1),
(2,237,1,21,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(238,48,'2015-08-05 07:11:49',330,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (17,238,1,50,1),
(18,238,1,29,1),
(15,238,1,49,1),
(16,238,1,35,1),
(7,238,1,12,1),
(12,238,1,13,1),
(6,238,1,7,1),
(5,238,1,23,1),
(11,238,1,32,1),
(10,238,1,8,1),
(13,238,1,10,1),
(8,238,1,37,1),
(1,238,1,8,1),
(14,238,1,8,1),
(9,238,1,9,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(239,48,'1998-11-09 01:25:16',341,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (3,239,1,49,1),
(9,239,1,45,1),
(17,239,1,38,1),
(15,239,1,16,1),
(14,239,1,41,1),
(11,239,1,40,1),
(12,239,1,4,1),
(1,239,1,1,1),
(8,239,1,11,1),
(16,239,1,21,1),
(2,239,1,42,1),
(6,239,1,33,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(240,48,'1994-12-12 14:15:02',474,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (16,240,1,6,1),
(10,240,1,45,1),
(4,240,1,36,1),
(6,240,1,13,1),
(8,240,1,38,1),
(3,240,1,29,1),
(5,240,1,34,1),
(12,240,1,38,1),
(2,240,1,11,1),
(14,240,1,39,1),
(17,240,1,44,1),
(15,240,1,21,1),
(18,240,1,47,1),
(9,240,1,44,1),
(7,240,1,29,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(241,49,'1987-02-26 23:33:54',110,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (6,241,1,49,1),
(8,241,1,4,1),
(2,241,1,43,1),
(17,241,1,14,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(242,49,'1979-05-02 07:50:51',269,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (3,242,1,18,1),
(18,242,1,12,1),
(7,242,1,13,1),
(5,242,1,26,1),
(10,242,1,15,1),
(4,242,1,24,1),
(16,242,1,25,1),
(13,242,1,4,1),
(14,242,1,37,1),
(6,242,1,10,1),
(1,242,1,22,1),
(12,242,1,35,1),
(15,242,1,8,1),
(11,242,1,20,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(243,49,'1993-03-16 17:02:29',173,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (12,243,1,38,1),
(6,243,1,37,1),
(18,243,1,34,1),
(11,243,1,33,1),
(13,243,1,10,1),
(14,243,1,20,1),
(16,243,1,1,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(244,49,'2001-10-11 00:47:50',366,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (11,244,1,37,1),
(7,244,1,37,1),
(12,244,1,39,1),
(15,244,1,30,1),
(3,244,1,50,1),
(6,244,1,18,1),
(1,244,1,34,1),
(4,244,1,41,1),
(5,244,1,7,1),
(18,244,1,26,1),
(13,244,1,7,1),
(17,244,1,20,1),
(9,244,1,18,1),
(2,244,1,2,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(245,49,'1975-05-20 02:48:01',70,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (18,245,1,25,1),
(11,245,1,45,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(246,50,'1996-10-16 13:43:40',320,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (11,246,1,38,1),
(18,246,1,18,1),
(10,246,1,25,1),
(7,246,1,27,1),
(17,246,1,25,1),
(12,246,1,41,1),
(16,246,1,10,1),
(13,246,1,15,1),
(15,246,1,15,1),
(9,246,1,5,1),
(4,246,1,4,1),
(3,246,1,41,1),
(14,246,1,10,1),
(1,246,1,17,1),
(6,246,1,29,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(247,50,'1971-11-08 08:34:05',154,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (10,247,1,26,1),
(4,247,1,35,1),
(7,247,1,43,1),
(9,247,1,50,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(248,50,'1988-09-05 04:13:19',253,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (15,248,1,10,1),
(14,248,1,3,1),
(13,248,1,10,1),
(5,248,1,40,1),
(16,248,1,3,1),
(18,248,1,42,1),
(17,248,1,20,1),
(4,248,1,43,1),
(6,248,1,1,1),
(9,248,1,24,1),
(11,248,1,5,1),
(3,248,1,28,1),
(7,248,1,24,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(249,50,'1993-08-07 04:53:36',427,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (15,249,1,48,1),
(7,249,1,9,1),
(16,249,1,21,1),
(5,249,1,48,1),
(3,249,1,20,1),
(2,249,1,46,1),
(17,249,1,17,1),
(18,249,1,39,1),
(4,249,1,49,1),
(13,249,1,7,1),
(12,249,1,25,1),
(1,249,1,14,1),
(10,249,1,41,1),
(11,249,1,43,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(250,50,'1994-11-02 21:06:08',309,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (15,250,1,20,1),
(4,250,1,5,1),
(16,250,1,16,1),
(9,250,1,19,1),
(6,250,1,17,1),
(8,250,1,44,1),
(10,250,1,13,1),
(2,250,1,32,1),
(11,250,1,49,1),
(12,250,1,47,1),
(18,250,1,7,1),
(1,250,1,40,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(251,51,'1972-11-05 21:11:36',172,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (14,251,1,40,1),
(17,251,1,49,1),
(12,251,1,37,1),
(13,251,1,10,1),
(6,251,1,19,1),
(15,251,1,17,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(252,51,'1999-09-15 23:30:06',238,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (2,252,1,27,1),
(4,252,1,47,1),
(12,252,1,39,1),
(7,252,1,7,1),
(18,252,1,13,1),
(13,252,1,47,1),
(16,252,1,2,1),
(14,252,1,29,1),
(15,252,1,5,1),
(3,252,1,22,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(253,51,'1979-06-23 20:28:51',172,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (2,253,1,17,1),
(11,253,1,21,1),
(16,253,1,33,1),
(8,253,1,45,1),
(12,253,1,6,1),
(18,253,1,50,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(254,51,'1997-10-02 19:02:42',294,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (10,254,1,42,1),
(7,254,1,31,1),
(5,254,1,9,1),
(4,254,1,34,1),
(11,254,1,50,1),
(13,254,1,39,1),
(14,254,1,34,1),
(2,254,1,5,1),
(18,254,1,48,1),
(8,254,1,2,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(255,51,'1996-05-09 17:46:41',147,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (16,255,1,23,1),
(3,255,1,43,1),
(6,255,1,6,1),
(4,255,1,13,1),
(2,255,1,50,1),
(17,255,1,4,1),
(1,255,1,8,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(256,52,'2014-06-28 06:58:55',199,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (2,256,1,3,1),
(9,256,1,43,1),
(10,256,1,38,1),
(1,256,1,3,1),
(13,256,1,33,1),
(11,256,1,41,1),
(4,256,1,19,1),
(16,256,1,19,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(257,52,'1978-09-15 04:25:59',249,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (5,257,1,10,1),
(18,257,1,19,1),
(1,257,1,24,1),
(2,257,1,31,1),
(17,257,1,14,1),
(4,257,1,45,1),
(16,257,1,25,1),
(11,257,1,49,1),
(3,257,1,32,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(258,52,'1982-09-19 15:05:16',321,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (9,258,1,17,1),
(14,258,1,47,1),
(3,258,1,33,1),
(1,258,1,49,1),
(18,258,1,17,1),
(13,258,1,27,1),
(7,258,1,7,1),
(5,258,1,42,1),
(6,258,1,22,1),
(10,258,1,29,1),
(2,258,1,31,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(259,52,'1975-11-05 08:40:06',221,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (18,259,1,47,1),
(13,259,1,34,1),
(7,259,1,38,1),
(9,259,1,48,1),
(2,259,1,6,1),
(8,259,1,22,1),
(4,259,1,26,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(260,52,'2002-11-27 18:05:55',50,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (3,260,1,31,1),
(1,260,1,19,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(261,53,'1981-08-29 21:12:39',303,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (13,261,1,5,1),
(15,261,1,27,1),
(11,261,1,30,1),
(12,261,1,22,1),
(10,261,1,34,1),
(16,261,1,2,1),
(9,261,1,18,1),
(14,261,1,39,1),
(18,261,1,38,1),
(4,261,1,5,1),
(5,261,1,39,1),
(2,261,1,24,1),
(3,261,1,20,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(262,53,'1977-11-06 17:25:04',285,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (15,262,1,21,1),
(9,262,1,47,1),
(12,262,1,41,1),
(3,262,1,12,1),
(10,262,1,25,1),
(6,262,1,34,1),
(7,262,1,2,1),
(5,262,1,11,1),
(11,262,1,41,1),
(1,262,1,31,1),
(18,262,1,20,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(263,53,'1976-03-23 21:01:43',371,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (6,263,1,6,1),
(13,263,1,48,1),
(12,263,1,48,1),
(16,263,1,18,1),
(18,263,1,14,1),
(11,263,1,33,1),
(14,263,1,26,1),
(5,263,1,37,1),
(17,263,1,7,1),
(10,263,1,46,1),
(4,263,1,32,1),
(1,263,1,39,1),
(7,263,1,12,1),
(15,263,1,5,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(264,53,'1989-11-16 07:05:16',149,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (7,264,1,35,1),
(2,264,1,37,1),
(3,264,1,3,1),
(17,264,1,6,1),
(16,264,1,16,1),
(18,264,1,14,1),
(4,264,1,35,1),
(13,264,1,3,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(265,53,'1972-04-04 08:31:03',284,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (15,265,1,5,1),
(3,265,1,36,1),
(13,265,1,10,1),
(10,265,1,12,1),
(12,265,1,48,1),
(2,265,1,48,1),
(1,265,1,6,1),
(18,265,1,25,1),
(16,265,1,37,1),
(11,265,1,28,1),
(17,265,1,29,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(266,54,'2014-03-21 15:28:04',196,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (12,266,1,28,1),
(16,266,1,13,1),
(17,266,1,4,1),
(6,266,1,23,1),
(7,266,1,41,1),
(3,266,1,14,1),
(13,266,1,25,1),
(15,266,1,14,1),
(18,266,1,28,1),
(5,266,1,6,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(267,54,'1994-12-19 22:36:05',137,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (17,267,1,5,1),
(13,267,1,18,1),
(8,267,1,50,1),
(11,267,1,18,1),
(4,267,1,46,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(268,54,'1982-12-05 21:33:28',349,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (6,268,1,33,1),
(17,268,1,38,1),
(9,268,1,35,1),
(3,268,1,8,1),
(10,268,1,13,1),
(8,268,1,11,1),
(11,268,1,46,1),
(2,268,1,21,1),
(4,268,1,35,1),
(18,268,1,13,1),
(15,268,1,25,1),
(1,268,1,49,1),
(14,268,1,16,1),
(5,268,1,6,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(269,54,'2017-09-06 00:24:10',91,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (13,269,1,24,1),
(10,269,1,36,1),
(2,269,1,7,1),
(7,269,1,21,1),
(12,269,1,3,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(270,54,'1985-06-12 20:08:13',258,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (1,270,1,30,1),
(2,270,1,17,1),
(13,270,1,47,1),
(4,270,1,2,1),
(9,270,1,37,1),
(18,270,1,16,1),
(10,270,1,17,1),
(3,270,1,4,1),
(6,270,1,41,1),
(14,270,1,34,1),
(7,270,1,12,1),
(8,270,1,1,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(271,55,'2009-09-28 17:18:36',214,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (8,271,1,20,1),
(11,271,1,36,1),
(3,271,1,22,1),
(1,271,1,19,1),
(12,271,1,43,1),
(2,271,1,28,1),
(13,271,1,30,1),
(17,271,1,16,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(272,55,'1990-08-07 11:34:30',109,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (11,272,1,5,1),
(7,272,1,32,1),
(4,272,1,22,1),
(17,272,1,21,1),
(16,272,1,29,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(273,55,'1994-03-22 21:32:54',51,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (4,273,1,8,1),
(7,273,1,23,1),
(8,273,1,20,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(274,55,'2012-11-09 09:47:29',118,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (7,274,1,8,1),
(5,274,1,37,1),
(12,274,1,19,1),
(4,274,1,49,1),
(8,274,1,5,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(275,55,'1994-12-28 20:07:52',252,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (14,275,1,42,1),
(4,275,1,34,1),
(15,275,1,26,1),
(5,275,1,15,1),
(9,275,1,48,1),
(7,275,1,27,1),
(6,275,1,19,1),
(12,275,1,41,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(276,56,'2009-12-22 10:59:40',242,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (3,276,1,48,1),
(17,276,1,26,1),
(11,276,1,24,1),
(18,276,1,43,1),
(9,276,1,3,1),
(12,276,1,48,1),
(2,276,1,50,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(277,56,'1991-11-03 08:44:47',117,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (18,277,1,43,1),
(7,277,1,11,1),
(5,277,1,17,1),
(10,277,1,46,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(278,56,'2009-04-14 09:38:10',312,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (12,278,1,20,1),
(8,278,1,19,1),
(18,278,1,49,1),
(6,278,1,7,1),
(3,278,1,45,1),
(9,278,1,23,1),
(2,278,1,50,1),
(5,278,1,20,1),
(13,278,1,15,1),
(7,278,1,22,1),
(4,278,1,42,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(279,56,'1988-06-13 06:24:10',99,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (15,279,1,31,1),
(6,279,1,42,1),
(9,279,1,25,1),
(3,279,1,1,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(280,56,'2014-01-06 17:23:42',410,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (8,280,1,24,1),
(12,280,1,21,1),
(17,280,1,19,1),
(13,280,1,42,1),
(4,280,1,10,1),
(7,280,1,5,1),
(9,280,1,42,1),
(14,280,1,22,1),
(18,280,1,33,1),
(3,280,1,44,1),
(2,280,1,49,1),
(15,280,1,3,1),
(6,280,1,43,1),
(10,280,1,18,1),
(16,280,1,35,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(281,57,'1987-05-19 04:27:16',115,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (3,281,1,44,1),
(14,281,1,30,1),
(10,281,1,41,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(282,57,'2018-06-17 05:04:18',277,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (11,282,1,2,1),
(16,282,1,14,1),
(14,282,1,5,1),
(3,282,1,9,1),
(12,282,1,42,1),
(10,282,1,8,1),
(4,282,1,3,1),
(2,282,1,25,1),
(7,282,1,17,1),
(13,282,1,48,1),
(9,282,1,25,1),
(6,282,1,4,1),
(5,282,1,13,1),
(17,282,1,42,1),
(8,282,1,20,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(283,57,'1985-01-20 22:30:12',183,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (11,283,1,45,1),
(4,283,1,18,1),
(13,283,1,24,1),
(9,283,1,21,1),
(16,283,1,34,1),
(3,283,1,41,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(284,57,'1980-06-03 00:33:27',103,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (7,284,1,48,1),
(1,284,1,6,1),
(14,284,1,48,1),
(3,284,1,1,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(285,57,'1994-06-24 03:30:36',458,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (15,285,1,10,1),
(18,285,1,35,1),
(9,285,1,36,1),
(12,285,1,39,1),
(14,285,1,42,1),
(5,285,1,48,1),
(13,285,1,18,1),
(11,285,1,25,1),
(17,285,1,38,1),
(3,285,1,49,1),
(2,285,1,14,1),
(10,285,1,37,1),
(4,285,1,47,1),
(16,285,1,19,1),
(1,285,1,1,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(286,58,'2012-09-13 05:27:06',178,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (11,286,1,17,1),
(18,286,1,10,1),
(8,286,1,13,1),
(4,286,1,9,1),
(2,286,1,8,1),
(12,286,1,1,1),
(6,286,1,7,1),
(13,286,1,29,1),
(1,286,1,42,1),
(17,286,1,42,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(287,58,'1993-07-30 11:21:09',415,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (18,287,1,34,1),
(17,287,1,34,1),
(10,287,1,49,1),
(15,287,1,6,1),
(8,287,1,8,1),
(1,287,1,43,1),
(16,287,1,41,1),
(3,287,1,29,1),
(12,287,1,25,1),
(11,287,1,4,1),
(2,287,1,37,1),
(6,287,1,27,1),
(7,287,1,24,1),
(9,287,1,40,1),
(13,287,1,14,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(288,58,'1991-01-18 02:41:55',88,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (13,288,1,36,1),
(11,288,1,22,1),
(6,288,1,20,1),
(16,288,1,10,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(289,58,'1975-07-29 16:06:14',116,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (9,289,1,6,1),
(15,289,1,35,1),
(12,289,1,46,1),
(8,289,1,24,1),
(13,289,1,5,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(290,58,'2006-08-27 08:58:54',259,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (5,290,1,48,1),
(2,290,1,13,1),
(18,290,1,29,1),
(17,290,1,3,1),
(12,290,1,19,1),
(15,290,1,36,1),
(9,290,1,23,1),
(10,290,1,23,1),
(7,290,1,11,1),
(16,290,1,20,1),
(4,290,1,34,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(291,59,'2005-03-21 06:43:30',332,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (2,291,1,33,1),
(3,291,1,48,1),
(1,291,1,20,1),
(14,291,1,20,1),
(8,291,1,18,1),
(9,291,1,18,1),
(4,291,1,23,1),
(6,291,1,21,1),
(7,291,1,46,1),
(12,291,1,8,1),
(11,291,1,25,1),
(16,291,1,17,1),
(10,291,1,6,1),
(17,291,1,29,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(292,59,'1988-09-28 15:47:44',192,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (16,292,1,20,1),
(18,292,1,28,1),
(2,292,1,27,1),
(11,292,1,42,1),
(9,292,1,25,1),
(5,292,1,15,1),
(13,292,1,33,1),
(10,292,1,2,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(293,59,'1992-04-11 10:34:54',245,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (9,293,1,1,1),
(7,293,1,19,1),
(3,293,1,29,1),
(2,293,1,28,1),
(6,293,1,22,1),
(15,293,1,9,1),
(4,293,1,22,1),
(17,293,1,35,1),
(16,293,1,26,1),
(5,293,1,7,1),
(11,293,1,47,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(294,59,'1997-06-20 00:29:26',331,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (18,294,1,30,1),
(8,294,1,14,1),
(13,294,1,27,1),
(15,294,1,40,1),
(17,294,1,14,1),
(3,294,1,17,1),
(1,294,1,23,1),
(2,294,1,36,1),
(12,294,1,18,1),
(10,294,1,38,1),
(5,294,1,16,1),
(16,294,1,16,1),
(14,294,1,12,1),
(7,294,1,15,1),
(11,294,1,15,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(295,59,'1985-08-04 14:57:20',266,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (16,295,1,27,1),
(11,295,1,12,1),
(10,295,1,13,1),
(18,295,1,6,1),
(13,295,1,12,1),
(1,295,1,45,1),
(5,295,1,12,1),
(2,295,1,9,1),
(6,295,1,46,1),
(12,295,1,37,1),
(8,295,1,18,1),
(9,295,1,29,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(296,60,'1998-08-09 15:47:01',253,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (15,296,1,26,1),
(13,296,1,22,1),
(10,296,1,9,1),
(11,296,1,40,1),
(6,296,1,3,1),
(12,296,1,48,1),
(17,296,1,5,1),
(1,296,1,46,1),
(16,296,1,17,1),
(8,296,1,37,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(297,60,'1991-02-12 14:39:19',320,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (5,297,1,22,1),
(15,297,1,4,1),
(10,297,1,39,1),
(8,297,1,36,1),
(17,297,1,22,1),
(4,297,1,3,1),
(16,297,1,46,1),
(6,297,1,42,1),
(11,297,1,37,1),
(13,297,1,47,1),
(1,297,1,21,1),
(9,297,1,1,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(298,60,'1987-02-17 07:36:26',80,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (2,298,1,44,1),
(1,298,1,36,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(299,60,'2007-07-28 15:41:56',360,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (2,299,1,30,1),
(5,299,1,19,1),
(14,299,1,8,1),
(18,299,1,39,1),
(3,299,1,29,1),
(17,299,1,36,1),
(11,299,1,22,1),
(6,299,1,38,1),
(1,299,1,12,1),
(16,299,1,26,1),
(4,299,1,4,1),
(9,299,1,17,1),
(13,299,1,31,1),
(10,299,1,6,1),
(15,299,1,43,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(300,60,'1985-03-18 06:41:20',346,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (16,300,1,45,1),
(2,300,1,18,1),
(10,300,1,25,1),
(13,300,1,7,1),
(14,300,1,49,1),
(5,300,1,18,1),
(8,300,1,41,1),
(4,300,1,35,1),
(18,300,1,5,1),
(17,300,1,20,1),
(3,300,1,39,1),
(15,300,1,19,1),
(12,300,1,25,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(301,61,'1978-03-31 13:34:47',100,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (14,301,1,37,1),
(4,301,1,16,1),
(9,301,1,47,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(302,61,'1971-07-31 19:45:16',91,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (7,302,1,44,1),
(2,302,1,22,1),
(10,302,1,25,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(303,61,'2015-06-25 21:55:57',126,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (5,303,1,12,1),
(17,303,1,30,1),
(13,303,1,50,1),
(11,303,1,2,1),
(7,303,1,32,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(304,61,'2002-07-11 03:27:22',241,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (17,304,1,17,1),
(6,304,1,16,1),
(12,304,1,36,1),
(3,304,1,15,1),
(4,304,1,11,1),
(7,304,1,37,1),
(13,304,1,27,1),
(2,304,1,34,1),
(8,304,1,48,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(305,61,'1975-01-06 22:58:29',173,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (2,305,1,3,1),
(16,305,1,32,1),
(5,305,1,33,1),
(6,305,1,33,1),
(11,305,1,27,1),
(3,305,1,45,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(306,62,'2007-04-16 21:39:32',471,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (2,306,1,38,1),
(15,306,1,12,1),
(17,306,1,25,1),
(5,306,1,46,1),
(12,306,1,48,1),
(16,306,1,35,1),
(3,306,1,3,1),
(8,306,1,47,1),
(4,306,1,20,1),
(10,306,1,19,1),
(11,306,1,7,1),
(6,306,1,33,1),
(14,306,1,46,1),
(9,306,1,48,1),
(13,306,1,44,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(307,62,'2002-11-04 08:45:10',289,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (13,307,1,23,1),
(6,307,1,21,1),
(12,307,1,15,1),
(4,307,1,41,1),
(1,307,1,6,1),
(9,307,1,5,1),
(15,307,1,34,1),
(17,307,1,40,1),
(11,307,1,1,1),
(10,307,1,4,1),
(3,307,1,49,1),
(16,307,1,23,1),
(8,307,1,27,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(308,62,'2014-04-29 01:28:12',118,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (2,308,1,23,1),
(16,308,1,22,1),
(3,308,1,39,1),
(18,308,1,23,1),
(8,308,1,4,1),
(11,308,1,2,1),
(7,308,1,5,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(309,62,'1984-07-06 11:50:17',102,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (17,309,1,12,1),
(16,309,1,46,1),
(8,309,1,32,1),
(9,309,1,12,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(310,62,'1982-10-18 00:37:43',99,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (1,310,1,22,1),
(4,310,1,17,1),
(15,310,1,14,1),
(9,310,1,46,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(311,63,'2007-12-08 05:01:09',244,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (5,311,1,7,1),
(15,311,1,32,1),
(18,311,1,2,1),
(1,311,1,11,1),
(9,311,1,44,1),
(2,311,1,24,1),
(17,311,1,5,1),
(13,311,1,4,1),
(10,311,1,30,1),
(3,311,1,38,1),
(7,311,1,47,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(312,63,'2008-03-01 01:50:44',139,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (10,312,1,5,1),
(12,312,1,6,1),
(18,312,1,22,1),
(2,312,1,23,1),
(3,312,1,27,1),
(5,312,1,1,1),
(14,312,1,31,1),
(9,312,1,24,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(313,63,'1972-10-21 00:08:18',188,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (3,313,1,39,1),
(10,313,1,36,1),
(15,313,1,35,1),
(2,313,1,28,1),
(5,313,1,37,1),
(12,313,1,13,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(314,63,'1976-06-08 16:42:26',323,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (10,314,1,20,1),
(6,314,1,29,1),
(13,314,1,14,1),
(9,314,1,46,1),
(7,314,1,42,1),
(3,314,1,12,1),
(12,314,1,49,1),
(18,314,1,15,1),
(2,314,1,44,1),
(8,314,1,21,1),
(1,314,1,31,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(315,63,'2010-05-16 23:02:28',124,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (5,315,1,15,1),
(14,315,1,18,1),
(13,315,1,11,1),
(4,315,1,34,1),
(7,315,1,46,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(316,64,'1972-02-25 02:03:18',305,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (10,316,1,15,1),
(6,316,1,42,1),
(5,316,1,3,1),
(1,316,1,13,1),
(3,316,1,25,1),
(12,316,1,2,1),
(11,316,1,49,1),
(9,316,1,43,1),
(4,316,1,50,1),
(18,316,1,13,1),
(16,316,1,9,1),
(2,316,1,41,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(317,64,'1998-08-07 14:48:10',75,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (6,317,1,28,1),
(7,317,1,23,1),
(15,317,1,24,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(318,64,'2017-06-21 08:28:08',203,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (17,318,1,8,1),
(10,318,1,16,1),
(6,318,1,37,1),
(11,318,1,19,1),
(15,318,1,6,1),
(5,318,1,31,1),
(1,318,1,44,1),
(16,318,1,29,1),
(14,318,1,13,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(319,64,'2003-08-10 00:24:12',273,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (1,319,1,18,1),
(12,319,1,29,1),
(4,319,1,4,1),
(7,319,1,15,1),
(5,319,1,33,1),
(14,319,1,39,1),
(13,319,1,33,1),
(2,319,1,50,1),
(16,319,1,34,1),
(9,319,1,18,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(320,64,'1979-09-09 09:46:17',304,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (7,320,1,1,1),
(13,320,1,49,1),
(9,320,1,47,1),
(15,320,1,14,1),
(5,320,1,20,1),
(2,320,1,14,1),
(11,320,1,17,1),
(17,320,1,15,1),
(4,320,1,27,1),
(6,320,1,24,1),
(1,320,1,2,1),
(16,320,1,21,1),
(3,320,1,7,1),
(18,320,1,3,1),
(14,320,1,43,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(321,65,'1996-05-02 23:57:26',232,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (18,321,1,29,1),
(13,321,1,1,1),
(11,321,1,34,1),
(8,321,1,29,1),
(4,321,1,9,1),
(6,321,1,31,1),
(10,321,1,10,1),
(2,321,1,35,1),
(3,321,1,6,1),
(14,321,1,48,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(322,65,'1997-02-22 13:29:33',432,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (3,322,1,15,1),
(5,322,1,50,1),
(2,322,1,7,1),
(1,322,1,43,1),
(11,322,1,2,1),
(14,322,1,28,1),
(15,322,1,10,1),
(13,322,1,35,1),
(12,322,1,45,1),
(4,322,1,10,1),
(9,322,1,43,1),
(18,322,1,37,1),
(10,322,1,24,1),
(8,322,1,36,1),
(6,322,1,47,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(323,65,'1972-06-07 23:44:55',77,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (3,323,1,9,1),
(8,323,1,31,1),
(6,323,1,37,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(324,65,'1978-05-23 06:08:48',284,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (8,324,1,38,1),
(6,324,1,5,1),
(2,324,1,27,1),
(7,324,1,8,1),
(9,324,1,24,1),
(17,324,1,15,1),
(18,324,1,47,1),
(16,324,1,46,1),
(14,324,1,41,1),
(13,324,1,29,1),
(12,324,1,4,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(325,65,'1999-05-24 07:36:04',210,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (4,325,1,6,1),
(9,325,1,48,1),
(17,325,1,4,1),
(14,325,1,34,1),
(7,325,1,9,1),
(5,325,1,9,1),
(11,325,1,46,1),
(13,325,1,47,1),
(6,325,1,7,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(326,66,'2004-12-07 01:05:27',353,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (15,326,1,23,1),
(17,326,1,47,1),
(8,326,1,19,1),
(10,326,1,42,1),
(3,326,1,5,1),
(2,326,1,4,1),
(14,326,1,47,1),
(9,326,1,25,1),
(5,326,1,13,1),
(18,326,1,18,1),
(12,326,1,20,1),
(1,326,1,25,1),
(11,326,1,50,1),
(6,326,1,15,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(327,66,'2008-11-14 06:52:50',146,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (16,327,1,31,1),
(14,327,1,30,1),
(3,327,1,9,1),
(6,327,1,10,1),
(18,327,1,34,1),
(12,327,1,12,1),
(11,327,1,16,1),
(1,327,1,4,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(328,66,'1997-12-07 01:13:54',75,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (7,328,1,21,1),
(13,328,1,9,1),
(6,328,1,45,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(329,66,'1972-10-29 06:30:23',290,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (4,329,1,4,1),
(8,329,1,34,1),
(3,329,1,11,1),
(18,329,1,37,1),
(10,329,1,46,1),
(5,329,1,43,1),
(13,329,1,35,1),
(12,329,1,12,1),
(16,329,1,26,1),
(2,329,1,29,1),
(7,329,1,13,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(330,66,'2016-08-05 17:55:19',371,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (1,330,1,29,1),
(14,330,1,36,1),
(8,330,1,17,1),
(18,330,1,7,1),
(4,330,1,28,1),
(6,330,1,40,1),
(2,330,1,7,1),
(13,330,1,5,1),
(10,330,1,6,1),
(9,330,1,30,1),
(16,330,1,18,1),
(15,330,1,9,1),
(12,330,1,46,1),
(3,330,1,44,1),
(7,330,1,49,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(331,67,'2004-12-22 04:23:53',92,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (3,331,1,48,1),
(8,331,1,44,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(332,67,'1973-02-02 01:24:39',173,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (9,332,1,45,1),
(2,332,1,25,1),
(12,332,1,14,1),
(5,332,1,21,1),
(10,332,1,3,1),
(18,332,1,20,1),
(3,332,1,45,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(333,67,'1999-10-03 02:12:48',156,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (14,333,1,29,1),
(9,333,1,23,1),
(4,333,1,5,1),
(17,333,1,10,1),
(15,333,1,31,1),
(1,333,1,45,1),
(3,333,1,13,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(334,67,'1998-03-27 14:54:44',74,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (13,334,1,45,1),
(4,334,1,29,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(335,67,'1972-02-21 15:43:36',414,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (14,335,1,19,1),
(17,335,1,46,1),
(1,335,1,9,1),
(10,335,1,49,1),
(2,335,1,2,1),
(3,335,1,27,1),
(16,335,1,50,1),
(8,335,1,28,1),
(18,335,1,12,1),
(11,335,1,34,1),
(5,335,1,37,1),
(15,335,1,45,1),
(12,335,1,10,1),
(7,335,1,46,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(336,68,'2014-07-08 23:57:11',112,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (13,336,1,37,1),
(1,336,1,19,1),
(4,336,1,11,1),
(5,336,1,12,1),
(2,336,1,32,1),
(10,336,1,1,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(337,68,'1979-05-20 04:48:18',137,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (18,337,1,48,1),
(14,337,1,48,1),
(15,337,1,19,1),
(8,337,1,16,1),
(1,337,1,2,1),
(11,337,1,4,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(338,68,'1990-10-06 07:33:16',140,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (16,338,1,49,1),
(17,338,1,45,1),
(1,338,1,15,1),
(12,338,1,12,1),
(15,338,1,19,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(339,68,'1998-10-09 11:42:49',302,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (18,339,1,42,1),
(3,339,1,26,1),
(1,339,1,15,1),
(16,339,1,26,1),
(5,339,1,50,1),
(15,339,1,15,1),
(17,339,1,22,1),
(9,339,1,23,1),
(13,339,1,19,1),
(6,339,1,9,1),
(2,339,1,18,1),
(8,339,1,6,1),
(7,339,1,31,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(340,68,'2017-05-25 03:23:27',144,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (12,340,1,10,1),
(18,340,1,13,1),
(13,340,1,29,1),
(14,340,1,13,1),
(16,340,1,13,1),
(15,340,1,5,1),
(3,340,1,15,1),
(7,340,1,34,1),
(4,340,1,12,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(341,69,'2005-07-31 18:35:46',231,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (8,341,1,4,1),
(11,341,1,4,1),
(14,341,1,29,1),
(12,341,1,30,1),
(4,341,1,33,1),
(6,341,1,30,1),
(10,341,1,16,1),
(15,341,1,7,1),
(13,341,1,16,1),
(2,341,1,20,1),
(18,341,1,6,1),
(7,341,1,36,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(342,69,'2012-02-13 10:29:00',113,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (7,342,1,13,1),
(2,342,1,35,1),
(3,342,1,18,1),
(14,342,1,30,1),
(10,342,1,17,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(343,69,'2006-07-24 02:42:46',418,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (3,343,1,44,1),
(11,343,1,48,1),
(18,343,1,30,1),
(4,343,1,33,1),
(1,343,1,50,1),
(8,343,1,38,1),
(14,343,1,15,1),
(6,343,1,49,1),
(17,343,1,26,1),
(2,343,1,39,1),
(13,343,1,46,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(344,69,'1975-12-10 03:00:28',108,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (15,344,1,42,1),
(9,344,1,16,1),
(12,344,1,50,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(345,69,'1986-04-18 12:51:22',206,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (12,345,1,9,1),
(1,345,1,38,1),
(11,345,1,12,1),
(18,345,1,7,1),
(8,345,1,27,1),
(10,345,1,45,1),
(14,345,1,11,1),
(3,345,1,15,1),
(5,345,1,42,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(346,70,'1978-06-20 14:00:47',105,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (12,346,1,35,1),
(15,346,1,8,1),
(14,346,1,12,1),
(4,346,1,4,1),
(11,346,1,10,1),
(9,346,1,15,1),
(16,346,1,21,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(347,70,'2016-12-09 02:59:41',242,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (18,347,1,3,1),
(14,347,1,17,1),
(12,347,1,40,1),
(6,347,1,19,1),
(16,347,1,29,1),
(2,347,1,19,1),
(3,347,1,28,1),
(7,347,1,34,1),
(13,347,1,22,1),
(1,347,1,5,1),
(11,347,1,3,1),
(4,347,1,23,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(348,70,'1998-01-15 12:09:12',58,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (6,348,1,22,1),
(12,348,1,36,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(349,70,'1997-12-26 15:05:52',151,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (3,349,1,24,1),
(6,349,1,49,1),
(7,349,1,35,1),
(2,349,1,43,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(350,70,'1971-01-05 13:59:14',101,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (5,350,1,8,1),
(2,350,1,7,1),
(4,350,1,46,1),
(18,350,1,40,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(351,71,'1996-10-02 12:03:24',145,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (6,351,1,16,1),
(17,351,1,16,1),
(14,351,1,45,1),
(7,351,1,24,1),
(15,351,1,8,1),
(9,351,1,36,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(352,71,'2006-01-04 08:37:59',279,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (3,352,1,12,1),
(14,352,1,28,1),
(5,352,1,4,1),
(6,352,1,38,1),
(1,352,1,31,1),
(12,352,1,17,1),
(2,352,1,4,1),
(16,352,1,35,1),
(7,352,1,20,1),
(15,352,1,2,1),
(10,352,1,35,1),
(8,352,1,18,1),
(18,352,1,24,1),
(9,352,1,11,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(353,71,'2009-08-20 05:18:23',311,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (4,353,1,48,1),
(1,353,1,27,1),
(14,353,1,14,1),
(8,353,1,25,1),
(15,353,1,27,1),
(10,353,1,47,1),
(13,353,1,9,1),
(3,353,1,10,1),
(9,353,1,17,1),
(12,353,1,19,1),
(16,353,1,21,1),
(17,353,1,47,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(354,71,'1992-09-19 19:00:15',381,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (2,354,1,32,1),
(10,354,1,33,1),
(11,354,1,30,1),
(13,354,1,1,1),
(8,354,1,46,1),
(9,354,1,13,1),
(6,354,1,17,1),
(3,354,1,40,1),
(4,354,1,23,1),
(12,354,1,9,1),
(16,354,1,27,1),
(14,354,1,19,1),
(17,354,1,31,1),
(7,354,1,10,1),
(5,354,1,50,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(355,71,'2008-02-07 23:30:43',346,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (5,355,1,24,1),
(10,355,1,12,1),
(17,355,1,22,1),
(7,355,1,35,1),
(14,355,1,40,1),
(4,355,1,6,1),
(8,355,1,48,1),
(18,355,1,23,1),
(12,355,1,5,1),
(16,355,1,5,1),
(3,355,1,16,1),
(6,355,1,15,1),
(9,355,1,29,1),
(1,355,1,26,1),
(15,355,1,40,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(356,72,'1988-06-02 01:57:54',280,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (4,356,1,13,1),
(2,356,1,7,1),
(12,356,1,41,1),
(16,356,1,25,1),
(9,356,1,24,1),
(5,356,1,17,1),
(13,356,1,35,1),
(3,356,1,37,1),
(14,356,1,42,1),
(8,356,1,39,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(357,72,'1994-12-05 06:58:31',146,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (14,357,1,33,1),
(17,357,1,22,1),
(2,357,1,4,1),
(12,357,1,28,1),
(6,357,1,25,1),
(1,357,1,34,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(358,72,'2016-04-25 19:28:55',386,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (15,358,1,39,1),
(6,358,1,14,1),
(11,358,1,46,1),
(8,358,1,20,1),
(3,358,1,22,1),
(17,358,1,22,1),
(13,358,1,42,1),
(12,358,1,39,1),
(5,358,1,1,1),
(4,358,1,30,1),
(1,358,1,43,1),
(18,358,1,48,1),
(16,358,1,20,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(359,72,'2006-08-10 10:53:56',517,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (3,359,1,36,1),
(9,359,1,36,1),
(2,359,1,49,1),
(6,359,1,45,1),
(8,359,1,31,1),
(1,359,1,37,1),
(18,359,1,37,1),
(5,359,1,45,1),
(16,359,1,33,1),
(14,359,1,8,1),
(15,359,1,46,1),
(4,359,1,26,1),
(11,359,1,11,1),
(7,359,1,42,1),
(10,359,1,35,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(360,72,'2016-12-31 16:46:17',74,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (15,360,1,41,1),
(4,360,1,33,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(361,73,'2000-05-26 20:12:45',264,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (10,361,1,26,1),
(12,361,1,20,1),
(7,361,1,3,1),
(4,361,1,49,1),
(14,361,1,34,1),
(2,361,1,48,1),
(15,361,1,44,1),
(17,361,1,33,1),
(3,361,1,7,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(362,73,'1990-01-26 11:01:04',129,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (9,362,1,34,1),
(11,362,1,50,1),
(7,362,1,45,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(363,73,'1987-02-27 21:48:58',243,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (16,363,1,18,1),
(18,363,1,24,1),
(5,363,1,33,1),
(17,363,1,30,1),
(14,363,1,46,1),
(13,363,1,12,1),
(3,363,1,5,1),
(12,363,1,26,1),
(10,363,1,46,1),
(7,363,1,3,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(364,73,'2006-01-07 03:07:44',30,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (3,364,1,4,1),
(12,364,1,26,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(365,73,'1999-09-25 20:10:38',198,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (10,365,1,35,1),
(16,365,1,23,1),
(4,365,1,36,1),
(5,365,1,43,1),
(17,365,1,20,1),
(15,365,1,31,1),
(2,365,1,10,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(366,74,'1982-11-21 06:59:52',312,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (9,366,1,4,1),
(6,366,1,39,1),
(18,366,1,28,1),
(16,366,1,28,1),
(8,366,1,20,1),
(14,366,1,26,1),
(3,366,1,48,1),
(13,366,1,50,1),
(10,366,1,40,1),
(11,366,1,29,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(367,74,'1984-11-05 06:35:28',409,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (2,367,1,39,1),
(15,367,1,43,1),
(7,367,1,18,1),
(1,367,1,44,1),
(8,367,1,23,1),
(17,367,1,4,1),
(5,367,1,34,1),
(14,367,1,12,1),
(18,367,1,21,1),
(9,367,1,28,1),
(10,367,1,29,1),
(6,367,1,8,1),
(4,367,1,13,1),
(12,367,1,50,1),
(11,367,1,43,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(368,74,'1997-03-20 17:50:56',108,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (12,368,1,43,1),
(9,368,1,22,1),
(5,368,1,43,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(369,74,'1987-03-03 20:46:09',364,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (14,369,1,28,1),
(2,369,1,34,1),
(17,369,1,11,1),
(12,369,1,43,1),
(16,369,1,27,1),
(1,369,1,23,1),
(3,369,1,41,1),
(10,369,1,39,1),
(15,369,1,32,1),
(6,369,1,18,1),
(7,369,1,34,1),
(11,369,1,34,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(370,74,'2005-09-18 05:39:34',228,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (17,370,1,13,1),
(4,370,1,1,1),
(9,370,1,36,1),
(7,370,1,25,1),
(14,370,1,44,1),
(6,370,1,18,1),
(3,370,1,2,1),
(10,370,1,3,1),
(18,370,1,13,1),
(13,370,1,19,1),
(11,370,1,3,1),
(12,370,1,1,1),
(15,370,1,50,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(371,75,'1988-10-18 19:49:49',337,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (5,371,1,34,1),
(14,371,1,21,1),
(2,371,1,47,1),
(17,371,1,23,1),
(7,371,1,9,1),
(11,371,1,45,1),
(4,371,1,32,1),
(18,371,1,9,1),
(16,371,1,22,1),
(10,371,1,49,1),
(12,371,1,46,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(372,75,'1993-03-18 20:33:30',115,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (17,372,1,29,1),
(16,372,1,1,1),
(15,372,1,8,1),
(3,372,1,4,1),
(7,372,1,40,1),
(12,372,1,33,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(373,75,'1971-01-21 04:14:01',267,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (8,373,1,39,1),
(12,373,1,8,1),
(6,373,1,35,1),
(14,373,1,30,1),
(17,373,1,20,1),
(11,373,1,15,1),
(1,373,1,8,1),
(13,373,1,48,1),
(5,373,1,8,1),
(16,373,1,6,1),
(3,373,1,50,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(374,75,'1970-01-23 22:08:01',143,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (11,374,1,22,1),
(12,374,1,13,1),
(13,374,1,43,1),
(18,374,1,17,1),
(16,374,1,12,1),
(15,374,1,36,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(375,75,'1990-07-23 00:01:07',198,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (9,375,1,44,1),
(14,375,1,39,1),
(1,375,1,42,1),
(8,375,1,40,1),
(15,375,1,33,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(376,76,'1979-03-10 13:58:19',75,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (16,376,1,40,1),
(1,376,1,29,1),
(9,376,1,6,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(377,76,'1989-01-10 04:22:10',429,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (18,377,1,35,1),
(9,377,1,38,1),
(12,377,1,9,1),
(16,377,1,50,1),
(10,377,1,50,1),
(13,377,1,36,1),
(7,377,1,49,1),
(17,377,1,50,1),
(2,377,1,19,1),
(15,377,1,3,1),
(4,377,1,35,1),
(8,377,1,35,1),
(5,377,1,3,1),
(6,377,1,17,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(378,76,'1981-11-25 13:28:20',131,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (1,378,1,17,1),
(13,378,1,17,1),
(2,378,1,15,1),
(12,378,1,26,1),
(11,378,1,27,1),
(5,378,1,29,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(379,76,'2008-09-29 03:33:52',204,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (11,379,1,22,1),
(12,379,1,31,1),
(2,379,1,14,1),
(16,379,1,2,1),
(6,379,1,23,1),
(4,379,1,3,1),
(13,379,1,40,1),
(7,379,1,23,1),
(3,379,1,46,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(380,76,'1995-06-21 15:48:16',331,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (5,380,1,17,1),
(3,380,1,24,1),
(15,380,1,2,1),
(10,380,1,48,1),
(9,380,1,17,1),
(12,380,1,37,1),
(1,380,1,34,1),
(7,380,1,41,1),
(17,380,1,48,1),
(13,380,1,8,1),
(14,380,1,14,1),
(8,380,1,2,1),
(2,380,1,39,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(381,77,'1986-06-16 19:17:10',106,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (12,381,1,1,1),
(17,381,1,19,1),
(2,381,1,28,1),
(7,381,1,41,1),
(3,381,1,3,1),
(14,381,1,14,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(382,77,'1970-07-27 01:02:37',278,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (8,382,1,28,1),
(7,382,1,29,1),
(9,382,1,30,1),
(11,382,1,32,1),
(2,382,1,41,1),
(1,382,1,21,1),
(10,382,1,23,1),
(14,382,1,34,1),
(18,382,1,29,1),
(4,382,1,11,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(383,77,'1992-11-08 11:39:38',129,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (3,383,1,31,1),
(2,383,1,16,1),
(5,383,1,32,1),
(17,383,1,50,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(384,77,'1976-08-30 22:35:50',412,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (3,384,1,23,1),
(4,384,1,31,1),
(7,384,1,47,1),
(1,384,1,9,1),
(13,384,1,4,1),
(14,384,1,23,1),
(15,384,1,42,1),
(16,384,1,44,1),
(6,384,1,6,1),
(8,384,1,42,1),
(2,384,1,44,1),
(9,384,1,2,1),
(18,384,1,17,1),
(5,384,1,36,1),
(12,384,1,42,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(385,77,'2008-08-06 09:03:59',340,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (1,385,1,7,1),
(15,385,1,46,1),
(13,385,1,31,1),
(2,385,1,28,1),
(16,385,1,25,1),
(7,385,1,27,1),
(17,385,1,43,1),
(5,385,1,21,1),
(8,385,1,42,1),
(3,385,1,21,1),
(9,385,1,2,1),
(10,385,1,1,1),
(6,385,1,46,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(386,78,'1992-09-18 05:45:48',128,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (8,386,1,19,1),
(5,386,1,42,1),
(9,386,1,20,1),
(16,386,1,26,1),
(1,386,1,13,1),
(15,386,1,2,1),
(6,386,1,6,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(387,78,'1995-10-13 20:01:32',98,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (13,387,1,10,1),
(18,387,1,7,1),
(6,387,1,2,1),
(14,387,1,46,1),
(9,387,1,27,1),
(3,387,1,6,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(388,78,'2012-12-17 05:33:11',302,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (12,388,1,49,1),
(5,388,1,49,1),
(3,388,1,42,1),
(17,388,1,50,1),
(14,388,1,9,1),
(15,388,1,35,1),
(13,388,1,19,1),
(16,388,1,2,1),
(2,388,1,47,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(389,78,'2005-02-25 13:43:58',311,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (10,389,1,18,1),
(4,389,1,43,1),
(7,389,1,7,1),
(14,389,1,15,1),
(11,389,1,17,1),
(2,389,1,21,1),
(6,389,1,5,1),
(3,389,1,39,1),
(5,389,1,1,1),
(12,389,1,21,1),
(18,389,1,45,1),
(16,389,1,15,1),
(9,389,1,21,1),
(17,389,1,43,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(390,78,'1973-12-20 21:43:12',363,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (15,390,1,7,1),
(6,390,1,44,1),
(2,390,1,20,1),
(1,390,1,11,1),
(4,390,1,7,1),
(9,390,1,4,1),
(3,390,1,46,1),
(13,390,1,38,1),
(12,390,1,27,1),
(5,390,1,19,1),
(16,390,1,17,1),
(18,390,1,44,1),
(14,390,1,33,1),
(11,390,1,46,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(391,79,'2018-05-31 22:25:38',223,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (6,391,1,40,1),
(4,391,1,25,1),
(17,391,1,32,1),
(12,391,1,2,1),
(1,391,1,28,1),
(13,391,1,12,1),
(3,391,1,47,1),
(10,391,1,2,1),
(9,391,1,35,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(392,79,'1970-11-16 11:36:01',262,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (7,392,1,17,1),
(1,392,1,29,1),
(9,392,1,26,1),
(16,392,1,27,1),
(17,392,1,13,1),
(10,392,1,14,1),
(13,392,1,7,1),
(12,392,1,2,1),
(6,392,1,27,1),
(18,392,1,13,1),
(8,392,1,14,1),
(2,392,1,13,1),
(4,392,1,19,1),
(11,392,1,4,1),
(14,392,1,37,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(393,79,'2005-05-01 21:10:39',228,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (12,393,1,11,1),
(10,393,1,14,1),
(5,393,1,10,1),
(13,393,1,13,1),
(4,393,1,20,1),
(11,393,1,30,1),
(17,393,1,17,1),
(18,393,1,7,1),
(2,393,1,14,1),
(3,393,1,8,1),
(15,393,1,44,1),
(1,393,1,21,1),
(8,393,1,19,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(394,79,'1977-05-27 07:19:03',85,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (2,394,1,12,1),
(12,394,1,32,1),
(17,394,1,29,1),
(5,394,1,7,1),
(7,394,1,5,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(395,79,'1991-04-10 13:35:15',129,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (4,395,1,31,1),
(9,395,1,23,1),
(18,395,1,15,1),
(6,395,1,29,1),
(12,395,1,31,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(396,80,'1981-02-08 03:02:14',362,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (11,396,1,25,1),
(7,396,1,22,1),
(10,396,1,31,1),
(16,396,1,45,1),
(15,396,1,24,1),
(12,396,1,33,1),
(18,396,1,31,1),
(8,396,1,34,1),
(2,396,1,25,1),
(5,396,1,7,1),
(14,396,1,36,1),
(4,396,1,24,1),
(17,396,1,25,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(397,80,'2017-01-08 04:58:41',146,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (15,397,1,10,1),
(11,397,1,35,1),
(5,397,1,44,1),
(7,397,1,43,1),
(9,397,1,14,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(398,80,'1973-12-16 16:49:19',277,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (16,398,1,39,1),
(14,398,1,8,1),
(18,398,1,31,1),
(9,398,1,28,1),
(17,398,1,50,1),
(1,398,1,8,1),
(3,398,1,36,1),
(8,398,1,32,1),
(10,398,1,15,1),
(5,398,1,30,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(399,80,'1997-08-04 18:36:54',255,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (18,399,1,25,1),
(12,399,1,41,1),
(16,399,1,9,1),
(10,399,1,24,1),
(7,399,1,12,1),
(13,399,1,1,1),
(2,399,1,38,1),
(17,399,1,20,1),
(14,399,1,4,1),
(15,399,1,15,1),
(5,399,1,50,1),
(8,399,1,5,1),
(4,399,1,11,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(400,80,'1986-01-25 16:31:18',311,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (10,400,1,28,1),
(11,400,1,9,1),
(3,400,1,50,1),
(4,400,1,44,1),
(14,400,1,24,1),
(2,400,1,9,1),
(16,400,1,27,1),
(8,400,1,23,1),
(5,400,1,47,1),
(6,400,1,24,1),
(15,400,1,26,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(401,81,'2011-07-27 18:24:47',354,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (18,401,1,33,1),
(8,401,1,12,1),
(2,401,1,8,1),
(13,401,1,48,1),
(15,401,1,47,1),
(6,401,1,27,1),
(11,401,1,8,1),
(7,401,1,39,1),
(10,401,1,41,1),
(12,401,1,1,1),
(5,401,1,9,1),
(14,401,1,22,1),
(9,401,1,15,1),
(4,401,1,11,1),
(16,401,1,33,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(402,81,'1975-04-06 10:52:47',272,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (4,402,1,41,1),
(12,402,1,7,1),
(13,402,1,35,1),
(8,402,1,25,1),
(11,402,1,25,1),
(10,402,1,24,1),
(5,402,1,20,1),
(14,402,1,22,1),
(2,402,1,29,1),
(1,402,1,44,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(403,81,'1972-03-10 19:57:23',186,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (16,403,1,8,1),
(14,403,1,40,1),
(15,403,1,20,1),
(10,403,1,11,1),
(4,403,1,1,1),
(11,403,1,17,1),
(7,403,1,48,1),
(9,403,1,41,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(404,81,'2004-07-24 17:16:37',127,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (7,404,1,24,1),
(6,404,1,28,1),
(15,404,1,34,1),
(3,404,1,22,1),
(10,404,1,19,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(405,81,'1996-05-26 19:19:06',116,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (11,405,1,15,1),
(9,405,1,21,1),
(14,405,1,30,1),
(13,405,1,14,1),
(4,405,1,30,1),
(8,405,1,6,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(406,82,'2001-12-17 13:20:00',280,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (16,406,1,43,1),
(2,406,1,44,1),
(3,406,1,12,1),
(7,406,1,13,1),
(15,406,1,16,1),
(11,406,1,48,1),
(8,406,1,2,1),
(10,406,1,25,1),
(4,406,1,3,1),
(14,406,1,36,1),
(17,406,1,27,1),
(6,406,1,11,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(407,82,'2005-12-15 17:43:05',188,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (11,407,1,25,1),
(3,407,1,14,1),
(1,407,1,21,1),
(9,407,1,34,1),
(10,407,1,10,1),
(2,407,1,40,1),
(7,407,1,44,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(408,82,'1993-05-05 13:14:57',183,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (1,408,1,16,1),
(17,408,1,31,1),
(11,408,1,3,1),
(6,408,1,28,1),
(13,408,1,31,1),
(2,408,1,25,1),
(5,408,1,49,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(409,82,'2007-01-20 13:56:36',98,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (13,409,1,40,1),
(4,409,1,18,1),
(18,409,1,6,1),
(12,409,1,34,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(410,82,'1998-01-03 05:03:10',58,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (2,410,1,22,1),
(11,410,1,36,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(411,83,'1980-04-24 06:09:25',24,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (1,411,1,10,1),
(2,411,1,6,1),
(3,411,1,8,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(412,83,'2016-09-01 17:09:51',54,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (7,412,1,1,1),
(13,412,1,11,1),
(5,412,1,42,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(413,83,'2006-01-14 23:22:28',183,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (7,413,1,34,1),
(14,413,1,30,1),
(16,413,1,11,1),
(11,413,1,17,1),
(10,413,1,26,1),
(17,413,1,47,1),
(13,413,1,18,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(414,83,'2004-06-28 08:48:19',308,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (14,414,1,36,1),
(16,414,1,15,1),
(7,414,1,47,1),
(1,414,1,27,1),
(2,414,1,50,1),
(10,414,1,29,1),
(18,414,1,8,1),
(17,414,1,10,1),
(4,414,1,12,1),
(8,414,1,40,1),
(5,414,1,11,1),
(12,414,1,23,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(415,83,'1996-04-04 09:08:43',159,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (9,415,1,41,1),
(17,415,1,6,1),
(12,415,1,10,1),
(13,415,1,24,1),
(4,415,1,34,1),
(18,415,1,44,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(416,84,'2012-07-22 01:45:42',224,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (1,416,1,13,1),
(9,416,1,45,1),
(3,416,1,14,1),
(10,416,1,8,1),
(8,416,1,16,1),
(2,416,1,7,1),
(7,416,1,8,1),
(11,416,1,27,1),
(6,416,1,22,1),
(15,416,1,47,1),
(14,416,1,17,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(417,84,'1979-12-14 19:51:50',285,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (4,417,1,44,1),
(8,417,1,16,1),
(13,417,1,9,1),
(3,417,1,23,1),
(15,417,1,33,1),
(6,417,1,49,1),
(18,417,1,26,1),
(10,417,1,3,1),
(9,417,1,24,1),
(2,417,1,5,1),
(11,417,1,34,1),
(16,417,1,12,1),
(17,417,1,7,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(418,84,'2012-11-22 22:27:27',192,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (13,418,1,8,1),
(5,418,1,22,1),
(17,418,1,20,1),
(11,418,1,43,1),
(6,418,1,41,1),
(9,418,1,41,1),
(1,418,1,17,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(419,84,'2015-03-11 06:14:30',367,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (8,419,1,34,1),
(3,419,1,48,1),
(4,419,1,43,1),
(12,419,1,17,1),
(9,419,1,36,1),
(5,419,1,16,1),
(13,419,1,8,1),
(15,419,1,28,1),
(6,419,1,19,1),
(10,419,1,39,1),
(11,419,1,43,1),
(14,419,1,1,1),
(1,419,1,35,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(420,84,'2015-05-04 02:57:22',254,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (9,420,1,1,1),
(7,420,1,39,1),
(4,420,1,48,1),
(6,420,1,3,1),
(1,420,1,15,1),
(3,420,1,49,1),
(5,420,1,14,1),
(2,420,1,13,1),
(10,420,1,21,1),
(8,420,1,11,1),
(18,420,1,14,1),
(15,420,1,26,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(421,85,'1982-06-23 06:18:52',178,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (8,421,1,6,1),
(9,421,1,8,1),
(12,421,1,3,1),
(13,421,1,14,1),
(5,421,1,28,1),
(4,421,1,34,1),
(2,421,1,13,1),
(11,421,1,28,1),
(6,421,1,44,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(422,85,'1990-12-06 07:52:47',254,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (12,422,1,30,1),
(17,422,1,18,1),
(8,422,1,38,1),
(3,422,1,7,1),
(13,422,1,47,1),
(16,422,1,31,1),
(6,422,1,6,1),
(5,422,1,7,1),
(10,422,1,20,1),
(11,422,1,38,1),
(14,422,1,12,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(423,85,'2018-03-21 11:06:58',25,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (14,423,1,11,1),
(8,423,1,10,1),
(6,423,1,4,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(424,85,'2001-04-08 09:10:38',307,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (11,424,1,16,1),
(3,424,1,4,1),
(18,424,1,30,1),
(2,424,1,8,1),
(14,424,1,24,1),
(4,424,1,33,1),
(16,424,1,16,1),
(10,424,1,26,1),
(15,424,1,2,1),
(7,424,1,11,1),
(12,424,1,42,1),
(8,424,1,21,1),
(5,424,1,5,1),
(1,424,1,21,1),
(6,424,1,48,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(425,85,'2012-12-31 11:12:13',331,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (6,425,1,15,1),
(14,425,1,3,1),
(9,425,1,33,1),
(8,425,1,46,1),
(3,425,1,22,1),
(13,425,1,49,1),
(18,425,1,19,1),
(2,425,1,13,1),
(12,425,1,29,1),
(15,425,1,34,1),
(4,425,1,23,1),
(16,425,1,45,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(426,86,'1994-07-27 18:58:03',395,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (7,426,1,43,1),
(8,426,1,50,1),
(5,426,1,26,1),
(4,426,1,48,1),
(15,426,1,35,1),
(3,426,1,2,1),
(13,426,1,25,1),
(9,426,1,13,1),
(2,426,1,33,1),
(6,426,1,32,1),
(17,426,1,34,1),
(11,426,1,2,1),
(16,426,1,36,1),
(10,426,1,13,1),
(18,426,1,3,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(427,86,'1979-03-28 02:27:28',117,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (13,427,1,47,1),
(15,427,1,25,1),
(11,427,1,45,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(428,86,'1970-01-21 20:34:57',32,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (3,428,1,3,1),
(6,428,1,1,1),
(12,428,1,28,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(429,86,'1996-10-14 02:47:58',427,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (8,429,1,48,1),
(17,429,1,22,1),
(14,429,1,29,1),
(9,429,1,35,1),
(15,429,1,31,1),
(1,429,1,28,1),
(7,429,1,33,1),
(11,429,1,25,1),
(2,429,1,42,1),
(4,429,1,29,1),
(13,429,1,34,1),
(3,429,1,33,1),
(6,429,1,38,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(430,86,'2014-06-02 08:37:52',264,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (1,430,1,40,1),
(14,430,1,34,1),
(16,430,1,31,1),
(2,430,1,46,1),
(11,430,1,44,1),
(15,430,1,43,1),
(8,430,1,11,1),
(4,430,1,15,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(431,87,'1971-01-28 21:36:58',126,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (3,431,1,19,1),
(11,431,1,19,1),
(10,431,1,27,1),
(6,431,1,28,1),
(1,431,1,15,1),
(7,431,1,2,1),
(14,431,1,16,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(432,87,'2003-02-06 18:55:48',303,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (6,432,1,9,1),
(1,432,1,6,1),
(10,432,1,7,1),
(5,432,1,42,1),
(8,432,1,37,1),
(2,432,1,38,1),
(11,432,1,25,1),
(16,432,1,34,1),
(4,432,1,20,1),
(9,432,1,17,1),
(14,432,1,14,1),
(7,432,1,34,1),
(12,432,1,20,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(433,87,'1991-05-14 13:06:30',219,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (11,433,1,13,1),
(5,433,1,26,1),
(10,433,1,2,1),
(6,433,1,1,1),
(8,433,1,11,1),
(17,433,1,7,1),
(13,433,1,40,1),
(7,433,1,26,1),
(1,433,1,31,1),
(14,433,1,17,1),
(9,433,1,33,1),
(3,433,1,9,1),
(12,433,1,3,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(434,87,'1983-09-11 17:09:52',344,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (3,434,1,23,1),
(18,434,1,23,1),
(12,434,1,33,1),
(7,434,1,38,1),
(10,434,1,29,1),
(5,434,1,23,1),
(11,434,1,1,1),
(15,434,1,40,1),
(6,434,1,48,1),
(13,434,1,33,1),
(14,434,1,43,1),
(17,434,1,10,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(435,87,'1999-08-02 16:38:36',247,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (11,435,1,48,1),
(16,435,1,19,1),
(1,435,1,49,1),
(18,435,1,32,1),
(9,435,1,1,1),
(12,435,1,5,1),
(2,435,1,46,1),
(5,435,1,47,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(436,88,'2005-05-01 08:15:13',401,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (15,436,1,24,1),
(11,436,1,13,1),
(16,436,1,42,1),
(10,436,1,5,1),
(4,436,1,13,1),
(9,436,1,34,1),
(1,436,1,45,1),
(8,436,1,29,1),
(7,436,1,13,1),
(14,436,1,25,1),
(6,436,1,49,1),
(18,436,1,17,1),
(13,436,1,49,1),
(5,436,1,30,1),
(3,436,1,13,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(437,88,'1988-10-25 10:32:41',114,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (1,437,1,34,1),
(4,437,1,10,1),
(16,437,1,45,1),
(7,437,1,8,1),
(8,437,1,17,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(438,88,'2009-02-06 23:15:00',30,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (12,438,1,9,1),
(4,438,1,21,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(439,88,'2005-05-20 17:59:12',420,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (13,439,1,10,1),
(4,439,1,26,1),
(8,439,1,50,1),
(11,439,1,18,1),
(16,439,1,7,1),
(5,439,1,1,1),
(14,439,1,39,1),
(1,439,1,47,1),
(17,439,1,35,1),
(18,439,1,47,1),
(15,439,1,44,1),
(12,439,1,45,1),
(10,439,1,5,1),
(3,439,1,46,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(440,88,'2005-12-05 01:20:32',226,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (12,440,1,36,1),
(4,440,1,7,1),
(15,440,1,17,1),
(13,440,1,7,1),
(14,440,1,30,1),
(9,440,1,43,1),
(17,440,1,36,1),
(10,440,1,30,1),
(7,440,1,20,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(441,89,'2015-11-28 04:31:02',59,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (4,441,1,33,1),
(9,441,1,26,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(442,89,'1998-11-03 05:15:55',257,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (15,442,1,3,1),
(8,442,1,50,1),
(2,442,1,21,1),
(6,442,1,30,1),
(14,442,1,25,1),
(16,442,1,23,1),
(7,442,1,9,1),
(3,442,1,50,1),
(12,442,1,32,1),
(4,442,1,14,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(443,89,'1971-10-06 08:26:03',222,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (16,443,1,10,1),
(13,443,1,19,1),
(18,443,1,8,1),
(5,443,1,24,1),
(15,443,1,17,1),
(3,443,1,30,1),
(7,443,1,8,1),
(12,443,1,30,1),
(10,443,1,29,1),
(11,443,1,47,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(444,89,'1987-12-03 14:21:28',181,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (5,444,1,18,1),
(9,444,1,44,1),
(15,444,1,30,1),
(12,444,1,4,1),
(8,444,1,42,1),
(18,444,1,43,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(445,89,'1992-03-16 21:14:08',163,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (2,445,1,1,1),
(1,445,1,44,1),
(18,445,1,28,1),
(13,445,1,10,1),
(11,445,1,28,1),
(6,445,1,26,1),
(9,445,1,26,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(446,90,'1976-07-09 08:07:40',287,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (17,446,1,44,1),
(15,446,1,30,1),
(3,446,1,29,1),
(13,446,1,29,1),
(6,446,1,45,1),
(9,446,1,9,1),
(7,446,1,27,1),
(12,446,1,2,1),
(11,446,1,26,1),
(14,446,1,46,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(447,90,'2013-05-27 10:16:02',82,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (3,447,1,48,1),
(11,447,1,34,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(448,90,'1994-07-07 06:54:49',296,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (16,448,1,13,1),
(9,448,1,45,1),
(17,448,1,9,1),
(15,448,1,9,1),
(7,448,1,25,1),
(2,448,1,47,1),
(11,448,1,7,1),
(10,448,1,39,1),
(14,448,1,9,1),
(8,448,1,33,1),
(12,448,1,13,1),
(3,448,1,46,1),
(13,448,1,1,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(449,90,'2005-03-29 13:41:02',58,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (2,449,1,45,1),
(8,449,1,13,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(450,90,'2007-06-28 09:15:35',116,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (3,450,1,49,1),
(11,450,1,49,1),
(16,450,1,10,1),
(18,450,1,8,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(451,91,'2014-04-26 00:04:39',349,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (1,451,1,28,1),
(3,451,1,44,1),
(8,451,1,25,1),
(18,451,1,38,1),
(13,451,1,30,1),
(11,451,1,45,1),
(5,451,1,16,1),
(15,451,1,2,1),
(14,451,1,48,1),
(6,451,1,5,1),
(10,451,1,10,1),
(7,451,1,40,1),
(2,451,1,18,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(452,91,'1987-12-19 16:15:42',68,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (4,452,1,39,1),
(13,452,1,29,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(453,91,'1975-05-08 19:49:51',285,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (16,453,1,9,1),
(13,453,1,3,1),
(3,453,1,29,1),
(10,453,1,25,1),
(6,453,1,19,1),
(5,453,1,41,1),
(14,453,1,23,1),
(1,453,1,15,1),
(15,453,1,8,1),
(4,453,1,43,1),
(8,453,1,34,1),
(2,453,1,36,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(454,91,'1997-09-22 07:22:15',204,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (6,454,1,6,1),
(14,454,1,1,1),
(9,454,1,26,1),
(7,454,1,42,1),
(2,454,1,49,1),
(12,454,1,37,1),
(1,454,1,43,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(455,91,'2018-01-07 20:00:32',412,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (11,455,1,29,1),
(8,455,1,36,1),
(12,455,1,45,1),
(15,455,1,11,1),
(5,455,1,49,1),
(13,455,1,46,1),
(14,455,1,41,1),
(18,455,1,43,1),
(10,455,1,35,1),
(1,455,1,36,1),
(9,455,1,41,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(456,92,'2010-08-19 21:33:56',97,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (7,456,1,31,1),
(6,456,1,27,1),
(10,456,1,13,1),
(3,456,1,3,1),
(15,456,1,1,1),
(8,456,1,22,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(457,92,'2008-06-01 00:15:29',255,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (8,457,1,2,1),
(17,457,1,11,1),
(5,457,1,45,1),
(6,457,1,17,1),
(10,457,1,43,1),
(16,457,1,34,1),
(15,457,1,9,1),
(4,457,1,48,1),
(2,457,1,29,1),
(11,457,1,17,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(458,92,'2000-10-05 15:58:58',160,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (16,458,1,12,1),
(5,458,1,44,1),
(15,458,1,1,1),
(11,458,1,32,1),
(8,458,1,43,1),
(18,458,1,13,1),
(9,458,1,15,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(459,92,'1981-01-15 06:28:57',391,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (10,459,1,35,1),
(7,459,1,48,1),
(13,459,1,19,1),
(12,459,1,19,1),
(6,459,1,44,1),
(2,459,1,7,1),
(3,459,1,36,1),
(9,459,1,15,1),
(16,459,1,3,1),
(14,459,1,20,1),
(18,459,1,36,1),
(8,459,1,44,1),
(1,459,1,30,1),
(5,459,1,35,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(460,92,'1981-12-11 22:38:34',83,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (14,460,1,36,1),
(7,460,1,30,1),
(8,460,1,17,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(461,93,'1989-02-26 22:29:40',46,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (3,461,1,17,1),
(12,461,1,29,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(462,93,'2005-06-16 14:49:24',186,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (5,462,1,44,1),
(7,462,1,10,1),
(11,462,1,47,1),
(8,462,1,46,1),
(13,462,1,17,1),
(9,462,1,1,1),
(15,462,1,21,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(463,93,'1970-07-05 01:41:09',56,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (3,463,1,49,1),
(8,463,1,7,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(464,93,'1999-11-11 10:27:30',43,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (3,464,1,5,1),
(13,464,1,20,1),
(16,464,1,10,1),
(7,464,1,8,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(465,93,'1997-03-09 17:11:42',250,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (13,465,1,39,1),
(9,465,1,48,1),
(14,465,1,41,1),
(16,465,1,25,1),
(8,465,1,1,1),
(7,465,1,50,1),
(3,465,1,46,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(466,94,'1971-07-10 15:22:29',170,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (17,466,1,13,1),
(2,466,1,47,1),
(8,466,1,41,1),
(11,466,1,10,1),
(18,466,1,18,1),
(7,466,1,19,1),
(10,466,1,22,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(467,94,'1987-04-08 13:56:29',55,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (17,467,1,33,1),
(9,467,1,22,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(468,94,'1997-10-06 18:39:22',159,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (1,468,1,25,1),
(6,468,1,50,1),
(9,468,1,20,1),
(13,468,1,41,1),
(11,468,1,23,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(469,94,'1984-12-01 10:08:13',199,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (13,469,1,15,1),
(7,469,1,29,1),
(10,469,1,13,1),
(14,469,1,18,1),
(12,469,1,11,1),
(17,469,1,40,1),
(11,469,1,33,1),
(3,469,1,9,1),
(1,469,1,31,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(470,94,'1980-04-06 13:53:40',279,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (11,470,1,12,1),
(12,470,1,8,1),
(1,470,1,10,1),
(8,470,1,20,1),
(15,470,1,41,1),
(18,470,1,38,1),
(2,470,1,34,1),
(13,470,1,42,1),
(5,470,1,23,1),
(9,470,1,47,1),
(6,470,1,4,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(471,95,'2013-11-03 18:14:25',93,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (7,471,1,33,1),
(18,471,1,10,1),
(6,471,1,33,1),
(10,471,1,17,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(472,95,'1973-04-22 12:10:50',22,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (6,472,1,4,1),
(17,472,1,18,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(473,95,'2006-02-07 14:02:06',83,5) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (13,473,1,38,1),
(11,473,1,45,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(474,95,'1980-09-10 18:39:40',149,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (17,474,1,38,1),
(8,474,1,1,1),
(16,474,1,38,1),
(10,474,1,14,1),
(6,474,1,50,1),
(4,474,1,8,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(475,95,'1981-07-02 23:38:56',267,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (14,475,1,30,1),
(6,475,1,18,1),
(11,475,1,11,1),
(4,475,1,48,1),
(8,475,1,1,1),
(7,475,1,26,1),
(5,475,1,9,1),
(16,475,1,21,1),
(9,475,1,39,1),
(18,475,1,24,1),
(12,475,1,40,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(476,96,'1980-11-02 09:14:54',33,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (11,476,1,15,1),
(13,476,1,15,1),
(9,476,1,3,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(477,96,'2004-10-11 15:41:28',295,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (1,477,1,9,1),
(16,477,1,37,1),
(2,477,1,2,1),
(9,477,1,16,1),
(13,477,1,46,1),
(11,477,1,34,1),
(6,477,1,19,1),
(15,477,1,45,1),
(7,477,1,28,1),
(8,477,1,17,1),
(18,477,1,42,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(478,96,'1987-12-28 09:31:30',169,2) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (7,478,1,15,1),
(10,478,1,42,1),
(17,478,1,35,1),
(14,478,1,5,1),
(8,478,1,32,1),
(13,478,1,16,1),
(3,478,1,4,1),
(5,478,1,18,1),
(12,478,1,2,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(479,96,'2009-05-04 02:39:21',329,8) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (4,479,1,29,1),
(3,479,1,45,1),
(2,479,1,19,1),
(13,479,1,29,1),
(7,479,1,47,1),
(5,479,1,35,1),
(9,479,1,21,1),
(18,479,1,44,1),
(8,479,1,48,1),
(17,479,1,12,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(480,96,'1972-02-28 00:18:49',256,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (4,480,1,6,1),
(13,480,1,36,1),
(15,480,1,25,1),
(5,480,1,3,1),
(3,480,1,47,1),
(2,480,1,50,1),
(14,480,1,15,1),
(18,480,1,1,1),
(8,480,1,33,1),
(7,480,1,40,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(481,97,'1998-01-29 00:08:35',335,9) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (8,481,1,36,1),
(2,481,1,46,1),
(9,481,1,20,1),
(1,481,1,29,1),
(15,481,1,29,1),
(12,481,1,42,1),
(6,481,1,33,1),
(10,481,1,21,1),
(3,481,1,49,1),
(7,481,1,30,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(482,97,'1984-10-17 21:32:36',357,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (18,482,1,7,1),
(13,482,1,3,1),
(15,482,1,20,1),
(2,482,1,12,1),
(10,482,1,27,1),
(4,482,1,31,1),
(12,482,1,30,1),
(8,482,1,27,1),
(14,482,1,47,1),
(1,482,1,2,1),
(6,482,1,50,1),
(7,482,1,34,1),
(11,482,1,37,1),
(17,482,1,30,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(483,97,'2015-08-31 02:35:37',202,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (8,483,1,8,1),
(15,483,1,25,1),
(10,483,1,32,1),
(18,483,1,11,1),
(17,483,1,17,1),
(12,483,1,19,1),
(16,483,1,8,1),
(6,483,1,15,1),
(4,483,1,44,1),
(5,483,1,23,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(484,97,'1990-08-01 18:06:31',523,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (12,484,1,46,1),
(17,484,1,42,1),
(15,484,1,29,1),
(8,484,1,25,1),
(11,484,1,39,1),
(5,484,1,23,1),
(2,484,1,39,1),
(10,484,1,24,1),
(3,484,1,48,1),
(14,484,1,40,1),
(6,484,1,50,1),
(9,484,1,28,1),
(13,484,1,42,1),
(18,484,1,48,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(485,97,'1971-07-04 07:50:15',50,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (14,485,1,39,1),
(8,485,1,10,1),
(9,485,1,1,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(486,98,'2006-10-27 19:31:27',100,7) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (13,486,1,31,1),
(15,486,1,23,1),
(12,486,1,46,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(487,98,'1982-04-18 07:28:41',147,10) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (2,487,1,50,1),
(18,487,1,25,1),
(7,487,1,13,1),
(5,487,1,23,1),
(6,487,1,33,1),
(4,487,1,3,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(488,98,'2015-11-26 05:59:58',130,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (3,488,1,37,1),
(7,488,1,50,1),
(4,488,1,43,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(489,98,'1999-07-01 04:10:24',329,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (1,489,1,43,1),
(15,489,1,6,1),
(7,489,1,40,1),
(8,489,1,7,1),
(6,489,1,13,1),
(10,489,1,22,1),
(16,489,1,47,1),
(4,489,1,23,1),
(9,489,1,11,1),
(11,489,1,9,1),
(13,489,1,26,1),
(12,489,1,47,1),
(3,489,1,18,1),
(14,489,1,17,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(490,98,'1976-07-10 16:50:15',266,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (9,490,1,4,1),
(18,490,1,43,1),
(16,490,1,36,1),
(10,490,1,21,1),
(13,490,1,49,1),
(1,490,1,37,1),
(5,490,1,29,1),
(14,490,1,47,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(491,99,'2004-06-20 07:59:14',280,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (11,491,1,9,1),
(3,491,1,25,1),
(14,491,1,46,1),
(12,491,1,28,1),
(10,491,1,4,1),
(15,491,1,27,1),
(16,491,1,39,1),
(8,491,1,6,1),
(4,491,1,20,1),
(7,491,1,38,1),
(18,491,1,38,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(492,99,'1980-02-19 11:38:41',238,1) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (4,492,1,8,1),
(15,492,1,36,1),
(3,492,1,23,1),
(13,492,1,30,1),
(11,492,1,19,1),
(17,492,1,42,1),
(9,492,1,44,1),
(14,492,1,32,1),
(1,492,1,4,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(493,99,'2013-10-28 00:15:44',367,3) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (1,493,1,44,1),
(7,493,1,48,1),
(9,493,1,7,1),
(14,493,1,28,1),
(5,493,1,37,1),
(18,493,1,46,1),
(2,493,1,22,1),
(11,493,1,24,1),
(13,493,1,4,1),
(17,493,1,29,1),
(4,493,1,8,1),
(15,493,1,5,1),
(12,493,1,39,1),
(16,493,1,17,1),
(10,493,1,9,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(494,99,'1991-02-17 10:40:12',169,4) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (10,494,1,7,1),
(3,494,1,4,1),
(11,494,1,7,1),
(9,494,1,5,1),
(7,494,1,39,1),
(13,494,1,18,1),
(2,494,1,48,1),
(6,494,1,41,1);
 INSERT INTO compra(idcompra,idconsumidor,datacompra,valortotal,idestabelecimento) VALUES(495,99,'1995-01-11 19:32:54',386,6) ;
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,quantidade) VALUES (14,495,1,42,1),
(5,495,1,2,1),
(13,495,1,29,1),
(9,495,1,8,1),
(17,495,1,20,1),
(12,495,1,39,1),
(3,495,1,8,1),
(11,495,1,37,1),
(15,495,1,49,1),
(18,495,1,16,1),
(2,495,1,7,1),
(6,495,1,50,1),
(1,495,1,43,1),
(7,495,1,36,1);
 SELECT setval(pg_get_serial_sequence('dbo.compra', 'idcompra'), coalesce(max(idcompra), 0)+1 , false) FROM dbo.compra;  SELECT setval(pg_get_serial_sequence('dbo.itemcompra', 'iditemcompra'), coalesce(max(iditemcompra), 0)+1 , false) FROM dbo.itemcompra; 