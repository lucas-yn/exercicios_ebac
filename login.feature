#language: pt

Funcionalidade: Tela de login
Como cliente da EBAC-SHOP
Quero fazer o login na plataforma  
Para visualizar meus pedidos

Contexto: Dado que eu acesse a página de autenticação da loja EBAC

Cenário: Autenticação válida
Quando eu digitar o usuário "cliente123@ebac.com.br"
E a senha "ebac123"
Então deve ser redirecionado para a página de checkout

Cenário: Autenticação inválida
Quando eu digitar o usuário "cliente123@ebac.com.br"
E a senha "xxxxxyyyyzzzz"
Então deve emitir a mensagem de alerta "Usuário ou senha inválidos"