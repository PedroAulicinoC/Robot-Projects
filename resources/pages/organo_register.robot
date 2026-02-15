*** Settings ***
Resource    ../main.robot

*** Variables ***
${FIELD_NAME}           id:form-nome
${FIELD_ROLE}           id:form-cargo
${FIELD_IMAGE}          id:form-imagem
${FIELD_TEAM}           class:lista-suspensa
${BUTTON_CARD}          id:form-botao

@{select_teams}
...    //option[contains(.,'Programação')]
...    //option[contains(.,'Front-End')]
...    //option[contains(.,'Data Science')]
...    //option[contains(.,'Devops')]
...    //option[contains(.,'UX e Design')]
...    //option[contains(.,'Mobile')]
...    //option[contains(.,'Inovação e Gestão')]

*** Keywords ***
Fill out the form with all the correct information
    ${Name}          FakerLibrary.First Name
    Input Text       ${FIELD_NAME}    ${Name}
    ${Role}          FakerLibrary.Job
    Input Text       ${FIELD_ROLE}    ${Role}
    ${Image}         FakerLibrary.Image Url    width=100    height=100
    Input Text       ${FIELD_IMAGE}   ${Image}
    Click Element    ${FIELD_TEAM}
    Click Element    ${select_teams}[0]

Submit the form
    Click Element    ${BUTTON_CARD}

Verify if the card was created in the expected team
    Element Should Be Visible    class:colaborador 

Identify 3 cards in the expected team
    FOR    ${i}    IN RANGE    1    3
        Fill out the form with all the correct information
        Submit the form
    END
    Sleep    7s

Create and identify a card for each existing team
    FOR    ${indice}    ${team}    IN ENUMERATE    @{select_teams}
        Fill out the form with all the correct information
        Click Element   ${team}
        Submit the form
    END
    Sleep    10s

Submit the form with all the required fields empty
    Click Element    ${BUTTON_CARD}

Verify if an error message is visible
    Element Should Be Visible    id:form-nome-erro
    Element Should Be Visible    id:form-cargo-erro
    Element Should Be Visible    id:form-times-erro
