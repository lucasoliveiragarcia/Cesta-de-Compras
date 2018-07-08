# TRABALHO 01 : Cesta de Compras [![Build status](https://ci.appveyor.com/api/projects/status/iao8pt0jse80i4ps?svg=true)](https://ci.appveyor.com/project/lucasoliveiragarcia/cesta-de-compras)

Trabalho desenvolvido durante a disciplina de BD

    
# Sumário

### 1	COMPONENTES<br>
Integrantes do grupo<br>
Eduardo Couto eduardocoouto@gmail.com<br>
Olavo Curatola olavo.curatola@gmail.com<br>
Lucas Garcia lucasoliveiragarcia@live.com<br>

### 2	INTRODUÇÃO E MOTIVAÇAO<br>
Este documento contém a especificação do projeto do banco de dados do Cesta de Compras e motivação da escolha realizada. <br>
      
### 3	MINI-MUNDO<br>
O grupo deseja criar um sistema de informação para ajudar as pessoas a planejar suas compras com mais facilidade e a economizar dinheiro. Trata-se de um sistema de banco de dados cujo principal serviço é selecionar o supermercado que proporcione o melhor preço para listas de compras completas, com base na identificação correta dos produtos da lista dentro da área de interesse da pessoa, ou seja a cidade em que reside como padrão, ou na cidade selecionada pela pessoa. Num primeiro momento consideramos o município da Serra, podendo estender para os demais municípios da Grande Vitória, e para outros municípios e estados. 

O cliente deverá fazer um cadastro para definir seu login e senha e preencher seus dados de endereço definindo o município em que reside. O cliente ao acessar o aplicativo poderá criar lista de compras, definindo um nome para sua lista. O cliente poderá então adicionar produtos nas suas listas de compras, definindo a quantidade. Uma lista é composta de produtos com quantidade definida. Uma lista de compras padrão poderá ser selecionada por cidade e supermercado, e consultada para visualizar o preço dos produtos e o valor total da lista.  
O cliente utilizará sua lista para pesquisar o supermercado com o menor preço para compra de sua lista completa. O sistema mostrará os preços dos produtos da lista e o valor total da compra em tempo real, com base nas informações do banco de dados. O usuário ao realizar uma compra poderá alterar os produtos, as quantidades e os preços de sua lista em execução.
O diferencial do aplicativo Cesta de Compras será  obtido com o cliente atualizando os preços no momento da compra no supermercado específico em que se encontra, aquele no qual está comprando. Os novos preços inseridos no momento da compra serão tratados pelo sistema para atualizar o menor preço no banco de dados do sistema.  As tarefas de descrição de produtos e atualização rápida e autêntica de preços são consideradas críticas e de alto impacto no negócio.
 
O sistema deverá utilizar como referência inicial  as informações levantadas nos supermercados da grande Vitória e paulatinamente realizar a atualização de preços pela ação de clientes no momento da compra.




### 4	RASCUNHOS BÁSICOS DA INTERFACE (MOCKUPS)<br>


Link das telas: https://drive.google.com/open?id=1K8Ts6pe0Mk1Y0ndTrIaQ15VjF4IpZkz2BXhXJGndPKA


