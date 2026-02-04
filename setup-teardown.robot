*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Visit Organo on Chrome
    Open Browser    http://localhost:3000/    browser=Chrome

Close the browser
    Close browser