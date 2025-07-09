*** Settings ***
Library  SeleniumLibrary
Resource        ../../Tests/AmazonApp.robot

*** Keywords ***
Verify Search Completed
    Wait Until Page Contains        ${SEARCH_TERM}          # Bburago 1:24 R&P Ferrari 488 Pista - Red

Click Product Link
    [Documentation]                 Clicks on the above product
    Click Link                      partial link:Bburago