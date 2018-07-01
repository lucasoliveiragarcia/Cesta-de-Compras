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

    arquivoSql = open("geradorCompra.sql", 'wt')
    arquivoSql.write(getScriptCompra())
    arquivoSql.close()
    print("Arquivo gerado com sucesso!")
    input()

    return;
    
def getScriptCompra():
	sql='INSERT INTO Compra(IdEstabelecimento, valortotal,IdCompra,idconsumidor,datacompra) VALUES\n'
	iditemcompra=1;
	cont=1
	idcompra=1	
	for i in range(1,20001):		
		idestabelecimento=random.randint(1,10)		
		valortotal=round(random.uniform(50,100),2)
		
		idconsumidor=random.randint(1,10)
		datacompra=fake.date(pattern="%Y-%m-%d %H:%M:%S", end_datetime=None)	
		if cont!=20000:
			sql += "("+str(idestabelecimento)+","+str(valortotal)+","+str(idcompra)+","+str(idconsumidor)+",'"+str(datacompra)+"'),\n"
		else:
			sql += "("+str(idestabelecimento)+","+str(valortotal)+","+str(idcompra)+","+str(idconsumidor)+",'"+str(datacompra)+"');"
		cont+=1
		idcompra+=1						
	return sql   

if (__name__ == '__main__'):
    main()
