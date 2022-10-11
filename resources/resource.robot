*** Settings ***
Library            SeleniumLibrary
Library            FakerLibrary    locale=pt_BR


*** Keywords ***
Abrir navegador
    Open Browser        browser=chrome
    Maximize Browser Window

Fechar navegador
    Close Browser    