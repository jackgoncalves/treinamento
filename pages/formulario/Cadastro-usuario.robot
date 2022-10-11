*** Settings ***
Library            SeleniumLibrary
Library            FakerLibrary     locale=pt_BR



*** Variables ***
${URL}                    http://automacaocombatista.herokuapp.com/treinamento/home
${TXT_INICIAL}            Bem vindo ao Site de Automação do Batista.
${BTN_FORMULARIO}         //a[@class='collapsible-header '][contains(.,'Formulário')]
${BTN_CRIAR_USUARIO}      //a[@data-method='get'][contains(.,'Criar Usuários')]

##dados cadastro
${CADASTRO_NOME}          id:user_name
# ${NOME}                   Jack

${CADASTRO_lAST_NOME}     id:user_lastname 
# ${lASTNOME}               Gonca

${CADASTRO_EMAIL}         id:user_email
# ${EMAIL}                  jack@gmail.com

${CADASTRO_ENDR}          id:user_address
${ENDR}                   Rua rio jaja

${CADASTRO_UNIVE}         id:user_university
${UNIVER}                 UFPR

${CADASTRO_PROF}         id:user_profile
${PROF}                  QA

${CADASTRO_GEN}          id:user_gender
${GEN}                   Masculino

${CADASTRO_IDADE}        id:user_gender
${IDADE}                 24

${BTN_CRIAR}             commit

${CAMPO_SUCESS}          notice

${MSG_SUCESSO}           Usuário Criado com sucesso




*** Keywords ***

Dado que estou no site de treinamento
    Go To                           url=${URL}
    Wait Until Page Contains        text=${TXT_INICIAL}

E clico em criar usuário    
    Click Element                    locator=${BTN_FORMULARIO}
    Wait Until Element Is Visible    locator=${BTN_CRIAR_USUARIO}
    Click Element                    locator=${BTN_CRIAR_USUARIO}

Quando preencho todos os campos
    FOR     ${i}    IN RANGE  3

       ${NOME}               FakerLibrary.FirstName
       Input Text            locator=${CADASTRO_NOME}           text=${NOME} 
       
       ${lASTNOME}           FakerLibrary.LastName
       Input Text            locator=${CADASTRO_lAST_NOME}      text=${lASTNOME}  

       ${EMAIL}              FakerLibrary.Email
       Input Text            locator=${CADASTRO_EMAIL}          text=${EMAIL}
       Input Text            locator=${CADASTRO_ENDR}           text=${ENDR}  

       Input Text            locator=${CADASTRO_UNIVE}          text=${UNIVER} 
       Input Text            locator=${CADASTRO_PROF}           text=${PROF}    

       Input Text            locator=${CADASTRO_GEN}            text=${GEN} 
       Input Text            locator=${CADASTRO_IDADE}          text=${IDADE}
       
       Click Element         locator=${BTN_CRIAR}

       Wait Until Element Is Visible    locator=${CAMPO_SUCESS}
       Wait Until Page Contains         text=${MSG_SUCESSO}


       Click Element                    locator=${BTN_CRIAR_USUARIO}
    
    END
       

    


# Então deverá exibir "Usuário Criado com sucesso"
#     Wait Until Element Is Visible    locator=${CAMPO_SUCESS}
#     Wait Until Page Contains         text=${MSG_SUCESSO}


    

