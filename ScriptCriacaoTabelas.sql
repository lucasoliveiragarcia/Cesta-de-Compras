--SET schema 'dbo'; -- PARA UTILIZAR COM EF

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
Preco DECIMAL(10)
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
ValorTotal DECIMAL(18),
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
Preco DECIMAL(10),
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