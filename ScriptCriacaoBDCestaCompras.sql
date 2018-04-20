
CREATE TABLE Estado (
IdEstado INT PRIMARY KEY,
Nome VARCHAR(100),
IdPais INTEGER
);

CREATE TABLE Cidade (
IdCidade INT PRIMARY KEY,
Nome VARCHAR(100),
IdEstado INT,
FOREIGN KEY(IdEstado) REFERENCES Estado (IdEstado)
);

CREATE TABLE Bairro (
IdBairro INT PRIMARY KEY,
Nome VARCHAR(100),
IdCidade INT,
FOREIGN KEY(IdCidade) REFERENCES Cidade (IdCidade)
);

CREATE TABLE Endereco (
IdEndereco INT PRIMARY KEY,
IdBairro INT,
Numero INT,
Logradouro VARCHAR(100),
Complemento VARCHAR(100),
Cep CHAR(8),
FOREIGN KEY(IdBairro) REFERENCES Bairro (IdBairro)
);

CREATE TABLE Estabelecimento (
IdEstabelecimento INT PRIMARY KEY,
IdEndereco INT,
Nome VARCHAR(100),
Unidade VARCHAR(100),
Logo VARCHAR(500),
FOREIGN KEY(IdEndereco) REFERENCES Endereco (IdEndereco)
);

CREATE TABLE Marca (
IdMarca INT PRIMARY KEY,
Nome VARCHAR(50)
);

CREATE TABLE Pessoa (
IdPessoa INT PRIMARY KEY,
IdEndereco INT,
Email VARCHAR(10),
DataNascimento DATE,
Nome VARCHAR(50),
Sobrenome VARCHAR(10),
FOREIGN KEY(IdEndereco) REFERENCES Endereco (IdEndereco)
);

CREATE TABLE Usuario (
IdUsuario VARCHAR(10) PRIMARY KEY,
IdPessoa INT,
Login VARCHAR(20),
Senha VARCHAR(20),
Nivel NUMERIC(10),
DataCadastro DATE,
Administrador NUMERIC(1),
FOREIGN KEY(IdPessoa) REFERENCES Pessoa (IdPessoa)
);

CREATE TABLE CompraRealizada (
IdCompraRealizada VARCHAR(10) PRIMARY KEY,
IdUsuario VARCHAR(10),
DataCompra VARCHAR(10),
ValorTotal VARCHAR(10),
FOREIGN KEY(IdUsuario) REFERENCES Usuario (IdUsuario)
);

CREATE TABLE TipoMedida (
IdTipoMedida INT PRIMARY KEY,
Nome VARCHAR(10)
);

CREATE TABLE Compra (
IdCompra VARCHAR(10),
IdCompraRealizada VARCHAR(10),
IdProduto INT,
IdEstabelecimento INT,
Quantidade NUMERIC(100),
Preco DECIMAL(15),
Valido VARCHAR(10),
PRIMARY KEY(IdCompra,IdCompraRealizada,IdProduto,IdEstabelecimento)
);

CREATE TABLE Produto (
IdProduto INT PRIMARY KEY,
IdTipoMedida INT,
IdMarca INT,
Nome VARCHAR(100),
Unidade DECIMAL(10),
Valido NUMERIC(1),
FOREIGN KEY(IdTipoMedida) REFERENCES TipoMedida (IdTipoMedida),
FOREIGN KEY(IdMarca) REFERENCES Marca (IdMarca)
);

CREATE TABLE ProdutoSupermercado (
IdProdutoSupermercado VARCHAR(10) PRIMARY KEY,
IdProduto INT,
IdEstabelecimento INT,
Preco DECIMAL(15),
FOREIGN KEY(IdProduto) REFERENCES Produto (IdProduto),
FOREIGN KEY(IdEstabelecimento) REFERENCES Estabelecimento (IdEstabelecimento)
);

CREATE TABLE ListaCompra (
IdListaCompra INT PRIMARY KEY,
IdUsuario VARCHAR(10),
Nome VARCHAR(100),
DataUltimaModificacao DATE,
FOREIGN KEY(IdUsuario) REFERENCES Usuario (IdUsuario)
);

CREATE TABLE ListaCompraProduto (
IdListaCompra INT,
IdProduto INT,
Quantidade NUMERIC(100),
FOREIGN KEY(IdListaCompra) REFERENCES ListaCompra (IdListaCompra),
FOREIGN KEY(IdProduto) REFERENCES Produto (IdProduto)
);

CREATE TABLE Pais (
IdPais INTEGER PRIMARY KEY,
Nome VARCHAR(100)
);

ALTER TABLE Estado ADD FOREIGN KEY(IdPais) REFERENCES Pais (IdPais);
