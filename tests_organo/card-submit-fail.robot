*** Settings ***
Resource         ../resources/main.robot
Test Setup       Visit Organo on Chrome
Test Teardown    Close the browser

*** Test Cases ***
Verify if an error message appears when a required field is left empty

    Submit the form with all the required fields empty
    Verify if an error message is visible
    Sleep    5s
