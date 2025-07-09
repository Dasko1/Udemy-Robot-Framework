*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${SIGNIN_HEADER_LABEL} =            Login
${SIGNIN_EMAIL_TEXTBOX} =           id=email-id
${SIGNIN_PASSWORD_TEXTBOX} =        id=password
${SIGNIN_SUBMIT_BUTTON} =           id=submit-id

*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains        ${SIGNIN_HEADER_LABEL}

Login with Valid Credentials
    [Arguments]     ${VALID_LOGIN_EMAIL}         ${VALID_LOGIN_PASSWORD}
    Fill "Email" Field              ${VALID_LOGIN_EMAIL}
    Fill "Password" Field           ${VALID_LOGIN_PASSWORD}
    Click "Submit" Button

Fill "Email" Field
    [Arguments]                     ${VALID_LOGIN_EMAIL}
    Input Text                      ${SIGNIN_EMAIL_TEXTBOX}    ${VALID_LOGIN_EMAIL}

Fill "Password" Field
    [Arguments]                     ${VALID_LOGIN_PASSWORD}
    Input Text                      ${SIGNIN_PASSWORD_TEXTBOX}     ${VALID_LOGIN_PASSWORD}

Click "Submit" Button
    Click Button                    ${SIGNIN_SUBMIT_BUTTON}
