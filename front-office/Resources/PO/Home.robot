*** Settings ***
Library                                 SeleniumLibrary
Resource                                ../Front-OfficeApp.robot

*** Variables ***
${HOME_PAGE_HEADER_TEXT} =              It's Nice To Meet You

*** Keywords ***
Navigate To
    Go To                               ${URL}

Verify Page Loaded
    Wait Until Page Contains            ${HOME_PAGE_HEADER_TEXT}

Click Team Link
    Click Link                          ${TOPNAV_TEAM_LINK}

