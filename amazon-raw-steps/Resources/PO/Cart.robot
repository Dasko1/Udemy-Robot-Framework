*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify Product Added
    Wait Until Page Contains        Added to Cart

Proceed to Checkout
    Click Button                    class:a-button-input
    Page Should Contain Element     id:continue
    Element Text Should Be          id:continue   Continue