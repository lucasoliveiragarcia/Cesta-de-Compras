
--SET schema 'dbo';

CREATE TABLE Pais (
IdPais serial PRIMARY KEY,
Nome VARCHAR(100)
);

CREATE TABLE Estado (
IdEstado serial PRIMARY KEY,
IdPais serial,
Nome VARCHAR(100),
FOREIGN KEY(IdPais) REFERENCES Pais (IdPais)
);

CREATE TABLE Consumidor (
IdConsumidor serial PRIMARY KEY,
IdPessoa serial,
Login VARCHAR(40),
Senha VARCHAR(40),
Nivel NUMERIC(10),
DataCadastro TIMESTAMP,
Administrador NUMERIC(1)
);

CREATE TABLE Produto (
IdProduto serial PRIMARY KEY,
IdMarca INTEGER,
IdTipoMedida INTEGER,
Nome VARCHAR(100),
Valido NUMERIC(1),
Unidade VARCHAR(20)
);

CREATE TABLE Cidade (
IdCidade serial PRIMARY KEY,
IdEstado INTEGER,
Nome VARCHAR(100),
FOREIGN KEY(IdEstado) REFERENCES Estado (IdEstado)
);

CREATE TABLE ListaCompra (
IdListaCompra serial PRIMARY KEY,
IdConsumidor INTEGER,
Nome VARCHAR(100),
DataUltimaModificacao TIMESTAMP,
FOREIGN KEY(IdConsumidor) REFERENCES Consumidor (IdConsumidor)
);

CREATE TABLE Estabelecimento (
IdEstabelecimento serial PRIMARY KEY,
IdEndereco INT,
Nome VARCHAR(100),
Unidade VARCHAR(100),
Logo INT
);

CREATE TABLE Compra (
IdCompra serial PRIMARY KEY,
IdConsumidor INTEGER,
ValorTotal DECIMAL(18),
DataCompra TIMESTAMP,
FOREIGN KEY(IdConsumidor) REFERENCES Consumidor (IdConsumidor)
);

CREATE TABLE Endereco (
IdEndereco serial PRIMARY KEY,
IdCidade INTEGER,
Logradouro VARCHAR(100),
Complemento VARCHAR(100),
Numero VARCHAR(20),
Cep VARCHAR(8),
FOREIGN KEY(IdCidade) REFERENCES Cidade (IdCidade)
);

CREATE TABLE Pessoa (
IdPessoa serial PRIMARY KEY,
IdEndereco INTEGER,
Nome VARCHAR(100),
Sobrenome VARCHAR(100),
Email VARCHAR(100),
DataNascimento TIMESTAMP,
FOREIGN KEY(IdEndereco) REFERENCES Endereco (IdEndereco)
);

CREATE TABLE Medida (
IdTipoMedida serial PRIMARY KEY,
Descricao VARCHAR(40),
TipoMedida NUMERIC(10)
);

CREATE TABLE Marca (
IdMarca serial PRIMARY KEY,
Nome VARCHAR(50)
);

CREATE TABLE ItemCompra (
IdCompra INTEGER,
IdProduto INTEGER,
IdEstabelecimento INTEGER,
Quantidade BIGINT,
Preco DECIMAL(10),
Valido VARCHAR(40),
PRIMARY KEY(IdCompra,IdProduto,IdEstabelecimento)
);

CREATE TABLE EstabelecimentoProduto (
IdEstabelecimentoProduto serial PRIMARY KEY,
IdProduto INTEGER,
IdEstabelecimento INTEGER,
Preco DECIMAL(10),
FOREIGN KEY(IdProduto) REFERENCES Produto (IdProduto),
FOREIGN KEY(IdEstabelecimento) REFERENCES Estabelecimento (IdEstabelecimento)
);

CREATE TABLE ItemListaCompra (
IdItemListaCompra serial PRIMARY KEY,
IdListaCompra INTEGER,
IdProduto INTEGER,
Quantidade BIGINT,
FOREIGN KEY(IdListaCompra) REFERENCES ListaCompra (IdListaCompra),
FOREIGN KEY(IdProduto) REFERENCES Produto (IdProduto)
);

ALTER TABLE Consumidor ADD FOREIGN KEY(IdPessoa) REFERENCES Pessoa (IdPessoa);
ALTER TABLE Produto ADD FOREIGN KEY(IdMarca) REFERENCES Marca (IdMarca);
ALTER TABLE Produto ADD FOREIGN KEY(IdTipoMedida) REFERENCES Medida (IdTipoMedida);
ALTER TABLE Estabelecimento ADD FOREIGN KEY(IdEndereco) REFERENCES Endereco (IdEndereco);
