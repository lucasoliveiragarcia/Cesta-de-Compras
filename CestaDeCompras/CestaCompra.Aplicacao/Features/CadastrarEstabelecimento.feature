#language: pt-br

Funcionalidade: CadastrarEstabelecimento
	Inserção de um novo supermercado ou assemelhado.

Contexto: 
Dado O administrador recebe a informação de novo supermercado.
E O administrador verifica se o supermercado atende aos requisitos de inserção no “Cadastro de Supermercados”
E O administrador realiza o login como administrador

Cenário: Sucesso em Cadastrar Supermercado
Dado que o administrador esta na tela de menu do administrador
Quando o administrador seleciona <cadastrar estabelecimento>
E  O administrador insere todos os dados de cadastramento do supermercado.
E O administrador <confirma> a inserção.
Então O administrador muda o status do supermercado para “Ativo”  no ambiente de operação. 
