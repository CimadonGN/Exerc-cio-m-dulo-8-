            #language: pt

            Funcionalidade: Tela de login
            Como aluno do Portal EBAC
            Quero me autenticar
            Para visualizar minhas notas

            Contexto:
            Dado que eu acesse a página de autenticação do portal EBAC

            Cenário: Autenticação válida
            Quando eu digitar o usuário "joao@ebac.com.br"
            E a senha "senha@123"
            Então deve exibir uma mensagem de boas vindas "Olá João"

            Cenário: Usuário inexistente
            Quando eu digitar o usuário "xyz@ebac.com.br"
            E a senha "senha@123"
            Então deve exibir uma mensagem de alerta: "Usuário inexistente"

            Cenário: Usuário com senha inválida
            Quando eu digitar o usuário "joao@ebac.com.br"
            E a senha "seninválidaha@123"
            Então deve exibir uma mensagem de alerta: "Usuário ou senha inválidos"

            Esquema do Cenário: Autenticar múltiplos usuários
            Quando eu digitar o <usuario>
            E a <senha>
            Então deve exibir a <mensagem> de sucesso

            Exemplos:
            | usuario               | senha       | mensagem       |
            | "joao@ebac.com.br"    | "senha@123" | "Olá João!"    |
            | "gabriel@ebac.com.br" | "senha@456" | "Olá Gabriel!" |