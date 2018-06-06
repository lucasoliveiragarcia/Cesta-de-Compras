Feature: PessoaAplicacao
	
Scenario: Login com sucesso
	Given Eu, usuario estou entrando no sistema
	And eu informo o <login>
	And eu informo a <senha>
	When  Eu pressiono o botão entrar
	Then Eu acesso o menu principal.

Scenario: Cadastrar Consumidor
	Given Eu acesso o aplicativo “Cesta de Compras”
	When Eu escolho a opção “Cadastrar”
	And O sistema exibe a tela de cadastramento de usuário
	And Eu preencho todos os dados solicitados
	And Eu forneço o meu e-mail e digito /defino  uma senha
	And Eu confirmo meu e-mail via link recebido no meu e-mail
	And O sistema recebe a confirmação do e-mail
	Then O sistema conclui o cadastro e me habilita como usuário e eu posso começar a usar o aplicativo.



