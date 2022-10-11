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
    

Deve exibir notificação toaster se a senha não for preenchida

    Go To Login Page
    Submmit Credencials Email         papito@gmail.com       
    Toast Message Should Be     Por favor, informe a sua senha secreta! 
    

Deve exibir notificação toaster se a email não for preenchido
    Go To Login Page
    Submmit Credencials Password  vaiBrasil     
    Toast Message Should Be      Por favor, informe o seu email! 

Deve exibir notificação toaster se a email e senha não for preenchido   
    Go To Login Page
    Submmit Credencials None              
    Toast Message Should Be     Por favor, informe suas credenciais! 

