*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify Product Added
    Sleep    3s
    Wait Until Page Contains        Cart Subtotal   # Amazon Basics

#Proceed to Checkout
#    Sleep    2s
#    Click Button                    //span[@id='sw-gtc']
#    Page Should Contain Element     id:continue
#    Element Text Should Be          id:continue   Continue
