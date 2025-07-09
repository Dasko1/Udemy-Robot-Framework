*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/Common.robot

*** Variables ***

*** Test Cases ***
User can search for products
    # Here we pass user-defined
    # Try it: change the URL & browser input
    Begin Web Test      ${url}  ${browser}
    End Web Test