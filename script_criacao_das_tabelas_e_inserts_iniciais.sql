CREATE TABLE Estado (
IdEstado SERIAL PRIMARY KEY,
IdPais SERIAL,
Nome VARCHAR(100)
);

CREATE TABLE Marca (
IdMarca SERIAL PRIMARY KEY,
Nome VARCHAR(50)
);

CREATE TABLE Endereco (
IdEndereco SERIAL PRIMARY KEY,
IdCidade INTEGER,
Logradouro VARCHAR(100),
Complemento VARCHAR(100),
Numero VARCHAR(20),
Cep VARCHAR(8)
);

CREATE TABLE EstabelecimentoProduto (
IdEstabelecimentoProduto SERIAL PRIMARY KEY,
IdProduto INTEGER,
IdEstabelecimento INTEGER,
Preco DECIMAL(10,2)
);

CREATE TABLE Pessoa (
IdPessoa SERIAL PRIMARY KEY,
IdEndereco INTEGER,
Nome VARCHAR(100),
Sobrenome VARCHAR(100),
DataNascimento TIMESTAMP,
Email VARCHAR(100),
FOREIGN KEY(IdEndereco) REFERENCES Endereco (IdEndereco)
);

CREATE TABLE Compra (
IdCompra SERIAL PRIMARY KEY,
IdConsumidor INTEGER,
IdEstabelecimento INTEGER,
ValorTotal DECIMAL(10,2),
DataCompra TIMESTAMP
);

CREATE TABLE Cidade (
IdCidade SERIAL PRIMARY KEY,
IdEstado INTEGER,
Nome VARCHAR(100),
FOREIGN KEY(IdEstado) REFERENCES Estado (IdEstado)
);

CREATE TABLE Pais (
IdPais SERIAL PRIMARY KEY,
Nome VARCHAR(100)
);

CREATE TABLE Consumidor (
IdConsumidor SERIAL PRIMARY KEY,
IdPessoa INTEGER,
Login VARCHAR(40),
Senha VARCHAR(200),
Nivel NUMERIC(10),
DataCadastro TIMESTAMP,
Administrador NUMERIC(1),
FOREIGN KEY(IdPessoa) REFERENCES Pessoa (IdPessoa)
);

CREATE TABLE ListaCompra (
IdListaCompra SERIAL PRIMARY KEY,
IdConsumidor INTEGER,
Nome VARCHAR(100),
DataUltimaModificacao TIMESTAMP,
FOREIGN KEY(IdConsumidor) REFERENCES Consumidor (IdConsumidor)
);

CREATE TABLE Medida (
IdMedida SERIAL PRIMARY KEY,
Descricao VARCHAR(40),
TipoMedida NUMERIC(10)
);

CREATE TABLE Produto (
IdProduto SERIAL PRIMARY KEY,
IdMarca INTEGER,
IdMedida INTEGER,
Nome VARCHAR(100),
Unidade VARCHAR(20),
Valido NUMERIC(1),
FOREIGN KEY(IdMarca) REFERENCES Marca (IdMarca),
FOREIGN KEY(IdMedida) REFERENCES Medida (IdMedida)
);

CREATE TABLE ItemCompra (
IdItemCompra SERIAL PRIMARY KEY,
IdProduto INTEGER,
IdCompra INTEGER,
Valido VARCHAR(10),
Preco DECIMAL(10,2),
Quantidade BIGINT,
FOREIGN KEY(IdProduto) REFERENCES Produto (IdProduto),
FOREIGN KEY(IdCompra) REFERENCES Compra (IdCompra)
);

CREATE TABLE ItemListaCompra (
IdItemListaCompra VARCHAR(10) PRIMARY KEY,
IdListaCompra INTEGER,
IdProduto INTEGER,
Quantidade BIGINT,
FOREIGN KEY(IdListaCompra) REFERENCES ListaCompra (IdListaCompra),
FOREIGN KEY(IdProduto) REFERENCES Produto (IdProduto)
);

CREATE TABLE Estabelecimento (
IdEstabelecimento SERIAL PRIMARY KEY,
IdEndereco INTEGER,
Nome VARCHAR(100),
Unidade VARCHAR(100),
Logo INT,
FOREIGN KEY(IdEndereco) REFERENCES Endereco (IdEndereco)
);

