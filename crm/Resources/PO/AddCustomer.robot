*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${ADD_CUSTOMER_HEADER_LABEL} =          Add Customer
${ADD_CUSTOMER_SUBMIT_BUTTON} =         //button                # You can also just type: Submit
${ADD_CUSTOMER_EMAIL_TEXTBOX} =         id=EmailAddress
${ADD_CUSTOMER_FIRST_NAME_TEXTBOX} =    id=FirstName
${ADD_CUSTOMER_LAST_NAME_BUTTON} =      id=LastName
${ADD_CUSTOMER_CITY_BUTTON} =           id=City
${ADD_CUSTOMER_STATE_DROPDOWN} =        id=StateOrRegion
${ADD_CUSTOMER_GENDER_RADIO} =          gender
${ADD_CUSTOMER_PROMO_CHECKBOX} =        name=promos-name

*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains    ${ADD_CUSTOMER_HEADER_LABEL}

Add New Customer
    Fill Customer Fields
    Click Submit Button


Fill Customer Fields
    Input Text                  ${ADD_CUSTOMER_EMAIL_TEXTBOX}           janedoe@gmail.com
    Input Text                  ${ADD_CUSTOMER_FIRST_NAME_TEXTBOX}      Jane
    Input Text                  ${ADD_CUSTOMER_LAST_NAME_BUTTON}        Doe
    Input Text                  ${ADD_CUSTOMER_CITY_BUTTON}             Dallas
    Select From List By Value   ${ADD_CUSTOMER_STATE_DROPDOWN}          TX
    Select Radio Button         ${ADD_CUSTOMER_GENDER_RADIO}            female

Click Submit Button
    Click Button                    ${ADD_CUSTOMER_SUBMIT_BUTTON}