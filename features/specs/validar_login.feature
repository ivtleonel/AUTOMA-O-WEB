#language:pt

@validar_login
Funcionalidade: Validar login


Cenario: Realizar login sem sucesso

     Quando informo os dados incorretos
     Então não consigo logar
