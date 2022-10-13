*** Settings ***
Test Setup            Abrir navegador    
Test Teardown         Fechar navegador
Resource              ../pages/Busca-elementos/Links.robot
Resource              ../resources/resource.robot
Resource              ../pages/formulario/Cadastro-usuario.robot



*** Test Cases ***
TC02 - Testar links
    [Documentation]        Esse teste os Links    
    [Tags]                 Links

    Dado que estou no site de treinamento
    Quando clico em Links
    Então deverá testar os links e as mensagens retornadas 

