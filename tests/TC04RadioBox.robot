*** Settings ***
Test Setup            Abrir navegador    
Test Teardown         Fechar navegador
Resource              ../pages/Busca-elementos/RadioBox.robot
Resource              ../resources/resource.robot
Resource              ../pages/formulario/Cadastro-usuario.robot




*** Test Cases ***
TC04 - Preencher RadioBox e CheckBox
    [Documentation]         Esse teste preencher os campos RadioBox e CheckBox
    [Tags]                   Boxs

    Dado que estou no site de treinamento
    Quando clico em Radio e CheckBox
    Então preencho os campos 