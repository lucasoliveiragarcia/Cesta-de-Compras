#language: pt-br

Funcionalidade: FazerLogin
	In order to acess the system
	As an identified user
	I want to supply my login and password

Contexto: 
Dado que eu consumidor acesso a página de entrada do sistema
E eu digito o  meu <login> 
E eu digito a  minha <senha>
@mytag
Esquema do Cenário:Sucesso no Login
Dado o <login> esta correto
E a <senha> esta correta
Quando  eu pressiono o botão entrar
Então eu acesso a página do menu principal.

Exemplos:
|     login     |senha         | 
| rodrigues.13  | 'asd123'     |
| rogeria       | 'roger122'   |
| daivid        | 'ddavid_11"  |

Cenário:Insucesso no Login
Dado o <login> ou a <senha> esteja errada
Quando Eu pressiono o botão entrar
Então o sistema informa dados incorretos
