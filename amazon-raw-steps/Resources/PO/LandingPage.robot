*** Settings ***
Library             SeleniumLibrary

*** Variables ***

*** Keywords ***
Load
    Go To    https://www.amazon.com
    Sleep           12s

Verify Page Loaded
    Wait Until Page Contains    Handmade