ALTER TABLE Estado ADD FOREIGN KEY(IdPais) REFERENCES Pais (IdPais);
ALTER TABLE Endereco ADD FOREIGN KEY(IdCidade) REFERENCES Cidade (IdCidade);
ALTER TABLE EstabelecimentoProduto ADD FOREIGN KEY(IdProduto) REFERENCES Produto (IdProduto);
ALTER TABLE EstabelecimentoProduto ADD FOREIGN KEY(IdEstabelecimento) REFERENCES Estabelecimento (IdEstabelecimento);
ALTER TABLE Compra ADD FOREIGN KEY(IdConsumidor) REFERENCES Consumidor (IdConsumidor);
ALTER TABLE Compra ADD FOREIGN KEY(IdEstabelecimento) REFERENCES Estabelecimento (IdEstabelecimento);

/*Inserts*/

INSERT INTO Marca (idmarca, nome)
    VALUES  (1,'Nenhuma'),
		    (2,'Garoto'),
		    (3,'Mabel'),
		    (4,'Coca Cola'),
		    (5,'Unilever'),
		    (6,'Seara'),
		    (7,'Quero'),
		    (8,'Pepsi'),
		    (9,'Samsung'),
		    (10,'Gillette');
		    
    
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
      
INSERT INTO pais (idpais, nome)
            VALUES  (1,  'Brasil'        ),
        (2,  'Estados Unidos'),
        (3,  'França'        ),
        (4,  'Itália'        ),
        (5,  'Canadá'        ),
        (6,  'Chile'         ),
        (7,  'Russia'        ),
        (8,  'Alemanha'      ),
        (9,  'México'        ),
        (10, 'Egito'         );

        INSERT INTO estado (idpais, idestado, nome)
        VALUES  (1, 1,  'Espirito Santo'    ),
        (1, 2,  'São Paulo'         ),
        (1, 3,  'Goias'             ),
        (1, 4,  'Amazonas'          ),
        (1, 5,  'Mato Grosso do Sul'),
        (1, 6,  'Rio de Janeiro'    ),
        (1, 7,  'Bahia'             ),
        (1, 8,  'Rio de Janeiro'    ),
        (2, 9,  'Texas'             ),
        (2, 10, 'Califórnia'        );
		
INSERT INTO cidade (idcidade,idestado, nome) VALUES  (1,1, 'Colina de Laranjeiras'),(2,5, 'Martins da Mata')
,(3,6, 'Barros da Serra')
,(4,5, 'Sales de FariasFernandes')
,(5,5, 'Silveira de Goiás')
,(6,1, 'Aragão dos Dourados')
,(7,3, 'Jesus')
,(8,8, 'da Cruz')
,(9,8, 'Ribeiro')
,(10,4, 'da Cruz das Flores');

INSERT INTO endereco (idendereco, idcidade, cep, logradouro, numero, complemento) VALUES  (1, 1,'29167081','Primeiro','371','proximo a nada'),(2, 10, '32690530','Ladeira Miguel Nunes','2050','algum complemento')
,(3, 1, '54547386','Quadra de Moraes','6385','algum complemento')
,(4, 1, '87218147','Estrada de Correia','2547','algum complemento')
,(5, 2, '97043329','Área Carolina Silveira','5819','algum complemento')
,(6, 2, '83197045','Praça Enrico Teixeira','2880','algum complemento')
,(7, 6, '42942225','Quadra Caldeira','490','algum complemento')
,(8, 7, '13899302','Rua da Luz','7838','algum complemento')
,(9, 8, '23229810','Viaduto Evelyn Cardoso','3875','algum complemento')
,(10, 10, '37813675','Passarela Mirella das Neves','9534','algum complemento');

INSERT INTO estabelecimento(idestabelecimento ,idendereco ,nome , unidade ,logo)
    VALUES  (1,  1, 'EPA PLUS',     'Serra',1),
	(2,  2, 'Extrabom',   'Serra',2),
	(3,  3, 'Wallmart',   'Vitória',3),
	(4,  4, 'Carone',     'Serra',4),
	(5,  5, 'Meridional', 'Aracruz',5),
	(6,  6, 'Devens',     'Aracruz',6),
	(7,  7, 'Carrefour',  'Serra',7),
	(8,  8, 'Extrabom',   'Vila Velha',8),
	(9,  9, 'Carrefour',  'Vitória',9),
	(10, 10, 'Wallmart',   'Linhares',10);

INSERT INTO pessoa(idpessoa, idendereco, nome, sobrenome, email, dataNascimento) VALUES    (1,1, 'Eduardo','Couto','eduardo@email.com','1998/02/01') 
,(2,1 ,'Diogo','Oliveira','Diogo@email.com','2009-04-18')
,(3,1,'Maria Fernanda','da Luz','MariaFernanda@email.com','1996-03-08')
,(4,3, 'Arthur','Rezende','Arthur@email.com','2013-02-12')
,(5,4, 'Ana Luiza','Novaes','AnaLuiza@email.com','1983-12-12')
,(6,5, 'Caroline','Moreira','Caroline@email.com','1996-01-25')
,(7,6, 'Sophia','Rocha','Sophia@email.com','2014-02-23')
,(8,7, 'Luiza','Campos','Luiza@email.com','2016-10-22')
,(9,8, 'João Felipe','Barbosa','JoaoFelipe@email.com','2015-03-27')
,(10,6, 'Vinicius','Novaes','Vinicius@email.com','2008-09-29');

