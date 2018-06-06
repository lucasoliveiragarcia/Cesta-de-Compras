-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.
--SET schema 'dbo';

CREATE TABLE Consumidor (
IdConsumidor serial PRIMARY KEY,
IdPessoa INTEGER,
DataCadastro timestamp,
Administrador NUMERIC(1),
Login VARCHAR(40),
Senha VARCHAR(40),
Nivel VARCHAR(40)
);

CREATE TABLE Estado (
IdEstado serial PRIMARY KEY,
IdPais INTEGER,
Nome VARCHAR(100)
);

CREATE TABLE Cidade (
IdCidade serial PRIMARY KEY,
IdEstado INTEGER,
Nome VARCHAR(100),
FOREIGN KEY(IdEstado) REFERENCES Estado (IdEstado)
);


CREATE TABLE Endereco (
IdEndereco serial PRIMARY KEY,
Cep CHAR(8),
Numero VARCHAR(20),
Complemento VARCHAR(100),
Logradouro VARCHAR(100)
);

CREATE TABLE Estabelecimento (
IdEstabelecimento serial PRIMARY KEY,
IdEndereco INTEGER,
Nome VARCHAR(100),
Unidade VARCHAR(100),
Logo INTEGER,
FOREIGN KEY(IdEndereco) REFERENCES Endereco (IdEndereco)
);

CREATE TABLE ProdutoSupermercado (
IdProdutoSupermercado serial PRIMARY KEY,
IdEstabelecimento INTEGER,
IdProduto INTEGER,
Preco decimal(7,2),
FOREIGN KEY(IdEstabelecimento) REFERENCES Estabelecimento (IdEstabelecimento)
);

CREATE TABLE Marca (
IdMarca serial PRIMARY KEY,
Nome VARCHAR(50)
);

CREATE TABLE TipoMedida (
IdTipoMedida serial PRIMARY KEY,
TipoMedida VARCHAR(20)

);

CREATE TABLE Compra (
IdCompra serial PRIMARY KEY,
IdCompraRealizada INTEGER,
IdProduto INTEGER,
IdEstabelecimento INTEGER,
Quantidade int,
Preco decimal(7,2),
Valido numeric(1,0)
);

CREATE TABLE Pessoa (
IdPessoa serial PRIMARY KEY,
IdEndereco INTEGER,
Email VARCHAR(100),
DataNascimento timestamp,
Nome VARCHAR(100),
Sobrenome VARCHAR(100),
FOREIGN KEY(IdEndereco) REFERENCES Endereco (IdEndereco)
);

CREATE TABLE Pais (
IdPais serial PRIMARY KEY,
Nome VARCHAR(100)
);

CREATE TABLE CompraRealizada (
IdCompraRealizada serial PRIMARY KEY,
IdConsumidor INTEGER,
DataCompra timestamp,
ValorTotal decimal(7,2),
FOREIGN KEY(IdConsumidor) REFERENCES Consumidor (IdConsumidor)
);

CREATE TABLE ListaCompra (
IdListaCompra serial PRIMARY KEY,
IdConsumidor integer,
Nome VARCHAR(100),
DataUltimaModificacao timestamp,
FOREIGN KEY(IdConsumidor) REFERENCES Consumidor (IdConsumidor)
);

CREATE TABLE ListaCompraxProduto (
IdListaCompraxProduto serial PRIMARY KEY,
IdProduto INTEGER,
IdListaCompra INTEGER,
Quantidade INT,
FOREIGN KEY(IdListaCompra) REFERENCES ListaCompra (IdListaCompra)
);

CREATE TABLE Produto (
IdProduto serial PRIMARY KEY,
IdMarca INTEGER,
IdTipoMedida INTEGER,
Unidade INTEGER,
Nome VARCHAR(100),
Valido numeric(1,0),
FOREIGN KEY(IdMarca) REFERENCES Marca (IdMarca),
FOREIGN KEY(IdTipoMedida) REFERENCES TipoMedida (IdTipoMedida)
);

ALTER TABLE Consumidor ADD FOREIGN KEY(IdPessoa) REFERENCES Pessoa (IdPessoa);
ALTER TABLE Estado ADD FOREIGN KEY(IdPais) REFERENCES Pais (IdPais);
ALTER TABLE ProdutoSupermercado ADD FOREIGN KEY(IdProduto) REFERENCES Produto (IdProduto);
ALTER TABLE Compra ADD FOREIGN KEY(IdProduto) 		   REFERENCES Produto         (IdProduto);
ALTER TABLE Compra ADD FOREIGN KEY(IdEstabelecimento) REFERENCES Estabelecimento (IdEstabelecimento);
ALTER TABLE Compra ADD FOREIGN KEY(IdCompraRealizada) REFERENCES CompraRealizada (IdCompraRealizada);
ALTER TABLE ListaCompraxProduto ADD FOREIGN KEY(IdProduto) REFERENCES Produto (IdProduto);
