from faker import Factory
from faker import Faker
import random

fake = Faker();
fake = Factory.create('pt_BR')

schema = "'dbo'";

def main():

    print("Programa Iniciado")
    gerarArquivo()


def gerarArquivo():

    arquivoSql = open("insertCestaCompras.sql", 'wt')

    arquivoSql.write("SET schema "+schema+";")
    arquivoSql.write(getScriptMarca())
    arquivoSql.write(getScriptTipoMedida())
    arquivoSql.write(getScriptPais())
    arquivoSql.write(getScriptEstado())
    arquivoSql.write(getScriptEndereco())
    arquivoSql.write(getScriptEstabelecimento())
    arquivoSql.write(getScriptPessoa())

    arquivoSql.close()

    pass;

def getScriptMarca():
    sql = """
    \nINSERT INTO Marca (nome)
    VALUES  ('Nenhuma'),
		    ('Nestle'),
		    ('Sepé'),
		    ('Coca Cola'),
		    ('Unilever'),
		    ('Seara'),
		    ('Quero'),
		    ('PEPSI'),
		    ('SAMSUMG'),
		    ('Gillette');
		    """
    return sql;

def getScriptTipoMedida():
    sql = """
    \nINSERT INTO TipoMedida (TipoMedida)
    VALUES  ('KG'),
		('Litro'),
		('Grama'),
		('UNIDADE'),
		('PACOTE'),
		('Seara'),
		('Watts'),
		('ML'),
		('CM'),
		('Gigas');
    """
    return sql

def getScriptPais():
    sql = """  \nINSERT INTO Pais (IdPais, Nome)
            VALUES  (1,  'Brasil'        ),
        (2,  'Estados Unidos'),
        (3,  'França'        ),
        (4,  'Itália'        ),
        (5,  'Canadá'        ),
        (6,  'Chile'         ),
        (7,  'Russia'        ),
        (8,  'Alemanha'      ),
        (9,  'México'        ),
        (10, 'Egito'         ),
        (11, 'China'         );  """
    return sql

def getScriptEstado():
    sql = """ \nINSERT INTO Estado (IdPais, IdEstado, Nome)
        VALUES  (1, 1,  'Espirito Santo'    ),
        (1, 2,  'São Paulo'         ),
        (1, 3,  'Goias'             ),
        (1, 4,  'Amazonas'          ),
        (1, 5,  'Mato Grosso do Sul'),
        (1, 6,  'Rio de Janeiro'    ),
        (1, 7,  'Bahia'             ),
        (1, 8,  'Rio de Janeiro'    ),
		(2, 9,  'Texas'             ),
        (2, 10, 'Califórnia'        ),
        (2, 11, 'Flórida'           ),
        (2, 12, 'Alasca'            ); """
    return sql

def getScriptCidade(qtd = 100):
    sql = " \nINSERT INTO Cidade (IdEstado, Nome) VALUES "
    idEstado = random.randint(1,8)

    sql += " (1, 'Colina de Laranjeiras')"

    for i in range(0,qtd):
        sql+= ",({0}, '{1}')".format(idEstado, fake.city())
        idEstado = random.randint(1,8)
        sql += "\n"

    return sql;

def getScriptEndereco(qtd=1000):
    sql = " \nINSERT INTO Endereco (IdEndereco, Cep, logradouro, numero, complemento) VALUES  "
    sql += "(1,29167081,'Primeiro',371,'proximo a nada')"
    for i in range(2,qtd):
        sql+= ",({0}, '{1}','{2}','{3}','{4}')".format(i,
                                                       fake.random_number(digits=8, fix_len=8),
                                                       fake.street_name(),
                                                       fake.random_int(min=1, max=9999),
                                                       'algum complemento')
        sql += "\n"
    sql += ";"
    return sql

def getScriptEstabelecimento():
    return """\nINSERT INTO Estabelecimento(IdEstabelecimento ,IdEndereco ,Nome , Unidade ,Logo)
    VALUES  (1,  1, 'EPA PLUS',     'Serra',      NULL),
	(2,  2, 'Extrabom',   'Serra',  NULL),
	(3,  3, 'Wallmart',   'Vitória',    NULL),
	(4,  4, 'Carone',     'Serra', 	    NULL),
	(5,  5, 'Meridional', 'Aracruz',    NULL),
	(6,  6, 'Devens',     'Aracruz',    NULL),
	(7,  7, 'Carrefour',  'Serra', 	    NULL),
	(8,  8, 'Extrabom',   'Vila Velha', NULL),
	(9,  9, 'Carrefour',  'Vitória',    NULL),
	(10, 10, 'Wallmart',   'Linhares',   NULL);"""

def getScriptPessoa(qtd = 2000):
    sql = " \nINSERT INTO Pessoa(IdEndereco, Nome, sobrenome, Email, DataNascimento) VALUES   "
    sql += " (1, 'Eduardo','Couto','eduardo@email.com','1998/02/01') "

    for i in range(2, 200):
        nome = fake.first_name()
        dataNascimento = fake.date(pattern="%Y-%m-%d", end_datetime=None)
        idEndereco = random.randint(1, 100)
        sql += ",({0}, '{1}','{2}','{3}','{4}')".format(i,
                                                    nome,
                                                    fake.last_name(),
                                                    nome+"@email.com",
                                                    dataNascimento)
        sql += "\n"


    return sql


