*** Settings ***
Library            SeleniumLibrary



*** Variables ***
${BTN_BUSCA_ELEMENTOS}                  //a[@class='collapsible-header waves-teal'][contains(.,'Busca de elementos')]
${BTN_LINKS}                            //a[@data-method='get'][contains(.,'Links')]

${BTN_OK_200}                           //a[contains(.,'Ok 200 - Sucess')]
${MSG_SUCESSO_OK}                       Success!!

${BTN_VOLTAR}                           //a[contains(.,'Voltar')]

${LINKS_HOME}                           //h5[contains(.,'Links')]

${BTN_ERRO_404}                         //a[contains(.,'Erro 400 - Bad Request')]
${MSG_ERRO_404}                         Bad Request!!


*** Keywords ***
Quando clico em Links
    Click Element                       locator=${BTN_BUSCA_ELEMENTOS} 
    Wait Until Element Is Visible       locator=${BTN_LINKS}
    Click Element                       locator=${BTN_LINKS}



Então deverá testar os links e as mensagens retornadas 
    Set Selenium Speed                value=0.5
    Click Element                     locator=${BTN_OK_200}
    Wait Until Page Contains          text=${MSG_SUCESSO_OK}

    Click Element                     locator=${BTN_VOLTAR} 

    Wait Until Element Is Visible     locator=${LINKS_HOME}  

    Click Element                     locator=${BTN_ERRO_404} 
    Wait Until Page Contains          text=${MSG_ERRO_404}

    