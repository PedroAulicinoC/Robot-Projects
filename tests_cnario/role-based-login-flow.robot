*** Settings ***
Resource         ../resources/main.robot
Test Setup       Visit Cnarios on Chrome
Test Teardown    Close the browser

*** Test Cases ***
Validate login form input fields
    Login as an user
    Sleep         3s

Verify error message on invalid credentials
    Login as an invalid user
    Click on Login
    Sleep         3s

Verify error message on empty credentials
    Click on Login
    Check for empty fields error message
    Sleep         3s

Verify logout functionality resets the session
    Login as an user
    Click on Login
    Sleep         2s
    Click on Logout
    Sleep         3s

    