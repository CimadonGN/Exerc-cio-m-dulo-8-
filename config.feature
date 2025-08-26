            #language: pt

            Funcionalidade: Configurar Produto

            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            E escolher a quantidade
            Para depois inserir no carrinho

            Contexto:
            Dado que eu tenha escolhido o produto que desejo comprar

            Esquema do Cenário: Personalização
            Quando eu escolher a <cor>
            E a <quantidade>
            E o <tamanho> do produto
            Então deve exibir a <mensagem> de sucesso

            Exemplos:
            | cor        | quantidade | tamanho | mensagem                             |
            | "Azul"     | "1"        | "XS"    | "Adicionado com sucesso ao carrinho" |
            | "Laranja"  | "2"        | "S"     |                                      |
            | "Vermelho" | "3"        | "M"     |                                      |
            |            | "4"        | "L"     |                                      |
            |            | "5"        | "XL"    |                                      |
            |            | "6"        |         |                                      |
            |            | "7"        |         |                                      |
            |            | "8"        |         |                                      |
            |            | "9"        |         |                                      |
            |            | "10"       |         |                                      |

            Cenário: Mais de 10 itens por venda
            Quando eu selecionar uma quantidade de itens maior do que 10
            Então deve exibir a mensagem de alerta: "Quantidade de itens superior ao permitido"
            
            Cenário: Limpar Seleção
            Quando eu clicar no botão "limpar" 
            Então deve limpar todas as personalizações do produto