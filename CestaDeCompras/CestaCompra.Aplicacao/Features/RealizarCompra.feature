#language: pt-br

Funcionalidade: RealizarCompra
	
@mytag

Cenário: Sucesso em Realizar Compra
Dado Eu acesso <minhas listas de compras>
E Eu seleciono a lista desejada <listaC>
E O sistema sugere a cidade de residência e/ou eu posso selecionar outra cidade <cidade>
E O sistema retorna <listaS> com os supermercados com o menor preço total em ordem crescente.
E Eu seleciono o <supermercado> 
E Eu  pressiono <Realizar Compra>
E O sistema permite que eu inclua, altere quantidade e preço ou remova itens da lista para realizar a compra.
Quando Eu <confirmo> a compra
Então  O sistema gera uma <novaCompra> e registra no banco de dados .

Cenário: Insucesso em Realizar Compra
Quando que eu eu não <confirmo> a compra
Então O sistema não gera uma <novaCompra> e não registra no banco de dados 