#language: pt-br

Funcionalidade: AdicionarItemLista
	Adiciona itens nas listas.


Cenário: Sucesso ao Inserir Item
Dado Eu acessei uma lista de compras especifica.
E Eu seleciono <adicionar> produto.
E Eu pesquiso um nome de produto existente no banco.
E O sistema retorna uma lista de itens que tenham aquele nome.
E Eu seleciono o <produto> correto que desejo incluir.
E Eu seleciono a <quantidade> desejada.
Quando Eu pressiono <Confirmar>
Então O item e incluido na lista de compras.

Cenário: Insucesso ao Inserir Item
Quando eu não <Confirmar>
Então o sistema retorna "Item nao foi incluido"
