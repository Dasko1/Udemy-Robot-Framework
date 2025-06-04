*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains  Cars & Race Cars

Add to Cart
    Click Button  id=add-to-cart-button