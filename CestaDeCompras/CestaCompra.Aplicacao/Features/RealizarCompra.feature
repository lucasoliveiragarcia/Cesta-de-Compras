#language: pt-br

Funcionalidade: RealizarCompra

Cenário: Sucesso em Realizar Compra
Dado Eu acesso minhas listas de compras
E Eu seleciono a lista desejada 
E Eu seleciono o <estabelecimento> 
E Eu adiciono um produto
E O sistema permite que eu inclua, altere quantidade e preço ou remova itens da lista para realizar a compra.
Quando Eu confirmo a compra
Então a compra é registrada.

Cenário: Insucesso em Realizar Compra
Quando que eu eu não confirmo a compra
Então O sistema não gera uma nova compra e não registra no banco de dados 