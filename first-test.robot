*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}                    http://localhost:3000/
${CAMPO_NOME}             id:form-nome
${CAMPO_CARGO}            id:form-cargo
${CAMPO_IMAGEM}           id:form-imagem
${CAMPO_TIME}             class:lista-suspensa
${BOTAO_CARD}             id:form-botao
${OPCAO_PROGRAMACAO}      //option[contains(.,'Programação')]
${OPCAO_FRONT}            //option[contains(.,'Front-End')]
${OPCAO_DADOS}            //option[contains(.,'Data Science')]
${OPCAO_DEVOPS}           //option[contains(.,'Devops')] 
${OPCAO_UX}               //option[contains(.,'UX e Design')]
${OPCAO_MOBILE}           //option[contains(.,'Mobile')]
${OPCAO_INOVACAO}         //option[contains(.,'Inovação e Gestão')]

*** Test Cases ***

Verify that a new card is created in the expected team when submitting the form containing all the correct information

    Visit Organo on Chrome
    Fill out the form with all the correct information
    Sleep    2s
    Submit the form
    Sleep    5s

*** Keywords ***
Visit Organo on Chrome
    Open Browser    ${URL}    browser=Chrome

Fill out the form with all the correct information
    Input Text       ${CAMPO_NOME}    Alex
    Input Text       ${CAMPO_CARGO}   Desenvolvedora
    Input Text       ${CAMPO_IMAGEM}  https://picsum.photos/200/300
    Click Element    ${CAMPO_TIME}
    Click Element    ${OPCAO_PROGRAMACAO}

Submit the form
    Click Element    ${BOTAO_CARD}

Verify if the card was created in the expected team
    Element Should Be Visible    class:colaborador 