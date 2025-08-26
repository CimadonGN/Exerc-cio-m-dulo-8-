            #language: pt

            Funcionalidade: Tela de checkout
            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que eu estou na tela de checkout para finalizar minha compra

            Esquema do Cenário: Autenticar múltiplos dados
            Quando eu preecher os campos <Nome>, <Sobrenome>, <Pais> , <Endereco>, <Cidade>, <CEP>, <Telefone>
            E <E-mail>
            Então deve seguir para finalizar a compra

            Exemplos:
            | Nome      | Sobrenome | Pais        | Endereco | Cidade         | CEP         | Telefone     | E-mail                |
            | "Gabriel" | "Cimadon" | "Brasil"    | "Rua 1"  | "Curitiba"     | "XXXXX-000" | "1234-56789" | "gabriel@ebac.com.br" |
            | "João"    | "Silva"   | "Argentina" | "Rua 2"  | "Buenos Aires" | "XXXXX-001" | "1111-11111" | "joao@gmail.com"      |
            | "Ana"     | "Martins" | "Chile"     | "Rua 3"  | "Santiago"     | "XXXXX-002" | "2222-22222" | "ana@hotmail.com"     |

            Esquema do Cenário: Autenticar formato de e-mail
            Quando eu preencher o campo "E-mail" sem as informações "@"
            E <TLD>
            Entao deve exibir a mensagem de alerta "Atenção, e-mail com formato inválido"

            Exemplos:
            | TLD       |
            | ".com"    |
            | ".org"    |
            | ".net"    |
            | ".com.br" |
            | ".gov"    |