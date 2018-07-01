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

    arquivoSql = open("geradorestabelecimento.sql", 'wt')

    arquivoSql.write(getScriptEstabelecimento())

    arquivoSql.close()

    print("Arquivo gerado com sucesso!")
    input()

    return;
    
def getScriptEstabelecimento():

	sql='INSERT INTO estabelecimento(idestabelecimento ,idendereco ,nome , unidade ,logo) values\n'
	idestabelecimento=1;
	cont=1
	for i in range(1,20001):
		nome= ['Epa Plus', 'Extrabom', 'Wallmart','Carone', 'Meridional','Devens','Carrefour', 'Ok', 'Atacadão']
		indexNomeLista = random.randint(0, len(nome)-1)           		
		idendereco=random.randint(1, 10)			
		unidade=['Serra','Vitoria','Cariacica','Guarapari','Viana','Fundão','Vila Velha']
		indexUnidade = random.randint(0, len(unidade)-1)
		if cont!=20000:
			sql += "("+str(idestabelecimento)+","+str(idendereco)+",'"+nome[indexNomeLista]+"','"+unidade[indexUnidade]+"','logo.png'),\n"
		else:
			sql += "("+str(idestabelecimento)+","+str(idendereco)+",'"+nome[indexNomeLista]+"','"+unidade[indexUnidade]+"','logo.png');"				
		idestabelecimento+=1
		cont+=1
	return sql   



if (__name__ == '__main__'):
    main()
