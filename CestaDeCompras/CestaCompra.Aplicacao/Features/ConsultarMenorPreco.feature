#language: pt-br

Funcionalidade: Consultar Menor Preço
	Consultar preços atualizados dos itens da lista de compra.

Cenário: Sucesso em Consultar Menor Preço
Dado Eu estou acessando minha relação de listas de compras.
E Eu seleciono uma lista de compras
Quando Eu seleciono consultar preços
Então O sistema retorna a lista de menor preço total com os supermercados em ordem crescente de valor

Cenário: Insucesso ao Consultar Menor Preço
Dado que eu não estou logado no sistema
Então não consigo acessar os preços atualizados.