#language: pt-br

Funcionalidade: FazerLogin

Contexto: 
Dado que eu consumidor acesso a página de entrada do sistema
E eu digito o  meu <login> 
E eu digito a  minha <senha>
@mytag
Esquema do Cenário:Sucesso no Login
Dado <login> 
E a <senha> 
Quando  eu pressiono o botão entrar
Então eu acesso a página do menu principal.

Exemplos:
|     login     |senha         | 
| educouto		| '123'        |
| gabriel		| '123'		   |
| rodrigo       | 'ddavid_11"  |

Cenário:Insucesso no Login
Dado o <login> ou a <senha> esteja errada
Quando Eu pressiono o botão entrar
Então o sistema informa dados incorretos
