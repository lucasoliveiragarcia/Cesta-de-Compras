#language: pt-br

Funcionalidade:Criar Lista de Compras

Esquema do Cenário: Sucesso em Criar Lista
Dado  Eu estou no <menu principal>
E Eu seleciono a opção <minhas listas de compras>
E Eu seleciono a opção <criar lista>
E Eu digito o <nome da lista> 
E Eu pressiono <Avançar>
E Eu adiciono o primeiro item <itens> 
Quando Eu pressiono <Confirmar>
Então  A lista é criada.

Exemplos:
|    nome da lista   |   itens                        |     
| ‘Lista do mês’     |  ‘Suco Caju 500ML Bela Ichia’  |
| ‘Churrasco’        | ‘Refrigerante Guaraná 2L Kuat’ |  

Cenário: Insucesso ao Criar Lista
Dado que eu não adicionei nenhum item na lista
Quando Eu pressiono <Confirmar>
Então o sistema retorna "Lista não foi criada pois esta vazia."