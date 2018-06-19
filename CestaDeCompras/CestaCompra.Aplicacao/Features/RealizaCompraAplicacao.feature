Feature: RealizaCompraAplicacao
	In order to avoid silly mistakes
	As a math idiot
	I want to be told the sum of two numbers

@mytag
Scenario: Criação da Lista - CompraRealizada
	Given Eu estou acessando minha relação de listas de compras.
	And Eu seleciono a lista desejada
	And Eu  pressiono ”Realizar Compra”
	And Eu seleciono a cidade
	And O sistema apresenta a tela de seleção de supermercado.
	And Eu seleciono o supermercado 
	When Eu confirmo a compra
	Then  O sistema gera uma nova lista CompraRealizada com base na lista selecionada.

Scenario: Realização da Compra
	Given Eu estou na tela de consulta da lista de compra.
	And Eu pressiono “fazer compras”.
	And O sistema gera uma lista de compra para a cidade e o supermercado escolhido.
	And Eu realizo a compra alterando e acrescentando produtos, quantidades e preços.
	And O sistema vai atualizando a tela com os dados inseridos, e também o preço total de sua compra.
	And Eu  seleciono concluir.
	Then O sistema captura as atualizações realizadas para tratamento e atualização do banco de dados com base na compra realizada.
