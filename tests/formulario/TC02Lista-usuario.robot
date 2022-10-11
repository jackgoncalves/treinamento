*** Settings ***
Test Setup            Abrir navegador    
Test Teardown         Fechar navegador
Resource              ../../pages/formulario/Lista-usuario.robot
Resource              ../../resources/resource.robot
Resource              ../../pages/formulario/Cadastro-usuario.robot

*** Test Cases ***

TC02 - Excluir usuario cadastrado
    [Documentation]    Esse teste exclui cadastro 
    [Tags]             Excluir

    Dado que estou no site de treinamento
    Quando clico em lista de usuários
    E clico em excluir um usuário
    Então deverá exibir modal para confirmar