*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${LANDING_TEXT} =  Example Domain

*** Keywords ***
Navigate To
    Go To  ${URL.${ENVIRONMENT}}
    Maximize Browser Window

Verify Page Loaded
    wait until page contains  ${LANDING_TEXT}