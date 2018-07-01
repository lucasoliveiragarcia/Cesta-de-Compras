from faker import Factory
from faker import Faker
import sys
import os
import random
import time

fake = Faker()
fake = Factory.create('pt_BR')

def main():

    print("Programa Iniciado")
    time.sleep(2)
    gerarArquivo()

def gerarArquivo():

    arquivoSql = open("geradorproduto.sql", 'wt')
    arquivoSql.write(getScriptProduto())

    arquivoSql.close()

    print("Arquivo gerado com sucesso!")
    input()

    return;
    
def getScriptProduto():

	sql='INSERT INTO produto (idproduto, nome, idmedida, idmarca, unidade, valido) VALUES\n'
	idproduto=1;
	cont=1
	for i in range(1,16701):
		nome= ['Banana', 'Maçã', 'Pera','Arroz', 'Feijão','Suco de Caju','Milho', 'Miojo', 'Queijo',
                   'Requijão', 'Vinagre', 'Sal Grosso', 'Pão Fracês', 'Suco de Macarujá','Jiló', 'Refrigerante']
		indexNomeLista = random.randint(0, len(nome)-1)           		
		idcompra=random.randint(1, 10)
		preco=round(random.uniform(5, 100),2)
		idmedida=random.randint(1, 10)
		idmarca=random.randint(1, 10)
		if cont!=16700:
			sql += "("+str(idproduto)+",'"+nome[indexNomeLista]+"',"+str(idmedida)+","+str(idmarca)+",1,1),\n"
		else:
			sql += "("+str(idproduto)+",'"+nome[indexNomeLista]+"',"+str(idmedida)+","+str(idmarca)+",1,1);"				
		idproduto+=1
		cont+=1
	
	return sql   


if (__name__ == '__main__'):
    main()
