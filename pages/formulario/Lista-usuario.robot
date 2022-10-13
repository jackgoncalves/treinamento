*** Settings ***
Library            SeleniumLibrary
Resource           Cadastro-usuario.robot





*** Variables ***
${BTN_LISTA_USUARIO}                  //a[contains(.,'Lista de Usuários')]
${ICONE_LIXEIRA}                      (//a[@class='material-icons'][contains(.,'delete')])[1]

${IDMSG_EXCLUIDO_SUCES}               notice
${MSG_EXCLUIDO_SUCES}                 Seu Usuário foi removido com sucesso!


*** Keywords ***

Quando clico em lista de usuários    
    Click Element                    locator=${BTN_FORMULARIO}
    Wait Until Element Is Visible    locator=${BTN_LISTA_USUARIO}
    Click Element                    locator=${BTN_LISTA_USUARIO}


E clico em excluir um usuário
    # Set Selenium Speed    value=0.5
    Wait Until Page Contains         text=Lista de Usuários!!
    Click Element                    locator=${ICONE_LIXEIRA} 
  
    
    

Então deverá exibir modal para confirmar    
    Handle Alert                      accept
    Wait Until Element Is Visible     locator=${IDMSG_EXCLUIDO_SUCES}
    Wait Until Page Contains          text=${MSG_EXCLUIDO_SUCES}

    