INSERT INTO consumidor(idconsumidor, idpessoa, login, senha, nivel, datacadastro,administrador) 
VALUES    (1, 1, 'educouto', '123',1, '2018/02/01',1) 
,(2,2, 'Diego','123',1,'1977-04-04',0)
,(3,3, 'João','123',1,'2011-12-26',1)
,(4,4, 'Noah','123',1,'2008-05-17',0)
,(5,5, 'Ana','123',1,'1978-04-26',1)
,(6,6, 'Gustavo Henrique','123',1,'1993-01-01',0)
,(7,7, 'Clarice','123',1,'2006-07-06',1)
,(8,8, 'André','123',1,'1971-07-29',0)
,(9,9, 'Benjamin','123',1,'2013-03-19',1)
,(10,10, 'Julia','123',1,'1986-05-06',0);

INSERT INTO listaCompra (idlistaCompra, idconsumidor, nome, dataultimamodificacao) VALUES    (1, 1, 'Primeira Lista', '2018/06/03') ,(2, 2,'Compras da feira','2013-09-22')
,(3, 3,'Churas da turma','1979-06-09')
,(4, 4,'Compras da feira','2003-06-14')
,(5, 5,'Compras da feira','1992-05-31')
,(6, 6,'Compra de 15 dias','1991-04-01')
,(7, 7,'Compra de 30 dias','1970-10-04')
,(8, 8,'Churas da turma','2001-10-19')
,(9, 9,'Compra de 15 dias','2006-11-19')
,(10, 10,'Compra de 15 dias','1994-03-13');

INSERT INTO produto (idproduto, nome, idmedida, idmarca, unidade, valido) VALUES    (1, 'Biscoito', 1, 3,280,1) ,
(2, 'Banana',1,1,1,1)
,(3, 'Maçã',1,1,1,1)
,(4, 'Pera',1,1,1,1)
,(5, 'Laranja',1,1,1,1)
,(6, 'Melão',1,1,1,1)
,(7, 'Caju',1,1,1,1)
,(8, 'Uva',1,1,1,1)
,(9, 'Limão',1,1,1,1)
,(10, 'Caixa de Chocolate',1,2,1,1);

INSERT INTO Compra(IdEstabelecimento, valortotal,IdCompra,idconsumidor,datacompra)
VALUES  
    (1,  4.20,1,1,'2010-09-09'),
	(1, 5.50,2,1,'2011-09-09'),
	(1, 8.00,3,1,'2012-09-09'),
	(1, 12.30,4,2,'2013-09-09'),
	(1, 3.69,5,3,'2014-09-09' ),
	(1, 3.59,6,6,'2015-09-09' ),
	(1,4.59,7,4,'2016-09-09' ),
	(1, 18.39,8,4,'2017-09-09'),
	(1, 17.00,9,4,'2018-09-09'),
	(1, 32.00,10,10,'2018-01-09');
	
INSERT INTO itemcompra(idproduto,idcompra ,valido , preco,iditemcompra,quantidade) VALUES (1,1,1,15,1,1),
(5,1,1,1,2,2),
(4,1,1,26,3,3),
(4,1,1,35,4,4),
(5,1,1,33,5,4),
(6,1,1,15,6,5),
(3,1,1,16,7,6),
(1,1,1,16,8,7),
(3,1,1,31,9,8),
(2,1,1,9,10,9);





INSERT INTO estabelecimentoproduto (idproduto,idestabelecimentoproduto,idestabelecimento,preco)
        VALUES  (1, 1,1,5),
        (1, 2,2,10),
        (1, 3,3,2),
        (1, 4,4,40),
        (1, 5,5,20),
        (1, 6,6,60),
        (1, 7,7,15),
        (1, 8,7,3),
	   (2, 9,8,8),
        (2, 10,9,9),
        (2, 11,10,99);    


 



INSERT INTO itemlistacompra(iditemlistacompra,idlistacompra ,idproduto,quantidade) VALUES (1,1,1,15),
(2,1,2,10),
(3,2,3,26),
(4,2,4,35),
(5,3,5,33),
(6,4,6,15),
(7,6,7,16),
(8,1,8,16),
(9,1,9,31),
(10,1,10,9);



