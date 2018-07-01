#language: pt-br

Funcionalidade:Criar Lista de Compras

Esquema do Cenário: Sucesso em Criar Lista
Dado  Eu estou na tela de listas de compras
E Eu seleciono a opção de criar lista
E Eu digito o <nome da lista> 
Quando Eu pressiono Confirmar
Então  A lista é criada.

Exemplos:
| nome da lista      |
| ‘Lista do mês’     |
| ‘Churrasco’        |

Cenário: Insucesso ao Criar Lista
Dado que eu não informei o nome da lista
Quando Eu pressiono Confirmar
Então o sistema retorna uma mensagem de erro