def getScriptConsumidor():
    return """   
        INSERT INTO Consumidor(IdConsumidor, IdPessoa, Login, senha, nivel, DataCadastro)
        VALUES (01, 1, 'Antonio',    'casablanca', 'Novato', '1998/02/01'),
       (02, 1, 'Guilherme',  'Gigi',       'Novato', '1991/04/07'),
       (03, 1, 'Julieta',    'Jubisk',     'Novato', '1995/07/21'),
       (04, 1, 'Bartolomeu', 'barto',      'Novato', '1992/10/11'),
       (05, 1, 'Erica',      'novinha123', 'Novato', '1991/10/01'),
       (06, 1, 'Beatriz',    'asdfg',      'Novato', '1990/09/24'),
       (07, 1, 'Milena',     'pink',       'Novato',  '1993/12/31'),
       (08, 1, 'Roberto',   'matador',    'Novato', '1994/10/10'),
       (09, 1, 'Rodrigo',    'Couto',    'Novato',  '1996/12/07'),
       (10, 1, 'Lucas',      'lulu',       'Novato',  '1999/01/30');
       """

def getScriptListaCompra():
    return """INSERT INTO ListaCompra (IdListaCompra, IdConsumidor, Nome, DataUltimaModificacao)
        VALUES (01, 1, 'churas turma',          '2017/04/01'),
       (02, 7, 'churas turma',          '2017/03/18'),
       (03, 5, 'compras casa',          '2017/02/02'),
       (04, 1, 'idiota do chefe mando', '2017/01/01'),
       (05, 4, 'encontro beneficente',  '2017/10/12'),
       (06, 1, 'frutas',                '2017/04/10'),
       (07, 5, 'pescaria',              '2017/04/12'),
       (08, 2, 'natal',                 '2017/04/01'),
       (09, 4, 'churas antonio',        '2017/05/15'),
       (10, 4, 'churas familia',        '2017/01/13');
       """

def getScriptProduto():
    return """      
INSERT INTO Produto (IdProduto, Nome, IdTipoMedida, IdMarca, unidade, valido)
VALUES  (1,  'Banana',            1,  1,   1,      0),
	(2,  'Coca Cola',             8,  4,    1,      0),
	(3,  'Coca Cola',             8,  4,	1,      0),
	(4,  'Coca Cola',             2,  4,	 1,      0),
	(5,  'Arroz',                 2,  3,	  1,      0),
	(6,  'Feijao',                2,  3, 	  1,      0),
	(7,  'Milho',  	              2,  6,      1,      0),
	(8,  'Escova de dente',       9,  5,     1,      0),
	(9,  'Copos de plastico',     8,  5,    1,      0),
	(10, 'Pendrive', 	          8,  9,     1,      0),
	(11, 'Barra de chocolate',    3,  2,    1,      0),
	(12, 'Lãmpada LED',           7,  9,      1,      0),
	(13, 'Lâmpada Incandescente', 7,  9,     1,      0),
	(14, 'Trigo',                 1,  3,      1,      0),
	(15, 'Biscoito recheado',     3,  2,    1,      0),
	(16, 'Batata chips',          3,  7,     1,      0),
	(17, 'Detergente',            8,  5,    1,      0),
	(18, 'Par de Chinelos',       4,  1,   1,      0),
	(19, 'Carne picanha',         1,  6,   1,      0),
	(20, 'Pacote de lenço',       5,  1,   1,      0	);
  """

def getScriptCompraRealizada():
    return """INSERT INTO CompraRealizada(IdCompraRealizada,IdConsumidor,DataCompra,ValorTotal)
VALUES(1,1, '2018/05/09', 100.0),
(2,1, '2018/05/05', 200.0),
(3,2, '2018/05/03', 300.0),
(4,2, '2018/05/02', 400.0),
(5,3, '2018/05/03', 500.0),
(6,3, '2018/05/07', 600.0);"""

def getScriptCompra():
    return """INSERT INTO Compra(IdCompra,IdEstabelecimento ,IdProduto,IdCompraRealizada ,valido , preco)
    VALUES  
    (1,1, 1,  1, 1,4.20 ),
	(2,1, 2,  1, 1,5.50 ),
	(3,1, 3,  1, 1,8.00 ),
	(4,1, 4,  2, 1,12.30),
	(5,1, 5,  2, 1,3.69 ),
	(6,1, 6,  3, 1,3.59 ),
	(7,1, 7,  3, 1,4.59 ),
	(8,1, 8,  3, 1,18.39),
	(9,1, 9,  4, 1,17.00),
	(10,1, 10, 4, 1,32.00);"""

def getScriptListaCompraxProduto():
    return """INSERT INTO ListaCompraxProduto (IdListaCompra, IdProduto, Quantidade)
    VALUES (01, 1, 10),
       (01, 7, 2),
       (01, 5, 1),
       (02, 1, 3),
       (02, 4, 1),
       (02, 1, 1),
       (03, 5, 1),
       (03, 2, 1),
       (04, 4, 1),
       (04, 4, 1);       
"""


if (__name__ == '__main__'):
    main()
