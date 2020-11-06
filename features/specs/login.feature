#language: pt

Funcionalidade: Login
    Sendo um usuário previamente cadastrado
    Quero acessar o sistema com o meu email e senha
    Para que eu possa ter acesso às playlists do Parodify

    Cenário: Login do usuário
        Dado que acesso a página de login
        Quando submento minhas credenciais com: "fernando@bol.com.br" e "pwd123"
        Então devo ser redirecionado para a área logada

    Esquema do Cenário: Tentativa de login
        Dado que acesso a página de login
        Quando submento minhas credenciais com: "<email>" e "<password>"
        Então devo ver a mensagem de erro: "Opps! Dados de acesso incorretos!"

        Exemplos:
            | email               | password |
            | fernando@404.com.br | abc123   |
            |                     | pwd123   |
            | fernando@yahoo.com  |          |
            |                     |          |