*** Settings ***

Documentation           Login Page

Library                 Browser


***Keywords***

Go To Login Page
    New Browser         headless=False
    New Page            https://trade-sticker-dev.vercel.app

Submmit Credencials 
    [Arguments]             ${email}         ${password}

    FIll Text               css=input[name=email]           ${email}
    FIll Text               css=input[name=password]        ${password}
    Click                   css=button >> text=Entrar

Toast Message Should Be
    [Arguments]     ${expected_message}
    ${locator}          
    ...             Set Variable
    ...             css=.Toastify__toast-body div >> text=${expected_message}
    Wait For Elements State     ${locator}      visible     3   
   