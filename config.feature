            #language: pt

            Funcionalidade: Configurar produto

            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            E escolher a quantidade
            Para depois inserir no carrinho


            Cenário: Obrigatoriedade das seleções de cor, tamanho e quantidade máxima de até 10 produtos por venda
            Dado que eu selecione um produto disponível na loja
            Quando selecionar "9 produtos"
            E aplicar a cor "verde"
            E o tamanho "M"
            Então os produtos devem ser adicionados ao carrinho com a mensagem de sucesso "Itens adicionados ao carrinho"

            Cenário: Quantidade de produtos adicionados inválida
            Dado que eu selecione um produto disponível na loja
            Quando eu selecionar 11 produtos
            Então deve exibir a mensagem de falha "Não foi possível adicionar todos os itens ao carrinho"

            Esquema do Cenário: Adicionar múltiplos itens ao carrinho
            Dado que eu selecione um <produto> disponível na loja
            Quando selecionar <quantidade>
            E <cor>
            E <tamanho>
            Então os produtos devem ser adicionados ao carrinho exibindo a <mensagem> de sucesso

            Exemplos:
            | produto   | quantidade | cor       | tamanho | mensagem                      |
            | "camisa"  | 10         | "azul"    | "M"     | "item adicionado ao carrinho" |
            | "bermuda" | 9          | "verde"   | "P"     | "item adicionado ao carrinho" |
            | "camisa"  | 1          | "amarela" | "G"     | "item adicionado ao carrinho" |



Cenário: Limpar carrinho
Dado que eu tenha itens adicionados ao carrinho
Quando eu clicar no botão "limpar carrinho"
Então o carrinho deve ficar vazio e a mensagem "Todos os itens foram excluídos do carrinho" deve ser exibida



