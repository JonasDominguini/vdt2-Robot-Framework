*** Settings ***

Documentation           Login tests

Resource                ../resources/main.resource

*** Test Cases ***
Deve logar com sucesso
    Go To Login Page
    Submmit Credencials         papito@gmail.com      vaibrasil
    User Logger In
   
    
Não deve logar com a senha incorreta
    
    Go To Login Page
    Submmit Credencials         papito@gmail.com       abc123
    Toast Message Should Be     Credenciais inválidas, tente novamente! 



