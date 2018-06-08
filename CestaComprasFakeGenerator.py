from faker import Factory
from faker import Faker
import sys
import os
import random

fake = Faker()
fake = Factory.create('pt_BR')

schema = "'public'"; #para o projeto usando entity framework utilize => dbo

QTD_MARCA = 10;
QTD_TIPO_MEDIDA = 10;
QTD_PAIS = 11;
QTD_ESTADO = 12;
QTD_CIDADE = 100;
QTD_ENDERECO = 1000;
QTD_ESTABLECIMENTO = 10;
QTD_PESSOA = 5000;
#QTD_CONSUMIDOR = 2000; #QUANTIDADE DE PESSOA E CONSUMIDOR DEVEM SER A MESMA
QTD_LISTA_COMPRA = 100;
QTD_PRODUTO = 18;
QTD_COMPRA = 30; #Valor maximo aleatorio por Pessoa
QTD_LISTA_COMPRA_PRODUTO = 0;

def main():

    print("Programa Iniciado")
    gerarArquivo()

def gerarArquivo():

    arquivoSql = open("insertCestaCompras.sql", 'wt')

    arquivoSql.write("SET schema "+schema+";") #Schema padrão do postgres é Public
    arquivoSql.write(getScriptMarca())
    arquivoSql.write(getScriptMedida())
    arquivoSql.write(getScriptPais())
    arquivoSql.write(getScriptEstado())
    arquivoSql.write(getScriptCidade())
    arquivoSql.write(getScriptEndereco())
    arquivoSql.write(getScriptEstabelecimento())
    arquivoSql.write(getScriptPessoa())
    arquivoSql.write(getScriptConsumidor())
    arquivoSql.write(getScriptListaCompra())
    arquivoSql.write(getScriptProduto())
    arquivoSql.write(getScriptCompra())

    arquivoSql.close()

    print("Arquivo gerado com sucesso!")
    input()

    return;


def porcentagem(atual, total):
    porce = 100 * atual / (total)

    return str(int(porce)) + ' %'

def getScriptMarca():
    sql = """
    \nINSERT INTO Marca (IdMarca, nome)
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
		    """
    return sql;

