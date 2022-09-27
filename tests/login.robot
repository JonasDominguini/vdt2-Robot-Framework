*** Settings ***
Library   Browser
Documentation           Login tests

*** Variables ***
${header_title}       Aquela figurinha incrível a um clique de distância.

*** Test Cases ***
Deve logar com sucesso
    New Browser         headless=False
    New Page            https://trade-sticker-dev.vercel.app

    FIll Text           css=input[name=email]   papito@gmail.com
    FIll Text           css=input[name=password]   vaibrasil
    Click               css=button >> text=Entrar
    
    Get text            css=.header-content strong      equal   ${header_title}
    

    Take Screenshot