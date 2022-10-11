*** Settings ***
Documentation       Arquivo principal do projeto

Library         Browser

Resource        pages/login.resource
Resource        pages/dash.resource

***Keywords***
Do Login    
    Go To Login Page
    Submmit Credencials   papito@gmail.com  vaibrasil
    User Logger In
    

Start Test
    New Browser         headless=False      browser=firefox


Finish Test
    #Thinking Time
    Sleep                       1
    Take Screenshot
