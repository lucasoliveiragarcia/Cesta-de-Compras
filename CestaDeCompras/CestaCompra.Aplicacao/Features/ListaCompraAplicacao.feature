Feature: ListaCompraAplicacao
	In order to avoid silly mistakes
	As a math idiot
	I want to be told the sum of two numbers

@mytag
Scenario: Criar Lista de Compras
	Given  Eu estou no menu principal
	And Eu seleciono a opção minhas listas de compras
	And Eu seleciono a opção de criar lista
	And  Eu digito o <nome da lista>
	And Eu adiciono <itens  na minha lista>
	When Eu pressiono Avançar
	Then  A lista é criada.

Scenario: Adição de produtos em uma lista de compras
	Given Eu acessei a inserção de produtos para uma lista específica.
	And Eu digitei um nome de produto existente no banco.
	And O sistema retorna uma lista de itens que tenham aquele nome.
	And Eu seleciono o produto correto que desejo incluir.
	And Eu seleciono a quantidade desejada.
	When Eu pressiono Confirmar
	Then O item é incluído na lista de compras.

Scenario: Consultar Listas Existentes
	Given Eu estou logado no Sistema Cesta de Compras
	When Eu seleciono a opção minhas listas de compras
	Then Eu acesso a relação de  listas existentes.

Scenario: Seleção da Lista - Menor Preço
	Given Eu estou acessando minha relação de listas de compras.
	When Eu seleciono a lista desejada
	Then O sistema retorna o supermercado no qual a lista completa totaliza o menor preço.