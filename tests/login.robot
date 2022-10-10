*** Settings ***
Library   Browser
Documentation           Login tests

*** Variables ***
${header_title}       Aquela figurinha incrível a um clique de distância.

*** Test Cases ***
Deve logar com sucesso
    Go To Login Page
    Submmit Credencials papito@gmail.com    vaibrasil
    User Logger In
   
    
Não deve logar com a senha incorreta
    
    Go To Login Page
    Submmit Credencials            papito@gmail.com    abc123
    Toast Menssage Should Browser  Credenciais inválidas, tente novamente! 


    *** keywords ***

    Go To Login Page
        New Browser     headless=False
        New Page        https://trade-sticker-dev.vercel.app

    Submmit Credencials 
        [Arguments]         ${email}         ${password}
        FIll Text           css=input[name=email]      ${email}
        FIll Text           css=input[name=password]   ${password}
        Click               css=button >> text=Entrar

    User Logger In

        ${header_title}       
        ...                 Set Variable          
        ...                 Aquela figurinha incrível a um clique de distância.
        Get text            css=.header-content strong      equal   ${header_title}

    Toast Menssage Should Browser
        [Arguments]     ${expected_message}

        ${locator}          
        ...             Set Variable
        ...             css=.Toastify__toast-body div >> text=${expected_message}
        Wait For Elements State     ${locator}      visible     3   
   