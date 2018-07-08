#language: pt-br

Funcionalidade: AdicionarItemLista
	Adiciona itens nas listas.

Cenário: Sucesso ao Inserir Item
Dado Eu seleciono a opção de adicionar produto em uma lista de compra.
E Eu pesquiso um nome de produto existente no banco.
E O sistema retorna uma lista de itens que tenham aquele nome.
E Eu seleciono o produto correto que desejo incluir.
E Eu informo a quantidade 50.
Quando Eu pressiono Confirmar
Então O item e incluido na lista de compras.

Cenário: Insucesso ao Inserir Item
Dado Eu seleciono a opção de adicionar produto em uma lista de compra.
Quando eu não confirmo
Então o sistema não adiciona o produto
