*** Settings ***
Documentation       This is some basic info about the whole suite!
Resource            ../Resources/Common.robot
Resource            ../Resources/CrmApp.robot
Test Setup          Begin Web Test
Test Teardown       End Web Test

# Run Script!
# robot -d results tests/crm.robot


*** Variables ***
${BROWSER} =                    chrome
${URL} =                        https://automationplayground.com/crm/
${VALID_LOGIN_EMAIL} =          admin@robotframeworktutorial.com
${VALID_LOGIN_PASSWORD} =       abcd1234

*** Test Cases ***
Home Page Should Load
    [Documentation]             Test the Home page.
    [Tags]                      1001    Smoke   Home
    CrmApp.Go To "Home" Page

Should Be Able To Login With Valid Credentials
    [Documentation]             Test the Login.
    [Tags]                      1002    Smoke   Login
    CrmApp.Go To "Home" Page
    CrmApp.Login with Valid Credentials         ${VALID_LOGIN_EMAIL}    ${VALID_LOGIN_PASSWORD}

Should Be Able To Log Out
    [Documentation]             Test the log out.
    [Tags]                      1004    Smoke   Log Out
    CrmApp.Go To "Home" Page
    CrmApp.Login with Valid Credentials         ${VALID_LOGIN_EMAIL}    ${VALID_LOGIN_PASSWORD}
    CrmApp.Sign Out

Should Be Able to Add New Customer
    [Documentation]             This is some basic info about the test!  Of course in our sytem all of the below values would be in a Resource file and not hard-coded.
    [Tags]                      1006    Smoke   Contacts
    CrmApp.Go To "Home" Page
    CrmApp.Login with Valid Credentials         ${VALID_LOGIN_EMAIL}    ${VALID_LOGIN_PASSWORD}
    CrmApp.Add New Customer
    CrmApp.Sign Out
