*** Settings ***
Documentation       This is some basic info about the whole suite!
Library             SeleniumLibrary

*** Variables ***


*** Test Cases ***
Should be able to add new customer
    [Documentation]             This is some basic info about the test!  Of course in our sytem all of the below values would be in a Resource file and not hard-coded.
    [Tags]                      1006    Smoke   Contacts
    # Initialize Selenium
    Set Selenium Speed          .2s
    Set Selenium Timeout        10s
    Log                         Starting the test case!

    # Open the browser to the target web page!
    Open Browser                https://automationplayground.com/crm/   chrome
    Page Should Contain         Customers Are Priority One!
    Click Link                  id=SignIn
    Page Should Contain         Login
    Input Text                  name=email-name    admin@robotframeworktutorial.com
    Input Text                  name=password-name    abcd1234
    Click Button                id=submit-id

    # Customer page
    Page Should Contain         Our Happy Customers
    Click Link                  id=new-customer

    # Add Customer page
    Page Should Contain         Add Customer
    Input Text                  id=EmailAddress     janedoe@gmail.com
    Input Text                  id=FirstName        Jane
    Input Text                  id=LastName         Doe
    Input Text                  id=City             Dallas
    Select From List By Value   id=StateOrRegion    TX
    Select Radio Button         gender              female
    Select Checkbox             name=promos-name
    Click Button                //button                # You can also just type: Submit

    # New Customer page
    Wait Until Page Contains    Success! New customer added.

    Sleep                   3s
    Close Browser

*** Keywords ***