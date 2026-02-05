*** Settings ***

Library          SeleniumLibrary
Resource         setup-teardown.robot
Test Setup       Visit Organo on Chrome
Test Teardown    Close the browser

*** Variables ***

${BUTTON_CARD}    id:form-botao

*** Test Cases ***

Verify if an error message appears when a required field is left empty

    Submit the form with all the required fields empty
    Verify if an error message is visible
    Sleep    5s

*** Keywords ***

Submit the form with all the required fields empty
    Click Element    ${BUTTON_CARD}

Verify if an error message is visible
    Element Should Be Visible    id:form-nome-erro
    Element Should Be Visible    id:form-cargo-erro
    Element Should Be Visible    id:form-times-erro