### 5	MODELO CONCEITUAL<br>
#### 5.1 NOTACAO ENTIDADE RELACIONAMENTO
![Alt text](https://github.com/lucasoliveiragarcia/Cesta-de-Compras/blob/master/ModelagemBanco/modeloconceitual.jpg?raw=true "Modelo Conceitual")
    
     5.2 NOTACAO UML (Caso esteja fazendo a disciplina de Projeto)

#### 5.3 DECISÕES DE PROJETO
	Cidade x Estado: Estado possui de 1 até N Cidades. Cidade está relacionado a 1 estado.
	Cidade x Endereço: Cidade pode estar relacionado de 0 até N endereços. Endereco está relacionado a somente uma Cidade.
	Endereco x Pessoa: Endereço pode ou não estar relacionado a uma pessoa. Pessoa deve estar relacionado a somente um endereço.
	Endereco x Estabelecimento: Endereço pode ou não estar relacionado a um estabelecimento. Estabelecimento possui somente 1 		endereço.
	Pessoa x Consumidor: Pessoa pode ser ou não um consumidor, poderia ser um administrador por exemplo. Consumidor é uma pessoa.
	Consumidor x Compra: Consumidor pode ter ou não uma compra. Uma compra está relacionada a somente um consumidor.
	Consumidor x ListaCompra: Consumidor pode ter de zero a N listas de compras. Lista de compra está relacionado a somente um 		consumidor.
	ListaCompra x ItemListaCompra: Lista de compra pode ou não ter itens. Um item de lista está relacionado a somente uma lista.
	ItemListaCompra x Produto: O item de uma lista de compra está relacionado a somente um produto. Produto pode ou não estar 		relacionado a um item de uma lista de compra.
	Produto x Marca: Produto pode ter ou não uma marca (frutas não tem marca por exemplo). Marca pode ou não estar relacionado a um 	produto.
	Produto x Medida: Produto esta relacionado a somente uma medida. Medida pode ou não estar relacionado a um produto.
	Produto x EstabelecimentoProduto: Produto pode estar relacionado de zero a N estabelecimentos. Estabelecimento só pode conter 		um preço daquele produto, por isso é 1,1.
	Produto x ItemCompra: Produto pode estar relacionado de zero a N itens de uma compra. ItemCompra esta relacionado a somente um 		produto.
	EstabelecimentoProduto x Estabelecimento: EstabelecimentoProduto está relacionado a somente um estabelecimento. Estabelecimento 	pode ter de zero a N produtos.
	Estabelecimento x ItemCompa: Estabelecimento pode ter de zero a N itens de uma compra. Item de uma compra esta relacionado a 		somente um estabelecimento.
	Compra x ItemCompra: Compra pode ter de um a N itens de compra. ItemCompra está relacionado a somente uma Compra. 
	

#### 5.4 DESCRIÇÃO DOS DADOS 
    Tabela ESTADO: Tabela que armazena as informações relativas ao estado.
    idestado: campo que armazena um número de identificação do estado (chave primária).
    nome: campo que armazena o nome do estado.
    idpais: campo que faz referência a um registro da tabela PAIS (chave estrangeira).

    Tabela MARCA: Tabela que armazena as informações relativas a marca do produto.
    idmarca: campo que armazena um número de identificação da marca (chave primária).
    nome: campo que armazena o nome da marca.

    Tabela ENDERECO: Tabela que armazena as informações relativas ao endereço.
    idendereco: campo que armazena um número de identificação do endereco (chave primária).
    logradouro: campo que armazena o tipo de logradouro do endereço(Rua,Avenida,Vila).
    complemento: campo que armazena o complemento do endereço.
    numero: campo que armazena o número do endereço.
    cep: campo que armazena o Código de endereço postal do endereço.
    idcidade: campo que faz referência a um registro da tabela CIDADE (chave estrangeira).

    Tabela ESTABELECIMENTOPRODUTO: Tabela que armazena as informações relativas aos produtos de cada supermercado
    idestabelecimentoproduto: campo que armazena um número de identificação da relação entre os produtos de cada supermercado (chave primária).
    preco: campo que armazena preço do produto no supermercado.
    idproduto:campo que faz referência a um registro da tabela PRODUTO (chave estrangeira).
    idestabelecimento: campo que faz referência a um registro da tabela ESTABELECIMENTO (chave estrangeira).

    Tabela PESSOA: Tabela que armazena as informações relativas à pessoa.
    idpessoa: campo que armazena um número de identificação da pessoa(chave primária).
    nome: campo que armazena o nome da pessoa.
    sobrenome: campo que armazena o sobrenome da pessoa.
    datanascimento: campo que armazena a data de nascimento da pessoa.
    email: campo que armazena o email da pessoa.
    idendereco: campo que faz referência a um registro da tabela ENDERECO (chave estrangeira).


    Tabela COMPRA: Tabela que armazena as informações relativas a compra realizada.
    idcompra: campo que armazena um número de identificação da compra(chave primária).
    valortotal: campo que armazena o valor total da compra.
    datacompra: campo que armazena a data da compra.
    idconsumidor: campo que faz referência a um registro da tabela CONSUMIDOR(chave estrangeira).
    idestabelecimento: campo que faz referência a um registro da tabela ESTABELECIMENTO(chave estrangeira).

    Tabela CIDADE: Tabela que armazena as informações relativas à cidade.
    idcidade: campo que armazena um número de identificação da cidade(chave primária).
    nome: campo que armazena o nome da cidade.
    idestado: campo que faz referência a um registro da tabela ESTADO(chave estrangeira).

    Tabela CONSUMIDOR: Tabela que armazena informações relativas ao consumidor.
    idconsumidor: campo que armazena um número de identificação do consumidor(chave primária).
    login: campo que armazena o login do consumidor.
    senha: campo que armazena a senha do consumidor.
    nivel: campo que armazena o nivel do consumidor.
    datacadastro: campo que armazena a data de cadastro do consumidor.
    administrador: campo que armazena a informação se o consumidor é administrador ou não.
    idpessoa: campo que faz referência a um registro da tabela PESSOA(chave estrangeira).

    Tabela LISTACOMPRA: Tabela que armazena informações relativas a lista de compra do consumidor.
    idlistacompra: campo que armazena um número de identificação da lista de compra(chave primária).
    nome: campo que armazena o nome da lista.
    dataultimamodificacao: campo que armazena a data da última modificação que ocorreu na lista.
    idconsumidor: campo que faz referência a um registro da tabela CONSUMIDOR(chave estrangeira).
    
    Tabela MEDIDA: Tabela que armazena informações relativas a medida do produto.
    idmedida: campo que armazena um número de identificação da medida (chave primária).
    descricao: campo que armazena a descrição da medida.
    tipomedida: campo que armazena o tipo de medida do produto(Litro/Grama/Unidade).

    Tabela PRODUTO: Tabela que armazena informações relativas ao produto.
    idproduto: campo que armazena um número de identificação do produto (chave primária).
    nome: campo que armazena o nome do produto.
    unidade: campo que armazena o valor da unidade do produto.
    valido: campo que armazena a informação se o produto é válido.
    idmarca: campo que faz referência a um registro da tabela MARCA(chave estrangeira).
    idmedida: campo que faz referência a um registro da tabela MEDIDA(chave estrangeira).

    Tabela ITEMCOMPRA: Tabela que armazena informações relativas ao item da lista de uma compra realizada.
    iditemcompra: campo que armazena um número de identificação do item da lista da compra realizada(chave primária).
    valido: campo que armazena a informação se o item da compra é válido.
    preco: campo que armazena o preço do item da lista da compra realizada.
    quantidade: campo que armazena a quantidade do item da lista da compra realizada.
    idproduto: campo que faz referência a um registro da tabela PRODUTO(chave estrangeira).
    idcompra: campo que faz referência a um registro da tabela COMPRA(chave estrangeira).

    Tabela ITEMLISTACOMPRA: Tabela que armazena informações relativas ao item da lista de compra.
    iditemlistacompra: campo que armazena um número de identificação do item na lista de compra (chave primária).
    quantidade: campo que armazena a quantidade do item na lista de compra.
    idlistacompra: campo que faz referência a um registro da tabela LISTACOMPRA(chave estrangeira).
    idproduto: campo que faz referência a um registro da tabela PRODUTO(chave estrangeira).

    Tabela ESTABELECIMENTO: Tabela que armazena informações relativas ao estabelecimento.
    idestabelecimento: campo que armazena um número de identificação do estabelecimento(chave primária).
    nome: campo que armazena o nome do estabelecimento.
    unidade: campo que armazena a unidade que se encontra o estabelecimento.
    logo: campo que armazena o logo do estabelecimento.
    idendereco: campo que faz referência a um registro da tabela ENDERECO(chave estrangeira).

### 6	MODELO LÓGICO<br>
![Alt text](https://github.com/lucasoliveiragarcia/Cesta-de-Compras/blob/master/ModeloLogico.jpg?raw=true "Modelo Lógico")
### 7	MODELO FÍSICO<br>
<a href="https://github.com/lucasoliveiragarcia/Cesta-de-Compras/blob/master/modelofisico.sql">Modelo Físico</a>
### 8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>
#### 8.1 DETALHAMENTO DAS INFORMAÇÕES
	Não utilizamos códigos previamente pronto. Desenvolvemos projeto a partir de situações cotidianas.
#### 8.2 INCLUSÃO DO SCRIPT PARA CRIAÇÃO DE TABELAS E INSERÇÃO DOS DADOS (ARQUIVO ÚNICO COM):
   <a href="https://github.com/lucasoliveiragarcia/Cesta-de-Compras/blob/master/Script_Criacao_das_tabelas_e_1.5M_de_registros">Criação das tabelas e inserção dos dados</a>

### 9	TABELAS E PRINCIPAIS CONSULTAS<br>
#### 9.1	GERACAO DE DADOS (MÍNIMO DE 10 REGISTROS PARA CADA TABELA NO BANCO DE DADOS)<br>

## Data de Entrega: (18/09/2017)

<br>
OBS: Incluir para os tópicos 9.2 e 9.3 as instruções SQL + imagens (print da tela) mostrando os resultados.<br>

#### 9.2	SELECT DAS TABELAS COM PRIMEIROS 10 REGISTROS INSERIDOS <br> 
    select * from cidade
  ![Alt text](https://github.com/lucasoliveiragarcia/Cesta-de-Compras/blob/master/Consultas_SQL_e_Prints/cidade.PNG)
    
    select * from compra limit 10;
  ![Alt text](https://github.com/lucasoliveiragarcia/Cesta-de-Compras/blob/master/Consultas_SQL_e_Prints/compra.PNG)
    
    select * from consumidor
 ![Alt text](https://github.com/lucasoliveiragarcia/Cesta-de-Compras/blob/master/Consultas_SQL_e_Prints/consumidor.PNG)
    
    select * from endereco
 ![Alt text](https://github.com/lucasoliveiragarcia/Cesta-de-Compras/blob/master/Consultas_SQL_e_Prints/endereco.PNG)
    
    select * from estabalecimento limit 10;
![Alt text](https://github.com/lucasoliveiragarcia/Cesta-de-Compras/blob/master/Consultas_SQL_e_Prints/estabelecimento.PNG)
    
    select * from estabelecimentoproduto
 ![Alt text](https://github.com/lucasoliveiragarcia/Cesta-de-Compras/blob/master/Consultas_SQL_e_Prints/estabelecimentoproduto.PNG)
    
    select * from estado
   ![Alt text](https://github.com/lucasoliveiragarcia/Cesta-de-Compras/blob/master/Consultas_SQL_e_Prints/estado.PNG)
    
    select * from itemcompra limit 10;
   ![Alt text](https://github.com/lucasoliveiragarcia/Cesta-de-Compras/blob/master/Consultas_SQL_e_Prints/itemcompra.PNG)
    
    select * from itemlistacompra
 ![Alt text](https://github.com/lucasoliveiragarcia/Cesta-de-Compras/blob/master/Consultas_SQL_e_Prints/itemlistacompra.PNG)
    
    select * from listacompra
  ![Alt text](https://github.com/lucasoliveiragarcia/Cesta-de-Compras/blob/master/Consultas_SQL_e_Prints/listacompra.PNG)
    
    select * from marca
 ![Alt text](https://github.com/lucasoliveiragarcia/Cesta-de-Compras/blob/master/Consultas_SQL_e_Prints/marca.PNG)
    
    select * from medida
![Alt text](https://github.com/lucasoliveiragarcia/Cesta-de-Compras/blob/master/Consultas_SQL_e_Prints/medida.PNG)   
    
    select * from pessoa
  ![Alt text](https://github.com/lucasoliveiragarcia/Cesta-de-Compras/blob/master/Consultas_SQL_e_Prints/pessoa.PNG)
    
    select * from produto limit 10;
  ![Alt text](https://github.com/lucasoliveiragarcia/Cesta-de-Compras/blob/master/Consultas_SQL_e_Prints/produto.PNG)
<br>

#### 9.3	SELECT DAS VISÕES COM PRIMEIROS 10 REGISTROS DA VIEW <br>
        Join entre 3 tabelas para verificar as datas de compra de cada consumidor
	
        select nome,sobrenome,email,datacompra from consumidor 
        join compra on(consumidor.idconsumidor=compra.idconsumidor)
        join pessoa on(consumidor.idpessoa=pessoa.idpessoa) limit 10;
   ![Alt text](https://github.com/lucasoliveiragarcia/Cesta-de-Compras/blob/master/Consultas_SQL_e_Prints/join.PNG)
        
        create or replace view nome_sobrenome_email_pessoa as
        select nome,sobrenome,email from pessoa;

        select * from nome_sobrenome_email_pessoa limit 10;
  ![Alt text](https://github.com/lucasoliveiragarcia/Cesta-de-Compras/blob/master/Consultas_SQL_e_Prints/view1.PNG)
        
        create or replace view produtos as 
        select produto.nome as produto,marca.nome as marca from produto join marca on (produto.idmarca=marca.idmarca);

        select * from produtos limit 10;
   ![Alt text](https://github.com/lucasoliveiragarcia/Cesta-de-Compras/blob/master/Consultas_SQL_e_Prints/view2.PNG)
        
        select exists(select * from compra where valortotal>150.0 and valortotal<200.0)
   ![Alt text](https://github.com/lucasoliveiragarcia/Cesta-de-Compras/blob/master/Consultas_SQL_e_Prints/exists1.PNG)
        
        select not exists (select * from itemcompra where preco < 100) 
   ![Alt text](https://github.com/lucasoliveiragarcia/Cesta-de-Compras/blob/master/Consultas_SQL_e_Prints/exists3.PNG)
        
        alter table itemlistacompra add check (quantidade>0)

        INSERT INTO itemlistacompra (iditemlistacompra,idlistacompra,idproduto,quantidade) VALUES (1,1,1,0)
   ![Alt text](https://github.com/lucasoliveiragarcia/Cesta-de-Compras/blob/master/Consultas_SQL_e_Prints/check1.PNG)
        
        alter table compra add check (valortotal>0)

        INSERT INTO compra (idcompra,idconsumidor,idestabelecimento,valortotal,datacompra) 
        VALUES (1,1,1,0,'2008-07-02')
 ![Alt text](https://github.com/lucasoliveiragarcia/Cesta-de-Compras/blob/master/Consultas_SQL_e_Prints/check2.PNG)
        
        

<br>

#### 9.4	LISTA DE CODIGOS DAS FUNÇÕES, ASSERÇOES E TRIGGERS<br>     
	Objetivo: Impedir que o preço do item da compra seja maior que o valor total da compra
        CREATE OR REPLACE FUNCTION checkPrecoItemCompra() RETURNS TRIGGER AS ' BEGIN
        IF EXISTS ( select valortotal as valor_da_compra,preco as valor_do_item from itemcompra
			join compra on(itemcompra.idcompra=compra.idcompra) where preco>valortotal) THEN
        RAISE EXCEPTION ''Erro: Preço do item da compra maior que o valor total da compra!''; END IF; RETURN NULL; END
        '
        LANGUAGE plpgsql;
        CREATE TRIGGER checkPrecoItemCompraTrigger AFTER INSERT OR UPDATE OF preco ON itemcompra
        FOR EACH ROW
        EXECUTE PROCEDURE checkPrecoItemCompra();

        Insert into ItemCompra (idproduto,idcompra ,valido , preco,iditemcompra,quantidade) VALUES (1,1,1,5.00,11,1);
   ![Alt text](https://github.com/lucasoliveiragarcia/Cesta-de-Compras/blob/master/Consultas_SQL_e_Prints/assercao-trigger-funcao-1.PNG)

<br>

	Objetivo: Alterar o preço de um produto de um determinado supermercado
	CREATE OR REPLACE FUNCTION DefinePrecoProduto(idestabprod integer,novo_preco numeric,idprod int,idestab int) 
	Returns void AS ' update estabelecimentoproduto set preco=novo_preco where idestabelecimentoproduto=idestabprod 
	and idproduto=idprod and idestab=idestabelecimento ' LANGUAGE SQL;
	
	Preço antigo
   ![Alt text](https://github.com/lucasoliveiragarcia/Cesta-de-Compras/blob/master/Consultas_SQL_e_Prints/funcao_preco_antigo.PNG)	
	
	select DefinePrecoProduto(1,20.00,1,1);
	
	Preço novo
   ![Alt text](https://github.com/lucasoliveiragarcia/Cesta-de-Compras/blob/master/Consultas_SQL_e_Prints/funcao_preco_novo.PNG)	
	

#### 9.5	Administração do banco de dados<br>
        Descrição detalhada sobre como serão executadas no banco de dados as <br>
        seguintes atividades.
        a) Segurança e autorização de acesso:
        b) Estimativas de aquisição de recursos para armazenamento e processamento da informação
        c) Planejamento de rotinas de manutenção e monitoramento do banco
        d) Plano com frequencia de análises visando otimização de performance
<br>

#### 9.6	GERACAO DE DADOS (MÍNIMO DE 1,5 MILHÃO DE REGISTROS PARA PRINCIPAL RELAÇAO)<br>
	Desenvolvemos alguns scripts na linguagem python para gerar milhares de dados. 
<a href="https://github.com/lucasoliveiragarcia/Cesta-de-Compras/tree/master/Scripts_geracao_de_dados">Scripts de geração de dados para o banco.</a> 

	 Base de dados com 1,5 Milhão de Registros Relacionados
   	a) tabela cidade: 10 registros
   	b) tabela compra: 100000 registros
   	c) tabela consumidor: 10 registros
   	d) tabela endereco: 10 registros
   	e) tabela estabelecimento: 100000 registros
   	g) tabela estabelecimentoproduto: 11 registros
   	h) tabela estado: 10 registros
   	i)tabela itemcompra: 1500000 registros
   	j)  tabela itemlistacompra: 10 registros
   	k)  tabela listacompra: 10  registros
   	l)  tabela marca: 10 registros
 	m)  tabela medida: 10 registros
  	n)  tabela pessoa: 10 registros
  	o)  tabela produto: 100000 registros
	
![Alt text](https://github.com/lucasoliveiragarcia/Cesta-de-Compras/blob/master/Consultas_SQL_e_Prints/estadodobanco.PNG?raw=true "Estado do banco")
  
	A criação de tabela e inclusão de dados foi realizada em um computador Intel I5 com 4GB de Ram 	e Hd de 500GB, utilizando-se do Windows 7 
	
	Tempo tempo de execução 
	"inicio do processo" 20:06:10
	"final do processo" 23:02:42

	Tempo de inserção:

	   a) tabela cidade: 66msec
	   b) tabela compra: 5sec
	   c) tabela consumidor: 208msec
	   d) tabela endereco: 77msec
	   e) tabela estabelecimento: 5 secs
	   g) tabela estabelecimentoproduto: 707 msec
	   h) tabela estado: 80msec
	   i)tabela itemcompra: 
	   start 14:07:32
	   finish: 16:54:02
	   j)  tabela itemlistacompra: 135msec
	   k)  tabela listacompra: 53msec
	   l)  tabela marca: 50msec
	  m)  tabela medida:  54msec
	  n)  tabela pessoa: 97msec
	  o)  tabela produto: 5secs


