#language: pt-br

Funcionalidade: Cadastrar Consumidor
	Cadastro de consumidor no sistema.

Esquema do Cenário: Sucesso em Cadastrar Consumidor
Dado eu acesso o site <Cesta de Compras>
E eu escolho a opção <Cadastrar>
E O sistema exibe a tela de cadastramento de consumidor
E Eu preencho todos os dados solicitados.
E Eu informo <nome>, <sobrenome>, <datanasc>, <login>, <email>,<senha>,<logradouro>,<numero>,<complemento>,<cep>,<cidade> 
Quando Eu confirmo pressionando <cadastrar>
Então o sistema conclui o cadastro e me habilita como usuário e eu posso começar a usar o aplicativo.

Exemplos:
| Nome   | Sobrenome | Data Nasc  | E-mail                | Login  | Senha |
| Clovis | Sena      | 20/04/1953 | clovis.sena@gmail.com | CSena$ |xyz$33 | 

Cenário: Falha em Cadastrar Consumidor
Dado eu não preencho corretamente os dados solicitados
Então o sistema retorna dados incorretos






































