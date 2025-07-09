*** Settings ***
Library                                 SeleniumLibrary

*** Variables ***
${TOPNAV_TEAM_LINK} =                   //a[@href='#team']
${TEAM_LINK_HEADER_TEXT} =              Our Amazing Team
${SLEEP_3} =                            3s

*** Keywords ***
Click "Team" Link
    Click Link                          ${TOPNAV_TEAM_LINK}
    Sleep                               ${SLEEP_3}

Verify Team Page Loaded
    Wait Until Page Contains            ${TEAM_LINK_HEADER_TEXT}