#### 9.7	Backup do Banco de Dados<br>
	Comando (backup)
![Alt text](https://github.com/lucasoliveiragarcia/Cesta-de-Compras/blob/master/Consultas_SQL_e_Prints/comando_backup.PNG?raw=true "Comando Bakup")

	Tempo de execução
	Aproximadamente 15 segundos
	
	Tamanho do arquivo gerado 
![Alt text](https://github.com/lucasoliveiragarcia/Cesta-de-Compras/blob/master/Consultas_SQL_e_Prints/tamanhoarquivobackup.PNG?raw=true "Tamanho arquivo backup")	
	
	Comando (sql)
![Alt text](https://github.com/lucasoliveiragarcia/Cesta-de-Compras/blob/master/Consultas_SQL_e_Prints/comando_sql.PNG?raw=true "Comando SQL")
		
	Tempo de execução
	Aproximadamente 3 segundos
	
	
	Tamanho do arquivo gerado
![Alt text](https://github.com/lucasoliveiragarcia/Cesta-de-Compras/blob/master/Consultas_SQL_e_Prints/tamanhoarquivosql.PNG?raw=true "Tamanho arquivo SQL")

	
	Comando restore (backup)
![Alt text](https://github.com/lucasoliveiragarcia/Cesta-de-Compras/blob/master/Consultas_SQL_e_Prints/comando_restore_backup.PNG?raw=true "Comando restore (backup)")
	
	Tempo restore (backup)
	Aproximadamente 20 segundos.
	
	Comando restore (sql)
![Alt text](https://github.com/lucasoliveiragarcia/Cesta-de-Compras/blob/master/Consultas_SQL_e_Prints/comando_restore_sql.PNG?raw=true "Comando restore (sql)")
	
	Tempo restore (sql)
	Aproximadamente 20 segundos.
<br>

#### 9.8	APLICAÇAO DE ÍNDICES E TESTES DE PERFORMANCE<br>
	Índice aplicado ao campo preço da tabela estabelecimentoproduto pois o mesmo será consultado pelo consumidor ao exibir
	sua lista de compra para a realização da compra
	
	Query de criação de index
	create index preco_produto on estabelecimentoproduto(preco)

	Query de busca
	Consulta onde se obtém o preço de um produto em uma faixa de preço de um estabelecimento de uma determinada unidade.
	
	select produto.nome as produto,preco,estabelecimento.nome as estabelecimento,estabelecimento.unidade 
	from estabelecimentoproduto 
	join produto on (produto.idproduto=estabelecimentoproduto.idproduto)
	join estabelecimento on (estabelecimento.idestabelecimento=estabelecimentoproduto.idestabelecimento)
	where preco>7 and preco<10 and estabelecimento.nome like '%Carone%' and produto.nome like '%Suco de Caju%' 
	and estabelecimento.unidade like '%Serra%'
	
	Tempo da consulta sem índice: 130msec
	Tempo da consulta com índice: 92msec

	Índice aplicado ao campo preco da tabela itemcompra, é um campo bastante requisitado pois o cliente ao realizar uma compra
	estará automaticamente atualizando o preço do item do supermercado onde foi realizado a compra.
	
	Query de criação de index
	create index preco_index on itemcompra (preco)
	
	Query de busca
	Consulta onde se obtém o valor de um item de uma compra entre R$10 e R$20 com nome Refrigerante, de uma compra com valor total 		entre R$180 e R$200 , de um consumidor com nome Vinicius
	
	select pessoa.nome,produto.nome,preco from itemcompra 
	join produto on (itemcompra.idproduto=produto.idproduto)
	join compra on (itemcompra.idcompra=compra.idcompra)
	join consumidor on (compra.idconsumidor=consumidor.idconsumidor)
	join pessoa on(pessoa.idpessoa=consumidor.idpessoa)
	where preco > 10 and preco<20 and produto.nome like '%Refrigerante%' and valortotal > 180 and valortotal<200
	and pessoa.nome like '%Vinicius%'
	
	Tempo da consulta sem índice: 559msec
	Tempo da consulta com índice: 262msec
	
<br>
    Data de Entrega: (Data a ser definida)
<br>   
<br>
    Data de Entrega: (Data a ser definida)
<br>

### 10	ATUALIZAÇÃO DA DOCUMENTAÇÃO/ SLIDES E ENTREGA FINAL<br>
<br>
    Data de Entrega: (Data a ser definida)
<br>

### 11	DIFICULDADES ENCONTRADAS PELO GRUPO<br>  

       
### 12  FORMATACAO NO GIT: https://help.github.com/articles/basic-writing-and-formatting-syntax/
<comentario no git>
    
##### About Formatting
    https://help.github.com/articles/about-writing-and-formatting-on-github/
    
##### Basic Formatting in Git
    
    https://help.github.com/articles/basic-writing-and-formatting-syntax/#referencing-issues-and-pull-requests
    
    
##### Working with advanced formatting
    https://help.github.com/articles/working-with-advanced-formatting/
#### Mastering Markdown
    https://guides.github.com/features/mastering-markdown/

### OBSERVAÇÕES IMPORTANTES

#### Todos os arquivos que fazem parte do projeto (Imagens, pdfs, arquivos fonte, etc..), devem estar presentes no GIT. Os arquivos do projeto vigente não devem ser armazenados em quaisquer outras plataformas.
1. Caso existam arquivos com conteúdos sigilosos, comunicar o professor que definirá em conjunto com o grupo a melhor forma de armazenamento do arquivo.

#### Todos os grupos deverão fazer Fork deste repositório e dar permissões administrativas ao usuário deste GIT, para acompanhamento do trabalho.

#### Os usuários criados no GIT devem possuir o nome de identificação do aluno (não serão aceitos nomes como Eu123, meuprojeto, pro456, etc). Em caso de dúvida comunicar o professor.


Link para BrModelo:<br>
http://sis4.com/brModelo/brModelo/download.html
<br>


Link para curso de GIT<br>
![https://www.youtube.com/curso_git](https://www.youtube.com/playlist?list=PLo7sFyCeiGUdIyEmHdfbuD2eR4XPDqnN2?raw=true "Title")


