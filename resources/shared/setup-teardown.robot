*** Settings ***
Resource    ../main.robot

*** Keywords ***
Visit Organo on Chrome
    Open Browser    http://localhost:3000/    browser=Chrome

Visit Cnarios on Chrome
    Open Browser    https://www.cnarios.com/challenges/login-flow    browser=Chrome

Close the browser
    Close browser