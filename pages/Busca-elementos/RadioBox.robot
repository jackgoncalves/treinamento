*** Settings ***
Library                SeleniumLibrary


*** Variables ***


*** Keywords ***
Quando clico em Radio e CheckBox    
    
    Click Element    locator=//a[contains(.,'Busca de elementos')]
    Wait Until Element Is Visible    locator=(//a[contains(.,'Radio e Checkbox')])[1]
    Click Element    locator=(//a[contains(.,'Radio e Checkbox')])[1]

Então preencho os campos 
     Set Selenium Speed    value=0.5
        Click Element    locator=//label[@for='red'][contains(.,'Red')]
        Click Element    locator=//label[@for='green'][contains(.,'Green')]
        
        Click Element    locator=//label[@for='grey'][contains(.,'Grey')]
        Click Element    locator=//label[@for='white'][contains(.,'White')]
         