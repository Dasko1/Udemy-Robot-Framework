*** Settings ***
Resource    PO/AddCustomer.robot
Resource    PO/Customers.robot
Resource    PO/Home.robot
Resource    PO/LoggedOut.robot
Resource    PO/SignIn.robot
Resource    PO/TopNav.robot

*** Variables ***


*** Keywords ***
Go To "Home" Page
    Home.Navigate To
    Home.Verify Page Loaded

Login with Valid Credentials
    [Arguments]     ${VALID_LOGIN_EMAIL}       ${VALID_LOGIN_PASSWORD}
    TopNav.Click "Sign In" Link
    SignIn.Verify Page Loaded
    SignIn.Login with Valid Credentials    ${VALID_LOGIN_EMAIL}    ${VALID_LOGIN_PASSWORD}
    Customers.Verify Page Loaded

Add New Customer
    Customers.Click Add Customer Link
    AddCustomer.Verify Page Loaded
    AddCustomer.Add New Customer
    Verify Customer Added Successfully

Sign Out
    TopNav.Click "Sign Out" Link
    LoggedOut.Verify Page Loaded