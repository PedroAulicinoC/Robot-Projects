*** Settings ***
Resource         ../resources/main.robot
Test Setup       Visit Organo on Chrome
Test Teardown    Close the browser

*** Test Cases ***
Verify that a new card is created in the expected team when submitting the form containing all the correct information

    Fill out the form with all the correct information
    Sleep    2s
    Submit the form
    Verify if the card was created in the expected team
    Sleep    5s

Verify if it is possible to create more than one card when submitting the form containing all the correct information
    
    Fill out the form with all the correct information
    Sleep    2s
    Submit the form
    Identify 3 cards in the expected team

Verify if it is possible to create a card for each existing team when submitting the form containing all the correct information
    
    Fill out the form with all the correct information
    Create and identify a card for each existing team
    