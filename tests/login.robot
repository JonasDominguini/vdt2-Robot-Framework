*** Settings ***

Documentation           Login tests

Resource                ../resources/main.resource

Test Setup          Start Test  
Test Teardown       Finish Test

*** Test Cases ***
Deve logar com sucesso
    Do Login
   
    
Não deve logar com a senha incorreta
    
    Go To Login Page
    Submmit Credencials         papito@gmail.com       abc123
    Toast Message Should Be     Credenciais inválidas, tente novamente! 
    



