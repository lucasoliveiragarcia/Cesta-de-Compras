#language: pt-br

Funcionalidade: ConsultarListaCompra

Cenário: Sucesso em Consultar Lista
Dado Eu estou logado no Sistema Cesta de Compras
E eu seleciono a opção minhas listas de compras
E o sistema exibe as minhas listas
E eu seleciono uma lista
Quando Eu <confirmo> a lista
Então o sistema exibe a lista de itens .

Cenario: Insucesso ao Consultar Lista
Quando eu não <confirmo> a lista
Então o sistema permanece aguardando a confirmação