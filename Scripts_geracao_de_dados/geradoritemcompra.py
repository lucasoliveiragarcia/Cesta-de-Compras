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

    arquivoSql = open("geradoritemcompra.sql", 'wt')
    arquivoSql.write(getScriptItemCompra())
    arquivoSql.close()
    print("Arquivo gerado com sucesso!")
    input()
    return;
    
def getScriptItemCompra():

	sql='INSERT INTO itemcompra(idproduto,idcompra,valido,preco,iditemcompra,quantidade) VALUES \n'
	iditemcompra=1;
	cont=1
	for i in range(1,1500001):		
		idproduto=random.randint(1, 10)
		idcompra=random.randint(1, 10)
		preco=round(random.uniform(5, 100),2)
		if cont!=1500000:
			sql += "("+str(idproduto)+","+str(idcompra)+",1,"+str(preco)+","+str(iditemcompra)+",1),\n"
		else:
			sql += "("+str(idproduto)+","+str(idcompra)+",1,"+str(preco)+","+str(iditemcompra)+",1);"				
		iditemcompra+=1
		cont+=1
	
	return sql   

if (__name__ == '__main__'):
    main()
