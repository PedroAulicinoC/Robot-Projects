*** Settings ***
Resource    ../main.robot

*** Variables ***
${FIELD_USERNAME}    xpath=//input[@type='text']
${FIELD_PASSWORD}    xpath=//input[@type='password']
${BUTTON_LOGIN}      xpath=//button[normalize-space()='Login']
${BUTTON_LOGOUT}      xpath=//button[normalize-space()='Logout']

*** Keywords ***
Login as an user
    Input Text    ${FIELD_USERNAME}    user
    Input Text    ${FIELD_PASSWORD}    user123

Login as an admin
    Input Text    ${FIELD_USERNAME}    admin
    Input Text    ${FIELD_PASSWORD}    admin123

Login as an invalid user
    Input Text    ${FIELD_USERNAME}    wrongUser
    Input Text    ${FIELD_PASSWORD}    wrongUser123

Check for empty fields error message
    Wait Until Page Contains    Both fields are required.

Check for invalid fields error message
    Wait Until Page Contains    Invalid username or password.

Click on Login
    Click Element    ${BUTTON_LOGIN}

Click on Logout
    Click Element    ${BUTTON_LOGOUT}