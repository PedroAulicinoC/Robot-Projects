*** Settings ***
Library    SeleniumLibrary
Library    FakerLibrary    locale=pt_BR

Resource    shared/setup-teardown.robot
Resource    pages/organo_register.robot
Resource    pages/cnario_login.robot