def getScriptMedida():
    sql = """
    \nINSERT INTO Medida (IdMedida,Descricao,TipoMedida)
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

def getScriptCidade(qtd = QTD_CIDADE):
    sql = " \nINSERT INTO Cidade (IdCidade,IdEstado, Nome) VALUES "
    idEstado = random.randint(1,8)

    sql += " (1,1, 'Colina de Laranjeiras')"

    for i in range(2,qtd):
        sql+= ",({2},{0}, '{1}')".format(idEstado, fake.city(),i)
        idEstado = random.randint(1,8)
        sql += "\n"
    sql +=";"
    return sql;

def getScriptEndereco(qtd = QTD_ENDERECO):
    sql = " \nINSERT INTO Endereco (IdEndereco, IdCidade, Cep, logradouro, numero, complemento) VALUES  "
    sql += "(1, 1,'29167081','Primeiro','371','proximo a nada')"

    for i in range(2,qtd):
        idEstado = random.randint(1,QTD_CIDADE-1)

        sql+= ",({0}, {5}, '{1}','{2}','{3}','{4}')".format(i,
                                                       fake.random_number(digits=8, fix_len=8),
                                                       fake.street_name(),
                                                       fake.random_int(min=1, max=9999),
                                                       'algum complemento',idEstado)
        sql += "\n"
    sql += ";"
    return sql

def getScriptEstabelecimento(QTD =  QTD_ESTABLECIMENTO):
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

def getScriptPessoa(QTD = QTD_PESSOA):
    registros = 0
    sql = " \nINSERT INTO Pessoa(IdPessoa, IdEndereco, Nome, sobrenome, Email, DataNascimento) VALUES   "
    sql += " (1,1, 'Eduardo','Couto','eduardo@email.com','1998/02/01') "

    for i in range(2, QTD):
        nome = fake.first_name()
        dataNascimento = fake.date(pattern="%Y-%m-%d", end_datetime=None)
        idEndereco = random.randint(1, 100)
        sql += ",({5},{0}, '{1}','{2}','{3}','{4}')".format(random.randint(1,QTD_ENDERECO-5),
                                                    nome,
                                                    fake.last_name(),
                                                    nome+"@email.com",
                                                    dataNascimento
                                                            ,i)
        registros += 1
        sql += "\n"

        if registros > 500:
            limpaTela()
            print('Quantidade de Pessoas: ', i)
            print("Criando Pessoas...", porcentagem(i, QTD))
            registros = 0

    sql += ";"
    return sql

def getScriptConsumidor(QTD = QTD_PESSOA):
    sql = " \nINSERT INTO Consumidor(IdConsumidor, IdPessoa, Login, senha, nivel, DataCadastro) VALUES   "
    sql += " (1, 1, 'educouto', '123',1, '2018/02/01') "

    for i in range(2, QTD):
        nome = fake.first_name()
        dataCadastro = fake.date(pattern="%Y-%m-%d", end_datetime=None)
        idEndereco = random.randint(1, 100)
        sql += ",({0},{1}, '{2}','{3}',{4},'{5}')".format(i,i,
                                                    nome,
                                                    123,
                                                    1,
                                                    dataCadastro)
        sql += "\n"
    sql += ";"
    return sql

def getScriptListaCompra(QTD = QTD_LISTA_COMPRA):
    nomesListas = ['Churas da turma', 'Compra de 30 dias', 'Compra de 15 dias','Compras da feira']

    sql = " \nINSERT INTO ListaCompra (IdListaCompra, IdConsumidor, Nome, DataUltimaModificacao) VALUES   "
    sql += " (1, 1, 'Primeira Lista', '2018/06/03') "

    for i in range(2, QTD):
        dataModificacao = fake.date(pattern="%Y-%m-%d", end_datetime=None)
        indexNomeLista = random.randint(0, len(nomesListas)-1)
        sql += ",({0}, {1},'{2}','{3}')".format(i,i, nomesListas[indexNomeLista], dataModificacao)
        sql += "\n"
    sql += ";"
    return sql

def getScriptProduto(QTD = QTD_PRODUTO):
    nomeProdutos = ['Banana', 'Maça', 'Peira','Arroz', 'Feijão','Suco de Caju', 'Coca-Cola','Milho', 'Miojo', 'Queijo',
                   'Requijão', 'Vinagre', 'Sal Grosso', 'Pão Fracês', 'Suco de Macarujá','Jiló', 'Fanta Uva']

    sql = " \nINSERT INTO Produto (IdProduto, Nome, IdMedida, IdMarca, unidade, valido) VALUES   "
    sql += " (1, 'Biscoito Mabel', 1, 1,280,1) "

    for i in range(2, len(nomeProdutos)+2):
        nome = fake.first_name()
        dataModificacao = fake.date(pattern="%Y-%m-%d", end_datetime=None)
        indexNomeLista = random.randint(0, len(nomeProdutos)-1)
        sql += ",({0}, '{1}',{2},{3},{4},{5})".format(i, nomeProdutos[i-2], 1, 1, 1, 1)
        sql += "\n"
    sql += ';'
    QTD_PRODUTO = len(nomeProdutos);

    return sql

def getScriptListaCompraxProduto(QTD = QTD_LISTA_COMPRA_PRODUTO):
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

def getIdProdutosAleatorio():
    lstIdProdutos = []
    qtdProduto = random.randint(2,7)

    for i in range(0,qtdProduto):
        idProduto = random.randint(1,QTD_PRODUTO);
        while idProduto in lstIdProdutos:
            idProduto = random.randint(1,QTD_PRODUTO);
        lstIdProdutos.append(idProduto)

    return lstIdProdutos

def getValorProdutos(lstIdsProdutos):
    lstValorProdutos = []

    for i in range(0, len(lstIdsProdutos)):
        lstValorProdutos.append(random.randint(1,50));

    return lstValorProdutos

def getScriptCompra(QTD = QTD_COMPRA):
    sqlretorno = "\n"
    registros = 0
    idCompra = 1;
    idItemCompra = 1;
    countItemCompra = 0;

    for IdConsumidor in range(1,QTD_PESSOA):
        #compraConsumidor = random.randint(1,QTD)
        compraConsumidor = (QTD)
        sqlCompraRealizada = ""
        sqlCompra = ""

        for compraCliente in range(1,compraConsumidor+1):
            idEstabelecimento = random.randint(1,QTD_ESTABLECIMENTO);
            lstIdProdutos = getIdProdutosAleatorio()
            lstValorProdutos = getValorProdutos(lstIdProdutos)
            dataCompra = getDataAleatoria()

            valorCompra = 0

            sqlCompra = "INSERT INTO ItemCompra(IdProduto,IdCompra ,valido , preco) VALUES "
            sqlValuesCompra = ""

            for i in range(0,len(lstIdProdutos)):
                if(len(sqlValuesCompra) > 0):
                    sqlValuesCompra += ",\n"
                sqlValuesCompra += "({0},{1},1,{2})".format(lstIdProdutos[i],idCompra,lstValorProdutos[i]);
                valorCompra += lstValorProdutos[i];
                countItemCompra += 1
                idItemCompra+=1
                registros+=1

            sqlCompra += sqlValuesCompra;

            sqlCompraRealizada = " INSERT INTO Compra(IdCompra,IdConsumidor,DataCompra,ValorTotal) VALUES({0},{1},'{2}',{3}) ".\
                format(idCompra,IdConsumidor,dataCompra,valorCompra)

            sqlretorno += sqlCompraRealizada +";\n"+sqlCompra+";\n"
            idCompra +=1

        if registros > 10000:
            limpaTela()
            print('Quantidade de Compras: ', idCompra)
            print('Quantidade de Itens: ', countItemCompra)
            print("Criando Compras...", porcentagem(IdConsumidor, QTD_PESSOA))
            registros = 0

    return sqlretorno

def getDataAleatoria():
    return fake.date(pattern="%Y-%m-%d %H:%M:%S", end_datetime=None)

def limpaTela():
    os.system('cls' if os.name == 'nt' else 'clear')

if (__name__ == '__main__'):
    main()