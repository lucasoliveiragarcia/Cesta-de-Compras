#language: pt-br

Funcionalidade: Cadastrar Consumidor
	Cadastro de consumidor no sistema.

Esquema do Cenário: Sucesso em Cadastrar Consumidor
Dado eu acesso a opção de cadastro
E O sistema exibe a tela de cadastramento de consumidor
E Eu informo <Nome>, <Sobrenome>, <DataNasc>, <Email>, <Login>, <Senha> 
Quando Eu confirmo o cadastro
Então o sistema conclui o cadastro e me habilita para usar o sistema.

Exemplos:
| Nome   | Sobrenome | DataNasc   | Email                   | Login  | Senha |
| Clovis | Santos    | 20/04/1992 | clovis.Santos@gmail.com | CSena$ | 121   |
| Angelo | Silva     | 13/10/1976 | Angelo@gmail.com        | #Empty | 123   |
| #Empty | Sena      | 16/04/1963 | mariana.sch@gmail.com   | Login  | 123   |

Cenário: Falha em Cadastrar Consumidor
Dado eu nao preencho corretamente os dados solicitados
E Eu informo <Nome>, <Sobrenome>, <DataNasc>, <Email>, <Login>, <Senha> 
Então o sistema retorna uma mensagem de entrada de dados incorreta.