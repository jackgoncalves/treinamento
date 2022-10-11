*** Settings ***
Test Setup            Abrir navegador    
Test Teardown         Fechar navegador
Resource              ../../pages/formulario/Cadastro-usuario.robot
Resource              ../../resources/resource.robot





*** Test Cases ***
TC01 - Cadastro novo usuário
    [Documentation]    Esse teste cadastra novo usuário        
    [Tags]             Cadastro

    Dado que estou no site de treinamento
    E clico em criar usuário    
    Quando preencho todos os campos
    # Então deverá exibir "Usuário Criado com sucesso"
