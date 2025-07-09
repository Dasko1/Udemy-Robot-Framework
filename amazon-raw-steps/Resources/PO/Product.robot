*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains        Amazon Basics

Add to Cart
    Click Button                    id=add-to-cart-button
    # Sleep    2s
    # Click Button                    id=attachSiNoCoverage
    # Sleep    2s