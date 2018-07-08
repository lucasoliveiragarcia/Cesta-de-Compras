#language: pt-br

Funcionalidade: CadastrarEstabelecimento
	Inserção de um novo supermercado ou assemelhado.

Contexto: 
Dado O administrador acessa a tela de cadastro de estabelecimento.
E O consumidor tem privilegio de administrador

Cenário: Sucesso em Cadastrar Supermercado
Dado que o administrador esta na tela de menu do administrador
Quando o administrador seleciona cadastrar estabelecimento
E O administrador insere todos os dados de cadastramento do supermercado.
E O administrador confirma a inserção.
Então O administrador muda o status do supermercado para “Ativo”  no ambiente de operação. 
