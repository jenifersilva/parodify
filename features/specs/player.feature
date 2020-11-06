#language: pt

Funcionalidade: Reproduzir paródia
    Sendo um usuário cadastrado
    Quero reproduzir músicas no player do Parodify
    Para que eu possa ouvir as paródias das minhas músicas favoritas

    Contexto: Login
        * Login com "fernando@bol.com.br" e "pwd123"

    Cenário: Ouvir Paródia
        Dado que eu gosto muito de "Rock"
        Quando toco a seguinte canção:
            | parody | Sprints de Luta Sprints de Gloria |
            | band   | Charlie Brown Bug                 |
        Então essa paródia deve ficar em modo de reprodução