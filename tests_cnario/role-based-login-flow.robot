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
    Page Should Contain    Invalid username or password.
    Sleep         3s

Verify error message on empty credentials
    Click on Login
    Check for empty fields error message
    Page Should Contain    Both fields are required.
    Sleep         3s

Login as user and validate user dashboard
    Login as an user
    Click on Login
    Page Should Contain    User Dashboard
    Sleep         3s

Login as admin and validate admin dashboard
    Login as an admin
    Click on Login
    Page Should Contain    Admin Dashboard
    Sleep         3s

Verify logout functionality resets the session
    Login as an user
    Click on Login
    Sleep         2s
    Click on Logout
    Page Should Contain    Dummy Credentials
    Sleep         2s

    