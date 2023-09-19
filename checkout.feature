            #language: pt

            Funcionalidade: Como cliente da EBAC-SHOP
            Quero fazer meu cadastro
            Para finalizar minha compra

            Contexto: Dado que eu esteja na página de cadastro da loja EBAC

            Esquema do Cenário: Cadastro na loja EBAC
            Quando eu preencher o campo <nome>, <sobrenome>, <pais>, <cidade>, <cep>, <endereco>, <email> e <telefone>
            Então deve ser exibida a <mensagem>

            Exemplos:
            | nome    | sobrenome    | pais          | cidade     | cep         | endereco    | email                    | telefone    | mensagem                                                    |
            | "Lucas" | "Nascimento" | "Brasil"      | "Salvador" | "11111-111" | "Rua ABCDE" | "emaillucas@ebac.com.br" | "123456789" | "Cadastro feito com sucesso"                                |
            | "James" | "Silva"      | "Reino Unido" | "Londres"  | "22222-222" | "Rua EFGH"  | "james"                  | "951753258" | "Endereço de email inválido"                                |
            | "Sonia" | "Alves"      | "Portugal"    |            |             |             | "emailsonia@ebac.com.br" | "987654321" | "Falha no cadastro. Preencha todos os campos obrigatórios." |