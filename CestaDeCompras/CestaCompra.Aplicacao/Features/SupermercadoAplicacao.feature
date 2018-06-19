Feature: SupermercadoAplicacao
	In order to avoid silly mistakes
	As a math idiot
	I want to be told the sum of two numbers

@mytag
Scenario: Cadastrar Supermercado
	Given O sistema tenha sido previamente carregado com a Lista de Start-up de Supermercados.
	When O administrador recebe a informação de novo supermercado.
	And  O administrador verifica se o supermercado atende aos requisitos de inserção no “Cadastro de Supermercados”
	And  O administrador insere todos os dados de cadastramento do supermercado.
	And O administrador verifica através de testes se o supermercado esta integrado ao sistema.
	Then O administrador muda o status do supermercado para “Ativo”  no ambiente de operação. 
