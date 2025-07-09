*** Settings ***
Library             SeleniumLibrary
Resource            ../../Tests/AmazonApp.robot

*** Variables ***

*** Keywords ***
Load
    Go To           ${START_URL}
    # Sleep           20s
    Click Button    class:a-button-text

Verify Page Loaded
    Wait Until Page Contains    Handmade