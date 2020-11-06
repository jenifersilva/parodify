#language: pt

Funcionalidade: Cadastro de usuários
    Sendo um visitante do site Parodify
    Quero fazer o meu cadastro
    Para que eu possa ouvir minhas músicas favoritas

    Cenário: Cadastro
        Dado que acesso a página de cadastro
        Quando submeto o meu cadastro com:
            | email          | fernando@yahoo.com |
            | senha          | pwd123             |
            | senha_confirma | pwd123             |
        Então devo ser redirecionado para a área logada

    Esquema do Cenário: Tentativa de Cadastro
        Dado que acesso a página de cadastro
        Quando submeto o meu cadastro com:
            | email          | <email>                 |
            | senha          | <password>              |
            | senha_confirma | <password_confirmation> |
        Então devo ver a mensagem: "<expected_message>"

        Exemplos:
            | email              | password | password_confirmation | expected_message                     |
            |                    | pwd123   | pwd123                | Oops! Informe seu email.             |
            | fernando@yahoo.com |          |                       | Oops! Informe sua senha.             |
            | fernando@yahoo.com | pwd123   | abc123                | Oops! Senhas não são iguais.         |
            |                    |          |                       | Oops! Informe seu email e sua senha. |

    Cenário: Validação do campo email
        Quando acesso a página de cadastro
        Então deve exibir o seguinte css: "input[type=email]"